<?php
$PastaFile = "Produtos";
$PastaUp = "../img/Produtos/";
// $ArquivoUp = $PastaUp . basename($_FILES["imagem_produto"]["name"]);
$NameFile = $_FILES['imagem_produto']['name'];
$extensao = pathinfo($_FILES['imagem_produto']['name']);
$extensao = "." . $extensao['extension'];

$RandomName = rand();
$ArquivoUp = $PastaUp . $RandomName . $extensao;
 "<br>Arquivo: " . $ArquivoDB = $RandomName . $extensao;

if (move_uploaded_file($_FILES["imagem_produto"]["tmp_name"], $ArquivoUp)) {
 "<br>The file ". basename( $_FILES["imagem_produto"]["name"]). " has been uploaded.";
} else {
 "Sorry, there was an error uploading your file.";
}

$QueryInsertFoto = "
    INSERT INTO tb_fotos(
        categoria_foto,
        pasta_foto,
        arquivo_foto
    )VALUES(
        '$Categoria',
        '$PastaFile',
        '$ArquivoDB'
    )
";

$ExeQrInsertFoto = mysqli_query($connection, $QueryInsertFoto);
if($ExeQrInsertFoto){
     "<br><br>Foto cadastrada";
}else{
     "<br><br>Erro: ".mysqli_error($connection);
}