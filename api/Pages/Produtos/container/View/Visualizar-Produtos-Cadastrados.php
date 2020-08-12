<div id="exibir-produtos">
    <?php
    include_once "Query-Buscar-Produtos.php";

    $ExeQrBuscarProdutos = mysqli_query($connection, $QueryBuscarProdutos);
    $RowQrBuscarProdutos = mysqli_num_rows($ExeQrBuscarProdutos);

    if($RowQrBuscarProdutos >= 1){
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
            <div class="col-12 topo-item">
                <header>
                    <?php echo $NomeProduto?>
                </header>
                <p>
                    <?php echo $MarcaProduto?>
                </p>
            </div>
            <div class="col-12 conteudo-bloco">
                <div class="img-bloco">
                    <img 
                    src="../img/<?php echo $FotoProduto?>" 
                    alt="<?php echo $NomeProduto?>" 
                    title="<?php echo $NomeProduto?>" 
                    class="img-fluid"
                    >
                </div>
                <div class="texto-bloco">
                    <p class="estoque">
                        Estoque: <?php echo $QuantidadeProduto?>
                    </p>
                    <p class="ativado">
                        <?php 
                            if($StatusProduto == 0){
                                echo "Inativo";
                            } else{
                                echo "Ativado";
                            }
                        ?>
                    </p>
                </div>
            </div>
            <div class="col-12 rodape">
                <p class="valor-produto">
                    R$ 12,20
                </p>
                <button 
                    type="button" 
                    class="btn btn-form btn-form-cancelar" 
                    data-toggle="modal" 
                    data-target="#ModalItem<?php echo $ReturnProdutos['id_produto'] ?>"
                >
                    <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
                    Editar Produto
                </button>
            </div>
        </div>
        
        <script type="text/javascript">
            $(function(){
                $("body").addClass('modal-open');
            });
        </script>

        <!-- Modal -->
        <div 
            class="modal fade show" 
            id="ModalItem<?php echo $ReturnProdutos['id_produto'] ?>" 
            data-backdrop="static" 
            data-keyboard="false" 
            tabindex="-1" 
            aria-labelledby="staticBackdropLabel" 
            aria-hidden="true"
            style="background: var(--color-secundary-opacity)"
            
        >
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <form action="?Pagina=Produtos&Ver&Editar&Id=<?php echo $ReturnProdutos['id_produto'] ?>" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Editar o Produto: <?php echo $NomeProduto?> </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!-- Linha 1 -->
                        <div class="row">
                            <!-- Fornecedor -->
                            <div class="col-4">
                                <label for="fornecedor" class="form-label form-label-lg">Fornecedor</label>
                                <select name="fornecedor" id="fornecedor"class="form-control form-control-lg" required>
                                    <option value="<?php echo $ReturnProdutos['fornecedor_produto']?>" selected>
                                        Atual: <?php echo $NomeFornecedor?>
                                    </option>
                                    <?php
                                    $QueryBuscarFornecedores = "SELECT * FROM tb_fornecedores";
                                    $ExeQrBuscarFornecedores = mysqli_query($connection, $QueryBuscarFornecedores);
                                    while($ReturnFornecedores = mysqli_fetch_assoc($ExeQrBuscarFornecedores)){
                                    ?>
                                    <option value="<?php echo $ReturnFornecedores['id_fornecedor']?>">
                                        <?php echo $ReturnFornecedores['nome_fornecedor']?>
                                    </option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                            <!-- Categoria -->
                            <div class="col-4">
                                <label for="categoria" class="form-label form-label-lg">Categoria:</label>
                                <select name="categoria" id="categoria" class="form-control form-control-lg" required>
                                    <option value="<?php echo $ReturnProdutos['categoria_produto'] ?>" selected>
                                        Atual: <?php echo $NomeCategoria ?>
                                    </option>
                                    <?php
                                    $QueryBuscarCategorias = "SELECT * FROM tb_categoria_produtos";
                                    $ExeQrBuscarCategorias = mysqli_query($connection, $QueryBuscarCategorias);
                                    while($ReturnCategorias = mysqli_fetch_assoc($ExeQrBuscarCategorias)){
                                    ?>
                                        <option value="<?php echo $ReturnCategorias['id_categoria'] ?>">
                                            <?php echo $ReturnCategorias['nome_categoria'] ?>
                                        </option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                            <!-- Ativação -->
                            <div class="col-2">
                                <?php
                                    if($StatusProduto == 0){
                                    ?>
                                        <label for="ativar<?php echo $ReturnProdutos['id_produto']?>">Ativar</label><br>
                                        <input type="checkbox" name="ativar" id="ativar<?php echo $ReturnProdutos['id_produto']?>" value="1">
                                    <?php
                                    }else{
                                    ?>
                                        <label for="ativar<?php echo $ReturnProdutos['id_produto']?>">Desativar</label><br>
                                        <input type="checkbox" name="ativar" id="ativar<?php echo $ReturnProdutos['id_produto']?>" value="1">
                                    <?php
                                    }
                                ?>
                            </div>
                            <!-- Quantidade -->
                            <div class="col-2">
                                <label for="qtd_produto<?php echo $ReturnProdutos['id_produto']?>" class="form-label form-label-lg">Qtd:</label>
                                <input 
                                    type="text" 
                                    class="form-control form-control-lg"
                                    required
                                    value="<?php echo $ReturnProdutos['qtd_produto']?>"
                                    id="qtd_produto<?php echo $ReturnProdutos['id_produto']?>"
                                    name="qtd_produto<?php echo $ReturnProdutos['id_produto']?>"
                                >
                            </div>
                        </div>
                        <hr>
                        <!-- Lina 2 -->
                        <div class="row">
                            <!-- Título Produto -->
                            <div class="col-4">
                                <label for="titulo_produto<?php echo $ReturnProdutos['id_produto']?>" class="form-label form-label-lg">Título do Produto</label>
                                <input 
                                    type="text" 
                                    class="form-control form-control-lg"
                                    required
                                    value="<?php echo $ReturnProdutos['titulo_produto']?>"
                                    id="titulo_produto<?php echo $ReturnProdutos['id_produto']?>"
                                    name="titulo_produto<?php echo $ReturnProdutos['id_produto']?>"
                                >
                            </div>
                            <!-- Marca -->
                            <div class="col-4">
                                <label for="marca_produto<?php echo $ReturnProdutos['id_produto']?>" class="form-label form-label-lg">Marca:</label>
                                <select 
                                    name="marca_produto<?php echo $ReturnProdutos['id_produto']?>" 
                                    id="marca_produto<?php echo $ReturnProdutos['id_produto']?>" 
                                    class="form-control form-control-lg"
                                >
                                    <option value="<?php echo $ReturnProdutos['marca_produto'] ?>" selected>
                                        Atual: <?php echo $MarcaProduto ?>
                                    </option>
                                    <?php
                                    $QueryBuscarMarca = "SELECT * FROM tb_marcas";
                                    $ExeQrBuscarMarca = mysqli_query($connection, $QueryBuscarMarca);
                                    while($ReturnMarca = mysqli_fetch_assoc($ExeQrBuscarMarca)){
                                    ?>
                                        <option value="<?php echo $ReturnMarca['id_marca'] ?>">
                                            <?php echo $ReturnMarca['nome_marca'] ?>
                                        </option>
                                    <?php
                                    }
                                    ?>
                                </select>
                            </div>
                            <!-- Preço -->
                            <div class="col-4">
                                <label 
                                    for="preco_produto<?php echo $ReturnProdutos['id_produto']?>" 
                                    class="form-label form-label-lg"
                                >
                                Preço do Produto</label>
                                <input 
                                    type="text" 
                                    class="form-control form-control-lg"
                                    required
                                    value="<?php echo $ReturnProdutos['preco_produto']?>"
                                    id="preco_produto<?php echo $ReturnProdutos['id_produto']?>"
                                    name="preco_produto<?php echo $ReturnProdutos['id_produto']?>"
                                >
                            </div>
                        </div>
                        <hr>
                        <!-- Linha 3 -->
                        <div class="row">
                            <!-- Imagem -->
                            <div class="col-6">
                                <label
                                    for="imagem_produto<?php echo $ReturnProdutos['id_produto']?>" 
                                    class="form-label form-label-lg"
                                >
                                    Imagem do Produto:
                                </label>
                                <img 
                                    src="../img/<?php echo $FotoProduto?>" 
                                    alt="<?php echo $NomeProduto?>" 
                                    title="<?php echo $NomeProduto?>" 
                                    class="img-fluid"
                                    style="max-height:40vh"
                                >
                                <input 
                                    type="file" 
                                    name="imagem_produto<?php echo $ReturnProdutos['id_produto']?>" 
                                    id="imagem_produto<?php echo $ReturnProdutos['id_produto']?>"
                                    class="form-control form-control-lg arquivo"
                                >
                                <input 
                                    type="text" 
                                    name="file" 
                                    id="file<?php echo $ReturnProdutos['id_produto']?>" 
                                    class="file<?php echo $ReturnProdutos['id_produto']?>" 
                                    placeholder="<?php echo $FotoProduto?>" 
                                    readonly="readonly"
                                    style="
                                        width: 15vw
                                    "
                                >
                                <input 
                                    type="button" 
                                    class="btn btn-cadastrar" 
                                    id="btn<?php echo $ReturnProdutos['id_produto']?>" 
                                    value="SELECIONAR"
                                >
                            </div>
                            <!-- Descrição -->
                            <div class="col-6">
                                <label 
                                    for="descricao_produto<?php echo $ReturnProdutos['id_produto']?>" 
                                    class="form-label form-label-lg"
                                >
                                    Descrição do Produto
                                </label>
                                <textarea 
                                    name="descricao_produto<?php echo $ReturnProdutos['id_produto']?>" 
                                    id="descricao_produto<?php echo $ReturnProdutos['id_produto']?>" 
                                    cols="30" 
                                    rows="16"
                                    class="form-control form-control-lg"
                                    placeholder="Digite a descrição do produto"
                                ><?php echo $DescricaoProduto?></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-form" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-form">
                            <i class="fa fa-floppy-o" aria-hidden="true"></i>
                            Salvar
                        </button>
                    </div>
                </form>
            </div>
        </div>
        </div>
        <?php

        }
    }else{
        if(mysqli_error($connection)){
            echo "Erro: ".mysqli_error($connection);
        }else{
            echo "Não existem produtos cadastrados.";
        }
    }
    ?>
</div>