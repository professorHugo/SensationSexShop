-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Ago-2020 às 22:27
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sensationss`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `id_produto` int(11) NOT NULL,
  `categoria_produto` int(11) DEFAULT NULL,
  `marca_produto` int(11) DEFAULT NULL,
  `titulo_produto` varchar(100) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `fornecedor_produto` int(11) DEFAULT NULL,
  `foto_produto` int(11) DEFAULT '1',
  `descricao_produto` varchar(500) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `preco_produto` varchar(10) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `qtd_produto` int(11) DEFAULT '0',
  `status_produto` int(11) DEFAULT '0',
  `hot` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`id_produto`, `categoria_produto`, `marca_produto`, `titulo_produto`, `fornecedor_produto`, `foto_produto`, `descricao_produto`, `preco_produto`, `qtd_produto`, `status_produto`, `hot`) VALUES
(1, 1, 1, 'Facilit', 1, 2, 'ContÃ©m 3 unidades. Ã‰ uma bolinha funcional anestÃ©sica 4x1 sendo as funÃ§Ãµes, AnestÃ©sico, Lubrificante, Vasodilatador, Cicatrizante.', '12,20', 1, 1, 0),
(2, 2, 5, 'Gel Aromatizante', 1, 3, 'Sabores: Tequila e Gyn. Gel para massagem corporal comestÃ­vel que aquece e lubrifica. Ã‰ uma alternativa bem prazerosa para o sexo oral.', '12,50', 3, 1, 0),
(3, 3, 3, 'AtraÃ§Ã£o Fatal', 1, 4, 'teste', '69,90', 1, 1, 0),
(4, 4, 12, 'TesÃ£o de Vaca', 1, 5, 'teste', '12,50', 2, 1, 0),
(5, 5, 13, 'Plug Anal', 1, 6, 'Material: Metal.\r\nCores: Roxo e Azul.\r\nContÃ©m: 1un', '12,50', 5, 1, 0),
(6, 6, 15, 'Vibrador', 1, 7, 'Tamanho Aproximadamente: 22 x 3,3cm tamanho total, sendo 10 x 3cm penetrÃ¡veis. Vibrador Rotativo: especial feito em jelly macio com pÃ©rolas metÃ¡licas internas para estimulaÃ§Ã£o, possui rotaÃ§Ã£o com giro positivo e negativo, estimulador em formato bichinho com vibraÃ§Ã£o, as duas funÃ§Ãµes podem ser acionadas juntas ou separadamente, tudo regulado por botÃµes na base do vibrador.', '12,50', 5, 0, 0),
(7, 7, 16, 'Body Renda Floral', 1, 8, 'Cores: Branco e Preto. Ajusta-se facilmente do tamanho P ao G. Body Sexy Deliciosa. Ã‰ todo confeccionado em renda com estampa floral e com modelo fio dental, proporcionando uma silhueta impactante.', '25,30', 0, 0, 0),
(8, 8, 15, 'Kit Bondage (Couro)', 1, 9, 'Bracelete, Tornozeleira e Venda.', '83,70', 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `categoria_produto` (`categoria_produto`),
  ADD KEY `foto_produto` (`foto_produto`),
  ADD KEY `marca_produto` (`marca_produto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD CONSTRAINT `tb_produtos_ibfk_1` FOREIGN KEY (`categoria_produto`) REFERENCES `tb_categoria_produtos` (`id_categoria`),
  ADD CONSTRAINT `tb_produtos_ibfk_2` FOREIGN KEY (`marca_produto`) REFERENCES `tb_marcas` (`id_marca`),
  ADD CONSTRAINT `tb_produtos_ibfk_3` FOREIGN KEY (`foto_produto`) REFERENCES `tb_fotos` (`id_foto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
