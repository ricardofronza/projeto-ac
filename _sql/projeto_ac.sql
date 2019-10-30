/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.7.26 : Database - projeto_ac
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`projeto_ac` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `projeto_ac`;

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `estoque` int(20) DEFAULT NULL,
  `barras` varchar(200) DEFAULT NULL,
  `lixeira` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

/*Data for the table `produtos` */

insert  into `produtos`(`id`,`nome`,`valor`,`estoque`,`barras`,`lixeira`) values 
(1,'Batata',3.75,1000,'111111','false'),
(2,'Arroz',7.99,200,'222222','false'),
(3,'Feijão',9.5,200,'333333','false'),
(27,'Neston',13.6,5,'777777','true'),
(21,'Carne',16.9,100,'444444','false'),
(22,'Ovo',5,200,'555555','false'),
(20,'Macarrão',7.6,300,'666666','false');

/*Table structure for table `vendas` */

DROP TABLE IF EXISTS `vendas`;

CREATE TABLE `vendas` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `id_produto` int(20) DEFAULT NULL,
  `quantidade` int(20) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `data` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `vendas` */

insert  into `vendas`(`id`,`id_produto`,`quantidade`,`valor`,`data`) values 
(27,20,1,7.6,'2019-10-30 12:20:59'),
(26,20,5,7.6,'2019-10-30 12:20:44'),
(25,22,8,5,'2019-10-30 12:20:30'),
(24,2,2,7.99,'2019-10-30 12:20:20'),
(23,1,10,3.75,'2019-10-30 12:20:12');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
