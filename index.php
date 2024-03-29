<?php 
  require_once "api/config/Config.php";
?>
<!-- Global site tag (gtag.js) - Google Ads: 591446998 -->
<script async src="https://www.googletagmanager.com/gtag/js?id=AW-591446998"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-591446998');
</script>


<!doctype html>
<html lang="pt-br">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="google-site-verification" content="Pe7kkE5A_euEF5rLAUtEZhLiHAAbcQgynFgmtTSlpIU" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
    <title>Sensation Sexy Shop - Catálogo</title>
    <meta name="description" content="Sinsta a sensação com seu parceiro! Sensation Sexy Shop">
    <meta name="keywords" content="Sensation, SexyShop, Sexy Shop, sexyshop">
    <meta name="author" content="Agência N2Y - Sempre ao seu lado">
    <script src="https://use.fontawesome.com/5bf16b2cc9.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins&family=Raleway:wght@400;700;900&family=Roboto:wght@400;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/CarousselBanner.css">
    <?php include_once "containers/Favicon.php"?>
    <meta name="theme-color" content="#FF3399">
    <!-- <meta http-equiv="refresh" content="0;http://sensationsexshop.com.br/catalogo"> -->
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <?php include_once "containers/Menu.php"?>
    </nav>

    
    <div id="Banner" class="carousel slide col-sm-12  text-primary" data-ride="carousel">
        <?php include_once "containers/CarousselBanner.php"?>
    </div>
    <div id="container" class="container-fluid">
        <?php
          if(isset($_GET['L'])){
            $Pagina = $_GET['L'];
          }else{
            $Pagina = "Home";
          }

          switch($Pagina){
            case $Pagina: include_once "Pages/".$Pagina."/index.php";break;
            default: include_once "Pages/Home/index.php";
          }
          
        ?>
    </div>
    
    <div class="clearfix" style="margin-top:25px"></div>
    <footer class="footer">
        <?php include_once "containers/Footer.php"?>
    </footer>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
  </body>
</html>