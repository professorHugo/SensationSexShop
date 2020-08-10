<div class="left-top-menu">
    <a href="?Paginas=Home" class="link-menu">
        <?php echo SITENAME ?>
    </a>
    <div class="menu-button">
        <button type="button" id="button-user">
            <i class="fa fa-bars" aria-hidden="true"></i>
        </button>
    </div>
</div>
<div class="right-top-menu">
    <div class="user-access">
        <button type="button">
            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
        </button>
    </div>
    <div class="user-options">
        <h3>Usuário: <?php echo $_SESSION['LOGIN']['nome_usuario']?></h3>
        <div class="box-base">
            <button>
                Trocar Senha
                <i class="fa fa-lock" aria-hidden="true"></i>
            </button>
            <div class="dropdown-divider"></div>
            <button>
                Desconectar
                <i class="fa fa-sign-out" aria-hidden="true"></i>
            </button>
        </div>
    </div>
</div>