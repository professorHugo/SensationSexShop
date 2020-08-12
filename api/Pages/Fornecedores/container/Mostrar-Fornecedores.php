<?php
$QueryBuscarFornecedores = "SELECT * FROM tb_fornecedores";
$ExeQrBuscarFornecedores = mysqli_query($connection, $QueryBuscarFornecedores);
$RowQrBuscarFornecedores = mysqli_num_rows($ExeQrBuscarFornecedores);
if($RowQrBuscarFornecedores >= 1){
    while($ResQrFornecedores = mysqli_fetch_assoc($ExeQrBuscarFornecedores)){
    ?>
    <li>
        <?php echo $ResQrFornecedores['nome_fornecedor']?>

        <!-- Button trigger modal -->
        <span
            class="btn btn-form" 
            data-toggle="modal" 
            data-target="#staticBackdrop<?php echo $ResQrFornecedores['id_fornecedor'] ?>"
        >
            <i class="fa fa-trash" aria-hidden="true"></i>
        </span>

        <!-- Modal -->
        <div 
            class="modal fade" 
            id="staticBackdrop<?php echo $ResQrFornecedores['id_fornecedor'] ?>" 
            data-backdrop="static"
            data-keyboard="false" 
            tabindex="-1" 
            aria-labelledby="staticBackdropLabel" 
            aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="?Pagina=Fornecedores&Delete&Id=<?php echo $ResQrFornecedores['id_fornecedor'] ?>" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Excluir Fornecedor</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Você está excluindo o Fornecedor<b>
                        <?php echo $ResQrFornecedores['nome_fornecedor'] ?>
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