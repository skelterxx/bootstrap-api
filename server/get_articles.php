<?php

require 'db_connect.php';

// по делаем выборку статей и выводим все статьиначиная с последней

$query = "SELECT `id`, `star_name`, `title`, `text`, `image`, `add_date` 
         FROM star_parsing ORDER BY id DESC;";

$statement = $pdo->query($query, PDO::FETCH_ASSOC);

$articles = $statement->fetchAll();

echo json_encode($articles);

?>


