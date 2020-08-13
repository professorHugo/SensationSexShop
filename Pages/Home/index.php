<link rel="stylesheet" href="css/Home.css">
<div class="rotulo_sessao">
    <h1>
        <?php 
            if( isset($_GET['L']) ){
                echo $P = $_GET['L'];
            }else{
                echo $P = "Produtos: ";
            }
            
        ?>
    </h1>
    <hr>
</div>

<?php
//Começar o loop a partir desses itens
"<br> <pre>" . 
$QueryBuscarProdutos = "
SELECT * FROM
    tb_produtos p
INNER JOIN tb_categoria_produtos AS cat
    ON  p.categoria_produto = cat.id_categoria
INNER JOIN tb_fotos AS fotos
    ON p.foto_produto = fotos.id_foto
INNER JOIN tb_marcas AS marca
    ON p.marca_produto = marca.id_marca
INNER JOIN tb_fornecedores AS fornecedor
    ON p.fornecedor_produto = fornecedor.id_fornecedor
WHERE status_produto = 1
";
$ExeQrBuscarProdutos = mysqli_query($connection, $QueryBuscarProdutos);
$RowQrBuscarProdutos = mysqli_num_rows($ExeQrBuscarProdutos);
if( $RowQrBuscarProdutos >= 1 ){
    while($ReturnProdutos = mysqli_fetch_assoc($ExeQrBuscarProdutos)){
        "<br>Categoria: " . $NomeCategoria = $ReturnProdutos['nome_categoria'];
        "<br>Fornecedor: " . $NomeFornecedor = $ReturnProdutos['nome_fornecedor'];
        "<br>Produto: " . $NomeProduto = $ReturnProdutos['titulo_produto'];
        "<br>Marca: " . $MarcaProduto = $ReturnProdutos['nome_marca'];
        "<br>Foto: " . $FotoProduto = $ReturnProdutos['pasta_foto'] . "/" . $ReturnProdutos['arquivo_foto'];
        "<br>Descrição: " . $DescricaoProduto = $ReturnProdutos['descricao_produto'];
        "<br>Preço: " . $PrecoProduto = $ReturnProdutos['preco_produto'];
        "<br>Quantidade: " . $QuantidadeProduto = $ReturnProdutos['qtd_produto'];
        "<br>Status: " . $StatusProduto = $ReturnProdutos['status_produto'];
?>

<div class="produto-item">
    <div class="col-12 topo-bloco">
        <header><?php echo $NomeProduto?></header>
        <p><?php echo $MarcaProduto?></p>
    </div>
    <div class="col-12 conteudo-bloco">
        <div class="img-bloco float-left">
            <img 
            src="api/img/<?php echo $FotoProduto?>" 
            alt="<?php echo $NomeProduto?>" 
            class="img-fluid"
            title="<?php echo $NomeProduto?>"
            >
        </div>
        <div class="texto-bloco float-left">
            <p>
                <?php echo Resumo($DescricaoProduto, 90)?>...
            </p>
        </div>
    </div>

    <div class="clearfix"></div>
    <hr>
    
    <div class="col-12 rodape">
        <p class="valor-produto">
            R$ <?php echo $PrecoProduto?>
        </p>
        <?php
        $texto = "Olá, gostaria de saber mais sobre o produto $NomeProduto"
        ?>
        <a 
            href="https://api.whatsapp.com/send?phone=+5511988205155&text=<?php echo $texto?>" 
            class="chamar-whatsapp"
        >
            <i class="fa fw fa-whatsapp"></i>
            Saber Mais
        </a>
    </div>
</div>

<?php
    }
}

?>