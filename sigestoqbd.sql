SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE sigestoqbd


CREATE TABLE `categoria` (
  `IDcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `categoria` VALUES
(1, 'Verduras e Legumes'),
(2, 'Frutas'),
(3, 'Poupa'),
(4, 'Liquído'),
(5, 'Proteína'),
(6, 'Cereal'),
(7, 'Tuberculo'),
(8, 'Tempero'),
(9, 'Não Perecível');

CREATE TABLE `funcionario` (
  `IDfuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `IDinstituicao` int(11) NOT NULL,
  `funcionario_nome` varchar(255) NOT NULL,
  `funcionario_tipo` varchar(255) NOT NULL,
  `funcionario_login` varchar(25) NOT NULL,
  `funcionario_senha` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `funcionario`
VALUES (1, 1, 'Rebeca Jemima', 'COMUM', 'Becca.Jemima', 'Rr123321');

CREATE TABLE `instituicao` (
  `IDinstituicao` int(11) NOT NULL AUTO_INCREMENT,
  `IDestoque` int(11) NOT NULL,
  `IDfucionario` int(11) DEFAULT NULL,
  `instituicao_nome` varchar(255) NOT NULL,
  `Local` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `instituicao` 
VALUES (1, 1, NULL, 'Centro Estadual de Educação Profissional', 'Rio Grande do Norte');

CREATE TABLE `produto` (
  `IDproduto` int(11) NOT NULL AUTO_INCREMENT,
  `IDcategoria` int(11) NOT NULL,
  `produto_nome` varchar(255) NOT NULL,
  `produto_quantidade` int(11) NOT NULL,
  `produto_validade` date NOT NULL,
  `produto_peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `produto` (`IDproduto`, `IDcategoria`, `produto_nome`, `produto_quantidade`, `produto_validade`, `produto_peso`) VALUES
(1, 6, 'Arroz Branco', 2, '2022-12-05', 4.2),
(2, 5, 'Carne de Sol', 0, '2022-11-10', 9);


ALTER TABLE `categoria`
  ADD PRIMARY KEY (`IDcategoria`);

ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`IDfuncionario`);

ALTER TABLE `produto`
  ADD PRIMARY KEY (`IDproduto`);


ALTER TABLE `categoria`
  MODIFY `IDcategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `produto`
  MODIFY `IDproduto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;
