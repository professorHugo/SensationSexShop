DROP DATABASE IF EXISTS sensationss;

CREATE DATABASE sensationss DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

USE sensationss;

CREATE TABLE auth_senhas (
    id_senha int not null PRIMARY KEY auto_increment,
    md5_senha varchar(100)
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
INSERT INTO auth_senhas(md5_senha)VALUES('eb0a191797624dd3a48fa681d3061212');

CREATE TABLE tb_usuarios(
    id_usuario int not null PRIMARY KEY auto_increment,
    email_usuario varchar(100) NOT NULL,
    nome_usuario VARCHAR(100) NOT NULL,
    senha_usuario int NOT NULL,

    FOREIGN KEY(senha_usuario) REFERENCES auth_senhas(id_senha)
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
INSERT INTO tb_usuarios(email_usuario,nome_usuario,senha_usuario)VALUES('master@sensationsexyshop.com.br','Master',1);

CREATE TABLE tb_categoria_fotos(
    id_categoria int not null primary key auto_increment,
    nome_categoria varchar(50) DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
INSERT INTO tb_categoria_fotos(nome_categoria)VALUES('Produtos'),('Banners');

CREATE TABLE tb_categoria_produtos(
    id_categoria int not null primary key auto_increment,
    nome_categoria varchar(50) DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
INSERT INTO tb_categoria_fotos(nome_categoria)VALUES('Teste');


CREATE TABLE tb_fornecedores(
    id_fornecedor int not null PRIMARY KEY auto_increment,
    nome_fornecedor VARCHAR(50)
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

CREATE TABLE tb_fotos(
    id_foto int not null PRIMARY KEY auto_increment,
    categoria_foto int DEFAULT NULL,
    pasta_foto VARCHAR(25) DEFAULT NULL,
    arquivo_foto varchar(100) DEFAULT NULL,

    FOREIGN KEY(categoria_foto)REFERENCES tb_categoria_fotos(id_categoria)
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
INSERT INTO tb_fotos(arquivo_foto)VALUES('image.jpg');

CREATE TABLE tb_marcas(
    id_marca int not null PRIMARY KEY auto_increment,
    nome_marca VARCHAR(50) DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

CREATE TABLE tb_descricao(
    id_descricao int not null PRIMARY KEY auto_increment,
    texto_descricao varchar(500) DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

CREATE TABLE tb_preco(
    id_preco int not null PRIMARY KEY auto_increment,
    valor_preco FLOAT DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

CREATE TABLE tb_produtos(
    id_produto int not null PRIMARY KEY auto_increment,
    categoria_produto int DEFAULT NULL,
    marca_produto int DEFAULT NULL,
    titulo_produto VARCHAR(100) DEFAULT NULL,
    fornecedor_produto int DEFAULT NULL,
    foto_produto int DEFAULT 1,
    descricao_produto VARCHAR(500) DEFAULT NULL,
    preco_produto VARCHAR(10) DEFAULT NULL,
    qtd_produto int DEFAULT 0,
    status_produto int DEFAULT 0,


    INDEX(categoria_produto),
    INDEX(foto_produto),
    INDEX(marca_produto),

    FOREIGN KEY(categoria_produto) REFERENCES tb_categoria_produtos(id_categoria),
    FOREIGN KEY(marca_produto) REFERENCES tb_marcas(id_marca),
    FOREIGN KEY(foto_produto) REFERENCES tb_fotos(id_foto)
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

CREATE TABLE tb_banners(
    id_banner int not null PRIMARY KEY auto_increment,
    titulo_banner varchar(50) DEFAULT "Banner",
    alt_banner varchar(50) DEFAULT "Banner",
    pasta_banner VARCHAR(50) DEFAULT "Banner",
    arquivo_banner VARCHAR(50) DEFAULT NULL,
    ativo_banner int DEFAULT 0
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;