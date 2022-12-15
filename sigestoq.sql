CREATE TABLE `categoria` (
  `IDcategoria` int(11) NOT NULL,
  `categoria_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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



CREATE TABLE `estoque` (
  `IDestoque` int(11) NOT NULL,
  `produto_nome` varchar(255) NOT NULL,
  `produto_quantidade` int(11) NOT NULL,
  `produto_validade` date NOT NULL,
  `produto_peso` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



CREATE TABLE `funcionario` (
  `IDfuncionario` int(11) NOT NULL,
  `IDinstituicao` int(11) NOT NULL,
  `funcionario_nome` varchar(255) NOT NULL,
  `funcionario_tipo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `instituicao` (
  `IDinstituicao` int(11) NOT NULL,
  `IDestoque` int(11) NOT NULL,
  `IDfucionario` int(11) DEFAULT NULL,
  `instituicao_nome` varchar(255) NOT NULL,
  `Local` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `instituicao` (`IDinstituicao`, `IDestoque`, `IDfucionario`, `instituicao_nome`, `Local`) VALUES
(1, 1, NULL, 'Centro Estadual de Educação Profissional', 'Rio Grande do Norte');


CREATE TABLE `produto` (
  `IDproduto` int(11) NOT NULL,
  `IDcategoria` int(11) NOT NULL,
  `produto_nome` varchar(255) NOT NULL,
  `produto_quantidade` int(11) NOT NULL,
  `produto_validade` date,
  `produto_peso` float
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `produto` (`IDproduto`, `IDcategoria`, `produto_nome`, `produto_quantidade`, `produto_validade`, `produto_peso`) VALUES
(1, 6, 'Arroz Branco', 2, '2022-12-05', 4.2),
(2, 5, 'Carne de Sol', 0, '0000-00-00', 9);
