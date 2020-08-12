<?php
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
";