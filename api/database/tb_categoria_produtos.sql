-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Ago-2020 às 19:18
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
-- Estrutura da tabela `tb_categoria_produtos`
--

CREATE TABLE `tb_categoria_produtos` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_categoria_produtos`
--

INSERT INTO tb_categoria_produtos (id_categoria, nome_categoria) VALUES
(1, 'Gel Funcional'),
(2, 'Gel ComestÃ­vel'),
(3, 'Ã“leo de Massagem'),
(4, 'EnergÃ©ticos'),
(5, 'Plug Anal'),
(6, 'Vibradores'),
(7, 'Lingeries'),
(8, 'Sado & Fetiche');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_categoria_produtos`
--
ALTER TABLE `tb_categoria_produtos`
  ADD PRIMARY KEY (`id_categoria`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_categoria_produtos`
--
ALTER TABLE `tb_categoria_produtos`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
