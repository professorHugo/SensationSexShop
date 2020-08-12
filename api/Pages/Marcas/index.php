<?php
if(isset($_GET['Delete'])){
    // echo "Apagar Categoria";
    $IdMarca = $_GET['Id'];
    $QueryDeleteCategoria = "
        DELETE FROM 
            tb_marcas
        WHERE id_marca = '$IdMarca'
    ";
    $ExeQrDeleteCategoria = mysqli_query($connection, $QueryDeleteCategoria);
    if($ExeQrDeleteCategoria){
        // echo "<br>Categoria Deletada";
        echo "<meta http-equiv='refresh' content='0;?Pagina=Marcas'>";
    }else{
        echo "<br>Erro: ".mysqli_error($connection);
    }
}

if(isset($_GET['Cadastrar'])){
    // echo "Cadastrar Categoria";
    $NomeMarca = $_POST['nome_marca'];
    $QueryInsertMarca = "
        INSERT INTO tb_marcas(nome_marca)VALUES('$NomeMarca')
    ";
    $ExeQrInsertMarca = mysqli_query($connection, $QueryInsertMarca);
    if($ExeQrInsertMarca){
        include_once "Marcas/container/Modal-Marca-Cadastrada.php";
    }else{
        echo "<br>Erro: ".mysqli_error($connection);
    }
}
?>


<link rel="stylesheet" href="Marcas/style.css">
<div class="bloco-item itens">
    <ul>
        <?php include_once "Marcas/container/Mostrar-Marcas.php" ?>
    </ul>
</div>

<div class="bloco-item form">
    <form action="?Pagina=Marcas&Cadastrar" method="post">
        <div class="form-group">
            <label 
                for="nome_marca" 
                class="col-form-label col-12"
            >
                Marca
            </label>
            <div class="col-12">
                <input 
                    type="text"
                    id="nome_marca"
                    name="nome_marca"
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
                Cadastrar Marca
            </button>
        </div>
    </form>
</div>