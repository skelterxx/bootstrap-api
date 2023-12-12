<?php
session_start();
require 'server\get_article.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $article['star_name']; ?></title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/style2.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"> -->
    <script defer src="script.js"></script>
    <script defer src="script2.js"></script>
</head>

<?php require "header.php"; ?>

<body class="bg-image prime" style="background-image: url('images/IMG_BACK.JPG');">

    <?php   echo "<div id='article-text' class='article-text container col-md-10 mt-5'>
        <h2>$article[star_name]</h2>
        <img class='article-text' src=$article[image] alt=$article[star_name]>
        <p>$article[text]</p>
    </div>"; ?> 

    <?php require 'footer.php'; ?>

</body>
</html>