<?php
$QueryBuscarMarcas = "SELECT * FROM tb_marcas";
$ExeQrBuscarMarcas = mysqli_query($connection, $QueryBuscarMarcas);
$RowQrBuscarMarcas = mysqli_num_rows($ExeQrBuscarMarcas);
if($RowQrBuscarMarcas >= 1){
    while($ResQrMar = mysqli_fetch_assoc($ExeQrBuscarMarcas)){
    ?>
    <li>
        <?php echo $ResQrMar['nome_marca']?>

        <!-- Button trigger modal -->
        <span
            class="btn btn-form" 
            data-toggle="modal" 
            data-target="#staticBackdrop<?php echo $ResQrMar['id_marca'] ?>"
        >
            <i class="fa fa-trash" aria-hidden="true"></i>
        </span>

        <!-- Modal -->
        <div 
            class="modal fade" 
            id="staticBackdrop<?php echo $ResQrMar['id_marca'] ?>" 
            data-backdrop="static"
            data-keyboard="false" 
            tabindex="-1" 
            aria-labelledby="staticBackdropLabel" 
            aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="?Pagina=Marcas&Delete&Id=<?php echo $ResQrMar['id_marca'] ?>" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Excluir Marca</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Você está excluindo a marca<b>
                        <?php echo $ResQrMar['nome_marca'] ?>
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
    echo "<p>Ainda não há Marcas cadastradas</p>";
}