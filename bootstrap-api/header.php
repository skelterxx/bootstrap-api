<header>
        <div class="header" class="header">
            <div class="navigation">
                <a href="/" class="logo link">БЛОГ</a>
               
                <div class="menu">

                    <?php if (!isset($_SESSION['valid_user'])) : ?>

                        <?php if (isset($_SERVER['REQUEST_URI']) !== '/index.php') : ?>
                            <a href="javascript:history.back()" class="link"><img src="images\back.png" alt="back" class="link" width="40px" height="40px"></a>
                        <?php endif; ?>

                        <a href="form.php" class="link">Вход</a>
                    <?php endif; ?>
                      
                    
                    <?php if (isset($_SESSION['valid_user'])) : ?>
                        
                        <h2>Привет, <?php echo $_SESSION['valid_user']; ?></h2>
                        

                            <?php if (isset($_SERVER['REQUEST_URI']) !== '/index.php') : ?>
                                <a href="javascript:history.back()" class="link"><img src="images\back.png" alt="back" class="link" width="40px" height="40px"></a>
                            <?php endif; ?>
                            <a href="cabinet.php" class="link"><img src="images\cabinet.png" alt="cabinet" class="link" width="40px" height="40px"></a>
                        <a href="exit.php" class="link"><img src="images\exit.png" alt="Out" class="link" width="40px" height="40px"></a>
                    <?php endif; ?> 

                </div>    
            </div>
        </div>
</header>