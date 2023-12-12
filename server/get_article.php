<?php

require 'db_connect.php';

// по ID забираем полный текст статьи и сразу форматируем его

$id = (int)$_GET['id'];

if ($id === 0) {
    die('Неверный идентификатор');
}

$query = "SELECT id, star_name, title, text, image, add_date 
            FROM star_parsing WHERE id=$id;";

$statement = $pdo->query($query, PDO::FETCH_ASSOC);

$article = $statement->fetch();

$article['text'] = str_replace(["\n\n", "\r\n\r\n"], '</p><p>', $article['text']);

?>


