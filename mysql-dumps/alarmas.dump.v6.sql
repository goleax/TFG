-- MySQL dump 10.13  Distrib 5.6.30, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: salud
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `actos`
--

DROP TABLE IF EXISTS `actos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actos` (
  `codactos` int(11) NOT NULL,
  `codespecialidad` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `tipo` varchar(3) DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  PRIMARY KEY (`codactos`,`codespecialidad`),
  KEY `fk_actos_1_idx` (`tipo`),
  KEY `fk_actos_2_idx` (`codespecialidad`),
  CONSTRAINT `fk_actos_1` FOREIGN KEY (`tipo`) REFERENCES `tipoacto` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_actos_2` FOREIGN KEY (`codespecialidad`) REFERENCES `especialidades` (`codespecialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actos`
--

LOCK TABLES `actos` WRITE;
/*!40000 ALTER TABLE `actos` DISABLE KEYS */;
INSERT INTO `actos` VALUES (1,1,'CONSULTA','CV',NULL,NULL),(1,2,'CONSULTA','CV',NULL,NULL),(1,3,'CONSULTA','CV',NULL,NULL),(2,1,'REVISION','CV',NULL,NULL),(2,2,'REVISION','CV',NULL,NULL),(2,3,'REVISION','CV',NULL,NULL),(3,1,'VISITA A DOMICILIO','CV',NULL,NULL),(3,2,'VISITA A DOMICILIO','CV',NULL,NULL),(3,3,'VISITA A DOMICILIO','CV',NULL,NULL),(4,2,'ASISTENCIA DIARIA EN U.C.I.N. (UNIDAD DE CUIDADOS INTENSIVOS NEONATALES)','CV',NULL,NULL),(5,2,'ASISTENCIA NEONATAL EN EL PARTO','CV',NULL,NULL),(6,2,'VISITA A HOSPITAL','CV',NULL,NULL),(6,3,'VISITA A HOSPITAL','CV',NULL,NULL),(2724,2,'ASISTENCIA A ENFERMO HOSPITALIZADO, INGRESO NO QUIRURGICO. PRIMER DIA','CV',NULL,NULL),(2724,3,'ASISTENCIA A ENFERMO HOSPITALIZADO, INGRESO NO QUIRURGICO. PRIMER DIA','CV',NULL,NULL),(2725,2,'ASISTENCIA A ENFERMO HOSPITALIZADO, INGRESO NO QUIRURGICO. SEGUNDO Y TERCER DIA','CV',NULL,NULL),(2725,3,'ASISTENCIA A ENFERMO HOSPITALIZADO, INGRESO NO QUIRURGICO. SEGUNDO Y TERCER DIA','CV',NULL,NULL),(2726,2,'ASISTENCIA A ENFERMO HOSPITALIZADO, INGRESO NO QUIRURGICO. DEL CUARTO AL SEPTIMO DIA','CV',NULL,NULL),(2726,3,'ASISTENCIA A ENFERMO HOSPITALIZADO, INGRESO NO QUIRURGICO. DEL CUARTO AL SEPTIMO DIA','CV',NULL,NULL),(2727,2,'ASISTENCIA A ENFERMO HOSPITALIZADO, INGRESO NO QUIRURGICO. OCTAVO DIA Y SUCESIVOS','CV',NULL,NULL),(2727,3,'ASISTENCIA A ENFERMO HOSPITALIZADO, INGRESO NO QUIRURGICO. OCTAVO DIA Y SUCESIVOS','CV',NULL,NULL),(9000,42,'ABSORB INC ORINA DIA ANAT','F',NULL,NULL),(9001,42,'ABSORB INC ORINA DIA RECT','F',NULL,NULL),(9002,42,'ABSORB INC ORINA NOC ANAT','F',NULL,NULL),(9003,42,'ABSORB INC ORINA NOC ANAT','F',NULL,NULL),(9004,42,'ABSORB INC ORINA NOC RECT','F',NULL,NULL),(9005,42,'ABSORB INC ORINA SUP-NOC  ANAT','F',NULL,NULL),(9006,42,'ABSORB INC ORINA SUP-NOC RECT','F',NULL,NULL),(9007,42,'ALGODON ARROLLADO MEZCLA','F',NULL,NULL),(9008,42,'ALGODON ARROLLADO PURO','F',NULL,NULL),(9009,42,'ALGODON ZIG-ZAG MEZCLA','F',NULL,NULL),(9010,42,'ALGODON ZIG-ZAG PURO','F',NULL,NULL),(9011,42,'APOSITO ESTERIL','F',NULL,NULL),(9012,42,'APOSITOS ADHESIVOS FILTROS LARINGECTOMIA','F',NULL,NULL),(9013,42,'APOSITOS B OSTOM ARO RES SINT','F',NULL,NULL),(9014,42,'APOSITOS B OSTOM ARO RES SINT C-ESP','F',NULL,NULL),(9015,42,'APOSITOS B OSTOM ARO RES SINT MIC','F',NULL,NULL),(9016,42,'APOSITOS B OSTOM ARO RES SINT MIC C-ESP','F',NULL,NULL),(9017,42,'APOSITOS B OSTOM RES NAT','F',NULL,NULL),(9018,42,'APOSITOS B OSTOM RES SINT','F',NULL,NULL),(9019,42,'APOSITOS B OSTOM RES SINT ACOPLAM ADH','F',NULL,NULL),(9020,42,'APOSITOS B OSTOM RES SINT MIC ACOPLAM ADH','F',NULL,NULL),(9021,42,'BOLSAS COLOST DOBLES RES SINT FIL','F',NULL,NULL),(9022,42,'BOLSAS COLOST KAR ADH MIC FIL','F',NULL,NULL),(9023,42,'BOLSAS COLOST KAR FIL','F',NULL,NULL),(9024,42,'BOLSAS COLOST RES SINT FIL','F',NULL,NULL),(9025,42,'BOLSAS COLOST RES SINT MIC FIL','F',NULL,NULL),(9026,42,'BOLSAS COLOST SIST DOBLE','F',NULL,NULL),(9027,42,'BOLSAS COLOST SIST DOBLE ACOPLAM ADH','F',NULL,NULL),(9028,42,'BOLSAS COLOST SIST DOBLE PLAC','F',NULL,NULL),(9029,42,'BOLSAS COLOST SIST DOBLE PLAC ACOPLAM ADH','F',NULL,NULL),(9030,42,'BOLSAS COLOST SIST DOBLE PLAC C-ESP','F',NULL,NULL),(9031,42,'BOLSAS ILEOST KAR ADH MIC','F',NULL,NULL),(9032,42,'BOLSAS ILEOST RES SINT','F',NULL,NULL),(9033,42,'BOLSAS ILEOST RES SINT ADH MIC','F',NULL,NULL),(9034,42,'BOLSAS ILEOST RES SINT FIL','F',NULL,NULL),(9035,42,'BOLSAS ILEOST RES SINT MIC FIL','F',NULL,NULL),(9036,42,'BOLSAS ILEOST SIST DOBLE ACOPLAM ADH','F',NULL,NULL),(9037,42,'BOLSAS ILEOST SIST DOBLE PLAC','F',NULL,NULL),(9038,42,'BOLSAS ILEOST SIST DOBLE PLAC ACOPLAM ADH','F',NULL,NULL),(9039,42,'BOLSAS ILEOST SIST DOBLE PLAC C-ESP','F',NULL,NULL),(9040,42,'BOLSAS RECOGIDA ORINA','F',NULL,NULL),(9041,42,'BOLSAS RECOGIDA ORINA C-P','F',NULL,NULL),(9042,42,'BOLSAS RECOGIDA ORINA PIENA','F',NULL,NULL),(9043,42,'BOLSAS UROST KAR ADH MIC','F',NULL,NULL),(9044,42,'BOLSAS UROST RES SINT ADH MIC','F',NULL,NULL),(9045,42,'BOLSAS UROST SIST DOBLE PLAC','F',NULL,NULL),(9046,42,'BOLSAS UROST SIST DOBLE PLAC C-ESP','F',NULL,NULL),(9047,42,'BRAGUERO INGUINAL BILATERAL','F',NULL,NULL),(9048,42,'BRAGUERO INGUINAL DERECHO','F',NULL,NULL),(9049,42,'BRAGUERO INGUINAL IZQUIERDO','F',NULL,NULL),(9050,42,'CALCETIN ELASTICO TERAPEUTICO','F',NULL,NULL),(9051,42,'CAMARA INHALACION','F',NULL,NULL),(9052,42,'CANULA LARINGUECTOMIA','F',NULL,NULL),(9053,42,'CANULA TRAQUEOT-LARING SILICONA','F',NULL,NULL),(9054,42,'CANULA TRAQUEOT-LARING SILICONA FENEST','F',NULL,NULL),(9055,42,'CANULA TRAQUEOTOMIA','F',NULL,NULL),(9056,42,'CANULA TRAQUEOTOMIA FENESTRADA','F',NULL,NULL),(9057,42,'CINTURON OSTOMIA','F',NULL,NULL),(9058,42,'CODERA','F',NULL,NULL),(9059,42,'COLECTOR BOLSA RECOG ORINA AADH','F',NULL,NULL),(9060,42,'COLECTOR BOLSA RECOG ORINA C-A','F',NULL,NULL),(9061,42,'COLECTOR BOLSA RECOG ORINA C-T','F',NULL,NULL),(9062,42,'COLECTOR BOLSA RECOG ORINA FEMENINO','F',NULL,NULL),(9063,42,'DEPOSITO IRRIGADOR','F',NULL,NULL),(9064,42,'DUCHA VAGINAL','F',NULL,NULL),(9065,42,'ESPARADRAPO','F',NULL,NULL),(9066,42,'ESPARADRAPO HIPOALERGICO','F',NULL,NULL),(9067,42,'ESPARADRAPO HIPOALERGICO FLEXIBLE','F',NULL,NULL),(9068,42,'FILTROS COLOSTOMIA','F',NULL,NULL),(9069,42,'FILTROS COLOSTOMIA MAGNETICA','F',NULL,NULL),(9070,42,'FILTROS LARINGECTOMIA','F',NULL,NULL),(9071,42,'ESPARADRAPO','F',NULL,NULL),(9072,42,'GASA ALGODON HIDROFILO NO ESTERIL','F',NULL,NULL),(9073,42,'GASA ESTERIL ALGODON HIDROFILO COMPRESAS','F',NULL,NULL),(9074,42,'GASA ESTERIL ALGODON HIDROFILO TIRAS','F',NULL,NULL),(9075,42,'GELIFICADOR BOLSAS ILEOSTOMIA','F',NULL,NULL),(9076,42,'INHALADOR','F',NULL,NULL),(9077,42,'IRRIGADOR COMPLETO','F',NULL,NULL),(9078,42,'MEDIA CORTA (A-D) COMP FUERTE','F',NULL,NULL),(9079,42,'MEDIA E.T. CINT COMP FUERTE','F',NULL,NULL),(9080,42,'MEDIA LARGA (A-F) COMP FUERTE','F',NULL,NULL),(9081,42,'MEDIA LARGA (A-F) COMP FUERTE','F',NULL,NULL),(9082,42,'MEDIA LARGA (A-G) COMP FUERTE','F',NULL,NULL),(9083,42,'MEDIA LARGA SUJ COMP FUERTE','F',NULL,NULL),(9084,42,'Medicamento Generico','F',NULL,NULL),(9085,42,'MUSLERA','F',NULL,NULL),(9086,42,'MUÑEQUERA','F',NULL,NULL),(9087,42,'MUÑEQUERA FERULA','F',NULL,NULL),(9088,42,'MUÑEQUERA METACARPIANA','F',NULL,NULL),(9089,42,'OBTURADOR ANAL','F',NULL,NULL),(9090,42,'OBTURADOR ANAL','F',NULL,NULL),(9091,42,'PARCHES OCULARES','F',NULL,NULL),(9092,42,'PINZAS OSTOMIA','F',NULL,NULL),(9093,42,'PINZAS OSTOMIA','F',NULL,NULL),(9094,42,'PINZAS OSTOMIA','F',NULL,NULL),(9095,42,'PINZAS OSTOMIA','F',NULL,NULL),(9096,42,'RODILLERA','F',NULL,NULL),(9097,42,'SIST COLOST CONTINENTE AADH','F',NULL,NULL),(9098,42,'SIST INC ORINA OCLUSIVO HOMBRE','F',NULL,NULL),(9099,42,'SIST IRRIG COLOST','F',NULL,NULL),(9100,42,'SONDA GASTRICA','F',NULL,NULL),(9101,42,'SONDA RECTAL','F',NULL,NULL),(9102,42,'SONDA VESICAL BAJA FRICCION','F',NULL,NULL),(9103,42,'SONDA VESICAL BAJA FRICCION CON BOLSA RECOG ORINA','F',NULL,NULL),(9104,42,'SONDA VESICAL LATEX','F',NULL,NULL),(9105,42,'SONDA VESICAL NELATON','F',NULL,NULL),(9106,42,'SONDA VESICAL SILICONA','F',NULL,NULL),(9107,42,'SUSPENSORIO','F',NULL,NULL),(9108,42,'TOBILLERA','F',NULL,NULL),(9109,42,'VENDA DE GASA ELASTICA','F',NULL,NULL),(9110,42,'VENDA DE GASA HIDROFILA','F',NULL,NULL),(9111,42,'VENDA DE GASA HIDROFILA CAMBRIC','F',NULL,NULL),(9112,42,'VENDA DE MALLA HIDROFILA','F',NULL,NULL),(9113,42,'VENDA DE MALLA HIDROFILA CAMBRIC','F',NULL,NULL),(9114,42,'VENDA ELASTICA','F',NULL,NULL),(9115,42,'VENDA ELASTICA COHESIVA','F',NULL,NULL);
/*!40000 ALTER TABLE `actos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baremo`
--

DROP TABLE IF EXISTS `baremo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baremo` (
  `idbaremo` int(11) NOT NULL AUTO_INCREMENT,
  `codprov` int(11) NOT NULL,
  `codacto` int(11) NOT NULL,
  `codespecialidad` int(11) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idbaremo`),
  KEY `fk_baremo_1_idx` (`codacto`,`codespecialidad`),
  KEY `fk_baremo_2_idx` (`codprov`),
  CONSTRAINT `fk_baremo_1` FOREIGN KEY (`codacto`, `codespecialidad`) REFERENCES `actos` (`codactos`, `codespecialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_baremo_2` FOREIGN KEY (`codprov`) REFERENCES `proveedores` (`idproveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baremo`
--

LOCK TABLES `baremo` WRITE;
/*!40000 ALTER TABLE `baremo` DISABLE KEYS */;
INSERT INTO `baremo` VALUES (1,2,1,1,2.00),(2,2,2,1,4.00),(3,2,3,1,7.00);
/*!40000 ALTER TABLE `baremo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baremohosp`
--

DROP TABLE IF EXISTS `baremohosp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baremohosp` (
  `idbaremohosp` int(11) NOT NULL AUTO_INCREMENT,
  `codprov` int(11) DEFAULT NULL,
  `codacto` int(11) DEFAULT NULL,
  `codespecialidad` int(11) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idbaremohosp`),
  KEY `fk_baremohosp_1_idx` (`codacto`,`codespecialidad`),
  KEY `fk_baremohosp_2_idx` (`codprov`),
  CONSTRAINT `fk_baremohosp_1` FOREIGN KEY (`codacto`, `codespecialidad`) REFERENCES `actos` (`codactos`, `codespecialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_baremohosp_2` FOREIGN KEY (`codprov`) REFERENCES `proveedores` (`idproveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baremohosp`
--

LOCK TABLES `baremohosp` WRITE;
/*!40000 ALTER TABLE `baremohosp` DISABLE KEYS */;
/*!40000 ALTER TABLE `baremohosp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idclientes` int(11) NOT NULL,
  `nif` varchar(45) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(200) DEFAULT NULL,
  `domicilio` varchar(200) NOT NULL,
  `codpostal` int(11) DEFAULT NULL,
  `provincia` varchar(100) DEFAULT NULL,
  `poblacion` varchar(100) DEFAULT NULL,
  `fechanac` date DEFAULT NULL,
  `denominacion` varchar(100) DEFAULT NULL,
  `preexistencia` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idclientes`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1000001,'52965969M','AURORA','LOPEZ','DIAZ',28010,'MADRID','MADRID','1970-09-20',NULL,NULL),(1000002,'69015173Q','ANA','RUIZ','LOPEZ',41020,'SEVILLA','SEVILLA','1975-02-03',NULL,NULL),(1000003,'47782546T','LUIS','DE LA CUADRA','MARTIN',41050,'SEVILLA','DOS HERMANAS','1978-01-30',NULL,NULL),(1000004,'67280009H','PEDRO','SUAREZ','DE LA PAZ',21030,'HUELVA','PUNTA UMBRIA','1950-05-22',NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detfactura`
--

DROP TABLE IF EXISTS `detfactura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detfactura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idfactura` int(11) NOT NULL,
  `generico` int(11) DEFAULT NULL,
  `codacto` int(11) NOT NULL,
  `especialidad` int(11) NOT NULL,
  `fechaprestacion` varchar(45) DEFAULT NULL,
  `importefac` decimal(10,2) DEFAULT NULL,
  `impeacto` decimal(10,2) DEFAULT NULL,
  `impapagar` decimal(10,2) DEFAULT NULL,
  `impreenbolso` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_detfactura_1_idx` (`idfactura`),
  KEY `fk_detfactura_2_idx` (`codacto`),
  KEY `fk_detfactura_3_idx` (`especialidad`),
  KEY `fk_detfactura_4_idx` (`generico`),
  CONSTRAINT `fk_detfactura_1` FOREIGN KEY (`idfactura`) REFERENCES `facturas` (`idfacturas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detfactura_2` FOREIGN KEY (`especialidad`) REFERENCES `especialidades` (`codespecialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detfactura_3` FOREIGN KEY (`codacto`) REFERENCES `actos` (`codactos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detfactura_4` FOREIGN KEY (`generico`) REFERENCES `generico` (`idgenerico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detfactura`
--

LOCK TABLES `detfactura` WRITE;
/*!40000 ALTER TABLE `detfactura` DISABLE KEYS */;
INSERT INTO `detfactura` VALUES (1,1232546554,18,9000,42,'2016-01-02',1.00,NULL,NULL,NULL),(2,1232546554,17,9000,42,'2016-02-01',1.10,NULL,NULL,NULL),(3,1232546554,33,9000,42,'2016-01-20',1.30,NULL,NULL,NULL);
/*!40000 ALTER TABLE `detfactura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidades`
--

DROP TABLE IF EXISTS `especialidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidades` (
  `codespecialidad` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`codespecialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidades`
--

LOCK TABLES `especialidades` WRITE;
/*!40000 ALTER TABLE `especialidades` DISABLE KEYS */;
INSERT INTO `especialidades` VALUES (1,'MEDICINA GENERAL'),(2,'PEDIATRIA'),(3,'ALERGOLOGIA'),(4,'ANALISIS CLINICOS'),(5,'ANATOMIA PATOLOGICA'),(6,'ANESTESIOLOGIA Y REANIMACION'),(7,'ANGIOLOGIA Y CIRUGIA VASCULAR	'),(8,'APARATO DIGESTIVO'),(9,'CARDIOLOGIA'),(10,'CIRUGIA CARDIOVASCULAR'),(11,'CIRUGIA GENERAL Y DEL APARATO DIGESTIVO'),(12,'CIRUGIA MAXILOFACIAL'),(13,'CIRUGIA PEDIATRICA'),(14,'CIRUGIA PLASTICA Y REPARADORA'),(15,'CIRUGIA TORACICA'),(16,'DERMATOLOGIA MEDICO-QUIRURGICA Y VENEREOLOGIA'),(17,'RADIODIAGNOSTICO'),(18,'ENDOCRINOLOGIA Y NUTRICION'),(19,'ESTOMATOLOGIA'),(20,'GERIATRIA	'),(21,'HEMATOLOGIA Y HEMOTERAPIA	'),(22,'INMUNOLOGIA	'),(23,'MEDICINA INTENSIVA	'),(24,'MEDICINA INTERNA	'),(25,'MEDICINA NUCLEAR	'),(26,'NEFROLOGIA'),(27,'NEUMOLOGIA'),(28,'NEUROCIRUGIA'),(29,'NEUROFISIOLOGIA CLINICA'),(30,'NEUROLOGIA'),(31,'OBSTETRICIA Y GINECOLOGIA'),(32,'OFTALMOLOGIA'),(33,'ONCOLOGIA MEDICA'),(34,'ONCOLOGIA RADIOTERAPICA'),(35,'OTORRINOLARINGOLOGIA'),(36,'PSIQUIATRIA'),(37,'REHABILITACION'),(38,'REUMATOLOGIA'),(39,'TRATAMIENTO DEL DOLOR'),(40,'TRAUMATOLOGIA Y CIRUGIA ORTOPEDICA'),(41,'UROLOGIA'),(42,'FARMACIA');
/*!40000 ALTER TABLE `especialidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expedientecopago`
--

DROP TABLE IF EXISTS `expedientecopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expedientecopago` (
  `idexpe` int(11) NOT NULL AUTO_INCREMENT,
  `poliza` int(11) DEFAULT NULL,
  `certificado` int(11) DEFAULT NULL,
  `fechaemision` date DEFAULT NULL,
  `importe` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idexpe`),
  KEY `fk_expedientecopago_1_idx` (`poliza`,`certificado`),
  CONSTRAINT `fk_expedientecopago_1` FOREIGN KEY (`poliza`, `certificado`) REFERENCES `polizas` (`poliza`, `certificado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expedientecopago`
--

LOCK TABLES `expedientecopago` WRITE;
/*!40000 ALTER TABLE `expedientecopago` DISABLE KEYS */;
/*!40000 ALTER TABLE `expedientecopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas`
--

DROP TABLE IF EXISTS `facturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas` (
  `idfacturas` int(11) NOT NULL,
  `poliza` int(11) NOT NULL,
  `certificado` int(11) NOT NULL,
  `codcliente` int(11) NOT NULL,
  `fechafactura` date NOT NULL,
  `fechaalta` date DEFAULT NULL,
  `importe` varchar(45) DEFAULT NULL,
  `idliquidacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`idfacturas`),
  KEY `fk_facturas_1_idx` (`poliza`,`certificado`),
  KEY `fk_facturas_2_idx` (`codcliente`),
  KEY `fk_facturas_3_idx` (`idliquidacion`),
  CONSTRAINT `fk_facturas_1` FOREIGN KEY (`poliza`, `certificado`) REFERENCES `polizas` (`poliza`, `certificado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_facturas_2` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`idclientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_facturas_3` FOREIGN KEY (`idliquidacion`) REFERENCES `liquida` (`idliquida`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas`
--

LOCK TABLES `facturas` WRITE;
/*!40000 ALTER TABLE `facturas` DISABLE KEYS */;
INSERT INTO `facturas` VALUES (1232546554,66600012,2,1000001,'2016-01-15','2016-04-08','3.40',NULL);
/*!40000 ALTER TABLE `facturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generico`
--

DROP TABLE IF EXISTS `generico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generico` (
  `idgenerico` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `codprodfarm` int(11) DEFAULT NULL,
  `codlab` int(11) DEFAULT NULL,
  PRIMARY KEY (`idgenerico`),
  KEY `fk_generico_1_idx` (`codlab`),
  KEY `fk_generico_2_idx` (`codprodfarm`),
  CONSTRAINT `fk_generico_1` FOREIGN KEY (`codlab`) REFERENCES `laboratorios` (`codlabor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_generico_2` FOREIGN KEY (`codprodfarm`) REFERENCES `productosfarm` (`idproductosfarm`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generico`
--

LOCK TABLES `generico` WRITE;
/*!40000 ALTER TABLE `generico` DISABLE KEYS */;
INSERT INTO `generico` VALUES (1,'INCOPACK INICIA 80U',1,953),(2,'TENA  80U',1,937),(3,'INCOPACK 80U',1,953),(4,'MOLICARE AIR ACTIVE ELASTICOS T. PEQUEÑA 80U',1,577),(5,'FADI IA 1072 40 U',1,923),(6,'FADI IA 1072 60 U',1,923),(7,'FADI IA 1072 80 U',1,923),(8,'TENA  ELASTICO TALLA PEQUEÑA 80 U',1,937),(9,'MOLIFORM NORMAL 80 U',1,577),(10,'FEBUS ELASTICOS T. GRANDE 20 U',1,953),(11,'FEBUS ELASTICOS T. GRANDE 80 U',1,953),(12,'INCOPACK ELASTICO T. PEQUEÑA 20 U',1,953),(13,'INCOPACK ELASTICO T. PEQUEÑA 80 U',1,953),(14,'LILLE SUPREME FIT ELASTICOS T. PEQUEÑA 80U',1,951),(15,'LILLE SUPREME FORM 80U + 4 MALLAS',1,951),(16,'LINDOR 80 U',1,112),(17,'PRESTERIL 20 U',1,8006),(18,'PRESTERIL 40 U',1,8006),(19,'PRESTERIL 60 U',1,8006),(20,'PRESTERIL 80 U',1,8006),(21,'ABS 20 U',1,8004),(22,'ABS 40 U',1,8004),(23,'ABS 60 U',1,8004),(24,'ABS 80 U',1,8004),(25,'BIOCONFORT 20 U',1,892),(26,'BIOCONFORT 40 U',1,892),(27,'BIOCONFORT 60 U',1,892),(28,'BIOCONFORT 80 U',1,892),(29,'LYSETTE ELASTICOS 20 U',1,8006),(30,'LYSETTE ELASTICOS 40 U',1,8006),(31,'LYSETTE ELASTICOS T. MEDIANA 60 U',1,8006),(32,'LYSETTE ELASTICOS Talla Grande 80 U',1,8006),(33,'DEMAR 60 U',1,8004),(34,'DEMAR 80 U',1,8004),(35,'ID EXPERT FORM 80 U',1,951),(36,'FEBUS 20U',1,953),(37,'FEBUS 80U',1,953),(38,'INCOPACK ELASTICO T. MEDIA 20U',1,953),(39,'INCOPACK ELASTICO T. MEDIA 80U',1,953),(40,'DEMAR ELASTICO T. PEQUEÑA 80U',1,8004),(41,'INCOPACK ELASTICOS Talla Grande 80u',1,953),(42,'SERENITY 80U',1,972),(43,'ABS ECO 80U',1,8004),(44,'ABS ECO 60U',1,8004),(45,'ABS ECO 40U',1,8004),(46,'ABS ECO 20U',1,8004),(47,'LYSETTE 20U',1,8006),(48,'LYSETTE 40U',1,8006),(49,'LYSETTE 60U',1,8006),(50,'LYSETTE 80U',1,8006),(51,'MOLIFORM INICIAL 80U',1,577),(52,'NURSA 40U',1,577),(53,'NURSA 60U',1,577),(54,'MOLICARE AIR ACTIVE ELASTICOS T. GRANDE 80U',1,577),(55,'ABSOR 20U',1,8004),(56,'ABSOR 40U',1,8004),(57,'ABSOR 60U',1,8004),(58,'ABSOR 80U',1,8004),(59,'BIOFOR 20U',1,968),(60,'BIOFOR 40U',1,968),(61,'BIOFOR 60U',1,968),(62,'BIOFOR 80U',1,968),(63,'EURON FLEX 80U',1,983),(64,'EURON FORM T. PEQUEÑA 80U',1,983),(65,'ROCPAD 80U',1,8014),(66,'ANAFORM ELASTICO Talla Grande 80U',1,951),(67,'ROCPAD ELASTICOS TALLA MEDIANA 80U',1,8014),(68,'ROCPAD ELASTICOS TALLA GRANDE 80U',1,8014),(69,'LISUBEL 80U',1,970),(70,'ABS ECO ELASTICOS T. GRANDE 80U',1,8004),(71,'ABS ECO ELASTICOS T. MEDIANA 80U',1,8004),(72,'LISUBEL ELASTICOS T. GRANDE 80U',1,970),(73,'FLUFSAN 80U',1,946),(74,'AFFECTIVE 80U',1,988),(75,'TENA  NORMAL 80U',1,937),(76,'INCOPACK ELASTICO T. EXTRA-PEQUEÑA 80U',1,953),(77,'MOLICARE AIR ACTIVE ELASTICOS T. MEDIANA 80U',1,577),(78,'AFFECTIVE ELASTICO T.MEDIA 80U',1,988),(79,'AFFECTIVE ELASTICO T.GRANDE 80U',1,988),(80,'MOLTEX EXPERIENCE 80U',1,988),(81,'MOLTEX EXPERIENCE ELASTICOS T.GRANDE 80U',1,988),(82,'LINDOR 80 U',2,112),(83,'PRESTERIL 40 U',2,8006),(84,'PRESTERIL 80 U',2,8006),(85,'SALUS FARMA 80 U',2,987),(86,'INCOPACK 80 U',2,953),(87,'LISUBEL 80 U',2,970),(88,'DEMAR 40 U + 2 SLIP',2,8004),(89,'DEMAR 80 U + 4 SLIP',2,8004),(90,'FADI IR 2092 20 U',2,923),(91,'FADI IR 2092 40 U',2,923),(92,'FADI IR 2092 60 U',2,923),(93,'FADI IR 2092 80 U',2,923),(94,'SERENITY 80 UNID',2,972),(95,'INDAS 80 U',2,953),(96,'FEBUS 80 U',2,953),(97,'ABS 20 U',2,8004),(98,'ABS 40 U',2,8004),(99,'ABS 60 U',2,8004),(100,'ABS 80 U',2,8004),(101,'BIOCONFORT 80 U',2,892),(102,'LILLE CLASSIC LINE 80U + 4 MALLAS',2,951),(103,'BIOCONFORT 20 U',2,892),(104,'BIOCONFORT 40 U',2,892),(105,'BIOCONFORT 60 U',2,892),(106,'TENA RECTANGULAR 80U+4B',2,937),(107,'ID EXPERT 80 U',2,951),(108,'MOLINEA RECTANGULAR 80U',2,577),(109,'ABSOR 80U',2,8004),(110,'ABSOR 60U',2,8004),(111,'ABSOR 40U',2,8004),(112,'ABSOR 20U',2,8004),(113,'LYSETTE 20U',2,8006),(114,'LYSETTE 40U',2,8006),(115,'LYSETTE 60U',2,8006),(116,'LYSETTE 80U',2,8006),(117,'NURSA 40U',2,577),(118,'NURSA 60U',2,577),(119,'ABS ECO 80U',2,8004),(120,'ABS ECO 60U',2,8004),(121,'ABS ECO 40U',2,8004),(122,'ABS ECO 20U',2,8004),(123,'EURON LET 80 U',2,983),(124,'ROCPAD 80U',2,8014),(125,'INCOPACK 20X60 80U',2,953),(126,'FLUFSAN 80U',2,946);
/*!40000 ALTER TABLE `generico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importecopago`
--

DROP TABLE IF EXISTS `importecopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `importecopago` (
  `idcopago` int(11) NOT NULL,
  `codespecialidad` int(11) NOT NULL,
  `codacto` int(11) NOT NULL,
  `fechaini` date DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `importeacto` decimal(10,2) DEFAULT NULL,
  KEY `fk_copago_1_idx` (`codacto`),
  KEY `fk_copago_2_idx` (`codespecialidad`),
  KEY `fk_copago_3` (`idcopago`),
  CONSTRAINT `fk_copago_1` FOREIGN KEY (`codacto`) REFERENCES `actos` (`codactos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_copago_2` FOREIGN KEY (`codespecialidad`) REFERENCES `especialidades` (`codespecialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_copago_3` FOREIGN KEY (`idcopago`) REFERENCES `tipocopago` (`codtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importecopago`
--

LOCK TABLES `importecopago` WRITE;
/*!40000 ALTER TABLE `importecopago` DISABLE KEYS */;
INSERT INTO `importecopago` VALUES (3,1,1,'2009-04-01','2009-04-12',NULL,3.00),(3,1,2,'2009-04-01','2009-04-12',NULL,5.00);
/*!40000 ALTER TABLE `importecopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `importefarm`
--

DROP TABLE IF EXISTS `importefarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `importefarm` (
  `generico` int(11) NOT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `importemax` decimal(10,2) DEFAULT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `porcentajemax` varchar(45) DEFAULT NULL,
  KEY `fk_importefarm_1_idx` (`generico`),
  CONSTRAINT `fk_importefarm_1` FOREIGN KEY (`generico`) REFERENCES `generico` (`idgenerico`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `importefarm`
--

LOCK TABLES `importefarm` WRITE;
/*!40000 ALTER TABLE `importefarm` DISABLE KEYS */;
INSERT INTO `importefarm` VALUES (17,0.90,1.04,'2009-01-01',NULL,'2009-01-01','15'),(18,1.20,1.38,'2009-01-01',NULL,'2009-01-01','15'),(33,1.30,1.50,'2009-01-01',NULL,'2009-01-01','15'),(126,2.00,2.30,'2009-01-01',NULL,'2009-01-01','15');
/*!40000 ALTER TABLE `importefarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorios`
--

DROP TABLE IF EXISTS `laboratorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorios` (
  `codlabor` int(11) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `fechabaja` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codlabor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorios`
--

LOCK TABLES `laboratorios` WRITE;
/*!40000 ALTER TABLE `laboratorios` DISABLE KEYS */;
INSERT INTO `laboratorios` VALUES (112,'PROCTER AND GAMBLE ESPAÑA S.A.','2010-03-01',NULL),(577,'LABORATORIOS HARTMANN, S.A.','2010-03-01',NULL),(892,'PH DISTMEDIC, S.L.','2010-03-01',NULL),(923,'CARDIOMEDICAL DEL MEDITERRANEO, S.L.','2010-03-01',NULL),(937,'SCA HYGIENE PRODUCTS, S.L.','2010-03-01',NULL),(946,'EUROPROSAN S.P.A.','2010-03-01',NULL),(951,'ONTEX ID, S.A.','2010-03-01',NULL),(953,'LABORATORIOS INDAS, S.A.U','2010-03-01',NULL),(968,'CATAR MEDICAL, S.L.','2010-03-01',NULL),(970,'DISTROMEF, S.L.','2010-03-01',NULL),(972,'CHICCO ESPAÑOLA, S.A.','2010-03-01',NULL),(983,'ONTEX PENINSULAR, S.A.','2010-03-01',NULL),(987,'BATLLE DE BALLE, S.A.','2010-03-01',NULL),(988,'VALOR BRANDS EUROPE, S.L..','2010-03-01',NULL),(8004,'BARNA IMPORT MEDICA, S.A.','2010-03-01',NULL),(8006,'ACTIV MEDICAL DISPOSABLE, S.A.L.','2010-03-01',NULL),(8014,'INTERNATIONAL ABSORBENT PRODUCTS, S.L.','2010-03-01',NULL);
/*!40000 ALTER TABLE `laboratorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liquida`
--

DROP TABLE IF EXISTS `liquida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liquida` (
  `idliquida` int(11) NOT NULL AUTO_INCREMENT,
  `codproveedor` int(11) DEFAULT NULL,
  `fechaliq` date DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idliquida`),
  KEY `fk_liquida_1_idx` (`codproveedor`),
  CONSTRAINT `fk_liquida_1` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`idproveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquida`
--

LOCK TABLES `liquida` WRITE;
/*!40000 ALTER TABLE `liquida` DISABLE KEYS */;
INSERT INTO `liquida` VALUES (1,2,'2015-01-05',1000.00),(2,2,'2015-01-30',165.15);
/*!40000 ALTER TABLE `liquida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polcliente`
--

DROP TABLE IF EXISTS `polcliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polcliente` (
  `poliza` int(11) NOT NULL,
  `certificado` int(11) NOT NULL,
  `codcliente` int(11) NOT NULL,
  `fechaAlta` date NOT NULL,
  `fechaBaja` date DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  KEY `fk_polcliente_1_idx` (`codcliente`),
  KEY `fk_polcliente_2_idx` (`poliza`,`certificado`),
  KEY `fk_polcliente_3_idx` (`tipo`),
  CONSTRAINT `fk_polcliente_1` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`idclientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_polcliente_2` FOREIGN KEY (`poliza`, `certificado`) REFERENCES `polizas` (`poliza`, `certificado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_polcliente_3` FOREIGN KEY (`tipo`) REFERENCES `tiporelacion` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polcliente`
--

LOCK TABLES `polcliente` WRITE;
/*!40000 ALTER TABLE `polcliente` DISABLE KEYS */;
INSERT INTO `polcliente` VALUES (66623434,10,1000003,'2011-01-01',NULL,'T'),(66623434,10,1000002,'2011-01-01',NULL,'B'),(66600012,2,1000001,'2008-01-01',NULL,'T'),(66632214,0,1000004,'2012-04-11',NULL,'T');
/*!40000 ALTER TABLE `polcliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polizas`
--

DROP TABLE IF EXISTS `polizas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polizas` (
  `poliza` int(11) NOT NULL,
  `certificado` int(11) NOT NULL,
  `fechaAlta` date NOT NULL,
  `fechaBaja` int(11) DEFAULT NULL,
  `codTipoProd` int(11) NOT NULL,
  `codcopago` int(11) DEFAULT NULL,
  `prima` decimal(10,2) DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `tipopag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`poliza`,`certificado`),
  KEY `fk_polizas_1_idx` (`codTipoProd`),
  KEY `fk_polizas_2_idx` (`codcopago`),
  KEY `fk_polizas_3_idx` (`tipopag`),
  CONSTRAINT `fk_polizas_1` FOREIGN KEY (`codTipoProd`) REFERENCES `productosalud` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_polizas_2` FOREIGN KEY (`codcopago`) REFERENCES `tipocopago` (`codtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_polizas_3` FOREIGN KEY (`tipopag`) REFERENCES `tipopago` (`codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polizas`
--

LOCK TABLES `polizas` WRITE;
/*!40000 ALTER TABLE `polizas` DISABLE KEYS */;
INSERT INTO `polizas` VALUES (66600012,2,'2010-01-01',NULL,1,NULL,NULL,NULL,NULL),(66623434,10,'2012-04-07',NULL,1,NULL,1100.93,'2016','M'),(66632214,0,'2012-01-08',NULL,2,3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `polizas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preexistencias`
--

DROP TABLE IF EXISTS `preexistencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preexistencias` (
  `idpreexistencias` int(11) NOT NULL AUTO_INCREMENT,
  `poliza` int(11) DEFAULT NULL,
  `certificado` int(11) DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `codacto` int(11) DEFAULT NULL,
  `codespe` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpreexistencias`),
  KEY `fk_preexistencias_1_idx` (`poliza`,`certificado`),
  KEY `fk_preexistencias_2_idx` (`cliente`),
  KEY `fk_preexistencias_3_idx` (`codacto`),
  KEY `fk_preexistencias_4_idx` (`codespe`),
  CONSTRAINT `fk_preexistencias_1` FOREIGN KEY (`poliza`, `certificado`) REFERENCES `polizas` (`poliza`, `certificado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_preexistencias_2` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`idclientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_preexistencias_3` FOREIGN KEY (`codacto`) REFERENCES `actos` (`codactos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_preexistencias_4` FOREIGN KEY (`codespe`) REFERENCES `especialidades` (`codespecialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preexistencias`
--

LOCK TABLES `preexistencias` WRITE;
/*!40000 ALTER TABLE `preexistencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `preexistencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productosalud`
--

DROP TABLE IF EXISTS `productosalud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productosalud` (
  `idproducto` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`idproducto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productosalud`
--

LOCK TABLES `productosalud` WRITE;
/*!40000 ALTER TABLE `productosalud` DISABLE KEYS */;
INSERT INTO `productosalud` VALUES (1,'INTEGRAL'),(2,'COPAGO'),(3,'DENTAL'),(4,'FUNCIONARIOS'),(5,'EXPAT');
/*!40000 ALTER TABLE `productosalud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productosfarm`
--

DROP TABLE IF EXISTS `productosfarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productosfarm` (
  `idproductosfarm` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) DEFAULT NULL,
  `fechaalta` date DEFAULT NULL,
  `fechabaja` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproductosfarm`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productosfarm`
--

LOCK TABLES `productosfarm` WRITE;
/*!40000 ALTER TABLE `productosfarm` DISABLE KEYS */;
INSERT INTO `productosfarm` VALUES (1,'ABSORB INC ORINA DIA ANAT','2010-03-01',NULL),(2,'ABSORB INC ORINA DIA RECT','2010-03-01',NULL);
/*!40000 ALTER TABLE `productosfarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proveedores` (
  `idproveedores` int(11) NOT NULL AUTO_INCREMENT,
  `nif` varchar(45) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `denominacion` varchar(100) NOT NULL,
  `fechaalta` date DEFAULT NULL,
  `fechabaja` date DEFAULT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `codpostal` int(11) DEFAULT NULL,
  `poblacion` varchar(100) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  `codproveedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproveedores`),
  KEY `fk_proveedores_1_idx` (`codproveedor`),
  CONSTRAINT `fk_proveedores_1` FOREIGN KEY (`codproveedor`) REFERENCES `proveedores` (`idproveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'G64898919',NULL,NULL,'HOSPITAL LA PALOMA','1990-01-01',NULL,'CALLE DE LA LOMA 1',28003,'MADRID','MADRID',NULL),(2,'76832755J','RAUL','GALLEGO OSUNA','RAUL GALLEGO','2010-04-05',NULL,'CALLE LA ORDEN 67, 1C',28002,'MADRID','MADRID',NULL),(3,'76832755J','RAUL','GALLEGO OSUNA','RAUL GALLEGO','2011-04-07',NULL,'CALLE CORAZON DE MARIA 6 PLANTA BAJA',28002,'MADRID','MADRID',NULL),(4,'76832755J','RAUL','GALLEGO OSUNA','HOSPITAL LA PALOMA','2009-03-20',NULL,NULL,NULL,NULL,NULL,1),(5,'90709212H','SUSANA','VALLEJO LUJAN','CENTRO LOS GOMEZ','2013-08-01',NULL,'CALLE SANTA ANA 3, LOCAL IZQ',41010,'CAMAS','SEVILLA',NULL),(6,'21903383T','MARIA','BORREGO CIENA','MARIA BORREGO','2000-08-15',NULL,'CALLE LAS AGUAS',21010,'HUELVA','HUELVA',NULL);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibos`
--

DROP TABLE IF EXISTS `recibos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recibos` (
  `idrecibos` int(11) NOT NULL AUTO_INCREMENT,
  `poliza` int(11) DEFAULT NULL,
  `certificado` int(11) DEFAULT NULL,
  `fechaemision` date DEFAULT NULL,
  `fechageneracion` varchar(45) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `prima` decimal(10,2) DEFAULT NULL,
  `copago` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idrecibos`),
  KEY `fk_recibos_1_idx` (`poliza`,`certificado`),
  CONSTRAINT `fk_recibos_1` FOREIGN KEY (`poliza`, `certificado`) REFERENCES `polizas` (`poliza`, `certificado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibos`
--

LOCK TABLES `recibos` WRITE;
/*!40000 ALTER TABLE `recibos` DISABLE KEYS */;
INSERT INTO `recibos` VALUES (1,66623434,10,'2016-01-28','2016-01-27',91.74,91.74,NULL),(2,66623434,10,'2016-02-28','2016-01-27',91.74,91.74,NULL),(3,66623434,10,'2016-03-28','2016-03-27',91.74,91.74,NULL);
/*!40000 ALTER TABLE `recibos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `talon`
--

DROP TABLE IF EXISTS `talon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `talon` (
  `idtalon` int(11) NOT NULL,
  `poliza` int(11) DEFAULT NULL,
  `certificado` int(11) DEFAULT NULL,
  `codcliente` int(11) DEFAULT NULL,
  `codacto` int(11) DEFAULT NULL,
  `codespecialidad` int(11) DEFAULT NULL,
  `fechaconsulta` date DEFAULT NULL,
  `fechapagoprov` date DEFAULT NULL,
  `provrealiza` int(11) DEFAULT NULL,
  `provprescribe` int(11) DEFAULT NULL,
  `pagoprov` decimal(10,2) DEFAULT NULL,
  `pagocliente` decimal(10,2) DEFAULT NULL,
  `idliquidacion` int(11) DEFAULT NULL,
  `idrecibos` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtalon`),
  KEY `fk_talon_1_idx` (`codcliente`),
  KEY `fk_talon_3_idx` (`certificado`),
  KEY `fk_talon_2_idx` (`poliza`,`certificado`),
  KEY `fk_talon_4_idx` (`codacto`),
  KEY `fk_talon_5_idx` (`codespecialidad`),
  KEY `fk_talon_3_idx1` (`provrealiza`,`provprescribe`),
  KEY `fk_talon_6_idx` (`provprescribe`),
  KEY `fk_talon_7_idx` (`idliquidacion`),
  KEY `fk_talon_8_idx` (`idrecibos`),
  CONSTRAINT `fk_talon_1` FOREIGN KEY (`codcliente`) REFERENCES `clientes` (`idclientes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_talon_2` FOREIGN KEY (`poliza`, `certificado`) REFERENCES `polizas` (`poliza`, `certificado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_talon_3` FOREIGN KEY (`provrealiza`) REFERENCES `proveedores` (`idproveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_talon_4` FOREIGN KEY (`codespecialidad`) REFERENCES `especialidades` (`codespecialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_talon_5` FOREIGN KEY (`codacto`) REFERENCES `actos` (`codactos`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_talon_6` FOREIGN KEY (`provprescribe`) REFERENCES `proveedores` (`idproveedores`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_talon_7` FOREIGN KEY (`idliquidacion`) REFERENCES `liquida` (`idliquida`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_talon_8` FOREIGN KEY (`idrecibos`) REFERENCES `recibos` (`idrecibos`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `talon`
--

LOCK TABLES `talon` WRITE;
/*!40000 ALTER TABLE `talon` DISABLE KEYS */;
INSERT INTO `talon` VALUES (23765222,66632214,0,1000004,1,1,'2016-01-13',NULL,6,6,NULL,NULL,2,NULL),(23765234,66623434,10,1000002,2,2,'2016-01-02','2016-01-04',3,5,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `talon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarifas`
--

DROP TABLE IF EXISTS `tarifas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarifas` (
  `idtarifas` int(11) NOT NULL,
  `codproducto` int(11) NOT NULL,
  `edadinicio` int(11) DEFAULT NULL,
  `edadfin` int(11) DEFAULT NULL,
  `periodo` int(11) NOT NULL,
  `primaanual` varchar(45) DEFAULT NULL,
  `sexo` varchar(1) DEFAULT NULL,
  KEY `fk_tarifas_1_idx` (`codproducto`),
  CONSTRAINT `fk_tarifas_1` FOREIGN KEY (`codproducto`) REFERENCES `productosalud` (`idproducto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarifas`
--

LOCK TABLES `tarifas` WRITE;
/*!40000 ALTER TABLE `tarifas` DISABLE KEYS */;
INSERT INTO `tarifas` VALUES (1,1,0,10,2016,'650,0',''),(2,1,10,20,2016,'520,5',''),(3,1,20,40,2016,'704,67','F'),(4,1,40,60,2016,'500,03','F'),(5,1,60,100,2016,'1200,04',''),(6,1,20,40,2016,'600,9','M'),(7,1,40,60,2016,'704,67','M');
/*!40000 ALTER TABLE `tarifas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoacto`
--

DROP TABLE IF EXISTS `tipoacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipoacto` (
  `codigo` varchar(3) NOT NULL,
  `valor` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoacto`
--

LOCK TABLES `tipoacto` WRITE;
/*!40000 ALTER TABLE `tipoacto` DISABLE KEYS */;
INSERT INTO `tipoacto` VALUES ('AC','ACTOS TERAPEUTICOS'),('CV','CONSULTAS Y VISITAS'),('F','FARMACIA'),('PD','PRUEBAS DE DIAGNOSTICO');
/*!40000 ALTER TABLE `tipoacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocopago`
--

DROP TABLE IF EXISTS `tipocopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocopago` (
  `codtipo` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `fechaalta` date DEFAULT NULL,
  `fechabaja` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codtipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocopago`
--

LOCK TABLES `tipocopago` WRITE;
/*!40000 ALTER TABLE `tipocopago` DISABLE KEYS */;
INSERT INTO `tipocopago` VALUES (1,'COLECTIVO CLINICA LA PAZ','2010-03-12',NULL),(2,'COLECTIVO CLINICA QUIRON','2001-02-03',NULL),(3,'GENERAL','2009-04-12',NULL);
/*!40000 ALTER TABLE `tipocopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipopago` (
  `codigo` varchar(2) NOT NULL,
  `valor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopago`
--

LOCK TABLES `tipopago` WRITE;
/*!40000 ALTER TABLE `tipopago` DISABLE KEYS */;
INSERT INTO `tipopago` VALUES ('A','ANUAL'),('B','BIMENSUAL'),('M','MENSUAL'),('S','SEMESTRAL'),('T','TRIMESTRAL');
/*!40000 ALTER TABLE `tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiporelacion`
--

DROP TABLE IF EXISTS `tiporelacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiporelacion` (
  `codigo` varchar(2) NOT NULL,
  `valor` varchar(45) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiporelacion`
--

LOCK TABLES `tiporelacion` WRITE;
/*!40000 ALTER TABLE `tiporelacion` DISABLE KEYS */;
INSERT INTO `tiporelacion` VALUES ('B','BENEFICIARIO'),('T','TOMADOR'),('TI','TITULAR');
/*!40000 ALTER TABLE `tiporelacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-12 11:09:00
