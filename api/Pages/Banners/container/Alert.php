<script type="text/javascript">
    $(function(){
        $("body").addClass('modal-open');
    });
</script>

<!-- Modal Logged in-->
<div class="modal fade show" id="Alert" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title" id="staticBackdropLabel">Ajustes nos Banners</h3>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="col-md-12 text-center text-content">
                    <h1>Atenção!</h1>
                    <p>
                        Os banners devem ser cadastrados de forma individual.<br>
                        Ao clicar no botão 
                        <button clas="btn btn-form btn-form-cancelar">
                            <i class="fa fa-floppy-o" aria-hidden="true"></i> Salvar
                        </button>
                        Aquele banner selecionado será salvo.<br><br>
                        O Checkbox 
                        <code class="code">
                            <input type="checkbox" name="ativar" id="ativar">
                            <label for="ativar">Ativo</label>
                        </code>
                        fará com que o banner fique ativo no catálogo.
                        
                    </p>
                </div>
            </div>
            <div class="modal-footer">
                <a href="?Pagina=Banners&Confirm" class="btn btn-form btn-form-cancelar" >Ok. Entendi</a>
            </div>
        </div>
    </div>
</div>