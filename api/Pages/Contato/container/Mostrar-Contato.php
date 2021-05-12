<?php
$QueryBuscarContato = "SELECT * FROM tb_contato";
$ExeQrBuscarContato = mysqli_query($connection, $QueryBuscarContato);
$RowQrBuscarContato = mysqli_num_rows($ExeQrBuscarContato);
if($RowQrBuscarContato >= 1){
    while($ResQrContato = mysqli_fetch_assoc($ExeQrBuscarContato)){
    ?>
    <li>
        <?php echo $ResQrContato['numero_contato']?>
        

        <!-- Button trigger modal -->
        <span
            class="btn btn-form" 
            data-toggle="modal" 
            data-target="#staticBackdrop<?php echo $ResQrContato['id_contato'] ?>"
        >
            <i class="fa fa-pencil-square" aria-hidden="true"></i>
            <?php
                if( $ResQrContato['status_contato'] == 1){
                    echo "Ativado";
                }else{
                    echo "Inativo";
                }
            ?>
        </span>

        <!-- Modal -->
        <div 
            class="modal fade" 
            id="staticBackdrop<?php echo $ResQrContato['id_contato'] ?>" 
            data-backdrop="static"
            data-keyboard="false" 
            tabindex="-1" 
            aria-labelledby="staticBackdropLabel" 
            aria-hidden="true">
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <form action="?Pagina=Contato&Edit&Id=<?php echo $ResQrContato['id_contato'] ?>" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">Editar Contato</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>
                                Você está editando o telefone de contato <b>
                                <?php echo $ResQrContato['numero_contato'] ?>
                                </b>
                            </p>
                            <div class="form-group">
                                <label for="TelAtual" class="form-label form-label-lg">Telefone Atual:</label>
                                <input type="text" 
                                    name="TelAtual" 
                                    id="TelAtual" 
                                    placeholder="<?php echo $ResQrContato['numero_contato'] ?>"
                                    class="form-control form-control-lg"
                                    disabled
                                >
                            </div>
                            <div class="form-group">
                                <label for="TelNovo" class="form-label form-label-lg">Telefone Novo:</label>
                                <input type="text" 
                                    name="TelNovo" 
                                    id="TelNovo" 
                                    class="form-control form-control-lg"
                                    required
                                >
                            </div>
                            <div class="form-group">
                                <div class="col-8 float-left">
                                    <label for="StatusTelefone" class="form-label form-label-lg">
                                    <?php if( $ResQrContato['status_contato'] == 1 ){
                                        echo "Telefone ativo";
                                    }else{
                                        echo "Tekefone inativo";
                                    }
                                    ?>
                                    </label>
                                </div>
                                <div class="col-4 float-left">
                                    <input type="checkbox" 
                                        name="StatusTelefone" 
                                        id="StatusTelefone" 
                                        value=""
                                        class="form-control form-control-lg"
                                        <?php
                                        if( $ResQrContato['status_contato'] == 1 ){
                                            echo "checked";
                                        }
                                        ?>
                                    >
                                </div>
                                <div class="clearfix"></div>                            
                            </div>
                            
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-form btn-form-cancelar">
                                <i class="fa fa-floppy-o" aria-hidden="true"></i> &nbsp;Salvar
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </li>
    <?php
    }
}else{
    echo "<p>Ainda não foi cadastrado</p>";
}