-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 12-Maio-2021 às 08:56
-- Versão do servidor: 5.6.41-84.1
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `n2yco435_sensationss`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_senhas`
--

CREATE TABLE `auth_senhas` (
  `id_senha` int(11) NOT NULL,
  `md5_senha` varchar(100) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `auth_senhas`
--

INSERT INTO `auth_senhas` (`id_senha`, `md5_senha`) VALUES
(1, 'eb0a191797624dd3a48fa681d3061212');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_banners`
--

CREATE TABLE `tb_banners` (
  `id_banner` int(11) NOT NULL,
  `titulo_banner` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT 'Banner',
  `alt_banner` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT 'Banner',
  `pasta_banner` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT 'Banner',
  `arquivo_banner` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `ativo_banner` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_banners`
--

INSERT INTO `tb_banners` (`id_banner`, `titulo_banner`, `alt_banner`, `pasta_banner`, `arquivo_banner`, `ativo_banner`) VALUES
(1, 'Banner', 'Banner', 'Banner', 'BANNER_01.png', 1),
(2, 'Banner', 'Banner', 'Banner', 'BANNER_02.png', 1),
(3, 'Banner', 'Banner', 'Banner', 'BANNER_03.png', 0),
(4, 'Banner', 'Banner', 'Banner', 'BANNER_04.png', 1),
(5, 'Banner', 'Banner', 'Banner', 'BANNER_05.png', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria_fotos`
--

CREATE TABLE `tb_categoria_fotos` (
  `id_categoria` int(11) NOT NULL,
  `nome_categoria` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_categoria_fotos`
--

INSERT INTO `tb_categoria_fotos` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Produtos'),
(2, 'Banners');

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

INSERT INTO `tb_categoria_produtos` (`id_categoria`, `nome_categoria`) VALUES
(1, 'Gel ComestÃ­vel'),
(2, 'Gel Funcional'),
(3, 'Lubrificantes'),
(4, 'Ã“leo de Massagem'),
(5, 'EnergÃ©ticos'),
(6, 'Plugs'),
(7, 'Vibradores'),
(8, 'Lingeries'),
(9, 'Sado | Fetiche'),
(10, 'AcessÃ³rios'),
(11, 'Fantasias');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contato`
--

CREATE TABLE `tb_contato` (
  `id_contato` int(11) NOT NULL,
  `numero_contato` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `status_contato` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_contato`
--

INSERT INTO `tb_contato` (`id_contato`, `numero_contato`, `status_contato`) VALUES
(1, '1199162-7033', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fornecedores`
--

CREATE TABLE `tb_fornecedores` (
  `id_fornecedor` int(11) NOT NULL,
  `nome_fornecedor` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_fornecedores`
--

INSERT INTO `tb_fornecedores` (`id_fornecedor`, `nome_fornecedor`) VALUES
(1, 'Gall'),
(2, 'Loja do Desejo'),
(3, 'Click Sofia'),
(4, 'New Star Couros'),
(5, 'Chillies'),
(6, 'Distribuidora Sex Shop'),
(7, 'Shoope');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fotos`
--

CREATE TABLE `tb_fotos` (
  `id_foto` int(11) NOT NULL,
  `categoria_foto` int(11) DEFAULT NULL,
  `pasta_foto` varchar(25) COLLATE utf8_general_mysql500_ci DEFAULT NULL,
  `arquivo_foto` varchar(100) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_fotos`
--

INSERT INTO `tb_fotos` (`id_foto`, `categoria_foto`, `pasta_foto`, `arquivo_foto`) VALUES
(1, NULL, NULL, 'image.jpg'),
(2, 1, 'Produtos', '1254432474.png'),
(3, 1, 'Produtos', '1794245695.jpg'),
(4, 1, 'Produtos', '558700182.jpg'),
(5, 1, 'Produtos', '1776641673.jpg'),
(6, 1, 'Produtos', '1137349291.jpg'),
(7, 1, 'Produtos', '1353447097.jpg'),
(8, 1, 'Produtos', '2020463526.jpg'),
(9, 1, 'Produtos', '1723845851.jpg'),
(10, 1, 'Produtos', '620996137.jpg'),
(11, 1, 'Produtos', '651528982.jpg'),
(12, 1, 'Produtos', '524997591.'),
(13, 1, 'Produtos', '1709756096.jpg'),
(14, 1, 'Produtos', '856629365.jpg'),
(15, 1, 'Produtos', '1555316092.jpg'),
(16, 1, 'Produtos', '1368787634.jpg'),
(17, 1, 'Produtos', '1911583807.jpg'),
(18, 1, 'Produtos', '417616618.jpg'),
(19, 1, 'Produtos', '1619786035.jpg'),
(20, 1, 'Produtos', '1527456193.jpg'),
(21, 1, 'Produtos', '1650633592.jpg'),
(22, 1, 'Produtos', '682494730.jpg'),
(23, 1, 'Produtos', '451811138.jpg'),
(24, 1, 'Produtos', '287570315.jpg'),
(25, 1, 'Produtos', '1242428811.jpg'),
(26, 1, 'Produtos', '797809751.jpg'),
(27, 1, 'Produtos', '1016472844.jpg'),
(28, 1, 'Produtos', '669113841.jpg'),
(29, 1, 'Produtos', '293499187.jpg'),
(30, 1, 'Produtos', '675576801.jpg'),
(31, 1, 'Produtos', '579705680.jpg'),
(32, 1, 'Produtos', '251403940.jpg'),
(33, 1, 'Produtos', '2077030418.png'),
(34, 1, 'Produtos', '1923870972.png'),
(35, 1, 'Produtos', '121458289.'),
(36, 1, 'Produtos', '698133230.png'),
(37, 1, 'Produtos', '1166541449.'),
(38, 1, 'Produtos', '1765098746.jpg'),
(39, 1, 'Produtos', '1241349912.jpg'),
(40, 1, 'Produtos', '808973592.jpg'),
(41, 1, 'Produtos', '1436754460.jpg'),
(42, 1, 'Produtos', '263243184.jpg'),
(43, 1, 'Produtos', '343532901.jpg'),
(44, 1, 'Produtos', '1258421760.jpg'),
(45, 1, 'Produtos', '1519229872.jpg'),
(46, 1, 'Produtos', '17924340.jpg'),
(47, 1, 'Produtos', '361633139.jpg'),
(48, 1, 'Produtos', '1204892183.jpg'),
(49, 1, 'Produtos', '1132084810.jpg'),
(50, 1, 'Produtos', '1117535829.jpg'),
(51, 1, 'Produtos', '33794739.jpg'),
(52, 1, 'Produtos', '449083699.jpg'),
(53, 1, 'Produtos', '1217614509.jpg'),
(54, 1, 'Produtos', '403123446.jpg'),
(55, 1, 'Produtos', '253750138.jpg'),
(56, 1, 'Produtos', '1030637412.jpg'),
(57, 1, 'Produtos', '745749716.jpg'),
(58, 1, 'Produtos', '1889933828.jpg'),
(59, 1, 'Produtos', '1025748879.'),
(60, 1, 'Produtos', '618812183.'),
(61, 1, 'Produtos', '646761093.jpeg'),
(62, 1, 'Produtos', '1044317044.jpeg'),
(63, 1, 'Produtos', '304861689.jpeg'),
(64, 1, 'Produtos', '1873702724.jpg'),
(65, 1, 'Produtos', '1126274452.jpg'),
(66, 1, 'Produtos', '364988803.jpg'),
(67, 1, 'Produtos', '2092188736.'),
(68, 1, 'Produtos', '1050550417.jpg'),
(69, 1, 'Produtos', '1832907104.jpg'),
(70, 1, 'Produtos', '322634188.jpg'),
(71, 1, 'Produtos', '43803396.jpg'),
(72, 1, 'Produtos', '1857378110.jpg'),
(73, 1, 'Produtos', '542959360.jpg'),
(74, 1, 'Produtos', '1979330272.jpg'),
(75, 1, 'Produtos', '1498150677.jpg'),
(76, 1, 'Produtos', '1105338695.jpg'),
(77, 1, 'Produtos', '1175793541.jpg'),
(78, 1, 'Produtos', '1033504262.jpg'),
(79, 1, 'Produtos', '153966048.jpg'),
(80, 1, 'Produtos', '558406356.jpg'),
(81, 1, 'Produtos', '314171931.jpg'),
(82, 1, 'Produtos', '346320866.jpg'),
(83, 1, 'Produtos', '1102454060.jpg'),
(84, 1, 'Produtos', '1192416083.jpg'),
(85, 1, 'Produtos', '1273605182.jpg'),
(86, 1, 'Produtos', '1961072518.jpg'),
(87, 1, 'Produtos', '1598824173.jpg'),
(88, 1, 'Produtos', '1871351702.jpg'),
(89, 1, 'Produtos', '1703935627.jpg'),
(90, 1, 'Produtos', '686085394.jpg'),
(91, 1, 'Produtos', '2082270246.jpg'),
(92, 1, 'Produtos', '454523397.jpg'),
(93, 1, 'Produtos', '1764489484.jpg'),
(94, 1, 'Produtos', '1498478201.jpg'),
(95, 1, 'Produtos', '1851420324.jpg'),
(96, 1, 'Produtos', '1216172268.jpg'),
(97, 1, 'Produtos', '287079891.jpg'),
(98, 1, 'Produtos', '1704903529.jpg'),
(99, 1, 'Produtos', '481277786.jpg'),
(100, 1, 'Produtos', '812250881.jpg'),
(101, 1, 'Produtos', '108198919.jpg'),
(102, 1, 'Produtos', '454747145.jpg'),
(103, 1, 'Produtos', '280167967.jpg'),
(104, 1, 'Produtos', '1687805454.jpg'),
(105, 1, 'Produtos', '541775778.jpg'),
(106, 1, 'Produtos', '1126045655.jpg'),
(107, 1, 'Produtos', '991879897.jpg'),
(108, 1, 'Produtos', '988663143.jpg'),
(109, 1, 'Produtos', '1457849531.jpg'),
(110, 1, 'Produtos', '1871539190.jpg'),
(111, 1, 'Produtos', '879830154.jpg'),
(112, 1, 'Produtos', '347510450.jpg'),
(113, 1, 'Produtos', '1729108585.jpg'),
(114, 1, 'Produtos', '803010275.jpg'),
(115, 1, 'Produtos', '882781398.jpg'),
(116, 1, 'Produtos', '978072683.jpg'),
(117, 1, 'Produtos', '954354108.jpg'),
(118, 1, 'Produtos', '1562951285.jpg'),
(119, 1, 'Produtos', '1607783317.jpg'),
(120, 1, 'Produtos', '1720622658.jpg'),
(121, 1, 'Produtos', '103607138.jpg'),
(122, 1, 'Produtos', '908682614.jpg'),
(123, 1, 'Produtos', '359837193.jpg'),
(124, 1, 'Produtos', '417738019.JPG'),
(125, 1, 'Produtos', '528252724.jpg'),
(126, 1, 'Produtos', '1694771676.jpg'),
(127, 1, 'Produtos', '1888188060.jpg'),
(128, 1, 'Produtos', '544841304.jpg'),
(129, 1, 'Produtos', '135871025.jpg'),
(130, 1, 'Produtos', '43047245.jpg'),
(131, 1, 'Produtos', '1391493224.jpg'),
(132, 1, 'Produtos', '188086109.jpg'),
(133, 1, 'Produtos', '836367955.jpg'),
(134, 1, 'Produtos', '1066933060.jpg'),
(135, 1, 'Produtos', '1304855760.jpg'),
(136, 1, 'Produtos', '875814423.jpg'),
(137, 1, 'Produtos', '1853432127.jpg'),
(138, 1, 'Produtos', '976098781.jpg'),
(139, 1, 'Produtos', '2046999978.jpg'),
(140, 1, 'Produtos', '287886752.jpg'),
(141, 1, 'Produtos', '1621437918.jpg'),
(142, 1, 'Produtos', '329168517.jpg'),
(143, 1, 'Produtos', '416419340.jpg'),
(144, 1, 'Produtos', '791622639.jpg'),
(145, 1, 'Produtos', '1943678447.jpg'),
(146, 1, 'Produtos', '401016456.jpg'),
(147, 1, 'Produtos', '104376036.jpeg'),
(148, 1, 'Produtos', '407179267.jpg'),
(149, 1, 'Produtos', '1895961048.jpg'),
(150, 1, 'Produtos', '2009869726.jpeg');

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

INSERT INTO `tb_marcas` (`id_marca`, `nome_marca`) VALUES
(1, 'Chillies'),
(2, 'Soft Love'),
(3, 'Hot Flowers'),
(4, 'Intt'),
(5, 'Secret Love'),
(6, 'Garji'),
(7, 'La Pimenta'),
(8, 'Pessini'),
(9, 'Cimed'),
(10, 'Noru'),
(11, 'Loka SensaÃ§Ã£o'),
(12, 'Pau Brasil '),
(13, 'Sexy Fantasy'),
(14, 'Vip Mix'),
(15, 'Gtoys'),
(16, 'Youvibe'),
(17, 'Pretty Love'),
(18, 'Sexy'),
(19, 'New Star Couros'),
(20, 'Pepper Blend'),
(21, 'FeitiÃ§os'),
(22, 'Womanizer'),
(23, 'Amareto'),
(24, 'Pimenta'),
(25, 'LD Import'),
(26, 'Dominatrixxx'),
(27, 'Sapeka'),
(28, 'Soulsex'),
(29, 'Hot Love'),
(30, 'Magical Kiss'),
(31, 'VIP');

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
  `hot_produto` int(11) DEFAULT '0',
  `novidade_produto` int(11) DEFAULT '0',
  `conteudo_produto` varchar(50) COLLATE utf8_general_mysql500_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`id_produto`, `categoria_produto`, `marca_produto`, `titulo_produto`, `fornecedor_produto`, `foto_produto`, `descricao_produto`, `preco_produto`, `qtd_produto`, `status_produto`, `hot_produto`, `novidade_produto`, `conteudo_produto`) VALUES
(1, 2, 2, 'Bolinha Triball Twister', 2, 2, 'Ã‰ uma bolinha funcional que aumenta a\r\nsensibilidade, estimulando a circulaÃ§Ã£o\r\nsanguÃ­nea da regiÃ£o e ao mesmo tempo\r\nremete as sensaÃ§Ãµes de aquecimento,\r\nrefrescÃ¢ncia, pulsaÃ§Ã£o e pequenos\r\nchoques, consequentemente aumentando\r\nmuito o desejo e o prazer.\r\n\r\n', '15,00', 10, 1, 0, 0, '3un'),
(2, 2, 2, 'Bolinha Facilit ', 2, 3, 'Ã‰ uma bolinha funcional anestÃ©sica 4 x 1\r\nsendo as funÃ§Ãµes, AnestÃ©sico, Lubrificante,\r\nVasodilatador, Cicatrizante.\r\n\r\n', '15,00', 0, 1, 0, 0, '3un'),
(3, 2, 2, 'Bolinha Power Boom', 2, 4, 'Bolinha funcional que possui diferentes\r\nnÃ­veis de calor, mais excitante, causa ereÃ§Ã£o\r\nprolongada no homem e aroma de energÃ©tico.\r\n\r\n', '15,00', 0, 1, 0, 0, '3un'),
(4, 2, 2, 'Bolinha Triball Afrodite', 2, 5, 'Ã‰ um Ã³leo que aumenta a sensibilidade,\r\nestimulando a circulaÃ§Ã£o sanguÃ­nea da\r\nregiÃ£o e ao mesmo tempo remete as\r\nsensaÃ§Ãµes de ESQUENTAR, ESFRIAR,\r\nVIBRAR e PULSAR mais o poder dos\r\nferomÃ´nios, consequentemente aumentando \r\no desejo e o prazer.\r\n\r\n', '15,00', 0, 1, 0, 0, '3un'),
(5, 2, 2, 'Bolinha Mamba Negra', 2, 6, 'Ã‰ uma bolinha excitante unissex que\r\nproporciona intensa sensaÃ§Ã£o de Esquenta,\r\nEsfria, Vibra e Pulsa.\r\n\r\n', '15,00', 0, 1, 0, 0, '3un'),
(6, 2, 2, 'Bolinha Electric Plus ', 2, 7, 'Bolinha funcional que aumenta a\r\nsensibilidade, dÃ¡ a sensaÃ§Ã£o de pequenos\r\nchoques, excitando ainda mais sua transa.\r\n\r\n', '15,00', 0, 1, 0, 0, '3un'),
(7, 2, 8, 'DJ Clit', 2, 8, 'Quando em contato com o clitÃ³ris age por\r\naproximadamente 30 minutos, excitando,\r\npuxando, aquecendo, vibrando e pulsando.\r\n\r\n', '60,00', 0, 1, 1, 0, '15g'),
(8, 2, 4, 'Striper Super Macho', 1, 9, 'Excitante masculino que proporciona uma noite mais\r\nlonga e prazerosa.\r\n\r\n', '28,00', 0, 1, 1, 0, '8g'),
(9, 2, 3, 'VolumÃ£o', 1, 10, 'Gel lubrificante que prolonga a ereÃ§Ã£o,\r\nproporcionando muito mais prazer e tempo na\r\nrelaÃ§Ã£o.\r\n\r\n', '34,00', 0, 1, 1, 1, '26g'),
(10, 2, 5, 'Mete em Mim ', 2, 11, 'Gel para massagem que aquece e resfria. Um\r\ndesejo quente, um friozinho gostoso, causando\r\numa sensaÃ§Ã£o inesquecÃ­vel.\r\n\r\n', '21,00', 0, 1, 0, 0, '15ml'),
(11, 2, 3, '7 SensaÃ§Ãµes', 2, 12, 'Produto Ãºnico com sete atributos que traz uma\r\nexperiÃªncia Ãºnica para o sexo anal, tendo em sua\r\nformulaÃ§Ã£o componentes que sÃ£o capazes de\r\ninibir a dor sem retirar o prazer. Os 7 atributos\r\nsÃ£o: Hidrata, Tonifica, Cicatriza, Dilata, Tira o\r\ndesconforto anal, Lubrifica e Estimula.\r\n\r\n', '37,50', 0, 1, 1, 0, '25g'),
(12, 2, 6, 'Beijo Grego Mix', 2, 13, 'Vai muito alÃ©m do tradicional Beijo Grego, possui\r\n5 funÃ§Ãµes especiais: BeijÃ¡vel, Esfria, Esquenta, Vibra\r\ne Lubrifica.\r\nSabor: Menta.\r\n\r\n', '38,00', 0, 1, 0, 0, '15ml'),
(13, 2, 5, 'Beijo Grego', 2, 14, 'Gel beijÃ¡vel com sabor de Tutti frutti para realizar\r\nfetiches. Desenvolvido principalmente para realizar\r\nsexo oral e anal.\r\n\r\n', '15,00', 0, 0, 0, 0, '15ml'),
(14, 2, 20, 'Beijo Mix', 2, 15, 'Gel comestÃ­vel que esquenta para ela e esfria\r\npara ele, desenvolvido especialmente para ser\r\nusado junto da pessoa que vocÃª adora beijar e fazer\r\num delicioso sexo oral.\r\n\r\n', '37,00', 0, 1, 0, 0, '2un | 7g cada'),
(15, 2, 8, 'Beijo Kong Fu ', 2, 16, 'Feito para que seus beijos sejam cheios de\r\nmovimentos incrÃ­veis e ousados, nas partes mais\r\nsensÃ­veis (IncrÃ­vel no sexo oral) com quem vocÃª\r\nama.\r\n\r\n', '90,00', 0, 1, 1, 0, '15g | 15ml'),
(16, 2, 7, 'Dark Balls', 2, 17, 'Primeiro excitante para testÃ­culos,\r\ndesenvolvido com ativos especiais que estimulam e\r\nexcitam, ativando as terminaÃ§Ãµes nervosas e todas as\r\ncamadas de tecido do saco escrotal, despertando\r\nregiÃµes sensoriais adormecidas e atÃ© esquecidas.\r\n\r\n', '43,00', 0, 1, 0, 0, '15g'),
(17, 2, 7, 'Dark Profund', 2, 18, 'Gel dessensibilizante de alta potÃªncia para sexo\r\nanal, desenvolvido com ativos especiais de aÃ§Ã£o\r\nimediata que traz todo o conforto e bem-estar que sua \r\nrelaÃ§Ã£o merece.\r\nAlivia a sensibilidade na regiÃ£o Ã­ntima alÃ©m de\r\nlubrificar com intensidade, proporcionando\r\nagradÃ¡vel sensaÃ§Ã£o relaxante sem abrir mÃ£o do\r\nprazer.\r\n\r\n', '48,00', 0, 1, 0, 0, '15g'),
(18, 2, 7, 'Shock-G', 2, 19, 'Sua formulaÃ§Ã£o Ã© composta por Ã³leos essenciais\r\nnobres que propiciam sensaÃ§Ãµes prazerosas como\r\nvibrar e pulsar, proporcionando muito mais prazer no\r\nsexo oral.\r\n\r\nSabores: Morango, Menta e Chocolate.\r\n\r\n', '61,00', 0, 1, 0, 0, '15g'),
(19, 2, 8, 'MÃ£os de Anitta', 2, 20, 'Lubrificante com toque aveludado, para\r\nmasturbaÃ§Ã£o, proporciona um toque suave\r\ndeixando a pele mais sensÃ­vel Ã s carÃ­cias.\r\n\r\n', '46,00', 0, 1, 0, 0, '15g'),
(20, 2, 3, 'Eu e VocÃª', 2, 21, 'Intensifica a excitaÃ§Ã£o sexual, estimula a vagina e\r\nsensibiliza o clitÃ³ris, facilitando para um orgasmo\r\nmais intenso e prazeroso. O BÃ¡lsamo possui\r\npropriedades hidratantes e antioxidantes e Ã© um\r\npotente afrodisÃ­aco com alto poder de vasodilataÃ§Ã£o', '30,00', 0, 1, 0, 0, ''),
(21, 2, 4, 'Kit Meu Primeiro Anal', 2, 22, 'Desenvolvido para vocÃª que busca novos\r\nprazes, o Kit Meu Primeiro Anal Ã© composto por 3\r\nitens: Gloss Anal, Gel Lubrificante e Gel\r\nDessensibilizante. Juntos, proporcionam uma\r\nexperiÃªncia altamente prazerosa para o casal.\r\n', '77,00', 0, 1, 0, 0, '3un | 8ml cada'),
(22, 2, 2, 'Facilit', 2, 23, 'Creme anal 4x1, anestÃ©sico, lubrificante,\r\nvasodilatador e cicatrizante. Tenha uma relaÃ§Ã£o\r\nsem dor.\r\n\r\n', '25,00', 0, 1, 1, 0, '15ml'),
(23, 2, 1, 'Pulse', 2, 24, 'Gel desenvolvido para dar a\r\nsensaÃ§Ã£o de vibraÃ§Ã£o,\r\nproporcionando muito mais\r\nprazer no sexo oral.\r\n\r\nMenta e Morango\r\n', '26,00', 0, 1, 0, 0, '15ml'),
(24, 2, 1, 'Excy Pink ', 5, 25, 'Ã‰ um excitante feminino, que ativa a circulaÃ§Ã£o\r\nsanguÃ­nea e promove intensidades nos sentidos\r\nproporcionando mais desejo. Causa uma\r\nsensaÃ§Ã£o de aquecimento na regiÃ£o da vagina.\r\n\r\n', '15,00', 0, 1, 0, 0, '8g'),
(25, 2, 1, 'Prolong Black', 5, 26, 'Ã‰ um produto ativador da corrente sanguÃ­nea,\r\ntem como funÃ§Ã£o prolongar a ereÃ§Ã£o e seus\r\nmomentos de prazer e retardar a ejaculaÃ§Ã£o.\r\n\r\n', '15,00', 0, 1, 0, 0, '8g'),
(26, 2, 1, 'Hanny Blue', 5, 27, 'Ã‰ um produto que funciona como um\r\nAnestÃ©sico anal, tendo a funÃ§Ã£o de\r\nanestesiar o Ã³rgÃ£o, ativando a corrente\r\nsanguÃ­nea. Ele alivia o atrito e a dor na\r\nhora da penetraÃ§Ã£o no Sexo Anal,\r\ntrazendo a sensaÃ§Ã£o de prazer na hora\r\nda relaÃ§Ã£o.\r\n\r\n', '20,00', 0, 1, 0, 0, '8g'),
(27, 2, 1, 'Ninfes Purple', 5, 28, 'Ã‰ um produto adstringente, tem como funÃ§Ã£o\r\nreduzir o canal vaginal, dando maior prazer na\r\nrelaÃ§Ã£o. O Adstringente diminui ligeiramente o\r\nfluxo de lubrificaÃ§Ã£o feminina, causando\r\nliteralmente a sensaÃ§Ã£o de aperto na vagina\r\n\r\n', '15,00', 0, 1, 0, 0, '8g'),
(28, 2, 1, 'G-Maxx', 5, 29, 'Excitante feminino, fazendo com que o\r\nÃ³rgÃ£o tenha contraÃ§Ãµes e espasmos,\r\naumentando a excitaÃ§Ã£o sexual feminina, essa\r\nexcitaÃ§Ã£o farÃ¡ com que ocorra um maior fluxo\r\nsanguÃ­neo na Ã¡rea aumentando a sensibilidade\r\nno ato da penetraÃ§Ã£o, levando a mulher ao\r\nClÃ­max.\r\n\r\n', '36,00', 0, 1, 1, 0, '15g'),
(29, 3, 7, 'Love Lub Ice', 1, 30, 'Lubrificante Ice em gel, incolor, sem cheiro, a\r\nbase dâ€™Ã¡gua e com uma deliciosa sensaÃ§Ã£o\r\ngelada.\r\n\r\n', '18,00', 0, 1, 0, 0, '60g'),
(30, 3, 9, 'K-MED Fire e Ice', 1, 31, 'Em contato com a pele, K-Med Fire\r\nproporciona uma sensaÃ§Ã£o de aquecimento\r\nrevigorante, jÃ¡ K-Med Ice promete uma\r\nsensaÃ§Ã£o de frescor emocionante. Juntos, os dois\r\nprovocam uma explosÃ£o de prazer.\r\n', '69,00', 0, 1, 0, 0, '2un | 40g cada'),
(31, 3, 9, 'K-MED 2 em 1', 1, 32, 'Gel para massagem com hidratante e lubrificante\r\nÃ­ntimo.\r\n\r\n', '21,00', 0, 1, 0, 0, '3un | 5g cada'),
(32, 3, 1, 'Lub Prime Hot ', 5, 33, 'Ã‰ um gel lubrificante que dÃ¡ a sensaÃ§Ã£o\r\nde aquecimento na pele\r\n\r\n', '17,00', 0, 1, 0, 0, '60g'),
(33, 3, 1, 'Lub Prime Ice ', 5, 34, 'Ã‰ um gel lubrificante que deixa a pele\r\ngelada\r\n\r\n', '17,00', 0, 1, 1, 0, '60g'),
(34, 3, 1, 'Lub Prime Menta', 5, 35, 'Ã‰ um gel lubrificante com aroma de menta.\r\n\r\n', '26,00', 0, 1, 0, 0, '120g'),
(35, 3, 1, 'Lub Prime Neutro', 5, 36, 'Ã‰ um gel lubrificante neutro, para um\r\nprazer em todas as relaÃ§Ãµes\r\n\r\n', '17,00', 0, 1, 0, 0, '60g'),
(36, 1, 5, 'Gel Aromatizante ', 2, 37, 'Gel para massagem corporal comestÃ­vel que\r\naquece e lubrifica. Ã‰ uma alternativa bem\r\nprazerosa para o sexo oral.\r\n\r\nSabores: Tequila e Gyn.\r\n', '15,00', 0, 1, 0, 0, '30ml'),
(37, 1, 5, 'Love Halls', 2, 38, 'Gel Ice comestÃ­vel, Love Halls resfria, tem\r\nsabor marcante. Hidrata e amacia a pele\r\ndespertando os sentidos e proporcionando uma\r\nexperiÃªncia inesquecÃ­vel.\r\n\r\n', '18,00', 0, 1, 0, 0, '18ml'),
(38, 1, 4, 'Fruit Sexy', 2, 39, 'Gel corporal para massagem que esquenta\r\nem contato com a pele. Hidrata e amacia.\r\nDesperta os sentidos trazendo uma experiÃªncia\r\ninesquecÃ­vel.\r\n\r\nSabores: Doce de Leite, Cola, Chocolate,\r\nCaipirinha, Amarula, Framboesa e AlgodÃ£o\r\ndoce.\r\n\r\n', '27,00', 0, 1, 0, 0, '40ml'),
(39, 1, 1, 'Love HOT', 5, 40, 'Ã‰ um Ã³leo lubrificante, que alÃ©m de\r\nhidratar ele excita e Ã© comestÃ­vel que\r\nesquenta, recomendado para as\r\npreliminares.\r\n\r\nSensaÃ§Ã£o, Chiclete e Menta\r\n', '15,00', 0, 1, 0, 0, '15ml'),
(40, 4, 4, 'AtraÃ§Ã£o Fatal', 2, 41, 'Ele age diretamente no aumento da\r\nsensibilidade, do prazer, do vÃ­nculo afetivo,\r\nconfianÃ§a e cumplicidade. Junto com a\r\nMassagem tantra, esse Ã³leo irÃ¡ proporcionar\r\norgasmos mais intensos, melhorando a\r\ncirculaÃ§Ã£o sanguÃ­nea e elasticidade da pele,\r\nrenovando a sua energia vital.\r\n\r\nAroma: AlgodÃ£o Doce.\r\n', '88,00', 0, 1, 0, 0, '120ml'),
(41, 4, 10, 'Gel Corporal Noru ', 2, 42, 'O gel Nuru apresenta caracterÃ­stica marcante\r\npelo fato de ser incolor, insÃ­pido, inodor e\r\nextremamente escorregadio. Ã‰ perfeito para a\r\nsua Massagem Nuru.\r\n\r\n', '89,00', 0, 1, 0, 0, '250ml'),
(42, 4, 3, 'Ã“leo Ylang Ylang', 2, 43, 'Esse Ã“leo Hidratante Ã© um produto muito\r\nsofisticado produzido com Ã³leo de coco e fabricado\r\ncom o mais alto padrÃ£o de qualidade. O Ã³leo Ã©\r\nperfeito para massagens complexas e relaxante.\r\n\r\nAroma: Ylang Ylang.\r\n', '72,00', 0, 1, 0, 0, '120ml'),
(43, 4, 21, 'Ã“leo AromÃ¡tico', 2, 44, 'Uma massagem deve ser suave e relaxante\r\npara atuar nos vÃ¡rios sistemas de energia do\r\ncorpo atravÃ©s de movimentos delicados e\r\nrÃ­tmicos.\r\n\r\nAromas: Menta, Kama Sutra, Chocolate com\r\nPimenta, MaÃ§a Verde, Morango com\r\nChampanhe e Ylang Ylang.\r\n', '62,00', 0, 1, 0, 0, '120ml'),
(44, 5, 11, 'TesÃ£o de Vaca', 1, 45, 'Gotas afrodisÃ­acas ! Coloque 20 gotas em sua\r\nbebida preferida e sinta o calor e a paixÃ£o. NÃ£o\r\ncolocar em bebidas gaseificadas.\r\n\r\n', '15,00', 0, 0, 0, 0, '10ml'),
(45, 5, 2, 'Fire Energy', 1, 46, 'Super energÃ©tico composto com taurina,\r\ncafeÃ­na, gluconolactona e pimenta, para dar um\r\nsuper gÃ¡s na relaÃ§Ã£o com muito calor, em dose\r\nÃºnica.\r\n\r\n', '13,00', 0, 0, 0, 0, '60ml'),
(46, 6, 12, 'Plug Pedra ', 2, 47, 'Plug Anal \r\n\r\nCores: Consultar\r\n', '42,50', 0, 1, 0, 0, '1 un '),
(47, 6, 13, 'Plug Esferas', 1, 48, 'Plug bol 5 esferas\r\n\r\nCores: Roxo\r\n\r\nContÃ©m: 1un', '31,00', 0, 1, 0, 0, ''),
(48, 10, 3, 'Ducha HigiÃªnica', 2, 49, 'Recomendada para uso pessoal com bico\r\naplicador com alcance de 8cm.\r\n\r\nContÃ©m: 1 und.', '48,00', 0, 1, 0, 0, ''),
(49, 7, 14, 'Vibrador Chaveiro', 1, 50, 'Vibrador para estimular o ClitÃ³ris\r\nFormato que lembra um\r\npequeno microfone, com uma\r\nÃºnica vibraÃ§Ã£o e perfeito para o\r\nclitÃ³ris\r\n\r\nConsultar Disponibilidade de Cores.', '25,00', 0, 1, 0, 0, ''),
(50, 7, 15, 'Power Bullet ClÃ¡ssico', 1, 51, 'Liga e desliga, com design Ãºnico,\r\nponta arredondada que permite ao\r\nusuÃ¡rio explorar uma massagem intensa\r\nem todo corpo.\r\n\r\nConsultar Disponibilidade de Cores ', '49,00', 0, 1, 0, 0, ''),
(51, 7, 15, 'Power Bullet 10 VibraÃ§Ãµes', 1, 52, 'Com 10 diferentes vibraÃ§Ãµes e\r\npulsaÃ§Ãµes, com design Ãºnico, sua\r\ncaracterÃ­stica alongada faz com que a\r\nvibraÃ§Ã£o transmitida seja apreciada de\r\nforma delicada.\r\n\r\nConsultar Disponibilidade de Cores', '64,00', 0, 0, 0, 0, ''),
(52, 7, 15, 'Mini Power Bullet 10 VibraÃ§Ãµes', 1, 53, 'Ponta arredondada que permite ao\r\nusuÃ¡rio explorar uma massagem intensa\r\nem todo corpo, pode se utilizar como um\r\nacessÃ³rio para estimulaÃ§Ã£o dos seios e\r\nmamilos, vagina, clitÃ³ris, perÃ­neo e ao\r\nredor do Ã¢nus.\r\n\r\nConsultar Disponibilidade de Cores', '45,00', 0, 0, 0, 0, ''),
(53, 7, 15, 'Mini Power Bullet ClÃ¡ssico', 1, 54, 'Ponta arredondada que permite ao\r\nusuÃ¡rio explorar uma massagem intensa\r\nem todo corpo, pode se utilizar como um\r\nacessÃ³rio para estimulaÃ§Ã£o dos seios e\r\nmamilos, vagina, clitÃ³ris, perÃ­neo e ao\r\nredor do Ã¢nus.\r\n\r\nConsultar Disponibilidade de Cores', '36,00', 0, 1, 0, 0, ''),
(54, 7, 16, 'Vibrador Liso', 1, 55, 'Vibrador liso com 10 modos de vibraÃ§Ã£o.\r\nProduto mede aproximadamente 18,3 X\r\n2,5cm, sendo penetrÃ¡veis 14cm.\r\n\r\nConsultar Disponibilidade de Cores', '88,00', 0, 1, 1, 0, ''),
(55, 7, 15, 'Bullet Jump Egg - 10 VibraÃ§Ãµes', 1, 56, 'Com controle luxuoso e detalhes em\r\ndourado, possui 10 modos de vibraÃ§Ã£o.\r\n\r\nConsultar Disponibilidade de Cores ', '105,90', 0, 1, 0, 0, ''),
(56, 7, 15, 'Bullet Egg', 1, 57, 'Em plÃ¡stico de toque aveludado com controle\r\nremoto sem fio, possui 20 nÃ­veis de vibraÃ§Ãµes!\r\n\r\nConsultar Disponibilidade de Cores ', '103,00', 0, 0, 0, 0, ''),
(57, 7, 15, 'Bullet Golfinho - Classico', 1, 58, 'Para o ponto G Ã© um vibrador feito de\r\nplÃ¡stico rÃ­gido liso, super resistente, ponta\r\nfina e curvada, possui toque super suave\r\naveludado.\r\n\r\nConsultar Disponibilidade de Cores ', '29,90', 0, 1, 1, 0, ''),
(58, 7, 16, 'Bullet Diamond', 1, 59, 'Vibrador Personal Ponto G Ã© um\r\nvibrador feito de plÃ¡stico rÃ­gido liso, super\r\nresistente, ponta fina e curvada, possui\r\ntoque super suave aveludado.\r\n\r\nConsultar Disponibilidade de Cores', '60,00', 0, 1, 0, 0, '1 un '),
(59, 7, 17, 'Mini Vibrador Caeser', 1, 60, 'Vibrador Caeser com 10 velocidades,\r\nponto G e clÃ­toris, super macio e com\r\ntoque aveludado.\r\n\r\nConsultar Disponibilidade de Cores ', '120,00', 0, 0, 0, 0, ''),
(60, 7, 15, 'Vibrador 8 Velocidades', 1, 61, 'Ponta arredondada que permite ao\r\nusuÃ¡rio explorar uma massagem intensa\r\nem todo corpo, pode se utilizar como um\r\nacessÃ³rio para estimulaÃ§Ã£o dos seios e\r\nmamilos, vagina, clitÃ³ris, perÃ­neo e ao\r\nredor do Ã¢nus.\r\n\r\nConsultar Disponibilidade de Cores ', '46,00', 0, 0, 0, 0, ''),
(61, 7, 16, 'Massageador  Ãntimo ', 1, 62, 'Esse massageador Ã­ntimo com\r\npoderosa vibraÃ§Ã£o e estimulaÃ§Ã£o, que\r\ncontribuirÃ¡ para a reduÃ§Ã£o de seu estresse\r\ne tensÃ£o, alÃ©m de proporcionar muito\r\nprazer e satisfaÃ§Ã£o durante o uso. Feito de\r\nsiliconede alta qualidade e possui 12\r\npadrÃµes diferentes de vibraÃ§Ã£o ultra\r\npotentes.\r\n\r\n', '175,00', 0, 1, 0, 0, '1 un '),
(62, 7, 16, 'Vibrador 36 Velocidades ', 1, 63, 'Vibrador Rotativo: especial feito em jelly\r\nmacio com pÃ©rolas metÃ¡licas internas para\r\nestimulaÃ§Ã£o, possui rotaÃ§Ã£o com giro positivo e\r\nnegativo, estimulador em formato bichinho com\r\nvibraÃ§Ã£o, as duas funÃ§Ãµes podem ser acionadas\r\njuntas ou separadamente, tudo regulado por\r\nbotÃµes na base do vibrador.\r\n\r\nTamanho Aproximadamente: 22 x 3,3cm\r\ntamanho total, sendo 10 x 3cm penetrÃ¡veis\r\nVÃ£o 4 pilhas AAA ( nÃ£o inclusas)\r\n\r\n\r\nConsultar Disponibilidade de Cores ', '192,00', 0, 0, 0, 0, ''),
(63, 7, 15, 'Vibrador Rotativo', 2, 64, 'PÃªnis rotativo: Com vibraÃ§Ã£o multivelocidade.\r\nFeito de CyberSkin, material macio com toque\r\naveludado que imita perfeitamente a pele\r\nhumana. Possui glande saliente e relevos em\r\nformato de veias.\r\n\r\nTamanho aproximadamente 20,5 X 4,7cm,\r\nsendo penetrÃ¡veis 17cm.', '240,00', 0, 0, 0, 0, ''),
(64, 8, 18, 'Body Deliciosa Sexy', 1, 65, 'Body Sexy Deliciosa. Ã‰ todo confeccionado em\r\nrenda com estampa floral e com modelo fio dental,\r\nproporcionando uma silhueta impactante.\r\n\r\nAjusta-se facilmente do tamanho P ao G.\r\nCores: Branco e Preto.', '64,00', 0, 0, 0, 0, ''),
(65, 8, 18, 'Body Sexy Luxo', 1, 66, 'Ã‰ todo confeccionado em renda com estampa floral, com\r\num lindo laÃ§o e com modelo fio dental,\r\nproporcionando uma silhueta impactante.\r\n\r\nAjusta-se facilmente do tamanho P ao G\r\nCores: Branco e Vermelho.', '54,00', 0, 0, 0, 0, ''),
(66, 8, 18, 'Espartilho ( Lacinho )', 1, 67, 'Espar tilho com Detalhes em Lacinho.\r\nConfeccionado em tule e renda com detalhes de\r\nlacinho, acompanha calcinha fio dental, para deixar\r\no modelo ainda mais sexy.\r\n\r\nAjusta-se facilmente do P ao M.\r\n\r\nCor: Branca.\r\n\r\n*NÃ£o acompanha meia.', '105,00', 0, 0, 0, 0, ''),
(67, 8, 18, 'Espartilho Macler (Renda)', 1, 68, 'Espartilho em Tule com Detalhes em Renda.\r\nConfeccionado em tule com detalhes em renda e\r\ndrapeado, acompanha calcinha fio dental, para\r\ndeixar o modelo ainda mais completo e sexy.\r\n\r\nAjusta-se facilmente do P ao M.\r\n\r\nCor: Branca.\r\n\r\nConsulte disponibilidade de cor e tamanho\r\n\r\n*NÃ£o acompanha meia', '114,00', 0, 0, 0, 0, ''),
(68, 8, 18, 'Calcinha Ziper', 1, 69, 'Calcinha zÃ­per. Toda feita em renda, com um\r\nzÃ­per e fio dental para apimentar o relacionamento.\r\n\r\nAjusta-se facilmente do tamanho P ao G.\r\n\r\nCores: Branco, Vermelho e Preto.', '30,00', 0, 1, 0, 0, ''),
(69, 8, 18, 'Tanga Happy Day', 2, 70, 'Tanga Happy Day. Toda confeccionada em\r\nrenda e com abertura para surpreender.\r\n\r\nAjusta-se facilmente do P ao G.\r\n\r\nCor: Vermelha.', '22,00', 0, 1, 0, 0, ''),
(70, 8, 18, 'Calcinha Peloras', 2, 71, 'Fio Dental PÃ©rola Safadinha. Confeccionada\r\nem renda com perolas para estimular o clitÃ³ris.\r\n\r\nAjusta-se facilmente do P ao G.\r\n\r\nCor: Vermelha e Preta.', '22,00', 0, 1, 0, 0, ''),
(71, 8, 18, 'Fio Dental Lap Dance', 2, 72, 'Fio Dental Lap Dance. Toda feita em renda e tiras\r\nconfortÃ¡veis que se adaptam perfeitamente ao\r\nseu corpo.\r\n\r\nAjusta-se facilmente do P ao G.\r\n\r\nCores: Vermelho e Preto.', '25,00', 0, 1, 0, 0, ''),
(72, 8, 18, 'Espartilho Macler Tully', 2, 73, 'P | M | G\r\n\r\nConsulte disponibilidade de cor e tamanho', '99,54', 0, 0, 0, 0, ''),
(73, 8, 18, 'Espartilho Macler', 1, 74, 'P | M | G\r\n\r\nConsulte disponibilidade de cor e tamanho', '106,00', 0, 0, 0, 0, ''),
(74, 8, 13, 'Meia Tradicional', 1, 75, 'Consultar Disponibilidade de Cores ', '18,00', 0, 1, 0, 0, ''),
(75, 8, 18, 'Meia Renda', 1, 76, 'Consultar Disponibilidade de Cores ', '25,00', 0, 1, 0, 0, ''),
(76, 9, 19, 'Kit Bondage 2', 4, 77, 'Bracelete, Tornozeleira e Venda', '81,00', 0, 1, 0, 0, ''),
(77, 9, 19, 'Kit Bondage 1', 4, 78, 'Bracelete e Tornozeleira', '95,00', 0, 1, 0, 0, ''),
(78, 9, 19, 'Chicote 1 (10 Tiras)', 4, 79, 'Chicote com 10 tiras - 50 cm', '46,00', 0, 1, 0, 0, ''),
(79, 9, 19, 'Chicote 2 (12 Tiras)', 4, 80, 'Chicote com 12 tiras - 50 cm', '91,00', 0, 1, 0, 0, ''),
(80, 7, 15, 'Bullet Ponto G - Com Aneis ', 6, 81, 'Medidas do Vibrador Multivelocidade com AnÃ©is Massageadores\r\nProduto:11,5x2,7x2,7 cm DiÃ¢metro: 2,7 cm PenetrÃ¡veis: 8 cm', '29,90', 0, 0, 0, 0, '1 UN'),
(81, 2, 4, 'Striper Excellent', 1, 82, '', '25,00', 0, 0, 0, 0, '8g'),
(82, 9, 19, 'Conjunto Coxa e Bracelete - Prata', 4, 83, 'Conjunto Coxa e Bracelete \r\nConfeccionado em material sintÃ©tico Montana de altÃ­ssima qualidade e excelente acabamento.\r\n \r\nCor: prata\r\n\r\nMedidas da coxa atÃ© 65 cm \r\n', '132,00', 0, 1, 0, 0, '1 un '),
(83, 9, 19, 'Venda ', 4, 84, 'Venda BÃ¡sica', '19,00', 0, 1, 0, 0, ''),
(84, 9, 19, 'Separador de Pernas', 4, 85, 'Tornozeleiras e Barra 50 cm', '92,00', 0, 1, 0, 0, ''),
(85, 9, 19, 'Bracelete', 4, 86, 'Bracelete com corrente', '49,00', 0, 1, 0, 0, ''),
(86, 9, 19, 'Tornozeleiras', 4, 87, 'Tornozeleira com corrente', '55,00', 0, 1, 0, 0, ''),
(87, 9, 19, 'Chibata', 4, 88, 'Chibata com corrente prata', '51,00', 0, 1, 0, 0, ''),
(88, 9, 19, 'Harness Feminino', 4, 89, 'Este modelo lhe dÃ¡ atÃ© 4 possibilidades de uso:\r\n1Âº Harness com as Algemas fixadas e prendendo os punhos\r\n2Âª Harness com as Algemas fixadas e prendendo os tornozelos\r\n3Âª Usando apenas uma das Algemas nos punhos\r\n4Âª Usando as duas algemas, unidas pelos mosquetes, no tornozelos. Assim a peÃ§a vira uma tornozeleira\r\n\r\nVeste do 36 ao 44 com ajustes\r\nCintura: 95cm\r\nCoxa: 65 cm \r\n\r\nFazemos sob medica !\r\nConsulte ', '119,90', 0, 1, 1, 1, '1 un '),
(89, 8, 18, 'Body Mirella Preto', 3, 90, 'P | M | G\r\n\r\nConsulte disponibilidade de cor e tamanho', '60,00', 0, 0, 0, 0, ''),
(90, 8, 18, 'Body Mirella Vermelho', 3, 91, 'P | M | G\r\n\r\nConsulte disponibilidade de cor e tamanho', '60,00', 0, 0, 0, 1, ''),
(91, 8, 18, 'Body Mirella Branco', 3, 92, 'P | M | G\r\n\r\nConsulte disponibilidade de cor e tamanho', '60', 0, 0, 0, 0, ''),
(92, 8, 18, 'Body Lorraine', 3, 93, 'P | M | G\r\n\r\nConsulte disponibilidade de cor e tamanho', '69,00', 0, 1, 0, 0, ''),
(93, 8, 18, 'Body Alana ', 3, 94, 'Preto | Branco \r\n\r\nP | M | G\r\n\r\nConsulte disponibilidade de cor e tamanho', '95,00', 0, 1, 0, 0, '1 un '),
(94, 7, 22, 'Varinha MÃ¡gica - RecarregÃ¡vel', 1, 95, 'Womanizer Ã© um Vibrador de estÃ­mulo clitoriano, tipo Massageador. Ele possui programaÃ§Ã£o com 20 diferentes vibraÃ§Ãµes para vocÃª alcanÃ§ar inÃºmeros orgasmos. TambÃ©m tem corpo texturizado, ponta flexÃ­vel, detalhes metÃ¡licos e formato ergonÃ´mico. Seu estilo bastÃ£o proporciona mais firmeza para a mulher usar sozinha durante a masturbaÃ§Ã£o ou em brincadeiras a dois.', '260,00', 0, 1, 0, 0, '1 un '),
(95, 7, 15, 'BULLET JUMP EGG - 10 VIBRAÃ‡Ã•ES', 1, 96, 'Bullet Egg Multivelocidades \r\nControle de velocidades e Wireless\r\n\r\nConsultar disponibilidade de cores ', '105,90', 0, 0, 0, 0, '1 un '),
(96, 7, 15, 'Capsula Egg Com fio - multivelocidade', 1, 97, 'Mini Bullet Egg Multivelocidades \r\n\r\nConsultar disponibilidade de cores \r\n', '70,00', 0, 1, 0, 0, '1 un '),
(97, 11, 23, 'DomÃ©stica', 2, 98, 'Kit Fantasia DomÃ©stica \r\n\r\nObs: Kit com 04 peÃ§as. Tamanho Ãºnico', '62,00', 0, 1, 0, 0, '1 cj'),
(98, 11, 23, 'Estudante - Xadrez ', 2, 99, 'Estudante Amareto\r\n\r\nKit com 06 peÃ§as. \r\n\r\nTamanho Ãºnico.\r\n\r\nObs: NÃ£o acompanha meias\r\n', '114,00', 0, 1, 0, 0, '1 cj'),
(99, 11, 23, 'Policial', 2, 100, 'Fantasia Policial.\r\n\r\nKit com 03 peÃ§as.\r\n\r\nTamanho Ãšnico\r\n\r\nObs: NÃ£o acompanha Cacetete, Algema e Meias\r\n', '84,00', 0, 1, 0, 0, '1 cj'),
(100, 11, 24, 'Empregada 2', 2, 101, 'Mini Fantasia Empregada 2\r\n\r\nComposta por:\r\n01 Top\r\n01 Fio dental\r\n01 Mini avental\r\n01 AcessÃ³rio para cabeÃ§a\r\n\r\nTamanho Ãšnico', '38,00', 0, 1, 0, 0, '1 cj'),
(101, 1, 2, 'Velas Amor em Chamas', 2, 102, 'A Vela BeijÃ¡vel Hot Linha Amor em Chamas, usada tambÃ©m para a pratica de WAX PLAY, a vela quando acesa, deixa o ambiente aconchegante, envolvente, com deliciosa iluminaÃ§Ã£o e fragrÃ¢ncia, que aguÃ§am os sentidos quando derreter vocÃª pode lamber, massagear o corpo e o melhor, nÃ£o queima a pele, por que nÃ£o possui a parafina. Esta vela Ã© um convite a seduÃ§Ã£o.\r\n\r\nConsulte Sabores ', '38,50', 0, 1, 0, 0, '50g'),
(102, 10, 25, 'Capa Peniana ', 2, 103, 'Capa peniana feita de gel transparente para pÃªnis ou vibrador com nÃ³dulos estimuladores Super Climax Penis Sleeves Extenders. Veste qualquer tamanho de pÃªnis devido Ã  elasticidade do produto.\r\n\r\nMede aproximadamente 15cm de comprimento por 3 cm de diÃ¢metro.', '36,00', 0, 1, 0, 0, '1 un'),
(103, 11, 2, 'Presa ', 1, 104, 'Fantasia Presa com Amor\r\n\r\nContem: \r\n01 Calcinha | 01 Top | 01 Saia | 01 Algema Tecido \r\n\r\nTamanho Ãšnico \r\n', '35,00', 0, 1, 0, 0, '1 cj'),
(104, 7, 12, 'Vibrador Butterfly', 1, 105, 'Vibrador Micro Butterfly Ã© um estimulador de clitÃ³ris feito de gel macio e flexÃ­vel em formato de borboleta com cinta ajustÃ¡vel. Possui 1 bullet (cÃ¡psula vibratÃ³ria) e controle remoto com fio feito de plÃ¡stico rÃ­gido (vibraÃ§Ã£o em escala).\r\n\r\nConsultar disponibilidade de cores', '67,00', 0, 1, 0, 0, '1 un'),
(105, 10, 18, 'PÃªrolas para Massagem', 1, 106, 'Colar de PÃªrolas para massagem \r\n\r\n', '21,00', 0, 1, 0, 0, '1 un '),
(106, 10, 26, 'Corda Shibari', 1, 107, 'Corda para prÃ¡tica do Fetiche Shibari\r\n\r\nPossui 5 metros, macia e muito resistente!\r\n\r\nConsultar disponibilidade de cor ', '32,90', 0, 1, 0, 0, '1 un '),
(107, 11, 23, 'Enfermeira - EmergÃªncia ', 1, 108, 'Kit Fantasia EmergÃªncia Sensual Love confeccionada em microfibra.\r\n\r\ncomposta por:\r\n\r\n01 AcessÃ³rio para cabeÃ§a\r\n01 Body sexy\r\n01 Par de luvas.', '41,00', 0, 1, 0, 0, ''),
(108, 11, 27, 'Empregadinha', 1, 109, 'Kit fantasia composto por:\r\n01 Saia\r\n01 Calcinha\r\n01 Top\r\n01 Tiara\r\n\r\nVeste: do 38 ao 42.', '42,00', 0, 1, 0, 0, ''),
(109, 11, 23, 'Body Militar', 1, 110, 'Kit Fantasia Body Militar\r\n\r\nComposta por:\r\n\r\n01 Body Super Sexy\r\n01 Par De Luva Alta', '78,00', 0, 1, 0, 0, ''),
(110, 11, 23, 'Estudante Bia - Xadrez', 1, 111, 'Kit Fantasia Estudante Bia!\r\n\r\nContÃ©m:\r\n01 Top\r\n01 Gravatinha\r\n01 Fio dental\r\n01 Sainha\r\n\r\nConsultar disponibilidade de cor ', '87,00', 0, 1, 0, 0, ''),
(111, 7, 16, 'VIBRADOR PERSONAL 13CM ', 1, 112, 'Vibrador personal 13 cm com textura canelada.\r\n\r\nProduto mede aproximadamente 13 X 2,3cm, sendo penetrÃ¡veis 11cm.\r\n\r\nConsulte disponibilidade de cor', '39,90', 0, 1, 0, 0, '1 un '),
(112, 7, 16, 'VIBRADOR PERSONAL 10 VIBRAÃ‡Ã•ES AVELUDADO', 1, 113, 'Vibrador personal 17cm. Possui superfÃ­cie suave a aveludada e um motor com 10 modos de vibraÃ§Ã£o controlado a partir de um botÃ£o em sua base. Pode ser usado com capas penianas e como vibrador anal tambÃ©m.\r\n\r\nProduto mede aproximadamente 17,5 X 2,8cm, sendo penetrÃ¡veis 16,5cm.\r\n\r\nConsultar disponibilidade de cor', '85,00', 0, 1, 0, 0, '1 un'),
(113, 7, 15, 'VIBRADOR FEMALE 30 Modos - RecarregÃ¡vel', 1, 114, 'Vibrador ponto G com 30 modos de vibraÃ§Ã£o, feito em silicone de textura leve e macia. Sua ponta levemente curvada possibilita a estimulaÃ§Ã£o interna do ponto G.\r\n\r\nProduto mede aproximadamente 20,2 X 3,5, sendo penetrÃ¡veis 13cm.\r\n\r\nAcompanha carregador USB.', '195,00', 0, 1, 0, 0, '1 un'),
(114, 10, 7, 'CINTA COM PRÃ“TESE DE 14,8 X 3,6CM', 1, 115, 'Cinta peniana com prÃ³tese realÃ­stica de 14,8 x 3,6cm. Fabricada em material sintÃ©tico semelhante Ã  couro, revestimento interno aveludado para garantir conforto, fÃ¡cil acomodaÃ§Ã£o e uso correto do acessÃ³rio.\r\n', '77,00', 0, 1, 0, 0, '1 un'),
(115, 10, 3, 'CINTA PENIANA COM VIBRADOR', 1, 116, 'Capa Peniana Extensora 15 X 4,5cm Cinto E Vibrador fabricada em PVC.\r\n\r\nDimensÃµes da Capa: 15cm de comprimento X 4,5cm de diÃ¢metro. Acompanha Bullet Vibrador, jÃ¡ incluso 02 pilhas AA.\r\n', '129,90', 0, 1, 0, 0, '1 un '),
(116, 10, 28, 'CAPA PENIANA SILICONE COLORS 15CM', 1, 117, 'A Capa Extender, disponÃ­vel em vÃ¡rias cores e transparente, possui saliÃªncias por todo o corpo, trÃªs anÃ©is logo abaixo da glande para uma estimulaÃ§Ã£o maior na hora da penetraÃ§Ã£o, alÃ©m de um anel prolongador na base.\r\n\r\nReproduzida em TPR, adequa-se perfeitamente ao seu pÃªnis nÃ£o importando o tamanho devido Ã  sua flexibilidade e elasticidade, tambÃ©m permitindo utilizar em um vibrador, onde na ponta contÃ©m um volume para obter maior comprimento.\r\n\r\nConsultar disponibilidade de cor', '32,00', 0, 1, 0, 0, '1 un '),
(117, 2, 2, 'IMPACTUS JATOS AUMENTA ORGÃƒO SEXUAL', 1, 118, 'Impactus- Gel que proporciona um inchaÃ§a temporario deixando o penis maior e mais grosso, podendo ser usado no clitoris tambÃ©m proporcionando mais prazer.', '35,00', 0, 1, 1, 1, '15 ml'),
(118, 7, 15, 'VIBRADOR BATOM ESTIMULADOR DE CLITÃ“RIS ', 1, 119, 'Lipstick Vibe Ã© um poderoso e compacto mini vibrador em formato de batom que possui uma Ãºnica vibraÃ§Ã£o, super potente. Lindo e feminino, pode te acompanhar onde vocÃª for, disfarÃ§ado dentro da bolsa. Ele serÃ¡ seu fiel companheiro nas horas vagas!!\r\n', '35,00', 0, 1, 1, 1, '1 un '),
(119, 10, 13, 'BOMBA PENIANA STRONG MAN MANUAL', 1, 120, 'Bomba Peniana Manual Sexy Fantasy aparelho manual para desenvolvimento peniano, composto por um tubo de 21cm x 6cm, um bomba tipo seringa, um tubo em lÃ¡tex para conexÃ£o e um anel vedador em lÃ¡tex. O uso regular (10 min. diÃ¡rios) contribui para o aumento do comprimento e espessura.\r\n\r\nSeringa pode ir na cor preta ou marfim, conforme disponibilidade', '58,00', 0, 1, 0, 0, ''),
(120, 7, 15, 'Bullet Golfinho - Com Textura', 6, 121, 'Vibrador com AnÃ©is Massageadores possui um motor multivelocidade controlado a partir de um botÃ£o giratÃ³rio em sua base, oferece discriÃ§Ã£o alÃ©m de ser muito silencioso.\r\n\r\nMedidas do Vibrador Multivelocidade com AnÃ©is Massageadores\r\nProduto:11,5x2,7x2,7 cm DiÃ¢metro: 2,7 cm PenetrÃ¡veis: 8 cm', '29,90', 0, 0, 0, 0, '1'),
(121, 7, 15, 'VIBRADOR PONTO G GOLFINHO MULTIVELOCIDADE', 6, 122, 'Vibrador Ponto G Golfinho possui um motor multivelocidade controlado a partir de um botÃ£o giratÃ³rio em sua base, oferece discriÃ§Ã£o alÃ©m de ser muito silencioso.\r\n\r\nMedidas Vibrador Ponto G Golfinho\r\nProduto:11,5x2,7x2,7 cm DiÃ¢metro: 2,7 cm PenetrÃ¡veis: 8 cm ', '44,00', 0, 1, 0, 0, '1 UN'),
(122, 7, 16, 'VIBRADOR PERSONAL COM RELEVO MULTIVELOCIADE', 6, 123, 'Vibrador multivelocidade com relevos salientes.\r\nProduto mede aproximadamente 18,3 X 2,6cm, sendo penetrÃ¡veis 14cm.\r\n\r\nO Vibrador Personal com Relevo You Vibe Ã© feito em material de qualidade, resistente, confortÃ¡vel, durÃ¡vel e de fÃ¡cil higienizaÃ§Ã£o. Possui formato clÃ¡ssico, ideal pra quem estÃ¡ iniciando o uso de vibradores, pois Ã© simples e agradÃ¡vel de ser usado. Apresenta relevo para intensificar o estÃ­mulo durante a penetraÃ§Ã£o. Potente, discreto e silencioso, ele oferece 10 mod', '109,00', 0, 1, 0, 0, '1 un '),
(123, 11, 18, 'BODY PM SEXY', 6, 124, 'Fantasia erÃ³tica de policial composta por body fio dental com grande decote na frente e tiras de amarrar deixando as costas nuas. Lingerie muito picante, perfeita para uma noite sensual. \r\n\r\nTamanho Ãºnico\r\nobs: nÃ£o acompanhha algema e cacetete', '38,00', 0, 1, 0, 0, '1 un '),
(124, 2, 4, 'Striper Excellent', 2, 125, 'Excellent Ã© um excitante feminino que aquece a\r\nregiÃ£o Ã­ntima aumentando o desejo e o prazer.\r\nIdeal para aquelas situaÃ§Ãµes quando as fantasias\r\nda mente estÃ£o alÃ©m das possibilidades do\r\ncorpo. Mais energia para chegar ao orgasmo e\r\nmaior disponibilidade para entrega corporal ao\r\nprazer.', '25,00', 0, 1, 0, 0, '8g'),
(125, 2, 4, 'Striper Virgin', 2, 126, 'Virgin Ã© um gel com propriedades\r\nadstringentes, para o uso Ã­ntimo, tem a funÃ§Ã£o\r\nde enrijecer a pele da vulva durante a sua\r\naplicaÃ§Ã£o, deixando uma impressÃ£o de\r\n\"primeira vez\" durante a penetraÃ§Ã£o', '25,00', 0, 1, 0, 0, '8g'),
(126, 2, 2, 'Blink', 2, 127, 'O Excitante Anal Blink, um produto inovador\r\nno mercado erÃ³tico Ã© um excitante anal que\r\nlubrifica, anestesia e faz pulsar na regiÃ£o anal,\r\numa sensaÃ§Ã£o unica.', '31,50', 0, 1, 0, 0, '15ml'),
(127, 5, 13, 'TesÃ£o de Vaca (Dose Ãšnica)', 2, 128, 'TesÃ£o de Vaca Ã© um energÃ©tico afrodisÃ­aco\r\nnatural desenvolvido para aumentar a libido,\r\nproporcionando incrÃ­veis momentos de prazer!', '8,00', 0, 1, 0, 0, '10ml'),
(128, 5, 13, 'TesÃ£o de Touro (Dose Ãšnica)', 2, 129, 'TesÃ£o de Touro Ã© um energÃ©tico afrodisÃ­aco\r\nnatural desenvolvido para aumentar a libido,\r\nproporcionando incrÃ­veis momentos de prazer!', '8,00', 0, 1, 0, 0, '10ml'),
(129, 7, 16, 'Vibrador Rotativo (Cyber Skin)', 1, 130, 'PÃªnis rotativo: Com vibraÃ§Ã£o multivelocidade.\r\nFeito de CyberSkin, material macio com toque\r\naveludado que imita perfeitamente a pele\r\nhumana. Possui glande saliente e relevos em\r\nformato de veias.\r\nMedidas:\r\nPrÃ³tese mede 19,5cm de comprimento por atÃ©\r\n4cm de largura, sendo penetrÃ¡veis 15cm', '149,00', 0, 1, 0, 0, ''),
(130, 7, 17, 'VIBRADOR PRETTY LOVE BLITHE', 1, 131, 'Vibrador Pretty Love Blithe, possui 10 funÃ§Ãµes de vibraÃ§Ãµes', '110,00', 0, 1, 0, 0, '1 un '),
(131, 7, 17, 'VIBRADOR PRETTY LOVE CAESAR', 1, 132, 'Vibrador Pretty Love CAESAR, possui 10 funÃ§Ãµes de vibraÃ§Ãµes', '110,00', 0, 1, 0, 0, '1 un '),
(132, 7, 17, 'VIBRADOR PRETTY LOVE ARND', 1, 133, 'Vibrador Pretty Love Arnd, possui 10 funÃ§Ãµes de vibraÃ§Ãµes', '110,00', 0, 1, 0, 0, '1 un '),
(133, 7, 17, 'VIBRADOR PRETTY LOVE FELIX', 1, 134, 'Vibrador Pretty Love Felix, possui 30 funÃ§Ãµes de vibraÃ§Ãµes!', '165,00', 0, 1, 0, 0, '1 un '),
(134, 7, 17, 'VIBRADOR PRETTY LOVE GENE', 1, 135, 'Vibrador Pretty Love GENE, possui 30 funÃ§Ãµes de vibraÃ§Ãµes!', '165,00', 0, 1, 0, 0, '1 un '),
(135, 7, 15, 'VIBRADOR BULLET CAPSULA', 1, 136, 'Bullet revestido com silicone ABS super macio, com estrias massageadoras, com detalhe na base onde se acomodam 2 pilhas AAA, possui 10 modos de vibraÃ§Ãµes.\r\n\r\nProduto mede aproximadamente 9 X 3,5cm.\r\n\r\nUtiliza 02 pilhas AAA, nÃ£o inclusas', '80,00', 0, 1, 0, 0, '1 un '),
(136, 7, 15, 'VIBRADOR CAPSULA COM CONTROLE', 1, 137, 'Bullet revestido com silicone ABS super macio com detalhe na base!\r\n\r\nCÃ¡psula mede aproximadamente 9,2 X 3,5cm, controle 5,4 X 3,5cm.\r\n\r\nCÃ¡psula utiliza 02 pilhas AAA (nÃ£o inclusas) e controle Ã  bateria CR302 (bateria inclusa).\r\n\r\nConsultar Cor disponÃ­vel', '105,90', 0, 1, 0, 0, '1 un '),
(137, 9, 19, 'Conjunto Coxa e Bracelete - Dourado', 4, 138, 'Conjunto Coxa e Bracelete \r\nConfeccionado em material sintÃ©tico Montana de altÃ­ssima qualidade e excelente acabamento.\r\n \r\nCor: Dourado\r\n\r\nMedidas da coxa atÃ© 65 cm \r\n', '152,00', 0, 1, 0, 0, '1 un '),
(138, 7, 15, 'Power Bullet - RecarregÃ¡vel', 2, 139, 'Power bullet recarregÃ¡vel formato ogiva com 10 modos de vibraÃ§Ã£o.\r\n\r\nProduto:9x1,8x1,,8 cm DiÃ¢metro: 1,8 cm Peso: 87g Material: ABS\r\n\r\nAntes e apÃ³s o uso, lavar com Ã¡gua fria e sabonete bactericida.', '175,90', 0, 1, 0, 0, '1 un'),
(139, 7, 15, 'Vibrador 36 Velocidades - RecarregÃ¡vel', 1, 140, 'Vibrador Rotativo: especial feito em jelly\r\nmacio com pÃ©rolas metÃ¡licas internas para\r\nestimulaÃ§Ã£o, possui rotaÃ§Ã£o com giro positivo e\r\nnegativo, estimulador em formato bichinho com\r\nvibraÃ§Ã£o, as duas funÃ§Ãµes podem ser acionadas\r\njuntas ou separadamente, tudo regulado por\r\nbotÃµes na base do vibrador.\r\n\r\nTamanho Aproximadamente: 22 x 3,3cm\r\ntamanho total, sendo 10 x 3cm penetrÃ¡veis\r\nRecarregÃ¡vel\r\n\r\n\r\nConsultar Disponibilidade de Cores ', '220,00', 0, 1, 0, 0, '1 un'),
(140, 7, 15, 'CAPSULA VIBRATORIA COM FIO - CLÃSSICA', 1, 141, 'Vibrador Bullet CÃ¡psula.\r\n\r\nDimensÃµes: O bullet mede 5cm de comprimento por 2,8cm de diÃ¢metro e o controle mede 9,5cm de comprimento e 3cm de largura. Medidas aproximadas.\r\n\r\nUtiliza 02 pilhas AA, nÃ£o inclusas!\r\n\r\nConsultar cores', '35,00', 0, 1, 0, 0, '1 un '),
(141, 7, 15, 'Anel Peninano - Silicone ', 1, 142, 'Anel Peniano Com Vibrador Bichinhos, feito em gel super macio em formato de bichinhos variados e cÃ¡psula vibratÃ³ria. Ajuda a manter a ereÃ§Ã£o, retardar a ejaculaÃ§Ã£o e tambÃ©m permite uma total estimulaÃ§Ã£o do clitÃ³ris da mulher durante a relaÃ§Ã£o sexual, contribuindo para atingir o orgasmo facilmente ao mesmo tempo em que estimula o homem. CombinaÃ§Ã£o perfeita para proporcionar intensos orgasmos.\r\n\r\nObservaÃ§Ãµes: sem troca de baterias, apÃ³s o termino da bateria poderÃ¡ ser utilizado c', '15,00', 0, 1, 0, 0, '1 un '),
(142, 2, 2, 'Twister 5x1 ', 2, 143, 'Jatos Twister Excitante 5X1 15ml Soft Love. Twister Ã© um mix de sensaÃ§Ãµes, tem como funÃ§Ãµes: Esquentar, esfriar, pulsar, vibrar, inchar e dilatar levemente.\r\n\r\nContÃ©m: 15ml\r\n\r\nModo de Usar: Borrifar a quantidade desejada na regiÃ£o Ã­ntima massageando durante o ato sexual.', '35,50', 0, 1, 0, 0, '15 ml'),
(143, 8, 29, 'Body Hot Love', 2, 144, 'Bode sensual Reandado.\r\n\r\nConsulte Disponibilidade de Cor e Tamanho', '45,90', 0, 1, 0, 0, '1 un '),
(144, 8, 29, 'Body Sensual Frente Unica', 2, 145, 'Lindo body sexy confeccionado em renda que estica, forro 100% algodÃ£o, frente Ãºnica com alÃ§a regulÃ¡vel e um lindo decote frontal decorado com um lacinho que super valoriza a Ã¡rea dos seios. A calcinha Ã© modelo shortinho que empina o bumbum fazendo que com a peÃ§a seja perfeita para vocÃª sensualizar com seu amado (a).', '35,90', 0, 1, 0, 0, ''),
(145, 10, 30, 'Masturbador EGG', 2, 146, 'Egg Magical Kiss, Masturbador masculino e Feminino, possui Texturas em seu interior que dispÃµes de vÃ¡rios formatos e formas, promovendo diferentes sensaÃ§Ãµes durante a masturbaÃ§Ã£o, te levando ao clÃ­max do prazer.\r\n\r\nCom uma estrutura interna super detalhada este Masturbador Egg oferece prazer em 360Âº atingindo toda regiÃ£o do seu pÃªnis, promovendo sensaÃ§Ãµes incrÃ­veis\r\n\r\nConsultar disponibilidade de modelo', '39,90', 0, 1, 0, 0, '1 un '),
(146, 9, 19, 'Harness Feminino com Argolas', 4, 147, 'Harness feminino feito em Couro Montana de alta qualidade.\r\n\r\nAs partes cromadas (correntes) sÃ£o de nÃ­quel anti ferrugem.\r\nAcompanha cinto em couro com argolas metÃ¡licas.\r\n\r\nVeste do 36 ao 44.\r\nCaso vocÃª precise de algum tamanho especial nÃ³s fazemos sob medida.\r\nNÃ£o acompanha o sutiÃ£ e calcinha', '169,90', 0, 1, 1, 1, '1 un'),
(147, 9, 19, 'MÃ¡scara Mulher Gato dourada', 4, 148, 'MÃ¡scara em Couro Montana \r\n\r\nDetalhes na cor dourada ', '89,90', 0, 1, 0, 0, '1 un '),
(148, 9, 19, 'MÃ¡scara Mulher Gato Prata', 4, 149, 'MÃ¡scara em Couro Montana \r\n\r\nDetalhes na cor prata', '89,90', 0, 1, 0, 0, '1 un '),
(149, 5, 31, 'Mel Estimulante ', 7, 150, 'O efeito dura entre trÃªs e cinco dias, deixando \r\na pessoa preparada e forte para as relaÃ§Ãµes.\r\n\r\n1 - aumenta o desejo sexual\r\n2 - Mais potÃªncia durante o sexo com orgasmos \r\nmais longos e potentes.\r\n3 - promove a autoconfianÃ§a com o desempenho\r\nsexual por muito tempo.\r\n4 - Aumento da quantidade na ejaculaÃ§Ã£o.\r\n5 - Mais disposiÃ§Ã£o e menos cansaÃ§o.\r\n6 - da MAIS vitalidade, lucidez e ativa a memÃ³ria.\r\n7 - Combate a ejaculaÃ§Ã£o precoce, Menos ansiedade \r\ne maior autoconfianÃ§a.\r\n', '29,90', 0, 1, 1, 1, '1 un | 15 g');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `email_usuario` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `nome_usuario` varchar(100) COLLATE utf8_general_mysql500_ci NOT NULL,
  `senha_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_mysql500_ci;

--
-- Extraindo dados da tabela `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `email_usuario`, `nome_usuario`, `senha_usuario`) VALUES
(1, 'master@sensationsexshop.com.br', 'Master', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `auth_senhas`
--
ALTER TABLE `auth_senhas`
  ADD PRIMARY KEY (`id_senha`);

--
-- Índices para tabela `tb_banners`
--
ALTER TABLE `tb_banners`
  ADD PRIMARY KEY (`id_banner`);

--
-- Índices para tabela `tb_categoria_fotos`
--
ALTER TABLE `tb_categoria_fotos`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `tb_categoria_produtos`
--
ALTER TABLE `tb_categoria_produtos`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Índices para tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  ADD PRIMARY KEY (`id_contato`);

--
-- Índices para tabela `tb_fornecedores`
--
ALTER TABLE `tb_fornecedores`
  ADD PRIMARY KEY (`id_fornecedor`);

--
-- Índices para tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `categoria_foto` (`categoria_foto`);

--
-- Índices para tabela `tb_marcas`
--
ALTER TABLE `tb_marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Índices para tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`id_produto`),
  ADD KEY `categoria_produto` (`categoria_produto`),
  ADD KEY `foto_produto` (`foto_produto`),
  ADD KEY `marca_produto` (`marca_produto`);

--
-- Índices para tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `senha_usuario` (`senha_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_senhas`
--
ALTER TABLE `auth_senhas`
  MODIFY `id_senha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_banners`
--
ALTER TABLE `tb_banners`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_categoria_fotos`
--
ALTER TABLE `tb_categoria_fotos`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_categoria_produtos`
--
ALTER TABLE `tb_categoria_produtos`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_contato`
--
ALTER TABLE `tb_contato`
  MODIFY `id_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_fornecedores`
--
ALTER TABLE `tb_fornecedores`
  MODIFY `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT de tabela `tb_marcas`
--
ALTER TABLE `tb_marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  MODIFY `id_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_fotos`
--
ALTER TABLE `tb_fotos`
  ADD CONSTRAINT `tb_fotos_ibfk_1` FOREIGN KEY (`categoria_foto`) REFERENCES `tb_categoria_fotos` (`id_categoria`);

--
-- Limitadores para a tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD CONSTRAINT `tb_produtos_ibfk_1` FOREIGN KEY (`categoria_produto`) REFERENCES `tb_categoria_produtos` (`id_categoria`),
  ADD CONSTRAINT `tb_produtos_ibfk_2` FOREIGN KEY (`marca_produto`) REFERENCES `tb_marcas` (`id_marca`),
  ADD CONSTRAINT `tb_produtos_ibfk_3` FOREIGN KEY (`foto_produto`) REFERENCES `tb_fotos` (`id_foto`);

--
-- Limitadores para a tabela `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD CONSTRAINT `tb_usuarios_ibfk_1` FOREIGN KEY (`senha_usuario`) REFERENCES `auth_senhas` (`id_senha`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
