<?php
if(isset($_GET['Delete'])){
    // echo "Apagar Categoria";
    $IdCategoria = $_GET['Id'];
    $QueryDeleteCategoria = "
        DELETE FROM 
            tb_categoria_produtos
        WHERE id_categoria = '$IdCategoria'
    ";
    $ExeQrDeleteCategoria = mysqli_query($connection, $QueryDeleteCategoria);
    if($ExeQrDeleteCategoria){
        // echo "<br>Categoria Deletada";
        echo "<meta http-equiv='refresh' content='0;?Pagina=Categorias'>";
    }else{
        echo "<br>Erro: ".mysqli_error($connection);
    }
}
if(isset($_GET['Cadastrar'])){
    // echo "Cadastrar Categoria";
    $NomeCategoria = $_POST['nome_categoria'];
    $QueryInsertCategoria = "
        INSERT INTO tb_categoria_produtos(nome_categoria)VALUES('$NomeCategoria')
    ";
    $ExeQrInsertCategoria = mysqli_query($connection, $QueryInsertCategoria);
    if($ExeQrInsertCategoria){
        include_once "Categorias/container/Modal-Categoria-Cadastrada.php";
    }else{
        echo "<br>Erro: ".mysqli_error($connection);
    }
}
?>

<link rel="stylesheet" href="Categorias/style.css">
<div class="bloco-item itens">
    <ul>
        <?php include_once "Categorias/container/Mostrar-Categorias.php" ?>
    </ul>
</div>

<div class="bloco-item form">
    <form action="?Pagina=Categorias&Cadastrar" method="post">
        <div class="form-group">
            <label 
                for="nome_categoria" 
                class="col-form-label col-12"
            >
                Categoria
            </label>
            <div class="col-12">
                <input 
                    type="text"
                    id="nome_categoria"
                    name="nome_categoria"
                    class="form-control form-control-lg"
                >
            </div>
        </div>
        <hr>
        <div class="form-group footer">
            <button 
                type="reset"
                class="btn btn-form btn-form-cancelar"
            >
                Cancelar
            </button>
            <button 
                type="submit" 
                name="CadastrarCategoria"
                class="btn btn-form"
            >
                Cadastrar Categoria
            </button>
        </div>
    </form>
</div>

