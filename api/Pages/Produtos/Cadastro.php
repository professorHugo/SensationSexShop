<?php include_once "Produtos/container/CSS-Cadastro-Produto.php" ?>
<?php include_once "Produtos/container/File-Select.php"?>

<?php
    include_once "Produtos/container/Cadastrar-Produto.php";
?>

<div class="bloco-item">
    <h1>Cadastro de Produtos</h1>
    <hr>
    <form class="form-container" action="?Pagina=Produtos&Cadastrar&Item" method="post" enctype="multipart/form-data">
        <div class="row">
            <div class="col-6">
                <label for="fornecedor" class="form-label form-label-lg">Fornecedor</label>
                <select name="fornecedor" id="fornecedor"class="form-control form-control-lg" required>
                    <option value="" disabled selected>Escolha o Fornecedor</option>
                    <?php
                    $QueryBuscarFornecedores = "SELECT * FROM tb_fornecedores";
                    $ExeQrBuscarFornecedores = mysqli_query($connection, $QueryBuscarFornecedores);
                    if($ExeQrBuscarFornecedores){
                        $RowQrBuscarFornecedores = mysqli_num_rows($ExeQrBuscarFornecedores);
                        if($RowQrBuscarFornecedores >= 1){
                            while($ResFornecedores = mysqli_fetch_assoc($ExeQrBuscarFornecedores)){
                                $IdF = $ResFornecedores['id_fornecedor'];
                                $NomeF = $ResFornecedores['nome_fornecedor'];
                            ?>
                            <option value="<?php echo $IdF?>">
                                <?php echo $NomeF?>
                            </option>
                            <?php
                            }
                        }else{
                            ?>
                            <option value="1">Cadastre seus fornecedores</option>
                            <?php
                        }
                    }
                    ?>
                </select>
            </div>

            <div class="col-6">
                <label for="categoria" class="form-label form-label-lg">Categoria:</label>
                <select name="categoria" id="categoria" class="form-control form-control-lg" required>
                    <option value="" disabled selected>Selecione a Categoria</option>
                    
                    <?php
                    $QueryBuscarCategorias = "SELECT * FROM tb_categoria_produtos";
                    $ExeQrBuscarCategorias = mysqli_query($connection, $QueryBuscarCategorias);
                    if($ExeQrBuscarCategorias){
                        $RowQrBuscarCategorias = mysqli_num_rows($ExeQrBuscarCategorias);
                        if($RowQrBuscarCategorias >= 1){
                            while($ResCategorias = mysqli_fetch_assoc($ExeQrBuscarCategorias)){
                                $IdC = $ResCategorias['id_categoria'];
                                $NomeC = $ResCategorias['nome_categoria'];
                            ?>
                            <option value="<?php echo $IdC?>">
                                <?php echo $NomeC?>
                            </option>
                            <?php
                            }
                        }else{
                            ?>
                            <option value="" disabled>Cadastre suas categorias</option>
                            <?php
                        }
                    }
                    ?>

                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-4">
                <label for="titulo_produto" class="form-label form-label-lg">Título do Produto</label>
                <input 
                    type="text" 
                    class="form-control form-control-lg"
                    required
                    placeholder="Digite o Título do Produto"
                    id="titulo_produto"
                    name="titulo_produto"
                >
            </div>
            <div class="col-4">
                <label for="marca_produto" class="form-label form-label-lg">Marca:</label>
                <select name="categoria" id="categoria" class="form-control form-control-lg" required>
                    <option value="" disabled selected>Selecione a Marca</option>
                    
                    <?php
                    $QueryBuscarMarcas = "SELECT * FROM tb_marcas";
                    $ExeQrBuscarMarcas = mysqli_query($connection, $QueryBuscarMarcas);
                    if($ExeQrBuscarMarcas){
                        $RowQrBuscarMarcas = mysqli_num_rows($ExeQrBuscarMarcas);
                        if($RowQrBuscarMarcas >= 1){
                            while($ResMarcas = mysqli_fetch_assoc($ExeQrBuscarMarcas)){
                                $IdC = $ResMarcas['id_marca'];
                                $NomeC = $ResMarcas['nome_marca'];
                            ?>
                            <option value="<?php echo $IdC?>">
                                <?php echo $NomeC?>
                            </option>
                            <?php
                            }
                        }else{
                            ?>
                            <option value="" disabled>Cadastre as Marcas</option>
                            <?php
                        }
                    }
                    ?>
                </select>
            </div>
            <div class="col-4">
                <label for="preco_produto" class="form-label form-label-lg">Preço do Produto</label>
                <input 
                    type="text" 
                    class="form-control form-control-lg"
                    required
                    placeholder="Apenas os números (10,50)"
                    id="preco_produto"
                    name="preco_produto"
                >
            </div>
        </div>
        <hr>
        <div class="row img-produto">
            <div class="col-12">
                <label for="imagem_produto" class="form-label form-label-lg">Imagem do Produto: </label>
                <input 
                    type="file" 
                    name="imagem_produto" 
                    id="imagem_produto"
                    class="form-control form-control-lg arquivo"
                >
                <input type="text" name="file" id="file" class="file" placeholder="Arquivo" readonly="readonly">
                <input type="button" class="btn btn-cadastrar" id="btn" value="SELECIONAR">
            </div>
        </div>
        <hr>
        <div class="row">
            <div class="col-12">
                <label for="descricao_produto" class="form-label form-label-lg">Descrição do Produto</label>
                <textarea 
                    name="descricao_produto" 
                    id="descricao_produto" 
                    cols="30" 
                    rows="10"
                    class="form-control form-control-lg"
                    placeholder="Digite a descrição do produto"
                ></textarea>
            </div>
        </div>
        <hr>
        <div class="row rodape-form-produtos">
            <button type="reset" class="btn btn-cancelar">Cancelar</button>
            <button type="submit" class="btn btn-cadastrar">Cadastrar</button>
        </div>
    </form>
</div>