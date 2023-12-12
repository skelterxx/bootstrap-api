<?php

//данные для подключения к БД

$db_name = 'num';
$host = 'localhost';
$login = 'root';
$password = '';

$dsn = "mysql:dbname=$db_name;host=$host";

try {
    $pdo = new PDO($dsn, $login, $password);
} catch (PDOException $error) {
    die("<h1>При подключении произошла ошибка!</h1>");
}


function debug($value){
    echo '<pre>';
    print_r($value);
    echo '</pre>';
}