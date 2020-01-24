-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dressshop
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `carta_credito`
--

DROP TABLE IF EXISTS `carta_credito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carta_credito` (
  `numero_carta` varchar(16) NOT NULL,
  `data_scadenza` date NOT NULL,
  `cvv` char(3) NOT NULL,
  `nome_proprietario` varchar(30) NOT NULL,
  `cognome_proprietario` varchar(30) NOT NULL,
  `utente` int(11) DEFAULT NULL,
  PRIMARY KEY (`numero_carta`),
  KEY `id_utente_idx` (`utente`),
  CONSTRAINT `id_utente` FOREIGN KEY (`utente`) REFERENCES `utente` (`id_utente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carta_credito`
--

LOCK TABLES `carta_credito` WRITE;
/*!40000 ALTER TABLE `carta_credito` DISABLE KEYS */;
INSERT INTO `carta_credito` VALUES ('1233939039490343','2019-12-30','245','Davide','Crisci',1),('4003600592874153','2020-10-20','333','Mario','Bianchi',1);
/*!40000 ALTER TABLE `carta_credito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indirizzo`
--

DROP TABLE IF EXISTS `indirizzo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indirizzo` (
  `id_indirizzo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `cognome` varchar(30) DEFAULT NULL,
  `cap` char(5) DEFAULT NULL,
  `provincia` char(2) DEFAULT NULL,
  `citta` varchar(30) DEFAULT NULL,
  `via` varchar(50) DEFAULT NULL,
  `cellulare` varchar(13) DEFAULT NULL,
  `utente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_indirizzo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indirizzo`
--

LOCK TABLES `indirizzo` WRITE;
/*!40000 ALTER TABLE `indirizzo` DISABLE KEYS */;
INSERT INTO `indirizzo` VALUES (1,'Mario','Bianchi','12345','SA','Fisciano','via Roma, 5','3456789012',1),(2,'Alessio','Rossi','2345','PU','Napoli','to mare','3334875496',1),(3,'Alessio','Rossi','23453','PS','Acevva','via roma','2323232323',1);
/*!40000 ALTER TABLE `indirizzo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordinazione`
--

DROP TABLE IF EXISTS `ordinazione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordinazione` (
  `ordine` int(11) NOT NULL,
  `prodotto` int(11) NOT NULL,
  PRIMARY KEY (`ordine`,`prodotto`),
  KEY `prodotto` (`prodotto`),
  CONSTRAINT `ordinazione_ibfk_1` FOREIGN KEY (`ordine`) REFERENCES `ordine` (`id_ordine`),
  CONSTRAINT `ordinazione_ibfk_2` FOREIGN KEY (`prodotto`) REFERENCES `prodotto_in_ordine` (`id_prodotto_ordine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordinazione`
--

LOCK TABLES `ordinazione` WRITE;
/*!40000 ALTER TABLE `ordinazione` DISABLE KEYS */;
INSERT INTO `ordinazione` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `ordinazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordine`
--

DROP TABLE IF EXISTS `ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordine` (
  `id_ordine` int(11) NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `pagato` tinyint(1) DEFAULT NULL,
  `carta_credito` varchar(16) DEFAULT NULL,
  `indirizzo` int(11) DEFAULT NULL,
  `utente` int(11) DEFAULT NULL,
  `totale` float DEFAULT NULL,
  `tipo_spedizione` varchar(10) DEFAULT NULL,
  `costo_spedizione` float DEFAULT NULL,
  PRIMARY KEY (`id_ordine`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordine`
--

LOCK TABLES `ordine` WRITE;
/*!40000 ALTER TABLE `ordine` DISABLE KEYS */;
INSERT INTO `ordine` VALUES (1,'2018-12-15',1,'1',1,1,15,NULL,NULL),(2,'2018-01-21',1,'1',1,1,18,NULL,NULL),(3,'2019-11-12',1,'1233939039490343',1,1,15,NULL,0),(4,'2019-11-19',1,'1233939039490343',2,1,15,NULL,0),(5,'2019-11-19',1,'1233939039490343',2,1,15,NULL,0);
/*!40000 ALTER TABLE `ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodotto`
--

DROP TABLE IF EXISTS `prodotto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotto` (
  `id_prodotto` int(11) NOT NULL AUTO_INCREMENT,
  `codice_prodotto` varchar(20) DEFAULT NULL,
  `descrizione` varchar(200) DEFAULT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `modello` varchar(20) DEFAULT NULL,
  `prezzo_compl` float DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `in_vendita` tinyint(1) DEFAULT NULL,
  `categoria` varchar(20) DEFAULT NULL,
  `foto` varchar(30) DEFAULT NULL,
  `promozione` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prodotto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto`
--

LOCK TABLES `prodotto` WRITE;
/*!40000 ALTER TABLE `prodotto` DISABLE KEYS */;
INSERT INTO `prodotto` VALUES (1,'LE222F03O-K12','Composizione: 100% cotone, Materiale: Jeans, Vita: Normale, Chiusura: Bottone, Tasche: Tasche posteriori, Tasche laterali','Levis','501',6,10,1,'jeans.uomo','img/levis_501.jpg',NULL),(2,'ON321E17R-K11','Composizione: 97% poliestere, 3% elastan, Avvertenze: Non asciugare in asciugatrice, \n Lavaggio a macchina a 30 gradi, Restringimento massimo del 5%, Scollo: Schiena scoperta, Fantasia: Floreale','Only','OnlNova Deep',15,22,1,'camicie.donna','img/only_onldeep.jpeg',NULL),(3,'3434343','Bellissimo','Ciao','TomTop',5,10,1,'giacca.uomo','',NULL),(4,'39209302','Charles Leclerc','Leclerc','Fit',30.99,10,1,'giacca.uomo','shopping.png',NULL),(5,'THXLH','Tommy Hilfiger x Lewis Hamilton','tommy hilfiger ','THxLH',34,10,1,'giacca.uomo','LH.jpg',NULL),(6,'2378283728','Ciao','tommy hilfiger','SlimFit',4.6,10,1,'giacca.uomo','levis_501.jpg',NULL),(7,'38748748nfyeufu','Tommy Hilfiger x Lewis Hamilton','TommyHiglifer ','Nigga',59.99,10,1,'shirt.uomo','thxlw.jpg',NULL),(8,'192328938','Bello','BangGood','Wish',49.99,10,1,'giacca.uomo','',NULL),(9,'4348','ciao','CiaoBello','potenza',89.9,10,1,'giacca.uomo','',NULL);
/*!40000 ALTER TABLE `prodotto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prodotto_in_ordine`
--

DROP TABLE IF EXISTS `prodotto_in_ordine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prodotto_in_ordine` (
  `id_prodotto_ordine` int(11) NOT NULL AUTO_INCREMENT,
  `id_prodotto` int(11) DEFAULT NULL,
  `prezzo_compl` float DEFAULT NULL,
  `iva` int(11) DEFAULT NULL,
  `taglia` varchar(5) DEFAULT NULL,
  `quantita` int(11) DEFAULT NULL,
  `reso` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_prodotto_ordine`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prodotto_in_ordine`
--

LOCK TABLES `prodotto_in_ordine` WRITE;
/*!40000 ALTER TABLE `prodotto_in_ordine` DISABLE KEYS */;
INSERT INTO `prodotto_in_ordine` VALUES (1,2,15,22,'M',1,0),(2,2,18,22,'L',1,0),(3,2,15,22,'S',1,0),(4,2,15,22,'M',1,0),(5,2,15,22,'S',1,0);
/*!40000 ALTER TABLE `prodotto_in_ordine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promozione`
--

DROP TABLE IF EXISTS `promozione`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promozione` (
  `id_promozione` int(11) NOT NULL AUTO_INCREMENT,
  `data_inizio` date DEFAULT NULL,
  `data_fine` date DEFAULT NULL,
  `sconto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_promozione`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promozione`
--

LOCK TABLES `promozione` WRITE;
/*!40000 ALTER TABLE `promozione` DISABLE KEYS */;
/*!40000 ALTER TABLE `promozione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taglia`
--

DROP TABLE IF EXISTS `taglia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taglia` (
  `id_prodotto` int(11) DEFAULT NULL,
  `taglia` varchar(5) DEFAULT NULL,
  `quantita` int(11) DEFAULT NULL,
  KEY `id_prodotto` (`id_prodotto`),
  CONSTRAINT `taglia_ibfk_1` FOREIGN KEY (`id_prodotto`) REFERENCES `prodotto` (`id_prodotto`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taglia`
--

LOCK TABLES `taglia` WRITE;
/*!40000 ALTER TABLE `taglia` DISABLE KEYS */;
INSERT INTO `taglia` VALUES (1,'S',20),(1,'M',30),(1,'L',15),(2,'S',35),(2,'M',50),(2,'L',40),(3,'s',3),(4,'m',2),(5,'l',4),(6,'s',3),(7,'s',6),(8,'xl',60),(9,'s',45);
/*!40000 ALTER TABLE `taglia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utente`
--

DROP TABLE IF EXISTS `utente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utente` (
  `id_utente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `cognome` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `tipo` int(11) DEFAULT NULL,
  `data_nascita` date DEFAULT NULL,
  PRIMARY KEY (`id_utente`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utente`
--

LOCK TABLES `utente` WRITE;
/*!40000 ALTER TABLE `utente` DISABLE KEYS */;
INSERT INTO `utente` VALUES (1,'Mario','Bianchi','uno@due.it','cbe0cd68cbca3868250c0ba545c48032f43eb0e8a5e6bab603d109251486f77a91e46a3146d887e37416c6bdb6cbe701bd514de778573c9b0068483c1c626aec',1,'1996-11-11'),(2,'Marco','Rossi','due@tre.it','cbe0cd68cbca3868250c0ba545c48032f43eb0e8a5e6bab603d109251486f77a91e46a3146d887e37416c6bdb6cbe701bd514de778573c9b0068483c1c626aec',4,'1995-06-29'),(3,'Antonio','Verdi','tre@quattro.it','cbe0cd68cbca3868250c0ba545c48032f43eb0e8a5e6bab603d109251486f77a91e46a3146d887e37416c6bdb6cbe701bd514de778573c9b0068483c1c626aec',2,'1998-12-29'),(4,'Luca','Neri','quattro@cinque.it','cbe0cd68cbca3868250c0ba545c48032f43eb0e8a5e6bab603d109251486f77a91e46a3146d887e37416c6bdb6cbe701bd514de778573c9b0068483c1c626aec',3,'1989-08-13'),(12,'Alessio','Valhalla','a.ragnarok@gmail.com','260dd0500088864143151a5b135a64f778c7e0f10942e595739a10ca2222574c091f1282d925fe4c9740eeaaeecbd242295f9eefd8a75f553d1047145af1d2d9',1,'1997-12-29');
/*!40000 ALTER TABLE `utente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-24 14:35:34
