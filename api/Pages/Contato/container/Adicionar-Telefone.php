<?php
if( $_GET['Pagina'] == "Contato" ){
    if( isset($_GET['Cadastrar']) ){
        $TelefoneNovo = $_POST['telefone_contato'];
        $StatusTelefone = 0;

        $QueryInsertNewPhone = "
            INSERT INTO tb_contato(
                numero_contato,
                status_contato
            )VALUES(
                '$TelefoneNovo',
                '$StatusTelefone'
            )
        ";

        $ExeQrInsertNewPhone = mysqli_query($connection, $QueryInsertNewPhone);
        if( $ExeQrInsertNewPhone ){
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
                            <h5 class="modal-title" id="staticBackdropLabel">Novo Telefone</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <p>
                                Inserindo o novo telefone...
                                <?php echo $TelefoneNovo ?><br>
                                <b>Lembre-se, o telefone novo ficará com o status <code>Inativo</code></b>
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
    }
}