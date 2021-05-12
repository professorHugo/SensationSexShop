<a class="navbar-brand name" href="?">
    <?php echo SITENAME ?>
</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
</button>

<div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    <li 
        <?php if( $_GET['L'] == "Home" ){ echo 'class="nav-item active"'; }else{ echo 'class="nav-item"';}?>
    >
        <a class="nav-link" href="?L=Home">Inicio <span class="sr-only">(current)</span></a>
    </li>
    <li 
    <?php if( $_GET['L'] == "Novidades" ){ echo 'class="nav-item active"'; }else{ echo 'class="nav-item"';}?>
    >
        <a class="nav-link" href="?L=Novidades">Novidades</a>
    </li>
    <li 
    <?php if( $_GET['L'] == "All" && isset($_GET['H']) ){ echo 'class="nav-item active"'; }else{ echo 'class="nav-item"';}?>
    
    >
        <a class="nav-link" href="?L=Home">Todos</a>
    </li>
    <li 
    <?php if( $_GET['L'] == "Mais-Vendidos" ){ echo 'class="nav-item active"'; }else{ echo 'class="nav-item"';}?>
    >
        <a class="nav-link" href="?L=Mais-Vendidos">Hot (Mais comprados)</a>
    </li>
    <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Categorias
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
        <?php
        $QueryBuscarCategorias = "SELECT * FROM tb_categoria_produtos";
        $ExeQrBuscarCategorias = mysqli_query($connection, $QueryBuscarCategorias);

        if( mysqli_num_rows($ExeQrBuscarCategorias) > 0 ){
            while($ReturnCategorias = mysqli_fetch_assoc($ExeQrBuscarCategorias)){
            ?>
            <a class="dropdown-item" href="?L=Categoria&C=<?php echo $ReturnCategorias['id_categoria'] ?>">
                <?php echo $ReturnCategorias['nome_categoria'] ?>
            </a>
            <?php
            }
        }else{
            ?>
            <a class="dropdown-item" href="#">
                Categorias Não Cadastradas
            </a>
            <?php
        }
        ?>
        </div>
    </li>
    
    </ul>
    <form class="form-inline my-2 my-lg-0" action="?L=Buscar" method="post">
        <input 
            id="form-buscar" 
            class="form-control mr-sm-2" 
            type="search" 
            placeholder="Sabe o nome? " 
            aria-label="Search"
            name="Buscar"
        >
        <button class="btn my-2 my-sm-0" type="submit">Buscar</button>
    </form>
</div>