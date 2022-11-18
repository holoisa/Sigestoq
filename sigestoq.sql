-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Out-2022 às 23:38
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sigestoq`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `IDcategoria` int(11) NOT NULL,
  `categoria_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`IDcategoria`, `categoria_nome`) VALUES
(1, 'Verduras e Legumes'),
(2, 'Frutas'),
(3, 'Poupa'),
(4, 'Liquído'),
(5, 'Proteína'),
(6, 'Cereal'),
(7, 'Tuberculo'),
(8, 'Tempero'),
(9, 'Não Perecível');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `IDestoque` int(11) NOT NULL,
  `produto_nome` varchar(255) NOT NULL,
  `produto_quantidade` int(11) NOT NULL,
  `produto_validade` date NOT NULL,
  `produto_peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`IDestoque`, `produto_nome`, `produto_quantidade`, `produto_validade`, `produto_peso`) VALUES
(1, 'Arroz Branco', 2, '0000-00-00', 4.2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `IDfuncionario` int(11) NOT NULL,
  `IDinstituicao` int(11) NOT NULL,
  `funcionario_nome` varchar(255) NOT NULL,
  `funcionario_tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`IDfuncionario`, `IDinstituicao`, `funcionario_nome`, `funcionario_tipo`) VALUES
(1, 1, 'Rebecca Jemima', 'Comum');

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `IDinstituicao` int(11) NOT NULL,
  `IDestoque` int(11) NOT NULL,
  `IDfucionario` int(11) DEFAULT NULL,
  `instituicao_nome` varchar(255) NOT NULL,
  `Local` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`IDinstituicao`, `IDestoque`, `IDfucionario`, `instituicao_nome`, `Local`) VALUES
(1, 1, NULL, 'Centro Estadual de Educação Profissional', 'Rio Grande do Norte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `IDproduto` int(11) NOT NULL,
  `IDcategoria` int(11) NOT NULL,
  `produto_nome` varchar(255) NOT NULL,
  `produto_quantidade` int(11) NOT NULL,
  `produto_validade` date NOT NULL,
  `produto_peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`IDproduto`, `IDcategoria`, `produto_nome`, `produto_quantidade`, `produto_validade`, `produto_peso`) VALUES
(1, 6, 'Arroz Branco', 2, '2022-12-05', 4.2),
(2, 5, 'Carne de Sol', 0, '0000-00-00', 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`IDcategoria`);

--
-- Índices para tabela `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`IDestoque`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`IDfuncionario`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`IDproduto`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `IDcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `estoque`
--
ALTER TABLE `estoque`
  MODIFY `IDestoque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `IDproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
