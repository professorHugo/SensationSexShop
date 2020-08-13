<!-- <div
    style="
        position:absolute;
        top:0; left:0;
        padding: 15px;
        background: #fff; color: #000;
        max-width: 450px;z-index:9999;
    "
>
<b>Upload do arquivo: </b> -->

<?php
"<br>Pasta do arquivo: " . $PastaFile = "Produtos";
"<br>Categoria DB: " . $CategoriaDB = 1;
"<br> Pasta de Upload: " . $PastaUp = "../img/Produtos/";
"<br> Arquivo para upload: " . $ArquivoUp = $PastaUp . basename($_FILES["imagem_produto"]["name"]);
"<br>Nome do Arquivo Original: " . $NameFile = $_FILES['imagem_produto']['name'];
$extensao = pathinfo($_FILES['imagem_produto']['name']);
"<br>Extensão do Arquivo: " . $extensao = "." . $extensao['extension'];

"<br>Informação Random para arquivo: " . $RandomName = rand();
"<br> Arquivo que será carregado(UP): " . $ArquivoUp = $PastaUp . $RandomName . $extensao;
"<br>Arquivo DB: " . $ArquivoDB = $RandomName . $extensao;

if (move_uploaded_file($_FILES["imagem_produto"]["tmp_name"], $ArquivoUp)) {
"<br>The file ". basename( $_FILES["imagem_produto"]["name"]). " has been uploaded.";
} else {
echo "Sorry, there was an error uploading your file.";
}
"<br><pre>" . 
$QueryInsertFoto = "
    INSERT INTO tb_fotos(
        categoria_foto,
        pasta_foto,
        arquivo_foto
    )VALUES(
        '$CategoriaDB',
        '$PastaFile',
        '$ArquivoDB'
    )
";
"</pre>";

$ExeQrInsertFoto = mysqli_query($connection, $QueryInsertFoto);
if($ExeQrInsertFoto){
    "<br><br>Foto cadastrada";
}else{
    "<br><br>Erro ao cadastrar a foto: ".mysqli_error($connection);
}
?>
<!-- </div> -->