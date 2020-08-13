<?php
if(isset($_GET['Item'])){
?>
<!-- <div
    style="
        position:absolute;
        top:0; left:450px;
        padding: 15px;
        background: #fff; color: #000;
        max-width: 450px;z-index:9999;
        margin-left: 10px
    "
>
<b>Informações do produto: </b> -->
<?php
    "<br>Fornecedor: ".$Fornecedor = $_POST['fornecedor'];
    "<br>Categoria: ".$Categoria = $_POST['categoria'];
    "<br>Nome do Produto: ".$Titulo = $_POST['titulo_produto'];
    "<br>Preço do Produto: ".$Preco = $_POST['preco_produto'];
    "<br>Arquivo de imagem: ".$Imagem = $_FILES['imagem_produto']['name'];
    "<br>Texto do Produto: ".$Descricao = $_POST['descricao_produto'];
    "<br>Marca do Produto: ".$Marca = $_POST['marca_produto'];
?>
<!-- </div> -->
<?php
    //Upload da imagem
    include_once "Produtos/container/Upload.php";
    //CadastrarProduto
    $QueryCadastrarProduto = "
        INSERT INTO tb_produtos(
            fornecedor_produto,
            categoria_produto,
            titulo_produto,
            descricao_produto,
            preco_produto,
            marca_produto              
        )VALUES(
            '$Fornecedor',
            '$Categoria',
            '$Titulo',
            '$Descricao',
            '$Preco',
            '$Marca'
        )
    ";
    $ExeQrCadastrarProduto = mysqli_query($connection, $QueryCadastrarProduto);
    if($ExeQrCadastrarProduto){
        //Update para foto
        $QueryBuscarFotos = "SELECT * FROM tb_fotos WHERE arquivo_foto = '$ArquivoDB'";
        $ExeQrBuscarFotos = mysqli_query($connection, $QueryBuscarFotos);
        $RowQrBuscarFotos = mysqli_num_rows($ExeQrBuscarFotos);

        if( $RowQrBuscarFotos >= 1){
            while($ResQrBuscarFotos = mysqli_fetch_assoc($ExeQrBuscarFotos)){
                $IdFoto = $ResQrBuscarFotos['id_foto'];
                    $QueryUpdateFotoProduto = "
                    UPDATE tb_produtos
                    SET foto_produto = '$IdFoto'
                    WHERE foto_produto = 1
                ";
                $ExeQrUpdateFotoProduto = mysqli_query($connection, $QueryUpdateFotoProduto);
                if($ExeQrUpdateFotoProduto){
                        "<br>Foto ajustada";
                }else{
                        "<br>Erro: ".mysqli_error($connection);
                }
            }
        }
    }else{
            "<br>Erro: ".mysqli_error($connection);
    }

    include_once "Produtos/container/Modal-Produto-Cadastrado.php";
}
?>