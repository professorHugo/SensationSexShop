<?php   
 "<br> ID: " . $IdBanner = $_GET['Id'];
if($_POST['ativar'] == true){
     "<br> Ativar: " . $AtivarBanner = $_POST['ativar'];
}else{
     "<br> Ativar: " . $AtivarBanner = 0;
}


$QueryBuscarFotosBanners = "SELECT * FROM tb_banners WHERE id_banner = '$IdBanner'";
$ExeQrBuscarFotosBanners = mysqli_query($connection, $QueryBuscarFotosBanners);
$RowQrBuscarFotosBanners = mysqli_num_rows($ExeQrBuscarFotosBanners);
if(mysqli_num_rows($ExeQrBuscarFotosBanners) >= 1){
    while($ResBanner = mysqli_fetch_assoc($ExeQrBuscarFotosBanners)){
        if(isset($_POST['file'])){
            if($_POST['file'] !== ""){
                //Fazer o update do arquivo dentro da pasta
                $Arquivo = $ResBanner['arquivo_banner'];
                 "<br> Arquivo a ser excluido: ".$Arquivo = "../img/Banner/$Arquivo";
                excluirArquivos($Arquivo);
            }
        }
    }

     "<br> Pasta do Banco de Dados: " .$PastaFile = "Banner";
     "<br> Pasta de upload: " . $PastaUp = "../img/Banner/";
    // $ArquivoUp = $PastaUp . basename($_FILES["imagem_produto"]["name"]);
     "<br>Nome: " . $NameFile = $_FILES["banner$IdBanner"]['name'];
     "<br>" . $extensao = pathinfo($_FILES["banner$IdBanner"]['name']);
     "<br>" . $extensao = "." . $extensao['extension'];

     "<br>Arquivo para upload: " . $ArquivoUp = $PastaUp . "BANNER_0$IdBanner" . $extensao;
     "<br>Arquivo: " . $ArquivoDB = "BANNER_0$IdBanner" . $extensao;

    if (move_uploaded_file($_FILES["banner$IdBanner"]["tmp_name"], $ArquivoUp)) {
         "<br>The file ". basename( $_FILES["banner$IdBanner"]["name"]). " has been uploaded.";

         "<br><pre>".
        $QueryInsertFoto = "
            UPDATE tb_banners
            SET arquivo_banner = '$ArquivoDB', ativo_banner = '$AtivarBanner'
            WHERE id_banner = '$IdBanner'
        ";
         "</pre>";

        $ExeQrInsertFoto = mysqli_query($connection, $QueryInsertFoto);
        if($ExeQrInsertFoto){
             "<br><br>Banner alterado";
        }else{
             "<br><br>Erro: ".mysqli_error($connection);
        }

    } else {
         "<br><pre>".
        $QueryInsertFoto = "
            UPDATE tb_banners
            SET ativo_banner = '$AtivarBanner'
            WHERE id_banner = '$IdBanner'
        ";
         "</pre>";
        $ExeQrInsertFoto = mysqli_query($connection, $QueryInsertFoto);
        if($ExeQrInsertFoto){
             "<br><br>Banner Cadastrado";
        }else{
             "<br><br>Erro: ".mysqli_error($connection);
        }
    }
}else {
    "<br> ID: " . $IdBanner = $_GET['Id'];
     "<br> Pasta do Banco de Dados: " .$PastaFile = "Banner";
     "<br> Pasta de upload: " . $PastaUp = "../img/Banner/";
    // $ArquivoUp = $PastaUp . basename($_FILES["imagem_produto"]["name"]);
     "<br>Nome: " . $NameFile = $_FILES["banner$IdBanner"]['name'];
     "<br>" . $extensao = pathinfo($_FILES["banner$IdBanner"]['name']);
     "<br>" . $extensao = "." . $extensao['extension'];

     "<br>Arquivo para upload: " . $ArquivoUp = $PastaUp . "BANNER_0$IdBanner" . $extensao;
     "<br>Arquivo: " . $ArquivoDB = "BANNER_0$IdBanner" . $extensao;

    if (move_uploaded_file($_FILES["banner$IdBanner"]["tmp_name"], $ArquivoUp)) {
         "<br>The file ". basename( $_FILES["banner$IdBanner"]["name"]). " has been uploaded.";

         "<br><pre>".
        $QueryInsertFoto = "
            INSERT INTO tb_banners(arquivo_banner,ativo_banner)values('$ArquivoDB','$AtivarBanner')
        ";
         "</pre>";

        $ExeQrInsertFoto = mysqli_query($connection, $QueryInsertFoto);
        if($ExeQrInsertFoto){
             "<br><br>Banner Cadastrado";
        }else{
             "<br><br>Erro: ".mysqli_error($connection);
        }

    } else {
     "Sorry, there was an error uploading your file.";
    }
}

?>

<script type="text/javascript">
    $(function(){
        $("body").addClass('modal-open');
    });
</script>

<!-- Modal Logged in-->
<div class="modal fade show" id="Banner-Alterado" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
<div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Atualização do Banner <?php echo $IdBanner ?> </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
    </div>
    <div class="modal-body">
        <div class="col-md-12 text-center">
            <img src="../img/ajax-loader.gif">
            </div>
            <div class="col-md-12 text-center">
            <p>O Banner <?php echo $IdBanner?> foi atulaizado</p>
            <p>Aguarde, você será redirecionado para ver os demais banners</p>
            </div>
        </div>
        <meta http-equiv="refresh" content="1;?Pagina=Banners&Confirm">
    <div class="modal-footer">
        <span class="btn btn-form-cancelar">Você será redirecionado, aguarde...</span>
    </div>
    </div>
</div>
</div>