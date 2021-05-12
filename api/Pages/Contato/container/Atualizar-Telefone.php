<?php
if(isset($_GET['Edit'])){
    $IdContato = $_GET['Id'];

    //Atualizar contato
    $TelNovo = $_POST['TelNovo'];
    $StatusTel = $_POST['StatusTelefone'];
    if( $StatusTel = true ){
        $StatusTel = 1;
    }else{
        $StatusTel = 0;
    }

    $QueryUpdateTel = "
        UPDATE tb_contato
        SET 
            numero_contato = '$TelNovo', 
            status_contato = '$StatusTel'
        WHERE id_contato = '$IdContato'
    ";
    $ExeQrUpdateTel = mysqli_query($connection, $QueryUpdateTel);
    if( $ExeQrUpdateTel ){
    //Desativar os demais telefones
    $QueryUpdateOthers = "
        UPDATE tb_contato
        SET
            status_contato = '0'
        WHERE id_contato != '$IdContato'
    ";
    $ExeQrUpdateOthers = mysqli_query($connection, $QueryUpdateOthers);
    if( $ExeQrUpdateOthers ){    
        ?>
        <script type="text/javascript">
            $(function(){
                $("body").addClass('modal-open');
            });
        </script>
        <!-- Modal -->
        <div 
            class="modal fade show" 
            data-backdrop="static"
            data-keyboard="false" 
            tabindex="-1" 
            aria-labelledby="staticBackdropLabel" 
            aria-hidden="true"
            style="
                display:block;
                padding-top:15%;
                background: var(--color-background-opacity2);
            "
        >
            <div class="modal-dialog modal-sm">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Editar Contato</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>
                            Salvando o novo telefone...
                            <?php echo $TelNovo ?>
                        </p>
                        <img src="../img/ajax-loader.gif" alt="Salvando" title="Salvando" class="img-fluid">
                        
                        <meta http-equiv="refresh" content="2;?Pagina=Contato">
                        
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-form btn-form-cancelar">
                        <i class="fa fa-spinner" aria-hidden="true"></i> &nbsp; Aguarde, você será redirecionado
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <?php
    }
    }else{
        echo "
        <script>alert('Erro ao atualizar: ".mysqli_error($connection)."')</script>
        ";
    }
}