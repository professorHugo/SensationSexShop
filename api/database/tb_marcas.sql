-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Ago-2020 às 18:39
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
-- Estrutura da tabela `tb_marcas`
--

CREATE TABLE `tb_marcas` (
  `id_marca` int(11) NOT NULL,
  `nome_marca` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_marcas`
--

INSERT INTO tb_marcas (id_marca, nome_marca) VALUES
(1, 'Soft Love'),
(2, 'Pessini'),
(3, 'INTT'),
(4, 'Hot Flowers'),
(5, 'Secret Love'),
(6, 'Garji'),
(7, 'Pepper Blend'),
(8, 'La Pimenta'),
(9, 'CIMED'),
(10, 'Noru'),
(11, 'FeitiÃ§os'),
(12, 'Loka SensaÃ§Ã£o'),
(13, 'Pau Brasil'),
(14, 'Sexy Fantasy'),
(15, 'YouVibe'),
(16, 'VipMix');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_marcas`
--
ALTER TABLE `tb_marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_marcas`
--
ALTER TABLE `tb_marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
