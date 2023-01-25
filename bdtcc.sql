-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Jan-2023 às 11:58
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bdtcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcategoria`
--

CREATE TABLE `tbcategoria` (
  `idCategoria` int(50) NOT NULL,
  `nomeCategoria` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbcategoria`
--

INSERT INTO `tbcategoria` (`idCategoria`, `nomeCategoria`) VALUES
(1, 'Roupas'),
(2, 'Acessorios'),
(3, 'Maquiagem'),
(4, 'Decoracao'),
(5, 'Pets'),
(6, 'Sapatos'),
(7, 'Personalizados'),
(8, 'Alimentos'),
(9, 'Bebidas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbcliente`
--

CREATE TABLE `tbcliente` (
  `idCliente` int(50) NOT NULL,
  `nomeCompleto` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(11) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `rua` varchar(200) NOT NULL,
  `numeroCasa` int(5) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `complemento` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbcliente`
--

INSERT INTO `tbcliente` (`idCliente`, `nomeCompleto`, `email`, `senha`, `cpf`, `telefone`, `cep`, `rua`, `numeroCasa`, `cidade`, `complemento`) VALUES
(2, 'livia andrade ', 'livia@gmail.com', 'livia123', '5555555', '33333', '36406-200', 'Rua Jabuti', 176, 'Congonhas', 'Casa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbformaspgt`
--

CREATE TABLE `tbformaspgt` (
  `idFormaPgt` int(10) NOT NULL,
  `nomeFormaPgt` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbformaspgt`
--

INSERT INTO `tbformaspgt` (`idFormaPgt`, `nomeFormaPgt`) VALUES
(1, 'Boleto'),
(2, 'Cartao de credito'),
(3, 'Cartao de debito'),
(4, 'Pix');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbitensvenda`
--

CREATE TABLE `tbitensvenda` (
  `id` int(10) NOT NULL,
  `idVenda` int(10) NOT NULL,
  `idProduto` int(10) NOT NULL,
  `qtd` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbmicroemp`
--

CREATE TABLE `tbmicroemp` (
  `idMicro` int(50) NOT NULL,
  `nomeCompleto` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `senha` varchar(10) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `telefone` varchar(10) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `rua` varchar(200) NOT NULL,
  `numeroCasa` varchar(10) NOT NULL,
  `cidade` varchar(200) NOT NULL,
  `complemento` varchar(11) NOT NULL,
  `chavepix` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbmicroemp`
--

INSERT INTO `tbmicroemp` (`idMicro`, `nomeCompleto`, `email`, `senha`, `cpf`, `telefone`, `cep`, `rua`, `numeroCasa`, `cidade`, `complemento`, `chavepix`) VALUES
(1, 'mayra BARBOSA', 'mayra@gmail.com', 'mayra1810', '13841944604', '3199795571', '36406-186', 'Rua José de Oliveira', '12', 'Conselheiro Lafaiete', 'Casa', 'mayra@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbproduto`
--

CREATE TABLE `tbproduto` (
  `idProduto` int(50) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `preco` varchar(200) NOT NULL,
  `idcategoria` int(50) NOT NULL,
  `idsubcategoria` int(50) NOT NULL,
  `nomeImg` varchar(200) NOT NULL,
  `extensao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbproduto`
--

INSERT INTO `tbproduto` (`idProduto`, `nome`, `descricao`, `preco`, `idcategoria`, `idsubcategoria`, `nomeImg`, `extensao`) VALUES
(6, 'capa de chuva', 'capa de chuva top ', '40,00', 1, 1, '2089787003.png', 'png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbsubcategoria`
--

CREATE TABLE `tbsubcategoria` (
  `idSubCategoria` int(50) NOT NULL,
  `nomeSubCategoria` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbsubcategoria`
--

INSERT INTO `tbsubcategoria` (`idSubCategoria`, `nomeSubCategoria`) VALUES
(1, 'RoupasFemAdulto'),
(2, 'RoupasFemInfantil'),
(3, 'RoupasMascAdulto'),
(4, 'RoupasMascInfantil'),
(5, 'AcessoriosCabeca'),
(6, 'Bolsas'),
(7, 'Oculos'),
(8, 'JoiasEBijus'),
(9, 'MaquiagemOlhos'),
(10, 'MaquiagemRosto'),
(11, 'DecoracaoInteriores'),
(12, 'DecoracaoFestas'),
(13, 'RoupasPets'),
(14, 'AcessoriosPets'),
(15, 'AlimentosPadaria'),
(16, 'AlimentosPote'),
(17, 'BebidasAlcolicas'),
(18, 'BebidasNaoAlcolicas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbvendas`
--

CREATE TABLE `tbvendas` (
  `idVenda` int(10) NOT NULL,
  `totalVenda` varchar(200) NOT NULL,
  `cpfComprador` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tbvendas`
--

INSERT INTO `tbvendas` (`idVenda`, `totalVenda`, `cpfComprador`) VALUES
(1, '440', ''),
(2, '40', ''),
(3, '80', ''),
(4, '40', ''),
(5, '40', ''),
(6, '120', ''),
(7, '40', '');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tbcategoria`
--
ALTER TABLE `tbcategoria`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Índices para tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Índices para tabela `tbformaspgt`
--
ALTER TABLE `tbformaspgt`
  ADD PRIMARY KEY (`idFormaPgt`);

--
-- Índices para tabela `tbitensvenda`
--
ALTER TABLE `tbitensvenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idVenda` (`idVenda`),
  ADD KEY `idProduto` (`idProduto`);

--
-- Índices para tabela `tbmicroemp`
--
ALTER TABLE `tbmicroemp`
  ADD PRIMARY KEY (`idMicro`);

--
-- Índices para tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  ADD PRIMARY KEY (`idProduto`),
  ADD KEY `idsubcategoria` (`idsubcategoria`),
  ADD KEY `idcategoria` (`idcategoria`);

--
-- Índices para tabela `tbsubcategoria`
--
ALTER TABLE `tbsubcategoria`
  ADD PRIMARY KEY (`idSubCategoria`);

--
-- Índices para tabela `tbvendas`
--
ALTER TABLE `tbvendas`
  ADD PRIMARY KEY (`idVenda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbcliente`
--
ALTER TABLE `tbcliente`
  MODIFY `idCliente` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tbformaspgt`
--
ALTER TABLE `tbformaspgt`
  MODIFY `idFormaPgt` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbitensvenda`
--
ALTER TABLE `tbitensvenda`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbmicroemp`
--
ALTER TABLE `tbmicroemp`
  MODIFY `idMicro` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  MODIFY `idProduto` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tbsubcategoria`
--
ALTER TABLE `tbsubcategoria`
  MODIFY `idSubCategoria` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tbvendas`
--
ALTER TABLE `tbvendas`
  MODIFY `idVenda` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tbitensvenda`
--
ALTER TABLE `tbitensvenda`
  ADD CONSTRAINT `tbitensvenda_ibfk_1` FOREIGN KEY (`idVenda`) REFERENCES `tbvendas` (`idVenda`),
  ADD CONSTRAINT `tbitensvenda_ibfk_2` FOREIGN KEY (`idProduto`) REFERENCES `tbproduto` (`idProduto`);

--
-- Limitadores para a tabela `tbproduto`
--
ALTER TABLE `tbproduto`
  ADD CONSTRAINT `tbproduto_ibfk_1` FOREIGN KEY (`idsubcategoria`) REFERENCES `tbsubcategoria` (`idSubCategoria`),
  ADD CONSTRAINT `tbproduto_ibfk_2` FOREIGN KEY (`idcategoria`) REFERENCES `tbcategoria` (`idCategoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
