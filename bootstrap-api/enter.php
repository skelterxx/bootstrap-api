<?php

session_start();

require 'server/db_connect.php';

// получить логин из массива $_GET
$login = trim($_GET['login']);

// получить ID из бд по переданному логину
$query = "SELECT id
          FROM users
          WHERE login = '$login'";

$statement = $pdo->query($query, PDO::FETCH_ASSOC);
$id = $statement->fetch()['id'];

// записать в сессию логин и ID пользователя
$_SESSION['id'] = $id;
$_SESSION['valid_user'] = $login;

header('Location: /');
