/*
 * обработка данных формы регистрации
 */

// изначально полагаем, что все поля заполнены неправильно
let flags = {
  login: false,
  email: false,
  password: false,
};

// блокировка отправки
let regForm = document.querySelector("#reg-form"); // получаем форму
regForm.addEventListener("submit", function(event) {
  // если хотя бы одно свойство имеет значение ложь, блокируем отправку
  if (!flags.login || !flags.email || !flags.password) {
    event.preventDefault(); // отменяем отправку
  }
});


/**
 * проверка логина
 */

let loginEl = document.querySelector("#login");
let loginError = document.querySelector("#login-error");

async function checkLoginDB(login) {
  // отправляем GET запрос на сервер и передаем введенный логин
  let response = await fetch(`server/check_form_data.php?login=${login}`);
  let data = await response.json();
  checkLogin(login, data.taken);
}

// функция для проверки логина
function checkLogin(login, loginTaken) {
  flags.login = false;

  if (login.length < 5) {
    // выдаем ошибку
    loginError.textContent = "Логин должен быть не менее 5 символов";
    loginEl.classList.add("input-error");
    loginEl.classList.remove("input-success");
  } else if (loginTaken) {
    // если такой логин уже существует в бд
    // выводим ошибку
    loginError.textContent = "Такой логин уже зарегистрирован";
    loginEl.classList.add("input-error");
    loginEl.classList.remove("input-success");
  } else {
    // если попали сюда, значит логин введен верно
    loginError.textContent = ""; // очищаем поле с ошибкой
    loginEl.classList.add("input-success");
    flags.login = true; // переключаем флаг с логином
  }
}

// при покидании фокуса проверяем введенное значение
loginEl.addEventListener("blur", function () {
  // получаем введенное значение в переменную
  let value = loginEl.value.trim();

  checkLoginDB(value);
});

/**
 * проверка емейла
 */
// получаем элементы для ввода емейла и вывода ошибки
let emailEl = document.querySelector("#email");
let emailError = document.querySelector("#email-error");

function checkEmail(email, emailTaken) {
  flags.email = false;

  // если строка с емейлом пустая
  if (email.length === 0) {
    emailError.textContent = "Укажите адрес электронной почты";
    emailEl.classList.add("input-error");
    emailEl.classList.remove("input-success");
  } else if (!email.includes("@")) {
    // если в адресе нет собаки
    emailError.textContent = "Адрес электронной почты должен содержать '@'";
    emailEl.classList.add("input-error");
    emailEl.classList.remove("input-success");
  } else if (emailTaken) {
    emailError.textContent = "Указанный адрес уже зарегистрирован";
    emailEl.classList.add("input-error");
    emailEl.classList.remove("input-success");
  } else {
    emailError.textContent = "";
    emailEl.classList.add("input-success");
    flags.email = true;
  }
}

// функция для проверки емейла по БД
async function checkEmailDB(email) {
  let response = await fetch(`server/check_form_data.php?email=${email}`);
  let data = await response.json();

  checkEmail(email, data.taken);
}

// обработчик события blur поля ввода емейла
emailEl.addEventListener("blur", function () {
  let value = emailEl.value.trim();

  checkEmailDB(value);
});

/**
 * проверка пароля
 */
// получаем элементы для ввода пароля и вывода ошибки
let passwordEl = document.querySelector("#password");
let passwordError = document.querySelector("#password-error");

// обработчик события blur поля ввода пароля
passwordEl.addEventListener("blur", function () {
  let value = passwordEl.value.trim();
  // меняем флаг на ложь
  flags.password = false;

  // проверка на длину пароля (нее менее 6)
  if (value.length < 6) {
    // выводим в спан ошибку
    passwordError.textContent = "Пароль не может быть короче шести символов";
    // меняем цвет границы инпута на красный
    passwordEl.classList.add("input-error");
    passwordEl.classList.remove("input-success");
  } else {
    // если заполнено верно, очищаем спан с ошибкой
    passwordError.textContent = "";
    // меняем цвет границы на зеленый
    passwordEl.classList.add("input-success");
    passwordEl.classList.remove("input-error");
    // меняем флаг на истину
    flags.password = true;
  }
});

/**
 * показать пароль при клике на элемент .type-btn
 */
// полчаем список кнопок
let typeBtn = document.querySelectorAll(".type-btn");
// console.log(typeBtn);

// перебираем кнопки
typeBtn.forEach(function (btn) {
  // накаждую кнопку вешаем обработчик события по клику
  btn.addEventListener("click", function () {
    // получаю инпут для ввода пароля через один элемент
    let sibling = btn.previousElementSibling.previousElementSibling;

    // если значение атрибута = password
    if (sibling.getAttribute("type") === "password") {
      // заменить на text
      sibling.setAttribute("type", "text");
      btn.textContent = "Скрыть пароль";
    } else {
      // если значение атрибута = text
      // заменить на password
      sibling.setAttribute("type", "password");
      btn.textContent = "Показать пароль";
    }
  });
});

/**
 * обработка данных формы входа
 */
// предпорагаем, что логин введен неверно
let enterLoginFlag = false;

/**
 * проверка пароля по логину в БД
 */
async function checkPassword(login, password) {
  let response = await fetch(`server/check_form_data.php?login=${login}&password=${password}`);

  return await response.json();
}

let enterForm = document.querySelector("#enter-form"); // получаем форму входа

// обработка события отправки формы
enterForm.addEventListener("submit", async function (event) {
  // если логин введен неверно
  if (!enterLoginFlag) {
    event.preventDefault(); // блокируем отправку формы входа
  } else {
    event.preventDefault(); // блокируем отправку формы входа

    let enterLogin = document.querySelector("#enter-login").value; // получаем введенный логин
    let enterPassword = document.querySelector("#enter-password").value; // получаем введенный пароль
    let enterPasswordError = document.querySelector("#enter-password-error"); // спан для ошибки

    let data = await checkPassword(enterLogin, enterPassword);

    if (data) {
      // если пароль верен, переходим к лк
      window.location.href = `enter.php?login=${enterLogin}`;
    } else {
      // если пароль неверен, показываем ошибку
      enterPasswordError.textContent = "Пароль неверен";
    }
  }
});

let enterLogin = document.querySelector("#enter-login"); // получаем логин
let enterLoginError = document.querySelector("#enter-login-error"); // получаем спан для ошибки

async function enterCheckLoginDB(login) {
  enterLoginFlag = false;

  // отправляем GET запрос на сервер и передаем введенный логин
  let response = await fetch(`server/check_form_data.php?login=${login}`);
  // console.log(response);

  let data = await response.json();

  // если логин не найден в БД
  if (!data.taken) {
    // выдаем ошибку о том, что логин неверен
    enterLoginError.textContent = "Логин не найден в базе данных";
  } else {
    enterLoginError.textContent = "";
    enterLoginFlag = true;
  }
  // console.log(enterLoginFlag);
}

// при блюре инпута
enterLogin.addEventListener("blur", function () {
  // получаем введенное значение и удаляем пробелы
  let value = enterLogin.value.trim();

  // проверяем введенный логин по БД
  enterCheckLoginDB(value);
});