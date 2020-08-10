<?php
require_once "../config/Config.php";
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Painel de Controle - <?php echo SITENAME?></title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <meta name="theme-color" content="#FF3399">
    <script src="https://use.fontawesome.com/5bf16b2cc9.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&family=Poppins&family=Roboto:wght@400;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/global2.css">

    <script>
        $(function(){
            $(".user-options").hide();
            $(".user-access button").click(function(){
                $(".user-options").slideToggle();
            });
            $(".menu-button").click(function(){
                // $("#asside-menu .content").fadeToggle();
                alert("Recurso ainda não implementado");
            });
        })
    </script>

</head>
<body>
    <div id="root">
        <div id="top">
            <?php include_once "containers/Topo.php" ?>
        </div>

        <?php include_once "containers/Asside-Menu.php" ?>

        <div class="container">
            <?php if(isset($_GET['Pagina'])){$Pagina1 = $_GET['Pagina'];}else{$Pagina1="Home";}?>
            <div class="titulo-pagina">
                <p>
                    <a href="?Pagina=Home">
                    Painel de Controle
                    </a>  / 
                    <?php echo $Pagina1?>
                </p>
            </div>

        <?php
            if(isset($_GET['Pagina'])){
                $Pagina = $_GET['Pagina'];

                switch($Pagina){
                    case $Pagina: include_once $Pagina . "/index.php";
                    break;
                }
            }else{
                include_once "Home/index.php";
            }
        ?>

        </div>

        <?php include_once "containers/Footer.php"?>
    </div>
</body>
</html>