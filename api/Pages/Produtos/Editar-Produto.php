<!-- <div style="
    position: absolute; 
    left:5px; 
    background: #000; 
    color: #fff;
    z-index:9999;
    padding: 2rem;
    max-width:550px;
    overflow-y: auto;
    top:15px "
> -->

<?php
  "<br>Id: " . $IdProduto = $_GET['Id'];


  "<br>Fornecedor: " . $Fornecedor = $_POST['fornecedor'];
  "<br>Categoria: " . $Categoria = $_POST['categoria'];
if($_POST['ativar'] == true){
      "<br>Ativação: " . $Ativacao = 1;
}else{
      "<br>Ativação: " . $Ativacao = 0;
}
 "<br>Quantidade: " . $Qtd = $_POST['qtd_produto'];
 "<br>Título: " . $Nome = $_POST['titulo_produto'];
 "<br>Marca: " . $Marca = $_POST['marca_produto'];
 "<br>Preço: " . $Preco = $_POST['preco_produto'];
 "<br>Descrição: " . $Descricao = $_POST['descricao_produto'];
 "<br>Campo de Img: " . $CampoImg = 'imagem_produto'.$IdProduto;
 "<br>Embalagem: " . $ConteudoProduto = $_POST['conteudo_produto'];
 if( $_POST['hot_produto'] == true ){
    "<br>HOT: " . $HotProduto = 1;
 }else{
    "<br>HOT: " . $HotProduto = 0;
 }
 "<br>Novidade: " . $NovidadeProduto = $_POST['novidade_produto'];


//Upload da imagem nova
if( !empty($_FILES[$CampoImg]['name']) ){
    //Imagem antiga na pasta
    $Arquivo = "../img/" . $_POST['file_b'];
      "<br> Arquivo a ser excluido: ".$Arquivo;
    //Função para excluir o arquivo
    excluirArquivos($Arquivo);
      "<br>Vai para a pasta: " . $PastaFile = "/Produtos";
      "<br>Caminho Upload: " . $PastaUp = "../../img/";
      "<br>Extensão: " . $extensao = "." . $extensao['extension'];

      "<br>Diretório e arquivo a ser carregado: " . $ArquivoUp = $Arquivo;
    

    if (move_uploaded_file($_FILES[$CampoImg]["tmp_name"], $ArquivoUp)) {
         "<br>The file ". basename( $_FILES[$CampoImg]["name"]). " has been uploaded.";    
    } else {
         "<br>Sorry, there was an error uploading your file.";
    }
}


//Update dos dados dos produtos
 "<br><pre>" . 
$QueryUpdateDadosProdutos = "
    UPDATE tb_produtos
    SET
        categoria_produto = '$Categoria',
        marca_produto = '$Marca',
        titulo_produto = '$Nome',
        fornecedor_produto = '$Fornecedor',
        descricao_produto = '$Descricao',
        preco_produto = '$Preco',
        qtd_produto = '$Qtd',
        status_produto = '$Ativacao',
        hot_produto = '$HotProduto',
        novidade_produto = '$NovidadeProduto',
        conteudo_produto = '$ConteudoProduto'
    WHERE id_produto = '$IdProduto'
";
 "</pre>";
$ExeQrUpdateDadosProdutos = mysqli_query($connection, $QueryUpdateDadosProdutos);
if( $ExeQrUpdateDadosProdutos ){
    "<br>Produto editado.";
?>
<script type="text/javascript">
    $(function(){
        $("body").addClass('modal-open');
    });
</script>

<!-- Modal Produto Editado-->
    <div 
        class="modal fade show" 
        id="modalLoggedIn" 
        data-keyboard="false" 
        tabindex="-1" 
        role="dialog" 
        aria-labelledby="staticBackdropLabel" 
        aria-hidden="true" 
        style="
            display:block;
            padding-top:15%;
            background: var(--color-background-opacity2);
        "
    >
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Cadastro de Produto</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            <div class="modal-body">
                <div class="col-md-12 text-center">
                    <img src="../img/ajax-loader.gif">
                    </div>
                    <div class="col-md-12 text-center">
                        <p>Editando o Produto...</p>
                        <p>Produto: <?php echo "$Nome" ?></p>
                        <p>Você será redirecionado</p>
                    </div>
                </div>
            <div class="modal-footer">
                <a href="?Pagina=Produtos&Ver" class="btn btn-form">Ver Produtos</a>
                <meta http-equiv="refresh" content="2;?Pagina=Produtos&Ver">
            </div>
            </div>
        </div>
    </div>

<?php    
}else {
    "<br>Erro: ".mysqli_error($connection);
}
?>
</div>


