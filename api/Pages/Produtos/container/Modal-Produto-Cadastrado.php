<script type="text/javascript">
    $(function(){
        $("body").addClass('modal-open');
    });
</script>

<!-- Modal Logged in-->
<div class="modal fade show" id="modalLoggedIn" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true" style="display: block;margin-top:15%;">
    <div class="modal-dialog">
        <div class="modal-content">
        <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">Cadastro de Produto</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <div class="col-md-12 text-center">
                <img src="../img/ajax-loader.gif">
                </div>
                <div class="col-md-12 text-center">
                <p>Cadastrando o Produto...</p>
                <p>Produto Informado: <?php echo $Titulo ?></p>
                </div>
            </div>
        <div class="modal-footer">
            <a href="?Pagina=Produtos&Ver" class="btn btn-form">Ver Produtos</a>
            <a href="?Pagina=Produtos&Cadastrar" class="btn btn-form btn-form">Continuar Cadastrando</a>
        </div>
        </div>
    </div>
</div>