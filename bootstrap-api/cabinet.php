<?php
// страница личного кабинета пользователя
session_start();

// если не авторизован
if (!isset($_SESSION['valid_user'])) {
    header('Location: /');
}

require 'server/db_connect.php';

// получаем все данные о пользователе из БД по ID 
$query = "SELECT id, login, first_name, email, password, avatar
          FROM users
          WHERE id=$_SESSION[id];";
$statement = $pdo->query($query, PDO::FETCH_ASSOC);
$user = $statement->fetch();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Личный кабинет</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/style.css" />
</head>

<body class="bg-image prime" style="background-image: url('images/IMG_BACK.JPG');">

    <?php require "header.php"; ?>

    <div class="container">
        <div class="row">
            <div class="col-md-8 mb-5">
                <h2>Добро пожаловать, <?php echo $user['first_name']; ?></h2>
                <img src="<?php echo $user['avatar']; ?>" alt="<?php echo $user['login']; ?>">
                <h4>Ваш Логин: <?php echo  $user['login']; ?></h4>
                <h4>Ваш пароль: <?php echo  $user['password']; ?></h4>
            </div>
        </div>
    </div>

</body>
</html>