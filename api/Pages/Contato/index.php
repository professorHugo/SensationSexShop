<link rel="stylesheet" href="Fornecedores/style.css">

<?php 
include_once "container/Atualizar-Telefone.php";
include_once "container/Adicionar-Telefone.php";
?>

<div class="bloco-item itens">
    <ul>
        <?php include_once "Contato/container/Mostrar-Contato.php" ?>
    </ul>
</div>

<div class="bloco-item form">
    <form action="?Pagina=Contato&Cadastrar" method="post">
        <div class="form-group">
            <label 
                for="telefone_contato" 
                class="col-form-label col-12"
            >
                Inserir Telefone para contato
            </label>
            <div class="col-12">
                <input 
                    type="text"
                    id="telefone_contato"
                    name="telefone_contato"
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
                Cadastrar
            </button>
        </div>
    </form>
</div>