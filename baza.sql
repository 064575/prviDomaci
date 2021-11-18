/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.26 : Database - apple
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`apple` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `apple`;

/*Table structure for table `boja` */

DROP TABLE IF EXISTS `boja`;

CREATE TABLE `boja` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `naziv` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `boja` */

insert  into `boja`(`id`,`naziv`) values 
(1,'crna'),
(2,'bela'),
(3,'roze'),
(4,'siva'),
(5,'plava');

/*Table structure for table `kategorija` */

DROP TABLE IF EXISTS `kategorija`;

CREATE TABLE `kategorija` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `naziv` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `kategorija` */

insert  into `kategorija`(`id`,`naziv`) values 
(1,'telefon'),
(4,'televizor'),
(6,'kompjuter'),
(8,'macBookfdsfg');

/*Table structure for table `proizvod` */

DROP TABLE IF EXISTS `proizvod`;

CREATE TABLE `proizvod` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `naziv` varchar(40) NOT NULL,
  `cena` decimal(9,2) NOT NULL,
  `opis` varchar(90) NOT NULL,
  `kategorija` bigint DEFAULT NULL,
  `boja` bigint DEFAULT NULL,
  `slika` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kategorija` (`kategorija`),
  KEY `boja` (`boja`),
  CONSTRAINT `proizvod_ibfk_1` FOREIGN KEY (`kategorija`) REFERENCES `kategorija` (`id`),
  CONSTRAINT `proizvod_ibfk_2` FOREIGN KEY (`boja`) REFERENCES `boja` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `proizvod` */

insert  into `proizvod`(`id`,`naziv`,`cena`,`opis`,`kategorija`,`boja`,`slika`) values 
(5,'IPHONE X',4200.00,'afds',1,1,'./img/20210829_110220.jpg'),
(6,'afds',34.00,'afds',1,1,'./img/20210829_131930.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
