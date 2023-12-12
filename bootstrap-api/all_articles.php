<?php
session_start();

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Цифры о Звездах</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/style2.css">
  <link rel="stylesheet" href="css/bootstrap.min.css"> 
  <!-- <link rel="shortcut icon" href="favicon.ico" type="image/x-icon"> -->
  <script defer src="script.js"></script>
  <script defer src="script2.js"></script>
</head>

<?php require "header.php"; ?>

  <body class="bg-image prime" style="background-image: url('images/IMG_BACK.JPG');">
  <article class="scroller">
    <div id="articles" class="articles container">
      <h2>Цифры о Звездах</h2>
    </div>
    </article>
    <?php require 'footer.php'; ?>
    <script src="all_articles.js"></script> 
  </body>
</html>