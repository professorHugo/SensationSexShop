<link rel="stylesheet" href="Produtos/style.css">
<?php
if(isset($_GET['Pagina'])){
    if($_GET['Pagina'] === "Produtos" && isset($_GET['Cadastrar'])){

        include_once "Produtos/Cadastro.php";

    }else{
        include_once "Produtos/Visualizar.php";
    }
}
?>