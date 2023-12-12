CREATE DATABASE  IF NOT EXISTS `outlet_center` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `outlet_center`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: outlet_center
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `ruta_imagen` varchar(1024) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Ropa y vestimenta',NULL,1),(2,'Articulos Electronicos',NULL,1),(3,'Muebles y decoracion',NULL,1),(4,'Otros',NULL,1);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `id_categoria` int NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `detalle` varchar(1600) NOT NULL,
  `precio` double DEFAULT NULL,
  `existencias` int DEFAULT NULL,
  `ruta_imagen` varchar(1024) DEFAULT NULL,
  `activo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,1,'Camisa naranja Basics','Camisa Deportiva',12000,7,'https://lh5.googleusercontent.com/pcg41RasNY4W7_OF9WZlqgP43tb7Gd9UqqUAzL8n-zAPMv6awWUy1_VdB3nmUxmh1DMkjyGGw_0WBgYUM0b7h90iSQ_dKsBuiODE6wqUu1LpXpDLvSWx4glLwNFAabZclA=w1280',1),(2,1,'Pantalon','Pantalon  Beige',10000,9,'https://lh5.googleusercontent.com/VgR9gRf0004-jsoqchZ33hziJLfLbZ2qnP1fsO3Gs-8MDgLMifZ9iUJ_U2B4GWrrkxAJGbtVbQKBzz_ng4THaaxQcxGjNHFzWwoR9DQiZlaehASyGQ22MZZruPY7O3W7=w1280',1),(3,1,'Vestido Rojo','Vestido de Flores',7000,12,'https://lh3.googleusercontent.com/GOF4LCKarp57-2WTpyihjBWr5o1tWTTnEFP_coqn-Gyg7srntsPepaImpAzKWZMzdhUXbZeLnyOv5_o40FvGaErwnhuyYn9pZ2aBFP2UfR__86bkVzErEI81-KsosxnnEA=w1280',1),(4,1,'Zapatos Deportivos','Zapatos Negros',11000,19,'https://lh6.googleusercontent.com/umaV_L6ifA2fD8mJzlHHFsHZIcHj-yy_E4HIin6MdlNb7jmv0THbzxtPn_tgt7t6cnjwMKztPnARATCsfdoD9ybzjKmv29UxckIedE_mkWc8vXTgk_hvuDJ5YQUmWKEw-A=w1280',1),(5,1,'Buzo Deportivo','Buzo Negro',8000,20,'https://lh4.googleusercontent.com/BHygycdQ1bpSc_2AwnR1KbWz4nXPjOniwmUQZFuajjgmcl7SBTldL7un_CCiW5ZKvTUU2loFEc53_BfxSHTFBTmbnvRg4HTi7Um5wFgBfXFLq2eSYvQTDc5vn5yjXHOEjg=w1280',1),(6,1,'Camisa Blanca Y Negra','Camisa desvanecida de blanco y negro',9000,16,'https://lh4.googleusercontent.com/TpQqEzq8w8gzDoo9b9jZPKrzTgvm0Eyv2JC8gzppu-chOdcd0kTivCMLMRH7Z-IUfalmGTLjVTPw0CqmTevAdysDmtoOYoqYv-7iP6mt30lqCTj461R6bIBUOyQ9AiB9gg=w1280',1),(7,1,'Jeans','Jeans Azul Claro',7500,18,'https://lh4.googleusercontent.com/gGwQPqH28DcDeAztraQSiai9oVFv1xBkrgwnyLGg7e4ff9MNXFuc37rr73QeH0vteSHNM4W0IlLepIK7ySpXYrZd-CUbJuRM6kNv8v0AtmzwnciUQoy-HnU_F-TPm2cRjQ=w1280',1),(8,1,'Vestido','Vestido de lentejuelas',9900,20,'https://lh3.googleusercontent.com/SHdxIvCWb5jwtgkSKq8RLoWX-N8-v73X6xCBCb_8Gf7Kr6-QMijC1VH53lmv85XCNf3qPo5vijYeVydkrr4uyq0cD1WZheuwNHfo_KzcUQjTMpL8YWqe0uayM_SDhGTfoQ=w1280',1),(9,1,'Zapatos','Zapatos Beige',8500,22,'https://lh4.googleusercontent.com/AZ-pZwXoAcCLemjfJyNORiCnsdLV1FmOizMMRtm_dT-wP9lMgQPEo-saxNa7ZsGVlQpWkr4R6XUMjrkBK9oxpxIQtXsTBVjA_slUjUsmVQnLhObYX0h-20SwcLjWyBGFGQ=w1280',1),(10,1,'Jeans','Jeans Azul Oscuro',7900,14,'https://lh4.googleusercontent.com/jyyOG81EbG97iRm-nwxbVECtzDDOkYXdR2_tPxkTmmwCsjN_gLlsMtW5SSmAysgRE9-_WSqeXhoz1TB0RSoi5R09o-q-hLm_ZCg4XZmOP4Y5zrWT70GBmXDAMfqmxII7mQ=w1280',1),(11,1,'Traje de Baño','Traje de Baño Verde',8800,24,'https://lh6.googleusercontent.com/vedYTQiub6EBdLGkK9BWm0knQYYMmBQNWuMuHmyH0No4Jo0gYx96cEHiH_i4IUIXLhKBMzfpQfvkfutaM4iXA0RkJcJnP_IXJC0791cxR81JvyZ7S0lz5ftf8415SPyk-g=w1280',1),(12,1,'Botas de mujer','Botas de mujer de cuero',9000,20,'https://lh6.googleusercontent.com/umaV_L6ifA2fD8mJzlHHFsHZIcHj-yy_E4HIin6MdlNb7jmv0THbzxtPn_tgt7t6cnjwMKztPnARATCsfdoD9ybzjKmv29UxckIedE_mkWc8vXTgk_hvuDJ5YQUmWKEw-A=w1280',1),(13,1,'Vestido','Vestido Naranja',10000,13,'https://lh3.googleusercontent.com/OJq0Mov_L1m73MxCg7ughUxU47w8UsgDSA79t-o41urwF1EQ7vd0d-PATsD0uX3KxfzZ-2x1sorrhhDXbmWBdZhvw-uZNO25Wnwq7_16rFmW4NCLw2SOoIxrUsQNYXuQcQ=w1280',1),(14,1,'Vestido','Vestido Rosado',99000,15,'https://lh6.googleusercontent.com/bywzpffm-tKe00XRtoSHXamtNCgmz6XWyz_WMPl0oI9UCDq05Nf7Vw1mphyoYfq1k73NZDNMEGxhwfOSmm1XJLVoZHLUQXSbmkySGuzpLamLa7-YOIoY0ZmBVQm34hFwfw=w1280',1),(15,1,'Pantaloon','Pantalon Negro de vestir',6900,25,'https://lh4.googleusercontent.com/a4_mw92KRoPYARLOVyBnGw0QQscpvOrBK9x9zhUABmxRiwTzcRmQ270J9v05hfHI3OR2Hrl5icOTADGq57uJoTzurcrHEevjRmYi1JbjqMmnqIY48YOCRApTAmG-D4k2Rg=w1280',1),(16,1,'Pijama Verde Agua','Pijama de flores',8000,21,'https://lh5.googleusercontent.com/uvPVHMqiYGeCGz1tvvQjPaEQMSqhPi7VZL8dWVX8Jtcbbbaj3TU9ilKaMO60AeVX9rQVlgPlrhL0UoSJGmjVDPJcuEzVG9LKdX3F2OF3aAmAy3LB5iBZvi90fpq3Mt30dA=w1280',1),(17,1,'Camisa Verde','Camisa de minnie mouse',5500,23,'https://lh4.googleusercontent.com/062W-TO7Gb2hy1_FpLPwlnJ_6S0l2NdAlgjt4kx2vjRXS-gzJ63r4ALmezEdbfevQccx6HnlkIGLFgjouiiuESDwRxE59j7pYQRizIU3QXWvA4a8rSY1rIb9J39JIXK4yQ=w1280',1),(18,1,'Sueta   Gris','Sueta Gris manga larga',6000,16,'https://lh3.googleusercontent.com/AQBFljByiTFyrhD3hgiMRtQGgNNgnM-uAWj1sPlMnpjsyMI3_0AhekEy7OIUxCgg1u_vlYhoR93qawMvWxXu-0_fbFfI9CgpwOxsof6OxUQ1Yw2PeCwSmJ5OwhCHce2Zjg=w1280',1),(19,1,'Vestido Azul','Vestido Azul',13000,7,'https://lh6.googleusercontent.com/GENkzUSunPtPdjEUtiCA6mB6oTEjqWMJKFuXXM6x79xg6ltiITDdxPlUSQ8klOUILHHy7jeLaG91zI1yC9R6nL1_YQiAtkw996x512ccJ0im8VMKfF0m4KpIKo2ZLcafyA=w1280',1),(20,1,'Pantalon Negro','Pantalon Negro estampado',11000,11,'https://lh6.googleusercontent.com/iyMXlzXsDJtFALe4tcGp-BQzy2cVLsQyAGYJ-I7okSr3yF4re_MwLZ6o92a6KplK8NjnqPYmqrpt-wDmibCaAKxn-ES4yE6kjG5azEkkOM3-mS-v4bfEooKUN1Nop5cR-g=w1280',1),(21,1,'Pantalon Beige','Pantalon Cargo Beige',14000,24,'https://lh4.googleusercontent.com/cEgwO7eJFWKLhjLaMrrrsQJBbZ0z1lmw88SJN7z8Z45SfrYfGd51xAhqFEcKtkty6xbd7aD70Em7zE97YUyyf2gt2FD7N3kQymYCAERKkzXG4bNXB_1WYWppNcWkeEX1Jg=w1280',1),(22,1,'Sueta Morada','Sueta Morada Lakers',16000,12,'https://lh6.googleusercontent.com/sYcXuambXCAyEcgbWmTRW7z7iEWAmRIiyNciTBxACUV2BIAHCxF1q8MR_hArXOlgw3O3T2tWz0joQixexEhqL9FVx-tIU0wj5ejdCa7X0NIcvO0cf1AAvNnPejb8uJIsTw=w1280',1),(24,1,'Falda ','Falda Jeans de bolados',7000,18,'https://lh4.googleusercontent.com/Vz3CHT2OhoUl3JJs3B-Bgk0zCudMZEwrtJw1t_d8qcR7BiACqCFLYT0bSwvDv-iNxB9Ql9X1PNWw1ibOnxIoyR2A0DmmyMJ2VjKcUIwBitPX_bVgcGjJAUuMuTOfHb4Q=w1280',1),(25,1,'Sombreros','Sombreros Naranja y Blanco',6000,16,'https://lh4.googleusercontent.com/WYaxlF4zTEayDXTRnlYBJOpJB6oEMDMuMsat422ucewOM3BAznrSVq8HfdCwRVoFYibjnyzFeOPebdscPheFk582splVBdWBQ8bHmxRQTURMemcaWxB3YMa8qzwNfUuM7g=w1280',1),(26,2,'Audifonos Negros','Audifonos heqday',7600,11,'https://lh4.googleusercontent.com/1uG689DXweHT6mWCuycDBQgKWCy5gkwm3DC2GHsM30L9BcKN_UTXWtKgGB9W09Jfvj4YUgp68Q1P4quXYRaYWMFKnDWqWAWIbSIqvCY3pV-Bum41L9AlpbHg8t8nTitCTA=w1280',1),(27,2,'Teclado Blanco','Teclado Inalambrico OMOTON',6000,30,'https://lh5.googleusercontent.com/tCU-4OJ13QW2mD5vfQbK_5MMVjvoOmWvxuEEWbSoiS6gS35d5-PKnhxfaQgJ0xFj0CRhcCGS_KA3trRxUnGCShX9f7gk8NNgTVUtmSBYyVKGLrtfylOqdJabK1Kg-x2ckw=w1280',1),(28,2,'Cargador de control ','Cargador para control de ps5',15000,25,'https://lh5.googleusercontent.com/B8dnhpESuv00oLSIb-TE5H2dKx5zPXDNHIIKebSe7JyXBNWnb_ul4MVNxK2qP5X5Hn4wOTiekOkXkGpSmsVTFOV0_HK_Wc85byNBWSfJx8rJ2BCS79VlSfPNfvvOieQVjw=w1280',1),(29,2,'Masajeador','Masajeador Muscular',12000,15,'https://lh5.googleusercontent.com/z-pWWMLtNC9tjEcEom_UfvwtjppER_diAyIogZU7_z9Yyu85jEAvGfrlaqMmidnyMjA4YNTTdm4fkzi4y3FQDCauCRPF56sqNFXh7NEVJeOa0tXbRHK4np2O174GKXXGgw=w1280',1),(30,2,'Audifonos Azules con Microfono','Audifonos Gamer',16000,12,'https://lh3.googleusercontent.com/OiXCk4ukaybwZp84rAnVruYSmqncIZBCRo7HpufdsYVauYJIJovBQfAon3I5yuKKAay4P3C2IplA6_LZZ3AXWikAMLmMa1rFejAALbYEVonKgEHod0HoS7gs1gL2o9Hd_g=w1280',1),(31,2,'Camara Seeutek','Camara Wifi',19000,17,'https://lh5.googleusercontent.com/gLT9aBumFM0ell2H8rs5h0JrZ_TF2cVQMYRcvsOD714nhI_TsYJutcoIzA1uRLBl8PtLy0anXgVy4j5e5hiLp00n-DD21T9JGe10edo_Pj2yA8bSLHvfARCWHU-R-UsRoA=w1280',1),(32,2,'Sensor','Sensor Inteligente',10500,10,'https://lh4.googleusercontent.com/vKuh4Zj_yTM9hgxvNSe-9gDg_n1D0fqueD7Er4rEpZZufMYABtZ16GC3PaLe7eZ5ybE7DwLfmkXwwi8IZ5loLg2yT-UPLWIQVNpqKRyDgjy78Vhu_TzYUlRhV62T3Zyb=w1280',1),(33,2,'Control Negro','Control de Nintendo Switch',35000,29,'https://lh6.googleusercontent.com/YuANVZa8qELZ9Wh8559tOZWexnrwf_6Ed1GraHMrDJ83L9Tdarqgp_B4fz7UelkWV4EVT9htBD6eZFcJM4CBasG7NPwX1wF0cN8CGPm0Z4b42BNjorhT-QSAK0iLbKAb_g=w1280',1),(34,2,'Roku','Roku Express',18000,6,'https://lh6.googleusercontent.com/rANDjq3v4JH6Ukapv-6aVT_ciX6wPWkglqa-I5o4MAIJQT1okQar_DhuIbEQymez2XRsGLuYP6myvHuWP69RnzaYaH-gj_8xX1LmYmNzn8GFD0cJoQVjpT9k4JWXCT0juw=w1280',1),(35,2,'Audifonos Negros','Audifonos Negros Inalambricos',8500,12,'https://lh6.googleusercontent.com/_jZZMZuv7cD_C9879Lq2VZRofAOM-aGYiWKztmildxpGAz1dWxE23c55v10h4rTCYaKtFvtRlK-oNWDgkYAl4UtOZHfDlVVN9XaDgL6JwxRTnChaTbjeeZZ2sk_aVATB=w1280',1),(36,2,'Audifonos Rojos con Microfono','Audifonos Gamer ',9000,24,'https://lh6.googleusercontent.com/_eqLnJ4t_OTvr3yDmYjSP2UIeXmgbmLCp1F128HNAcjdVLgOu1nkOCXXZXJrp0-IYPYN3lPXojLmUtuBsuTx6rXu3KMPC1k9jMThLpEMl1JUMAgyUd14ty0sChIrZZh0NQ=w1280',1),(37,2,'Wafflera','Wafflera Negra',11000,15,'https://lh4.googleusercontent.com/JteMmwxTC02fWoNGGOFxTF-BLJgCASDnuBX6pxS_-xdSx3_HTLELbM6aPxS2PwvWaYy-SrMGyjAgCMuAgSSh0WgA4A9ReI1NeHTY4jqhRSChg0BmEnglnoI_1iEbLLrFwQ=w1280',1),(38,2,'Maquinas de cortar pelo','Maquinas de Cortar Pelo con guardias',23000,10,'https://lh3.googleusercontent.com/ckfFmhZE_23yaL1kWr7raWf5FNQIIfmVSq5xfRNywMJyC2aAhCfQefoPGBDWDxUTvLqBky8WvF39dZlSywQML7dOzDdIxi7n4zLPENnDk2rrOh0uP2KHwGAUsIG-q0XjrA=w1280',1),(39,2,'Filtrador de Agua','Filtrador de agua BRITA',20000,25,'https://lh3.googleusercontent.com/iImeGzVK77cpa1mBqe12Lp62l6733oGXUSvVPzQVjUKANApopHYGMQgkYchm0ghlnEqcJOTBdlu_c3rU-uZk6zNUQI4Qqsl6Eg8bEe7VOB3WjsduNSP1tHgUAddZSXLCFw=w1280',1),(41,2,'Secadora Naranja','Secadora Conair Naranja',21000,30,'https://lh6.googleusercontent.com/B31NXOsofReS-K7GgAx2cbC4bIu_-AsfwZPRu9FgtyssGmoI2qdCatnc7xtl5pZX7ztBAiUkw417Gmf0SuyFKZKjP_2ZlWTCVijF6wuUrTw4uuywLr8BAY3vO525z8oL=w1280',1),(42,2,'Plancha de Vapor','Plancha de Vapor aowenta',20000,23,'https://lh4.googleusercontent.com/JVFNpS1lgF-Y1TgFAFo0msBDFqa-l-0IFrbUMSO8IZRE2laFGAYYJRnadPwxvUXLswLwdX56ma8a3-M5Sta9pHw4GrjHho40egepgzJKvYbSFbjx3qZXx-B7N45tKV1lwQ=w1280',1),(43,2,'Plancha de pelo ','Plancha de pelo inalambrica',22000,26,'https://lh4.googleusercontent.com/pHlBS57Wu_V3bMsdMPxKb1Su8A1WMTYstkOvI-wWkmEmv6kDgL4VWMrQmQSPyHEoA8zl_3Woo_0dWP4DczosJugkOgtqj7CAMhwsK-KZcDxdbHzvrqgNWBnCX99lOGUAQg=w1280',1),(44,2,'Robot Aspiradora ','Robot Aspiradora IROBOT',30000,20,'https://lh3.googleusercontent.com/XXHj8i_8oY1DsB6CY-U3CfUWcKEXF6nCfTS1VeT7dYrLsIQGZ85219NpIm0JzbVPrAUvfIbBTU8XiB4IGUxp6f-VWqDXNgagDxwm1IcVpJqX3CQ4kIvRvB0fpQuIVIZmTQ=w1280',1),(45,2,'Taza Inteligente Blanca','Taza Inteligente Ember',8000,27,'https://lh3.googleusercontent.com/Q19MaT8aY7sqQr2CzMdYJjx6Moe_-D132kDg6q9fa3wBMKfMsL_8BIFvmq6DZJTCn-Bf61ceCrsRZO7jLuYrPOjonZpovK5XZHCalkQrctLlEwl3XijO_DmFMKMnEaA2jg=w1280',1),(46,2,'Procesador de Alimentos','Procesador de Alimentos CUISINART',13000,20,'https://lh4.googleusercontent.com/AR3wUUHHhM2xDpPxcTc2UesRd-bO1m11sE04QAV4zvjRCo9j1_dE4V1pX8XVoeD9YtCs9YLwi_oz2uvLKUV3YSHkt0j5m0c400GIy2PbPbCqYxEATVbtHMcgKmmcFfimHg=w1280',1),(47,2,'Licuadora','Licuadora Vitamix',15000,39,'https://lh6.googleusercontent.com/qERb94aHZf7mH4ZaRAiAaxmZHPHbQg587NbC2kQaG9ivS9UUZ2JJDvyygrmgckOwOPEG3khdmeWO5Wy05pWW6y1mYr6lko6VzP411Kciy7zDGxoQOqnPx1gug-1f2wIy=w1280',0),(48,2,'Coffe Maker','Coffe Maker Programable',18000,40,'https://lh5.googleusercontent.com/ncxeHJNySYn5kNxayMsbgL4RukN25kLGDPFFok4X28PSW3oyYFiAkOF_2v2k1-Gk3BOj2gJ8YgxXHr4xzX6NyjWmao7zpq70Fiq0Kobd8EQ0mwBXfM7emVCNZ8nfvLu6dQ=w1280',1),(49,2,'Control PowerA','Control Soporte para Xbox',21000,29,'https://lh6.googleusercontent.com/SrnI7toMiv_gY0FzGhEYdFrg3Oobq-uVLHZBN3xWvQqoRYo4_NFhBOopKZZO5dK73MFn1SgJkIpPB-K-obVf9U9x-7aUvmIY62ws--85q7fJo9S7tskk5yMSkZrrSCwfag=w1280',0),(50,2,'Astronaut Sky Projector','Astronaut Sky Projector Smart Home',27000,19,'https://lh5.googleusercontent.com/iFvr_ovE3bST6BpiYOkcJlLf8hv8svutfCWpELZuUe6vQIU0SR-0_JYPaT9LTMSEFk-MXZl5Std3MnulRSI22pVv5hEN_5I4GrsXdo3OwILWXyir49RuzvG6qSJfmpouJQ=w1280',1),(51,3,'Decoracion','Decoracion de Granito',4000,15,'https://lh4.googleusercontent.com/28fKnqjKR_L49LeUcf4VER8sI01LlRx_N3SndENdbpbOyCgXrg4NXQ1Y7eMAiZEys0jMlueRrIEEuFB1CaLuj-Oh2ZXd9ntjTuEEsBSPLOtuSVPeDgd4pEFZkVX_MNr4uA=w1280',0),(52,3,'Lampara Blanca','Lampara de Mesa',3900,37,'https://lh6.googleusercontent.com/Zew1jG2Zj6suBnPTg3NJ0u9i5xpXkHuzK0guaGvXluN_UCvOhYQpd5V0db7RaV6mbN8k9fXIuZsBU0p6UyUHzYJ9nqvm_OtlGK6__jnLE85DoIyUGtoqqYEIHD-i6QBekw=w1280',1),(53,3,'decoracion navideña','Decoracion de perro',2000,24,'https://lh5.googleusercontent.com/QF1Sx5vSzBBNQ48lD6FGwEnr3AeE5LazIe7-WtnK8gQGGDkyyZHsKKNsWuO02ZOGDXJswxtbdhp1Q0SCzSo6PWx13zy2jBXcMeNzG517R_D-52lhG9i9XEHeJxmF_6lt-Q=w1280',0),(54,3,'decoracion navideña','Bolas navideñas',2500,40,'https://lh5.googleusercontent.com/qOUv6qvwQfzIh6xZbHCCiNTC2DY4LSeSKi_N_6qWK4ZgKxkdeNolBJT_utuwIlBqc-z80IyKvYyNFBAIlI0U1issrQEQG0yUGJpAN1gSFI-aOmxUGsMXz3D0MiEOp9gFRA=w1280',0),(55,3,'Decoracion navideña','Decoracion Casca nueces y Duende Barbudo',4500,25,'https://lh4.googleusercontent.com/Yxud8SQnOvCfcunvbbuVB8REN-Ex7oN25gZwTHJn1c7EgjXNAcNeeKCo4VqE1JJVF_QxotjA7mzp9AXWn75NvD6CgXn7pheawuf2LKBmVnsnlusaYNbuJv-i-gihZX8hyA=w1280',0),(56,3,'Decoracion navideña','Ramas navideñas ',3000,32,'https://lh6.googleusercontent.com/_LeJDOGqoVZJa6Xvb0i85nO4HUfhIdwfaQHxeE7Bk51nJD8iJtQJZcKLbnPEB0vXGwmYCRJzcn3wqJvh7lIfrS6GcAVAr6UwZcFs1YB4s0v_e-ChPjvNl7lJjJZ2-Hep9w=w1280',0),(57,3,'Decoracion navideña','Decoracion navideña Estrellas y  lazos ',5000,30,'https://lh3.googleusercontent.com/EWc1Aw6693SAAmzzQE9I9WYNfY-Z6wMr08H-gbycdp1h2ApcNbkrp6SlZKpzW2-xbm8CyORx3X2KW_3n7KmvFFlPwNkoXuhJa7d-ho7Ig2hYKEZQYm_hIFNkP7zTRIWIeA=w1280',1),(58,3,'Globo Terraqueo','Decoracion Globo Terraqueo ',4500,22,'https://lh4.googleusercontent.com/RR2dWhIKfXOTrO20ctIFewIE0DCJ9gTFZm8AnLPOVnJ3V0vR-6ikLmZHf93BkEBmepKyL8h8iouOZs_WB7_xgFsb3HU_gFlX7rTxJXikefL52xUfQ-imRv0_6NhsWTRH=w1280',0),(59,3,'Decoracion  Hallowen','Decoracion Calabaza',2800,13,'https://lh5.googleusercontent.com/x2_5D99KUHt22rIfyW7UFnmpR_y4AWCurIT4s1ehgBW51i0VDbD-_axs-imEdZEjt17M8KmV3G10iPgT5tLl2d9gVjm9wl7_o19DyCRZAcqs2PfjTXJ6OEhg1BVA38XVjg=w1280',1),(60,3,'Decoracion Hallowen','Luces de Hallowen',2500,12,'https://lh5.googleusercontent.com/2ZcWnbfpQZ_bt_qRel6XH0ojS_-KqQO_eQlIAvN0Pv2b_elzRciUC-5LhKChGRnSzmO4lrpZhZfeZq-RTk7Am7Z3zHkjuf7j0DT1hLQDyLMALQdz-HpA1RSO_9TbhyX2qw=w1280',1),(63,3,'Cortina','Cortina Azul',4600,25,'https://lh5.googleusercontent.com/9GIWRzXgLvXaW7E5EDY9c2UAOqEp-m3bbLLJdJmaTGygrHJMfXiEM0qF6w9WLyv18RsoEnx7KiNw-dZaWHkXsrCmvdsI7Of_l7SITIOEVe6f0mhgeQLo3Ymjvr9MpbPVkw=w1280',1),(67,3,'Mueble blanco con dorado','mueble con dos gabetas',5000,17,'https://lh3.googleusercontent.com/ODsWt4yR6b7Pb4HxQX7hdO7wtw4sDpv70BDGnzCmJNv-09zw_YGT_OUZzRzlaRQ-uVQZEjJ2PFQz_pircjuNREJ45EvejMVQOfR1bVdkZ8_DN8dJdzr-PCLqiSUvrz-BOg=w1280',1),(68,3,'Almohada gris','Almohada para perro',3000,15,'https://lh3.googleusercontent.com/FNVmNMiMITmZeO2lWgMoM_xvAc4lXA864g5-S8jVVhKktxygIdun_vfkJ4bEYxf6sjkdZncZPNoZOxVrIz-AMaY8AZzRsOpolz7iK1VnUVXbjm1uQsaXmevTXz62YLVNGw=w1280',1),(70,3,'Mueble metalico','Mueble metalico para   ropa',4000,29,'https://lh3.googleusercontent.com/4rUy499yDFtPbQg7DgnZP-oG2uFOhJgaOhAu6jGf4x6oZLzd9AvyAMZAOEzIZyG0iemt80arnqcvWKW3zJke_Atgm20IIXbGCLtMYXY7FASAV_rdr6uQb4JVnV3OEyT8CQ=w1280',1),(71,3,'Cabina','Cabina para puerta almacenador',2800,23,'https://lh4.googleusercontent.com/xwAuO3Jke6yAhO29wrr33az6DS5IpQNdtwX8stee6hv8YlmCDLN8ZNz-fo5OsalkkidUwC5yeB0LdEsCIMMuB-O-TRHCtfdOArR039upwyrFUiSLhhLxfcs-dwAv-AcA1w=w1280',1),(72,3,'Mesa de cuarzo','Mesa de madera y cuarzo',4000,25,'https://lh6.googleusercontent.com/vwoCslZ5IHwBPpvsoc2Gd-mtgChIYgXz6M2MY474JWGtzSMja9Dm-s9snGZwJPxdRYFX3GxeWcWhpH5HAgL_M9zB1pEyspEIqr32FCmSq1JZmrD3sjAoCUPmlonVfg9Qlg=w1280',1),(73,3,'mueble de madera oscura ','Mueble multi cabeta ',5000,29,'https://lh4.googleusercontent.com/wNKaxw9AdHnyRVmwnpDzLhaWPHHBE5e5B0onW7PVHj113kj5wKTOzuUK2wwsv3o6SD3K3I8rJ18VA-6mLkNtfnv8giT-ZywHYRCstx-Iw2TU6xPn-o2EtSYm-9oaq49o9w=w1280',1),(74,3,'Lampara Beige con Negro','Lampara cuadrada ',3700,30,'https://lh5.googleusercontent.com/mp72C5kxxpqog9xbed8xnC0Nr8LgUHPujiXhXyuhnGGp8vSbFwy_vauRUKLVZ8wkso9F68t2dxioTtyYs8jhG1MitYaqVCP3ty2bwe0nF4JxrZGMVd93enAyrHdVKk9z5w=w1280',1),(75,3,'Decoracion navideña','Acesorios Blancos y negros',4000,25,'https://lh3.googleusercontent.com/rCDpFvuFElkxtULO0ZFU1XJVCwSSc6JYRaHI4EMsvPKelaFqZHmtB31QLhbQfCWE6QEa9GEu-PIFkBf7BuWwCDreTPXQikNOiiNVR5RXnY1g3lXcJzIB7KD8X75M-BqGlA=w1280',1),(76,4,'Juguete avion','Juguete Avion Lego',3560,15,'https://lh5.googleusercontent.com/wpS2qjnSH-C53EAWrhtf0gErBNuLyefStBq4H0w-WPT77wk9WxeWWMePjGt5ougy9sBtatKQRsWYjpWOSr9VoB62ddONsWtRSFiaVnX4E1RM3oebvGBs5dbUqcXgl_dGeg=w1280',1),(77,4,'Figura Anime','Figura Zenitsu Demon Slayer',4000,7,'https://lh5.googleusercontent.com/0UO1QteQPW6O7Y-npc7LEc-Cm12cSzww1jXVy0SCIMAcoJbeK4JItcfvffnc6GmVKjpdLyJVsJEc9KtPdzC3Hq-KSxE8RQctY1Jbq3dHEJ70AIzl2VY0HZgNdGsI9pMGoQ=w1280',1),(80,4,'Figura anime','Figura de Endevor',17000,24,'https://lh4.googleusercontent.com/WoZTOzmMdAvtkmGEzq2DCzBPqS5Y1Yoj0iW_IhwGmmHd6A2PSArw0Dzuh_ZWfTm4xR3HM54CIxpGLqo-ieS_noCDGsoCZ84QObeUNN5C-25Q9vdqqCa7tRqjF_eQxBPSNw=w1280',0),(82,4,'Maleta it','Maleta negra con detalles de cuero ',12000,10,'https://lh6.googleusercontent.com/T--CjwMAXyKS-7zU4opnGgEwOHBQuhiLHTmDQTvXNPuV7wEcW_d50FrnzsKLv3MiVUT1nKJ1przzUGOiKSA0Q-0qbXCeEJiHogeUUPDiLJUxt0qRLVR2fx6oOo5jUmmE_w=w1280',0),(83,4,'Pintura','Galon de pintura',8900,11,'https://lh5.googleusercontent.com/22nR7WxV00hLb_OCVs2lB2yDzKmlGH0TbTNoUGP28JuTkRaC5J8Gn8wN7AmM-Y5HadZFKYSU2zyjlu8ROlr6pMwceur-h-sOxa_Q-o6CmhqReLfhJqf9aeoPvwZhVNRs6w=w1280',1),(84,4,'Primeros Auxilios','Primeros Auxilios +',7900,17,'https://lh6.googleusercontent.com/Wq-K1wE3IkHttOQ2EJ5YtL3HUEwKosJdoJA38sKm9E5nEhZfiPIrQH_I6zVPMAg2LEEkKP0P2yOSkngRWPiedxTopEp2mIx0yuBbfMFm4A3F340nxTo-BsnuIEL5ObTuDQ=w1280',0),(85,4,'Reloj negro','Reloj despertador',6790,15,'https://lh6.googleusercontent.com/bcaNGk29eIzSn1OEN-JqMZPXHA2WoxgmhS-KK4-eYfyDJLZGwsACpUGL4d8noe33_QuqGOS4i70vL6EEZ3VzmRZMbQfZCpTYRKDGRYzltoRUS7FxJG8IA3YXRcNK8iLgMQ=w1280',0),(86,4,'Bolso azul','Bolso azul con detalles de cuero',7800,18,'https://lh5.googleusercontent.com/Ch-4DnrOhHX7UeaLKHfssYOjA95vP6ghH7m-Pl-_OMsmzhwdLXIGOG-i0XecqzmpVzCfRsbfgMO6m2EHSUX7RqREPFTSkf7eKjdkqE3gfQbyaN1seqeQ_iI3BOLSGisU0g=w1280',1),(87,4,'Peluche de vaca','Peluche de vaca blanca con rosa',6700,16,'https://lh4.googleusercontent.com/cmL90RUTaB8hOHXqpFkPRUL1h0yoEPdxr7cwIuh5pGKtRQS3fb0dnewunEDcOOyzTC9V2h5CQlQ3ztn0prLVi38xy-xtRB2RT8dNq5dxHP8i0xNBnx3uuKSOhvOss5xJfg=w1280',1),(88,4,'Juguete dinosaurio','Juguete dinosaurio verde ',7000,26,'https://lh4.googleusercontent.com/1VPdUkDB6w1bQaIHPGifSG7WGN17WFs154H3jOHzI86ms2v6FpDQGrqQ7R0X6srt35bwhULTHYtQH_dNRofxhTlrX8DA7CvgVO5lGQEGRC_yKNKfmjdQvd2WdMCJDyXeJA=w1280',1),(89,4,'Casco ','Casco negro de bicicleta',5600,28,'https://lh6.googleusercontent.com/-wiMLgjg6Yadwr-fDIqtFu1k5u5w9G3UY04125xY-LGy60u79XmZIZqRd3L_MZIrdLRLkx4klpxcajrDlWshqIqtMkF9GW8fBtZhYjWwnTUoqGHdyPyLBsAV3fAUQ-0Qkw=w1280',1),(90,4,'Bolso de cuero','Bolso de cuero detalles dorados',8000,16,'https://lh4.googleusercontent.com/asL4drUXjbwZayJIEEgGPm-IGDJnmNOimpj5PpCnzJeA5comQea1tbQ5Pmn29kzjvDKocGKgSxBnrq21dlfmKAbPDOHCdU9gr9wTyVIepx2Kz8XoczEpb-kOi-6vxz0LcA=w1280',1),(93,4,'Peluche','Peluche Elmo',10000,25,'https://lh3.googleusercontent.com/Iz_ERC6-nCdWvzqZG9D9Ejd47VBR9-kBKNRWk7dgzQxZx1IKk0-lgxMXIvH-9t6ORnMAMBOFzMh4lQiPlzbbyco6h4-sgbhPBaYS_y3bRWXilzV15yXddAtQW6oX7LYCjg=w1280',0);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'outlet_center'
--

--
-- Dumping routines for database 'outlet_center'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-12 14:25:06