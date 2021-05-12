<?php
$QueryBuscarBanners = "SELECT * FROM tb_banners WHERE ativo_banner = 1";
$ExeQrBuscarBanners = mysqli_query($connection, $QueryBuscarBanners);
$ExeQrBuscarBanners2 = mysqli_query($connection, $QueryBuscarBanners);
if( mysqli_num_rows($ExeQrBuscarBanners) >= 1 ) {
//Marcadores de Transição # <ol> #
?>
<ol class="carousel-indicators">
<?php
while( $ResBanner1 = mysqli_fetch_assoc($ExeQrBuscarBanners) ) {
    $IdBanner = $ResBanner1['id_banner'] - 1;

    if( $IdBanner == 1 ){
        ?>
            <li data-target="#Banner" data-slide-to="<?php echo $IdBanner ?>" class="active"></li>
        <?php
    }else{
        ?>
            <li data-target="#Banner" data-slide-to="<?php echo $IdBanner ?>"></li>
        <?php
    }
}
?>
</ol>

<!-- Elementos do banner -->
<div class="carousel-inner">
<?php
while( $ResBanner2 = mysqli_fetch_assoc($ExeQrBuscarBanners2) ) {
    $IdBanner = $ResBanner2['id_banner'];
    $Arquivo = $ResBanner2['pasta_banner'] . "/" . $ResBanner2['arquivo_banner'];
    $AltText = $ResBanner2['alt_banner'];
    $Title = $ResBanner2['titulo_banner'];

    if( $IdBanner == 1 ){
        ?>
            <div class="carousel-item active">
                <img 
                    src="api/img/<?php echo $Arquivo?>" 
                    class="img-topo" 
                    alt="<?php echo $AltText?>"
                    alt="<?php echo $Title?>"
                >
            </div>
        <?php
    }else{
        ?>
            <div class="carousel-item">
                <img 
                    src="api/img/<?php echo $Arquivo?>" 
                    class="img-topo" 
                    alt="<?php echo $AltText?>"
                    alt="<?php echo $Title?>"
                >
            </div>
        <?php
    }
}
?>
</div>



<!-- Navegação do banner -->
<a class="carousel-control-prev" href="#Banner" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
</a>
<a class="carousel-control-next" href="#Banner" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
</a>
<?php
    
}else{
    ?>
    <ol class="carousel-indicators">
        <li data-target="#Banner" data-slide-to="0" class="active"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="api/img/Banner/BANNER_01.png" class="img-topo" alt="Banner Catálogo">
        </div>
    </div>
    <a class="carousel-control-prev" href="#Banner" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#Banner" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
    <?php
}
?>