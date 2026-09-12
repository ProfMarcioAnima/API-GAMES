-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 12-Set-2026 às 02:36
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

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
-- Estrutura da tabela `jogos`
--

CREATE TABLE `jogos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT 'no-image.jpg',
  `estudio` varchar(255) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `idade` varchar(50) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `disponibilidade` tinyint(1) NOT NULL DEFAULT 1,
  `data_criado` timestamp NOT NULL DEFAULT current_timestamp(),
  `data_editado` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `jogos`
--

INSERT INTO `jogos` (`id`, `nome`, `imagem`, `estudio`, `categoria`, `idade`, `valor`, `disponibilidade`, `data_criado`, `data_editado`) VALUES
(1, 'Spider-Man 2', 'no-image.jpg', 'Insomniac Games', 'Ação/Aventura', '16+', 279.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:33:48'),
(2, 'God of War Ragnarök', 'no-image.jpg', 'Santa Monica Studio', 'Ação/Aventura', '18+', 299.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(3, 'Final Fantasy XVI', 'no-image.jpg', 'Square Enix', 'RPG', '16+', 299.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(4, 'Ratchet and Clank: Rift Apart', 'no-image.jpg', 'Insomniac Games', 'Plataforma', '10+', 249.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(5, 'Helldivers 2', 'no-image.jpg', 'Arrowhead Game Studios', 'Tiro', '18+', 199.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(6, 'Astro Bot', 'no-image.jpg', 'PlayStation Studios', 'Plataforma', '7+', 199.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(7, 'Uncharted: Legacy of Thieves Collection', 'no-image.jpg', 'Naughty Dog', 'Ação/Aventura', '16+', 189.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(8, 'The Last of Us Part I', 'no-image.jpg', 'Naughty Dog', 'Ação/Aventura', '18+', 299.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(9, 'Ghost of Tsushima: Director\'s Cut', 'no-image.jpg', 'Sucker Punch', 'Ação/Aventura', '18+', 249.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(10, 'Death Stranding 2: On the Beach', 'no-image.jpg', 'Kojima Productions', 'Aventura', '18+', 349.90, 0, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(11, 'Forza Horizon 5', 'no-image.jpg', 'Playground Games', 'Corrida', '10+', 249.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(12, 'Indiana Jones and the Great Circle', 'no-image.jpg', 'MachineGames', 'Ação/Aventura', '16+', 299.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(13, 'GTA 6', 'no-image.jpg', 'Rockstar Games', 'Ação/Aventura', '18+', 659.59, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(14, 'Monster Hunter Wilds', 'no-image.jpg', 'Capcom', 'RPG/Ação', '14+', 299.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(15, 'Citizen Sleeper 2: Starward Vector', 'no-image.jpg', 'Jump Over the Age', 'RPG', '12+', 159.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(16, 'Split Fiction', 'no-image.jpg', 'Narrative Games', 'Aventura', '14+', 179.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(17, 'Kingdom Come: Deliverance 2', 'no-image.jpg', 'Warhorse Studios', 'RPG', '18+', 249.90, 0, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(18, 'Blue Prince', 'no-image.jpg', 'Dogubomb', 'Quebra-cabeça', '10+', 89.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(19, 'Promise Mascot Agency', 'no-image.jpg', 'Kaizen Game Works', 'Simulação', '7+', 69.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(20, 'Bionic Bay', 'no-image.jpg', 'Mureena', 'Plataforma', '10+', 59.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(21, 'Marvel\'s Wolverine', 'no=image.jpg', 'Insomniac Games', 'Ação/Aventura', '18+', 399.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(22, 'Resident Evil Requiem', 'no-image.jpg', 'Capcom', 'Survival Horror', '18+', 349.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38'),
(23, '007 First Light', 'no-image.jpg', 'IO Interactive', 'Ação/Aventura/Espionagem', '16+', 299.90, 1, '2026-09-12 00:31:38', '2026-09-12 00:31:38');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `jogos`
--
ALTER TABLE `jogos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `jogos`
--
ALTER TABLE `jogos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
