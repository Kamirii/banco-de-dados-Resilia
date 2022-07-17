-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Jul-2022 às 04:05
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_resilia`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_alunos`
--

CREATE TABLE `tb_alunos` (
  `id_aluno` int(11) NOT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_alunos`
--

INSERT INTO `tb_alunos` (`id_aluno`, `id_turma`, `nome`) VALUES
(1, 30, 'Dominic Fike'),
(2, 15, 'Mac Miller'),
(3, 21, 'Taylor Swift'),
(4, 15, 'Kali Uchis'),
(5, 15, 'Paul McCartney'),
(6, 21, 'Conan Gray'),
(7, 21, 'Elvis Presley'),
(8, 30, 'Halsey'),
(9, 30, 'Frank Ocean'),
(10, 15, 'Dua Lipa'),
(11, 21, 'Lizzo'),
(12, 30, 'Willow');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_cursos`
--

CREATE TABLE `tb_cursos` (
  `id_curso` int(11) NOT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `tipo` varchar(40) DEFAULT NULL,
  `descricao` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_cursos`
--

INSERT INTO `tb_cursos` (`id_curso`, `id_turma`, `tipo`, `descricao`) VALUES
(11, 21, 'data analysis', 'curso sobre analise de dados'),
(20, 30, 'full-stack', 'curso de dev full-stack'),
(33, 15, 'back-end', 'curso somente de back-end');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_entregas`
--

CREATE TABLE `tb_entregas` (
  `id_entrega` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `modulo_entrega` int(11) DEFAULT NULL,
  `link_entrega` varchar(50) DEFAULT NULL,
  `etapa` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_entregas`
--

INSERT INTO `tb_entregas` (`id_entrega`, `id_aluno`, `id_turma`, `modulo_entrega`, `link_entrega`, `etapa`) VALUES
(1, 9, 30, 1, 'github/frankOcean/.com', 'mais que pronto'),
(2, 8, 30, 1, 'github/Halsey/.com', 'pronto'),
(3, 7, 21, 2, 'github/ElvisPreskey/.com', 'chegando la'),
(4, 6, 21, 2, 'github/ConanGray/.com', 'chegando la'),
(5, 5, 15, 3, 'github/PaulMcCartney/.com', 'pronto'),
(6, 4, 15, 3, 'github/KaliUchis/.com', 'Ainda nao esta pronto'),
(7, 3, 30, 4, 'github/TaylorSwift/.com', 'mais que pronto'),
(8, 2, 21, 4, 'github/MacMiller/.com', 'pronto'),
(9, 1, 15, 5, 'github/DominicFike/.com', 'Ainda nao esta pronto'),
(10, 10, 15, 1, 'githuhb/dualipa/.com', 'mais que pronto'),
(11, 11, 21, 1, 'github/lizzo/.com', 'mais que pronto'),
(12, 12, 30, 3, 'github/willow/.com', 'ainda não está pronto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_facilitadores`
--

CREATE TABLE `tb_facilitadores` (
  `id_facilitador` int(11) NOT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_facilitadores`
--

INSERT INTO `tb_facilitadores` (`id_facilitador`, `id_curso`, `nome`) VALUES
(1, 33, 'Aang'),
(2, 11, 'Clairo'),
(3, 20, 'Billie Eilish');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_turmas`
--

CREATE TABLE `tb_turmas` (
  `id_turma` int(11) NOT NULL,
  `numero_turma` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_turmas`
--

INSERT INTO `tb_turmas` (`id_turma`, `numero_turma`) VALUES
(15, 7),
(21, 12),
(30, 19);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_alunos`
--
ALTER TABLE `tb_alunos`
  ADD PRIMARY KEY (`id_aluno`),
  ADD KEY `tb_alunos` (`id_turma`);

--
-- Índices para tabela `tb_cursos`
--
ALTER TABLE `tb_cursos`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `tb_cursos` (`id_turma`);

--
-- Índices para tabela `tb_entregas`
--
ALTER TABLE `tb_entregas`
  ADD PRIMARY KEY (`id_entrega`),
  ADD KEY `tb_entregas` (`id_aluno`),
  ADD KEY `id_turma` (`id_turma`);

--
-- Índices para tabela `tb_facilitadores`
--
ALTER TABLE `tb_facilitadores`
  ADD PRIMARY KEY (`id_facilitador`),
  ADD KEY `tb_facilitadores` (`id_curso`);

--
-- Índices para tabela `tb_turmas`
--
ALTER TABLE `tb_turmas`
  ADD PRIMARY KEY (`id_turma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_alunos`
--
ALTER TABLE `tb_alunos`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_cursos`
--
ALTER TABLE `tb_cursos`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `tb_entregas`
--
ALTER TABLE `tb_entregas`
  MODIFY `id_entrega` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_facilitadores`
--
ALTER TABLE `tb_facilitadores`
  MODIFY `id_facilitador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_turmas`
--
ALTER TABLE `tb_turmas`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_alunos`
--
ALTER TABLE `tb_alunos`
  ADD CONSTRAINT `tb_alunos` FOREIGN KEY (`id_turma`) REFERENCES `tb_turmas` (`id_turma`);

--
-- Limitadores para a tabela `tb_cursos`
--
ALTER TABLE `tb_cursos`
  ADD CONSTRAINT `tb_cursos` FOREIGN KEY (`id_turma`) REFERENCES `tb_turmas` (`id_turma`);

--
-- Limitadores para a tabela `tb_entregas`
--
ALTER TABLE `tb_entregas`
  ADD CONSTRAINT `tb_entregas` FOREIGN KEY (`id_aluno`) REFERENCES `tb_alunos` (`id_aluno`),
  ADD CONSTRAINT `tb_entregas_ibfk_1` FOREIGN KEY (`id_turma`) REFERENCES `tb_turmas` (`id_turma`);

--
-- Limitadores para a tabela `tb_facilitadores`
--
ALTER TABLE `tb_facilitadores`
  ADD CONSTRAINT `tb_facilitadores` FOREIGN KEY (`id_curso`) REFERENCES `tb_cursos` (`id_curso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
