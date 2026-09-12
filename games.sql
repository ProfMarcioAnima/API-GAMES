-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 12/09/2026 às 02:38
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `games`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogos`
--

CREATE TABLE `jogos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT 'no-image',
  `estudio` varchar(255) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `idade` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `disponibilidade` tinyint(1) NOT NULL DEFAULT 1,
  `data_criacao` date DEFAULT curdate(),
  `data_alteracao` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogos`
--

INSERT INTO `jogos` (`id`, `nome`, `imagem`, `estudio`, `categoria`, `idade`, `valor`, `disponibilidade`, `data_criacao`, `data_alteracao`) VALUES
(1, 'Spider-Man 2', 'no-image', 'Insomniac Games', 'Ação/Aventura', '16+', 349.90, 1, '2026-09-11', '2026-09-11'),
(2, 'God of War Ragnarök', 'no-image', 'Santa Monica Studio', 'Ação/Aventura', '18+', 299.90, 1, '2026-09-11', '2026-09-11'),
(3, 'Final Fantasy XVI', 'no-image', 'Square Enix', 'RPG', '16+', 299.90, 1, '2026-09-11', '2026-09-11'),
(4, 'Ratchet and Clank: Rift Apart', 'no-image', 'Insomniac Games', 'Plataforma', '10+', 249.90, 1, '2026-09-11', '2026-09-11'),
(5, 'Helldivers 2', 'no-image', 'Arrowhead Game Studios', 'Tiro', '18+', 199.90, 1, '2026-09-11', '2026-09-11'),
(6, 'Astro Bot', 'no-image', 'PlayStation Studios', 'Plataforma', '7+', 199.90, 1, '2026-09-11', '2026-09-11'),
(7, 'Uncharted: Legacy of Thieves Collection', 'no-image', 'Naughty Dog', 'Ação/Aventura', '16+', 189.90, 1, '2026-09-11', '2026-09-11'),
(8, 'The Last of Us Part I', 'no-image', 'Naughty Dog', 'Ação/Aventura', '18+', 299.90, 1, '2026-09-11', '2026-09-11'),
(9, 'Ghost of Tsushima: Director\'s Cut', 'no-image', 'Sucker Punch', 'Ação/Aventura', '18+', 249.90, 1, '2026-09-11', '2026-09-11'),
(10, 'Death Stranding 2: On the Beach', 'no-image', 'Kojima Productions', 'Aventura', '18+', 349.90, 0, '2026-09-11', '2026-09-11'),
(11, 'Forza Horizon 5', 'no-image', 'Playground Games', 'Corrida', '10+', 249.90, 1, '2026-09-11', '2026-09-11'),
(12, 'Indiana Jones and the Great Circle', 'no-image', 'MachineGames', 'Ação/Aventura', '16+', 299.90, 1, '2026-09-11', '2026-09-11'),
(13, 'GTA 6', 'no-image', 'Rockstar Games', 'Ação/Aventura', '18+', 399.90, 1, '2026-09-11', '2026-09-11'),
(14, 'Monster Hunter Wilds', 'no-image', 'Capcom', 'RPG/Ação', '14+', 299.90, 1, '2026-09-11', '2026-09-11'),
(15, 'Citizen Sleeper 2: Starward Vector', 'no-image', 'Jump Over the Age', 'RPG', '12+', 159.90, 1, '2026-09-11', '2026-09-11'),
(16, 'Split Fiction', 'no-image', 'Narrative Games', 'Aventura', '14+', 179.90, 1, '2026-09-11', '2026-09-11'),
(17, 'Kingdom Come: Deliverance 2', 'no-image', 'Warhorse Studios', 'RPG', '18+', 249.90, 0, '2026-09-11', '2026-09-11'),
(18, 'Blue Prince', 'no-image', 'Dogubomb', 'Quebra-cabeça', '10+', 89.90, 1, '2026-09-11', '2026-09-11'),
(19, 'Promise Mascot Agency', 'no-image', 'Kaizen Game Works', 'Simulação', '7+', 69.90, 1, '2026-09-11', '2026-09-11'),
(20, 'Bionic Bay', 'no-image', 'Mureena', 'Plataforma', '10+', 59.90, 1, '2026-09-11', '2026-09-11'),
(21, 'Brasfoot', 'imagem teste', 'Quintal de Casa', 'Esporte', 'L', 10.90, 1, '2026-09-11', '2026-09-11');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
