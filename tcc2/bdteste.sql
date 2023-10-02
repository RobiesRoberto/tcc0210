-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Set-2023 às 13:25
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdteste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `ID_categoria` int(11) NOT NULL,
  `NOME_categoria` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE `postagem` (
  `ID_postagem` int(11) NOT NULL,
  `TITULO` varchar(200) NOT NULL,
  `TEXTO` text NOT NULL,
  `TIPO` int(1) NOT NULL,
  `END_IMG` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `ID_produto` int(11) NOT NULL,
  `DESC_produto` varchar(200) NOT NULL,
  `NOME_anunciante` varchar(200) NOT NULL,
  `CATEGORIA` varchar(200) NOT NULL,
  `ESP_produto` varchar(200) DEFAULT NULL,
  `VALOR_produto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nome_u` varchar(200) NOT NULL,
  `senha_u` varchar(200) NOT NULL,
  `email_u` varchar(200) NOT NULL,
  `endereço_u` varchar(200) NOT NULL,
  `telefone_u` varchar(15) NOT NULL,
  `cidade_u` varchar(100) NOT NULL,
  `cep_u` char(8) NOT NULL,
  `estado_u` varchar(50) NOT NULL,
  `pfp_u` int(100) DEFAULT NULL,
  `datanascimento_u` date NOT NULL,
  `datacadastro_u` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nvlacesso` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nome_u`, `senha_u`, `email_u`, `endereço_u`, `telefone_u`, `cidade_u`, `cep_u`, `estado_u`, `pfp_u`, `datanascimento_u`, `datacadastro_u`, `nvlacesso`) VALUES
(2, 'Miguel', '$2y$10$ZLsOGtsUGocnc3WvvEfzjOANJKbPfI2Wx8sXrvdHJ/07Rz4XXplbG', 'miguel@gmail.com', 'gfd', '435', 'dfsg', '2354', 'fds', 0, '2023-08-31', '2023-08-31 10:22:25', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
