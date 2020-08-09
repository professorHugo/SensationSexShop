<form action="?Login" method="post">
    <div class="fieldset">
        <div class="caption">Fazer Login</div>
        <div class="logo">
            <img src="img/logo-template.jpg" alt="Logotipo" class="img-fluid">
        </div>
        <div class="form-group col-12">
            <label for="email" class="form-label col-12">E-mail </label>
            <div class="col-12">
                <input 
                    type="email"
                    name="email"
                    id="email"
                    placeholder="email@email.com.br"
                    class="form-control form-control-lg"
                >
            </div>
                
        </div>
        <div class="form-group col-12">
            <div class="space"></div>
            <label for="password" class="form-label col-12">Senha </label>
            <div class="col-12">
                <input 
                    type="password" 
                    name="password" 
                    id="password"
                    placeholder="Senha"
                    class="form-control form-control-lg"
                >
            </div>
        </div>
        
        <hr>

        <div class="footer-form">
            <button type="submit" class="bnt btn-default">
                <i class="fa fa-sign-in"></i>
                Login
            </button>
            <a href="../" class="btn btn-default">
                Sair
            </a>
        </div>
        <div class="forgot-password">
            <button 
                class="forgot-password btn btn-default"
                data-toggle="modal"
                data-target="#RecuperarSenha"
                type="button"
            >
                Esqueceu sua senha?
            </button>
        </div>
    </div class="fieldset">
</form>

<!-- Modal -->
<div 
    class="modal fade" 
    id="RecuperarSenha" 
    data-backdrop="static" 
    tabindex="-1" 
    aria-labelledby="exampleModalLabel" 
    aria-hidden="true"
>
<div class="modal-dialog">
    <form action="?ResetPassword" method="post">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                Ao cicar em <b>Confirmar</b>, sua senha será resetada. A senha será enviada novamente para seu e-mail
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-cancel" data-dismiss="modal">Cancelar</button>
                <button type="submit" class="btn btn-confirm">Confirmar</button>
            </div>
            </div>
        </div>
    </form>
</div>