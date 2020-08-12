<link rel="stylesheet" href="Produtos/style.css">
<?php
if(isset($_GET['Pagina'])){
    if($_GET['Pagina'] === "Produtos" && isset($_GET['Cadastrar'])){
    ?>
    <style>
    #asside-menu{
        margin-top: 0;
    }
    </style>
    <?php
        include_once "Produtos/Cadastro.php";

    }else{
        include_once "Produtos/Visualizar.php";
    }
}
?>