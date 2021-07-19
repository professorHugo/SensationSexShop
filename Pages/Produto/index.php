<link rel="stylesheet" href="css/Home.css">
<link rel="stylesheet" href="css/Produto.css">
<?php
  if(isset($_GET['Id'])){
    $IdProduto = $_GET['Id'];

    "<br><pre>" . 
    $QueryBuscarProduto = "
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
    WHERE status_produto = 1 && p.id_produto = '$IdProduto'
    ";
    "</pre>";
    $ExeQrBuscarProduto = mysqli_query($connection, $QueryBuscarProduto);
    $RowQrBuscarProduto = mysqli_num_rows($ExeQrBuscarProduto);

    if( $RowQrBuscarProduto = 1 ){
      while($ReturnProduto = mysqli_fetch_assoc($ExeQrBuscarProduto)){
        "<br>ProdutoID: " . $IdProduto = $ReturnProduto['id_produto'];
        "<br>Categoria: " . $NomeCategoria = $ReturnProduto['nome_categoria'];
        "<br>Fornecedor: " . $NomeFornecedor = $ReturnProduto['nome_fornecedor'];
        "<br>Produto: " . $NomeProduto = $ReturnProduto['titulo_produto'];
        "<br>Marca: " . $MarcaProduto = $ReturnProduto['nome_marca'];
        "<br>Foto: " . $FotoProduto = $ReturnProduto['pasta_foto'] . "/" . $ReturnProduto['arquivo_foto'];
        "<br>Descrição: " . $DescricaoProduto = $ReturnProduto['descricao_produto'];
        "<br>Preço: " . $PrecoProduto = $ReturnProduto['preco_produto'];
        "<br>Quantidade: " . $ConteudoProduto = $ReturnProduto['conteudo_produto'];
        "<br>Status: " . $StatusProduto = $ReturnProduto['status_produto'];
        "<br>Hot: " . $HotProduto = $ReturnProduto['hot_produto'];
      }
    }
  }

  
?>
<div class="rotulo_sessao">
  <h1>
    <a class="fa fa-arrow-left" style="color: var(--cor-base-3)" href="javascript:history.back()"></a>
    <?php 
      if( isset($_GET['L']) ){
        $P = $_GET['L'];
        echo substr_replace($P, "Produto: $NomeProduto - $MarcaProduto",0);
      }else{
        echo $P = "Produto: ";
      }
    ?>
  </h1>
  <hr>
</div>

<div class="col-12 view-produto">
  <div class="produto-item">
    <div class="col-12 conteudo-bloco">
      <div class="col-12 img-bloco float-left">
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
      <div class="col-12 texto-bloco float-left">
        <p>
          <?php echo Resumo($DescricaoProduto)?>
        </p>
      </div>
      <div class="col-12 texto-bloco float-left">
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
      <!-- <a href="?L=Produto&Id=<?php echo $IdProduto?>" 
          class="chamar-whatsapp"
          target="_self"
      >
          <i class="fa fa-info-circle"></i>
          Saber Mais
      </a> -->
      <a href="https://api.whatsapp.com/send?phone=+55<?php echo $Telefone?>&text=<?php echo $texto?>" 
          class="chamar-whatsapp"
          target="_blank"
      >
          <i class="fa fw fa-whatsapp"></i>
          Entrar em contato
      </a>
    </div>
  </div>
</div>