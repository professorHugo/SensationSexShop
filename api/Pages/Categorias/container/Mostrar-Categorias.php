<?php
$QueryBuscarCategorias = "SELECT * FROM tb_categoria_produtos";
$ExeQrBuscarCategorias = mysqli_query($connection, $QueryBuscarCategorias);
$RowQrBuscarCategorias = mysqli_num_rows($ExeQrBuscarCategorias);
if($RowQrBuscarCategorias >= 1){
    while($ResQrCat = mysqli_fetch_assoc($ExeQrBuscarCategorias)){
    ?>
    <li>
        <?php echo $ResQrCat['nome_categoria']?>

        <!-- Button trigger modal -->
        <span
            class="btn btn-form" 
            data-toggle="modal" 
            data-target="#staticBackdrop<?php echo $ResQrCat['id_categoria'] ?>"
        >
            <i class="fa fa-trash" aria-hidden="true"></i>
        </span>

        <!-- Modal -->
        <div 
            class="modal fade" 
            id="staticBackdrop<?php echo $ResQrCat['id_categoria'] ?>" 
            data-backdrop="static"
            data-keyboard="false" 
            tabindex="-1" 
            aria-labelledby="staticBackdropLabel" 
            aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="?Pagina=Categorias&Delete&Id=<?php echo $ResQrCat['id_categoria'] ?>" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Excluir Categoria</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Você está excluindo a Categoria<b>
                        <?php echo $ResQrCat['nome_categoria'] ?>
                        </b>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-form btn-form-cancelar">Excluir</button>
                    </div>
                </form>
            </div>
        </div>
        </div>
    </li>
    <?php
    }
}else{
    echo "<p>Ainda não há categorias cadastradas</p>";
}