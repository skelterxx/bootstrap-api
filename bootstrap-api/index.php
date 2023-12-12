<?php

session_start(); 
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Главная страница</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style2.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"> -->
    <script defer src="script.js"></script>
    <script defer src="script2.js"></script>
    <script defer src="random_articles.js"></script>
    <script defer src="api.js"></script>
    
</head>

<body class="bg-image prime" style="background-image: url('images/IMG_BACK.JPG');">

     <?php require "header.php"; ?>
     
     <?php require "random_articles.php"; ?>

        <div id="articles" class="container">
            <a href="all_articles.php" class="link">
                <h2>Больше интересного здесь...</h2>
            </a>
        </div>
        
        <div id="nasaImage"></div>

     <?php require "footer.php"; ?>

</body>

