<link rel="stylesheet" href="Home/style.css">

<div class="bloco-item" id="item1">
    <header>Categorias Cadastradas</header>
    <article>
        <div class="icone">
            <i class="fa fa-list-alt" aria-hidden="true"></i>
        </div>
        <div class="quantidade">
        <?php
            $QueryBuscarQtd1 = "SELECT * FROM tb_categoria_produtos";
            $ExeQrBsucarQtd1 = mysqli_query($connection, $QueryBuscarQtd1);
            if($ExeQrBsucarQtd1 >= 1){
                echo strval(mysqli_num_rows($ExeQrBsucarQtd1));
            }else{ echo "0";}
        ?>
        </div>
    </article>
    <footer>
        <a href="?Pagina=Categorias">
            <span>Visualizar</span>
            <span>
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </span>
        </a>
    </footer>
</div>

<div class="bloco-item" id="item2">
    <header>Marcas Cadastradas</header>
    <article>
        <div class="icone">
            <i class="fa fa-tags" aria-hidden="true"></i>
        </div>
        <div class="quantidade">
        <?php
            $QueryBuscarQtd2 = "SELECT * FROM tb_marcas";
            $ExeQrBsucarQtd2 = mysqli_query($connection, $QueryBuscarQtd2);
            if($ExeQrBsucarQtd2 > 0){
                echo strval(mysqli_num_rows($ExeQrBsucarQtd2));
            }else{ echo "0";}
        ?>
        </div>
    </article>
    <footer>
        <a href="?Pagina=Marcas">
            <span>Visualizar</span>
            <span>
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </span>
        </a>
    </footer>
</div>

<div class="bloco-item" id="item3">
    <header>Produtos Cadastrados</header>
    <article>
        <div class="icone">
            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
        </div>
        <div class="quantidade">
        <?php
            $QueryBuscarQtd3 = "SELECT * FROM tb_produtos";
            $ExeQrBsucarQtd3 = mysqli_query($connection, $QueryBuscarQtd3);
            if($ExeQrBsucarQtd3 > 0){
                echo strval(mysqli_num_rows($ExeQrBsucarQtd3));
            }else{ echo "0";}
        ?>
        </div>
    </article>
    <footer>
        <a href="?Pagina=Produtos&Ver">
            <span>Visualizar</span>
            <span>
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </span>
        </a>
    </footer>
</div>

<div class="bloco-item" id="item4">
    <header>Banners Cadastrados</header>
    <article>
        <div class="icone">
            <i class="fa fa-picture-o" aria-hidden="true"></i>
        </div>
        <div class="quantidade">
        <?php
            $QueryBuscarQtd4 = "SELECT * FROM tb_banners";
            $ExeQrBsucarQtd4 = mysqli_query($connection, $QueryBuscarQtd4);
            if($ExeQrBsucarQtd4 > 0){
                echo strval(mysqli_num_rows($ExeQrBsucarQtd4));
            }else{ echo "0";}
        ?>
        </div>
    </article>
    <footer>
        <a href="?Pagina=Banners">
            <span>Visualizar</span>
            <span>
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </span>
        </a>
    </footer>
</div>

<div class="bloco-item" id="item5">
    <header>Fornecedores Cadastrados</header>
    <article>
        <div class="icone">
            <i class="fa fa-truck" aria-hidden="true"></i>
        </div>
        <div class="quantidade">
        <?php
            $QueryBuscarQtd5 = "SELECT * FROM tb_fornecedores";
            $ExeQrBsucarQtd5 = mysqli_query($connection, $QueryBuscarQtd5);
            if($ExeQrBsucarQtd5 > 0){
                echo strval(mysqli_num_rows($ExeQrBsucarQtd5));
            }else{ echo "0";}
        ?>
        </div>
    </article>
    <footer>
        <a href="?Pagina=Fornecedores">
            <span>Visualizar</span>
            <span>
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </span>
        </a>
    </footer>
</div>