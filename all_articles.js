// скрипт для получения и отображения всех статей из БД
let articlesEl = document.querySelector("#articles"); 

//формирование из массива строки вывода в документ
function showArticles(articles) {
  
  let output = articles.reduce(function (acc, article) {
    return (
      acc +
        `<div class="bg-image card shadow-1-strong row index-cards" style="background-image: url('${article.image}');">
          <div class="card-body text-white">
            <h2 class="card-title">${article.star_name}</h2>
            <h4 class="card-text">${article.title}</h4>
            <a href="article.php?id=${article.id}" class="btn btn-light btn-lg card-button">Подробнее...</a>
          </div>
        </div>`
      );
  }, "");

  articlesEl.insertAdjacentHTML("beforeend", output);
}

// отправляем запрос на получение статей на сервер
async function getArticles() {
  let response = await fetch(`server/get_articles.php`);
  let articles = await response.json();
  showArticles(articles);
}

getArticles();

