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
INSERT INTO tb_usuarios(email_usuario,nome_usuario,senha_usuario)VALUES('master@sensationsexshop.com.br','Master',1);

CREATE TABLE tb_categoria_fotos(
    id_categoria int not null primary key auto_increment,
    nome_categoria varchar(50) DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
INSERT INTO tb_categoria_fotos(nome_categoria)VALUES('Produtos'),('Banners');

CREATE TABLE tb_categoria_produtos(
    id_categoria int not null primary key auto_increment,
    nome_categoria varchar(50) DEFAULT NULL
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;
-- INSERT INTO tb_categoria_fotos(nome_categoria)VALUES('Teste');
-- INSERT INTO tb_categoria_produtos (id_categoria, nome_categoria) VALUES
-- (1, 'Gel Funcional'),
-- (2, 'Gel ComestÃ­vel'),
-- (3, 'Ã“leo de Massagem'),
-- (4, 'EnergÃ©ticos'),
-- (5, 'Plug Anal'),
-- (6, 'Vibradores'),
-- (7, 'Lingeries'),
-- (8, 'Sado & Fetiche');

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
-- INSERT INTO tb_marcas (id_marca, nome_marca) VALUES
-- (1, 'Soft Love'),
-- (2, 'Pessini'),
-- (3, 'INTT'),
-- (4, 'Hot Flowers'),
-- (5, 'Secret Love'),
-- (6, 'Garji'),
-- (7, 'Pepper Blend'),
-- (8, 'La Pimenta'),
-- (9, 'CIMED'),
-- (10, 'Noru'),
-- (11, 'FeitiÃ§os'),
-- (12, 'Loka SensaÃ§Ã£o'),
-- (13, 'Pau Brasil'),
-- (14, 'Sexy Fantasy'),
-- (15, 'YouVibe'),
-- (16, 'VipMix');

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
    hot_produto int DEFAULT 0,
    novidade_produto int DEFAULT 0,


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

----------------------------
--  Inserção de Dados Dev --
--   Comentar para Prod   --
----------------------------
INSERT INTO tb_categoria_produtos (
    id_categoria, 
    nome_categoria
) 
VALUES
(1, 'Gel Funcional'),
(2, 'Gel ComestÃ­vel'),
(3, 'Ã“leo de Massagem'),
(4, 'EnergÃ©ticos'),
(5, 'Plug Anal'),
(6, 'Vibradores'),
(7, 'Lingeries'),
(8, 'Sado & Fetiche');

INSERT INTO tb_fotos (
    id_foto, 
    categoria_foto, 
    pasta_foto, 
    arquivo_foto
)
VALUES
(1, NULL, NULL, 'image.jpg'),
(2, 1, 'Produtos', '21912.jpg'),
(3, 1, 'Produtos', '8662.png'),
(4, 1, 'Produtos', '9478.png'),
(5, 1, 'Produtos', '18375.png'),
(6, 1, 'Produtos', '1378.jpg'),
(7, 1, 'Produtos', '2962.png'),
(8, 1, 'Produtos', '22259.png'),
(9, 1, 'Produtos', '6499.png');

INSERT INTO tb_produtos (
    categoria_produto, 
    marca_produto, 
    titulo_produto, 
    fornecedor_produto, 
    foto_produto, 
    descricao_produto, 
    preco_produto,
    qtd_produto, 
    status_produto, 
    hot
)
VALUES
(1, 1, 'Facilit', 1, 2, 'ContÃ©m 3 unidades. Ã‰ uma bolinha funcional anestÃ©sica 4x1 sendo as funÃ§Ãµes, AnestÃ©sico, Lubrificante, Vasodilatador, Cicatrizante.', '12,20', 1, 1, 0),
(2, 5, 'Gel Aromatizante', 1, 3, 'Sabores: Tequila e Gyn. Gel para massagem corporal comestÃ­vel que aquece e lubrifica. Ã‰ uma alternativa bem prazerosa para o sexo oral.', '12,50', 3, 1, 0),
(3, 3, 'AtraÃ§Ã£o Fatal', 1, 4, 'teste', '69,90', 1, 1, 0),
(4, 12, 'TesÃ£o de Vaca', 1, 5, 'teste', '12,50', 2, 1, 0),
(5, 13, 'Plug Anal', 1, 6, 'Material: Metal.\r\nCores: Roxo e Azul.\r\nContÃ©m: 1un', '12,50', 5, 1, 0),
(6, 15, 'Vibrador', 1, 7, 'Tamanho Aproximadamente: 22 x 3,3cm tamanho total, sendo 10 x 3cm penetrÃ¡veis. Vibrador Rotativo: especial feito em jelly macio com pÃ©rolas metÃ¡licas internas para estimulaÃ§Ã£o, possui rotaÃ§Ã£o com giro positivo e negativo, estimulador em formato bichinho com vibraÃ§Ã£o, as duas funÃ§Ãµes podem ser acionadas juntas ou separadamente, tudo regulado por botÃµes na base do vibrador.', '12,50', 5, 0, 0),
(7, 16, 'Body Renda Floral', 1, 8, 'Cores: Branco e Preto. Ajusta-se facilmente do tamanho P ao G. Body Sexy Deliciosa. Ã‰ todo confeccionado em renda com estampa floral e com modelo fio dental, proporcionando uma silhueta impactante.', '25,30', 0, 0, 0),
(8, 15, 'Kit Bondage (Couro)', 1, 9, 'Bracelete, Tornozeleira e Venda.', '83,70', 1, 0, 0);