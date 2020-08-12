<?php
if(isset($_GET['Delete'])){
    // echo "Apagar Categoria";
    $IdFornecedor = $_GET['Id'];
    $QueryDeleteFornecedor = "
        DELETE FROM 
            tb_fornecedores
        WHERE id_fornecedor = '$IdFornecedor'
    ";
    $ExeQrDeleteFornecedor = mysqli_query($connection, $QueryDeleteFornecedor);
    if($ExeQrDeleteFornecedor){
        // echo "<br>Categoria Deletada";
        echo "<meta http-equiv='refresh' content='0;?Pagina=Fornecedores'>";
    }else{
        echo "<br>Erro: ".mysqli_error($connection);
    }
}
if(isset($_GET['Cadastrar'])){
    "Cadastrar Categoria";
    $NomeFornecedor = $_POST['nome_fornecedor'];
    $QueryInsertCategoria = "
        INSERT INTO tb_fornecedores(nome_fornecedor)VALUES('$NomeFornecedor')
    ";
    $ExeQrInsertCategoria = mysqli_query($connection, $QueryInsertCategoria);
    if($ExeQrInsertCategoria){
        include_once "Fornecedores/container/Modal-Fornecedor-Cadastrado.php";
    }else{
        echo "<br>Erro: ".mysqli_error($connection);
    }
}
?>

<link rel="stylesheet" href="Fornecedores/style.css">
<div class="bloco-item itens">
    <ul>
        <?php include_once "Fornecedores/container/Mostrar-Fornecedores.php" ?>
    </ul>
</div>

<div class="bloco-item form">
    <form action="?Pagina=Fornecedores&Cadastrar" method="post">
        <div class="form-group">
            <label 
                for="nome_fornecedor" 
                class="col-form-label col-12"
            >
                Fornecedor
            </label>
            <div class="col-12">
                <input 
                    type="text"
                    id="nome_fornecedor"
                    name="nome_fornecedor"
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
                Cadastrar Fornecedor
            </button>
        </div>
    </form>
</div>