<?php
session_start();
// session_destroy();
require_once "config/Config.php";
//Tentar Fazer Login
if(isset($_GET['Login'])){
    include_once "containers/Fazer-Login.php";
}

//Verficar Sessão de Login
if(isset($_SESSION['LOGIN'])){
    include_once "containers/Modal/Usuario-Logado.php";
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=min-device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">
    <title>Sensation - Dashboard</title>
    <script src="https://use.fontawesome.com/5bf16b2cc9.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Archivo:wght@400;700&family=Poppins&family=Roboto:wght@400;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/global.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <meta name="theme-color" content="#FF3399">
</head>
<body>
    <div id="root">
        <?php
            
                include_once "containers/Form-Login.php";
            
        ?>
    </div>
</body>
</html>