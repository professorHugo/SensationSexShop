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
    senha_usuario int NOT NULL,

    FOREIGN KEY(senha_usuario) REFERENCES auth_senhas(id_senha)
)ENGINE = InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

