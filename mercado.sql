-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.22-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_mercado
CREATE DATABASE IF NOT EXISTS `db_mercado` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_mercado`;

-- Copiando estrutura para tabela db_mercado.tb_produtos
CREATE TABLE IF NOT EXISTS `tb_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(55) NOT NULL,
  `categoria` varchar(55) NOT NULL,
  `valor` float(7,2) NOT NULL,
  `desc` varchar(55) NOT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela db_mercado.tb_produtos: ~4 rows (aproximadamente)
INSERT INTO `tb_produtos` (`id`, `nome`, `categoria`, `valor`, `desc`, `status`, `create_at`) VALUES
	(1, 'Todinho', 'Bebida', 15.55, 'Melhor bebiba para beber na beira da praia!', b'1', '2022-08-03 21:34:09'),
	(2, 'Sereal', 'Café da Manhã', 123.00, 'Perfeito pro café da manhã', b'1', '2022-08-03 21:34:29'),
	(3, 'Vassoura', 'Doméstico', 123.00, 'Vassoura simples e barata', b'1', '2022-08-03 21:38:57'),
	(4, 'Cookie', 'Café da Manhã', 15.00, 'Melhor BOLACHA do mundo!', b'1', '2022-08-03 21:39:10');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
