<?php include_once "Banners/container/Files-Select.php" ?>
<?php 
if(!isset($_GET['Confirm'])){
    include_once "Banners/container/Alert.php";
}
if(isset($_GET['Salvar'])){
    include_once "Banners/container/Gerenciamento-Banner.php";
}
?>


<link rel="stylesheet" href="Banners/style.css">


<div class="bloco-item">
<?php
    for ($i=1; $i < 6; $i++) { 
    ?>
    <form action="?Pagina=Banners&Confirm&Salvar&Id=<?php echo $i?>" method="post" enctype="multipart/form-data">
    <div class="row img-produto">
        <div class="col-2">
            <label for="banner<?php echo $i?>" class="form-label form-label-lg">Banner <?php echo $i?>: </label>
        </div>
        <div class="col-6">
        <?php
        $QueryBuscarCadastrado = "SELECT * FROM tb_banners WHERE id_banner = $i";
        $ExeQrBuscarCadastrado = mysqli_query($connection, $QueryBuscarCadastrado);
        if(mysqli_num_rows($ExeQrBuscarCadastrado) >= 1){
            //Mostrar Dados do banner
            while($ResBannerCadastrado = mysqli_fetch_assoc($ExeQrBuscarCadastrado)){
                $Banner = $ResBannerCadastrado['arquivo_banner']
            ?>
            <input 
                type="file" 
                name="banner<?php echo $i?>" 
                id="banner<?php echo $i?>"
                class="arquivo"
            >
            <input 
            type="text" 
            name="file" 
            id="file<?php echo $i?>" 
            class="file" 
            placeholder="<?php echo $Banner?>" 
            readonly="readonly"
            >
                <i class="fa fa-long-arrow-right btn color" aria-hidden="true"></i>
            <input type="button" class="btn btn-form btn-form-cancelar" id="btn<?php echo $i?>" value="SELECIONAR">
            <?php
            }
        }else{
            //Permitir Cadastrar
        ?>
            <input 
                type="file" 
                name="banner<?php echo $i?>" 
                id="banner<?php echo $i?>"
                class="arquivo"
                value=""
            >
            <input type="text" name="file" id="file<?php echo $i?>" class="file" placeholder="Selecione o Arquivo" readonly="readonly">
                <i class="fa fa-long-arrow-right btn color" aria-hidden="true"></i>
            <input type="button" class="btn btn-form btn-form-cancelar" id="btn<?php echo $i?>" value="SELECIONAR">
        <?php
        }
        ?>
        </div>
        <div class="col-2 check">
        <?php
        $QueryBuscarAtivado = "SELECT * FROM tb_banners WHERE id_banner = '$i'";
        $ExeQrBuscarAtivado = mysqli_query($connection, $QueryBuscarAtivado);
        if(mysqli_num_rows($ExeQrBuscarAtivado) >= 1){
            while($ResAtivo = mysqli_fetch_assoc($ExeQrBuscarAtivado)){
                if($ResAtivo['ativo_banner'] == 1){
                ?>
                    <input 
                        type="checkbox" 
                        name="ativar" 
                        id="ativar<?php echo $i?>" 
                        value="1"
                        checked
                    >
                    <label for="ativar<?php echo $i?>">Ativado</label>
                <?php
                }else{
                ?>
                <input type="checkbox" name="ativar" id="ativar<?php echo $i?>" value="1">
                <label for="ativar<?php echo $i?>">Inativo</label>
                <?php
                }
            }
        }else{
        ?>
            <input type="checkbox" name="ativar" id="ativar<?php echo $i?>" value="1">
            <label for="ativar<?php echo $i?>">Ativar</label>
        <?php
        }
        ?>
        </div>
        <div class="col-2 save-button">
            <button type="submit">
            <i class="fa fa-floppy-o" aria-hidden="true"></i>
            Salvar
            </button>
        </div>
    </div>
    </form>

    <hr>
    <?php
    }
?>
</div>