<link rel="stylesheet" href="css/Home.css">

<?php
if( $_GET['L'] == "Buscar" ){
?>
<div class="rotulo_sessao">
    <h1>
        <?php 
            if( isset($_GET['L']) ){
                echo $P = $_GET['L'] .": ". $_POST['Buscar'];
            }else{
                echo $P = "Produtos: ";
            }
            
        ?>
    </h1>
    <hr>
</div>
<?php
    $Buscar = $_POST['Buscar'];
    "<br> Buscar o item: $Buscar";
    
    "<br><pre>" .
        $QueryBuscarProdutosHot = "
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

    WHERE status_produto = 1 && titulo_produto LIKE '%$Buscar%'
    ";
     "</pre>";

    $ExeQrBuscarProdutosHot = mysqli_query($connection, $QueryBuscarProdutosHot);
    
    if( mysqli_num_rows($ExeQrBuscarProdutosHot) > 0 ){
        while($ReturnProdutos = mysqli_fetch_assoc($ExeQrBuscarProdutosHot)){
             "<br>ProdutoID: " . $IdProduto = $ReturnProdutos['id_produto'];
             "<br>Categoria: " . $NomeCategoria = $ReturnProdutos['nome_categoria'];
             "<br>Fornecedor: " . $NomeFornecedor = $ReturnProdutos['nome_fornecedor'];
             "<br>Produto: " . $NomeProduto = $ReturnProdutos['titulo_produto'];
             "<br>Marca: " . $MarcaProduto = $ReturnProdutos['nome_marca'];
             "<br>Foto: " . $FotoProduto = $ReturnProdutos['pasta_foto'] . "/" . $ReturnProdutos['arquivo_foto'];
             "<br>Descrição: " . $DescricaoProduto = $ReturnProdutos['descricao_produto'];
             "<br>Preço: " . $PrecoProduto = $ReturnProdutos['preco_produto'];
             "<br>Quantidade: " . $ConteudoProduto = $ReturnProdutos['conteudo_produto'];
             "<br>Status: " . $StatusProduto = $ReturnProdutos['status_produto'];
             "<br>Hot: " . $HotProduto = $ReturnProdutos['hot_produto'];
        ?>

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
                        <?php
                            if( $HotProduto == 1 ){
                                include "containers/Hot-Product.php";
                            }
                        ?>
                    </div>
                    <div class="texto-bloco float-left">
                        <p>
                            <?php echo Resumo($DescricaoProduto, 40)?>...
                        </p>
                    </div>
                    <div class="texto-bloco float-left">
                        <p>
                            Conteúdo da embalagem: <?php echo $ConteudoProduto ?>
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
                    $QueryBuscarContato = "SELECT * FROM tb_contato WHERE status_contato = '1'";
                    $ExeQrBuscarContato = mysqli_query($connection, $QueryBuscarContato);
                    while( $ReturnContato = mysqli_fetch_assoc($ExeQrBuscarContato) ){
                        $Telefone = $ReturnContato['numero_contato'];
                    }
                    $texto = "Olá, gostaria de saber mais sobre o produto *$NomeProduto*"
                    ?>
                    <a href="?L=Produto&Id=<?php echo $IdProduto?>" 
                        class="chamar-whatsapp"
                        target="_self"
                    >
                        <i class="fa fa-info-circle"></i>
                        Saber Mais
                    </a>
                    <!-- <a href="https://api.whatsapp.com/send?phone=+55<?php echo $Telefone?>&text=<?php echo $texto?>" 
                        class="chamar-whatsapp"
                        target="_blank"
                    >
                        <i class="fa fw fa-whatsapp"></i>
                        Saber Mais
                    </a> -->
                </div>
            </div>
        <?php
        }
    }else{
        ?>
        <div class="rotulo_sessao">
                <h1>
                    <?php 
                        if( isset($_GET['L']) ){
                            $Buscar = $_POST['Buscar'];
                                                      
                            
                            echo $P = $_GET['L'] . ": " . $Buscar;
                        }else{
                            echo $P = "Produtos: ";
                        }
                        
                    ?>
                </h1>
                <hr>
            </div>
            <h5>Nenhum Produto encontrado sua pesquisa</h5>
            <a href="?" style="font-size:1.3rem;color: var(--cor-base-2)">
                <span>
                    <i class="fa fa-chevron-left" aria-hidden="true"></i>
                </span>
                &nbsp;Voltar para página inicial
            </a>
        <?php
    }

}