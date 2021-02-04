-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: rh
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acao`
--

DROP TABLE IF EXISTS `acao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `acao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `funcao` int(11) NOT NULL,
  `controller` varchar(30) NOT NULL,
  `action` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_funcao_acao_idx` (`funcao`),
  CONSTRAINT `fk_funcao_acao` FOREIGN KEY (`funcao`) REFERENCES `funcao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acao`
--

LOCK TABLES `acao` WRITE;
/*!40000 ALTER TABLE `acao` DISABLE KEYS */;
INSERT INTO `acao` VALUES (1,1,'usuarios','index'),(2,2,'usuarios','add'),(3,2,'usuarios','cadastro'),(4,3,'usuarios','edit'),(5,3,'usuarios','cadastro'),(6,4,'usuarios','delete'),(7,5,'grupos','index'),(8,6,'grupos','add'),(9,6,'grupos','cadastro'),(10,7,'grupos','edit'),(11,7,'grupos','cadastro'),(12,8,'grupos','delete'),(13,9,'firewall','index'),(14,10,'firewall','add'),(15,10,'firewall','cadastro'),(16,11,'firewall','edit'),(17,11,'firewall','cadastro'),(18,12,'firewall','delete'),(32,13,'funcionarios','index'),(33,14,'funcionarios','add'),(34,14,'funcionarios','cadastro'),(35,15,'funcionarios','edit'),(36,15,'funcionarios','cadastro'),(37,16,'funcionarios','delete'),(38,17,'atestados','index'),(39,18,'atestados','add'),(40,18,'atestados','cadastro'),(41,19,'atestados','edit'),(42,19,'atestados','cadastro'),(43,20,'atestados','delete'),(44,21,'medicos','index'),(45,22,'medicos','add'),(46,22,'medicos','cadastro'),(47,23,'medicos','edit'),(48,23,'medicos','cadastro'),(49,24,'medicos','delete'),(50,27,'usuarios','imprimir'),(51,28,'grupos','imprimir'),(52,29,'firewall','imprimir'),(53,30,'funcionarios','imprimir'),(54,31,'atestados','imprimir'),(55,32,'medicos','imprimir'),(56,25,'funcionarios','view'),(57,25,'funcionarios','consulta'),(58,30,'funcionarios','documento'),(59,26,'atestados','view'),(60,26,'atestados','consulta'),(61,31,'atestados','documento'),(62,33,'medicos','view'),(63,33,'medicos','consulta'),(64,32,'medicos','documento'),(65,34,'auditoria','index'),(66,35,'auditoria','registro'),(67,36,'auditoria','delete'),(69,38,'auditoria','imprimir'),(70,38,'auditoria','documento'),(71,44,'cid','index'),(72,45,'cid','imprimir'),(73,46,'cid','dado'),(74,47,'cid','add'),(75,47,'cid','addc'),(76,47,'cid','insercao'),(77,47,'cid','cadastro'),(78,48,'cid','edit'),(79,48,'cid','consulta'),(80,49,'cid','delete'),(81,48,'cid','view'),(82,47,'cid','importar'),(83,47,'cid','resultado'),(84,47,'cid','relatorio'),(85,47,'cid','importacao'),(86,47,'cid','datasus'),(87,50,'relatorios','index'),(88,51,'relatorios','funcionariosatestados'),(89,51,'relatorios','imprimirfuncionariosatestados'),(90,51,'relatorios','atestadosfuncionario'),(91,51,'relatorios','atestadodetalhe'),(92,51,'relatorios','imprimiratestadosfuncionario'),(93,52,'relatorios','empresassatestados'),(94,52,'relatorios','funcionariosempresa'),(95,52,'relatorios','atestadosempresa'),(96,52,'relatorios','imprimirempresassatestados'),(97,52,'relatorios','imprimirfuncionariosempresa'),(98,52,'relatorios','atestadosfuncionario'),(99,52,'relatorios','atestadodetalhe'),(100,52,'relatorios','imprimiratestadosfuncionario'),(101,52,'relatorios','imprimiratestadosempresa'),(102,53,'relatorios','atestadoscid'),(103,53,'relatorios','cidatestados'),(104,53,'relatorios','imprimiratestadoscid'),(105,53,'relatorios','atestadodetalhe'),(106,53,'relatorios','imprimircidatestados'),(107,56,'relatorios','medicoatestado'),(108,56,'relatorios','imprimirmedicoatestado'),(109,56,'relatorios','atestadosmedico'),(110,56,'relatorios','imprimiratestadosmedico'),(111,56,'relatorios','atestadodetalhe');
/*!40000 ALTER TABLE `acao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atestado`
--

DROP TABLE IF EXISTS `atestado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `atestado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `funcionario` int(11) NOT NULL,
  `emissao` date NOT NULL,
  `afastamento` date NOT NULL,
  `retorno` date NOT NULL,
  `quantidade_dias` int(11) NOT NULL,
  `medico` int(11) NOT NULL,
  `cid` char(3) NOT NULL,
  `motivo` varchar(160) NOT NULL,
  `observacao` text,
  `inss` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_atestado_funcionario_idx` (`funcionario`),
  KEY `fk_atestado_medico_idx` (`medico`),
  CONSTRAINT `fk_atestado_funcionario` FOREIGN KEY (`funcionario`) REFERENCES `funcionario` (`id`),
  CONSTRAINT `fk_atestado_medico` FOREIGN KEY (`medico`) REFERENCES `medico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atestado`
--

LOCK TABLES `atestado` WRITE;
/*!40000 ALTER TABLE `atestado` DISABLE KEYS */;
/*!40000 ALTER TABLE `atestado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditoria`
--

DROP TABLE IF EXISTS `auditoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `auditoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) DEFAULT NULL,
  `data` datetime NOT NULL,
  `ocorrencia` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `dado_adicional` varchar(8192) DEFAULT NULL,
  `ip` varchar(15) NOT NULL,
  `agent` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_auditoria_usuario_idx` (`usuario`),
  CONSTRAINT `fk_auditoria_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditoria`
--

LOCK TABLES `auditoria` WRITE;
/*!40000 ALTER TABLE `auditoria` DISABLE KEYS */;
INSERT INTO `auditoria` VALUES (1,1,'2021-02-02 22:13:41',1,'O usuário acessou o sistema com sucesso.',NULL,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.104 Safari/537.36'),(2,1,'2021-02-04 20:09:47',1,'O usuário acessou o sistema com sucesso.',NULL,'::1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.146 Safari/537.36');
/*!40000 ALTER TABLE `auditoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cid`
--

DROP TABLE IF EXISTS `cid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` char(3) NOT NULL,
  `detalhamento` int(11) DEFAULT NULL,
  `nome` varchar(150) NOT NULL,
  `subitem` tinyint(1) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cid`
--

LOCK TABLES `cid` WRITE;
/*!40000 ALTER TABLE `cid` DISABLE KEYS */;
/*!40000 ALTER TABLE `cid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `empresa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firewall`
--

DROP TABLE IF EXISTS `firewall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `firewall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `data` datetime NOT NULL,
  `motivo` varchar(160) NOT NULL,
  `lista_branca` tinyint(1) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firewall`
--

LOCK TABLES `firewall` WRITE;
/*!40000 ALTER TABLE `firewall` DISABLE KEYS */;
/*!40000 ALTER TABLE `firewall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcao`
--

DROP TABLE IF EXISTS `funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `funcao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `chave` varchar(45) NOT NULL,
  `grupo` int(11) NOT NULL,
  `ordem` int(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_grupo_funcao_idx` (`grupo`),
  CONSTRAINT `fk_grupo_funcao` FOREIGN KEY (`grupo`) REFERENCES `grupo_funcao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao`
--

LOCK TABLES `funcao` WRITE;
/*!40000 ALTER TABLE `funcao` DISABLE KEYS */;
INSERT INTO `funcao` VALUES (1,'Listar Usuários','listar_usuarios',1,1,1),(2,'Adicionar Usuário','adicionar_usuarios',1,2,1),(3,'Editar Usuário','editar_usuarios',1,3,1),(4,'Excluir Usuário','excluir_usuarios',1,4,1),(5,'Listar Grupos','listar_grupos_usuarios',2,5,1),(6,'Adicionar Grupo','adicionar_grupos_usuarios',2,6,1),(7,'Editar Grupo','editar_grupo_usuario',2,7,1),(8,'Excluir Grupo','excluir_grupo_usuario',2,8,1),(9,'Listar IPs','listar_ips_firewall',3,9,1),(10,'Adicionar IPs','adicionar_ips_firewall',3,10,1),(11,'Editar IPs','editar_ips_firewall',3,11,1),(12,'Excluir IPs','excluir_ips_firewall',3,12,1),(13,'Listar Funcionários','listar_funcionarios',4,13,1),(14,'Adicionar Funcionários','adicionar_funcionarios',4,14,1),(15,'Editar Funcionários','editar_funcionarios',4,15,1),(16,'Excluir Funcionários','excluir_funcionarios',4,16,1),(17,'Listar Atestados','listar_atestados',5,17,1),(18,'Adicionar Atestados','adicionar_atestados',5,18,1),(19,'Editar Atestados','editar_atestados',5,19,1),(20,'Excluir Atestados','excluir_atestados',5,20,1),(21,'Listar Médicos','listar_medicos',6,21,1),(22,'Adicionar Médicos','adicionar_medicos',6,22,1),(23,'Editar Médicos','editar_medicos',6,23,1),(24,'Excluir Médicos','excluir_medicos',6,24,1),(25,'Visualizar Funcionários','visualizar_funcionarios',4,15,1),(26,'Visualizar Atestados','visualizar_atestados',5,19,1),(27,'Imprimir Usuários','imprimir_usuarios',1,5,1),(28,'Imprimir Grupos','imprimir_grupos',2,13,1),(29,'Imprimir IPs','imprimir_ips_firewall',3,13,1),(30,'Imprimir Funcionários','imprimir_funcionarios',4,16,1),(31,'Imprimir Atestados','imprimir_atestados',5,20,1),(32,'Imprimir Médicos','imprimir_medicos',6,25,1),(33,'Visualizar Médicos','visualizar_medicos',6,24,1),(34,'Listar Auditoria','listar_auditoria',7,26,1),(35,'Detalhes do Registro','detalhes_registro_auditoria',7,27,1),(36,'Excluir Registro','excluir_registro_auditoria',7,28,1),(38,'Imprimir Auditoria','imprimir_auditoria',7,30,1),(44,'Listar CID','listar_cid',8,31,1),(45,'Imprimir CID','imprimir_cid',8,32,1),(46,'Visualizar CID','visualizar_cid',8,33,1),(47,'Adicionar CID','adicionar_cid',8,34,1),(48,'Editar CID','editar_cid',8,35,1),(49,'Excluir CID','excluir_cid',8,36,1),(50,'Visão Geral de Relatórios','relatorio_visao',9,37,1),(51,'Funcionario por Atestado','relatorio_funcionario_atestado',9,38,1),(52,'Empresas por Atestado','relatorio_empresas_atestado',9,39,1),(53,'Relatorio de CIDs','relatorio_cid',9,42,1),(54,'Cargos por Atestado','relatorio_cargo_atestado',9,40,0),(55,'Tipo Func. Atestado','relatorio_tipo_funcionario_atestado',9,41,0),(56,'Medicos Por Atestados','relatorios_medicos_atestados',9,43,1);
/*!40000 ALTER TABLE `funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcao_grupo`
--

DROP TABLE IF EXISTS `funcao_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `funcao_grupo` (
  `grupo_id` int(11) NOT NULL,
  `funcao_id` int(11) NOT NULL,
  PRIMARY KEY (`grupo_id`,`funcao_id`),
  KEY `fk_grupo_has_funcao_funcao1_idx` (`funcao_id`),
  KEY `fk_grupo_has_funcao_grupo1_idx` (`grupo_id`),
  CONSTRAINT `fk_grupo_has_funcao_funcao1` FOREIGN KEY (`funcao_id`) REFERENCES `funcao` (`id`),
  CONSTRAINT `fk_grupo_has_funcao_grupo1` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcao_grupo`
--

LOCK TABLES `funcao_grupo` WRITE;
/*!40000 ALTER TABLE `funcao_grupo` DISABLE KEYS */;
INSERT INTO `funcao_grupo` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,38),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,56);
/*!40000 ALTER TABLE `funcao_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `cpf` char(11) NOT NULL,
  `pis` char(11) DEFAULT NULL,
  `tipo` int(11) NOT NULL,
  `data_admissao` date NOT NULL,
  `empresa` int(11) NOT NULL,
  `observacao` text,
  `ativo` tinyint(1) NOT NULL,
  `probatorio` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `pis_UNIQUE` (`pis`),
  KEY `fk_funcionario_tipo_idx` (`tipo`),
  KEY `fk_funcionario_empresa_idx` (`empresa`),
  CONSTRAINT `fk_funcionario_empresa` FOREIGN KEY (`empresa`) REFERENCES `empresa` (`id`),
  CONSTRAINT `fk_funcionario_tipo` FOREIGN KEY (`tipo`) REFERENCES `tipo_funcionario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grupo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `administrativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'Administrador',1,1),(2,'Analista',1,0),(3,'Assistente',1,0),(4,'Gerenciador',1,0);
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo_funcao`
--

DROP TABLE IF EXISTS `grupo_funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `grupo_funcao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `ordem` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo_funcao`
--

LOCK TABLES `grupo_funcao` WRITE;
/*!40000 ALTER TABLE `grupo_funcao` DISABLE KEYS */;
INSERT INTO `grupo_funcao` VALUES (1,'Usuários',1),(2,'Grupos de Usuários',2),(3,'Firewall',3),(4,'Funcionários',4),(5,'Atestados',5),(6,'Médicos',6),(7,'Auditoria',9),(8,'CID',8),(9,'Relatórios',7);
/*!40000 ALTER TABLE `grupo_funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `crm` int(11) DEFAULT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_funcionario`
--

DROP TABLE IF EXISTS `tipo_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_funcionario`
--

LOCK TABLES `tipo_funcionario` WRITE;
/*!40000 ALTER TABLE `tipo_funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(30) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(70) NOT NULL,
  `grupo` int(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `suspenso` tinyint(1) NOT NULL,
  `verificar` tinyint(1) NOT NULL,
  `prefid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  UNIQUE KEY `prefid_UNIQUE` (`prefid`),
  KEY `fk_usuario_grupo_idx` (`grupo`),
  CONSTRAINT `fk_usuario_grupo` FOREIGN KEY (`grupo`) REFERENCES `grupo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'admin','Administrador do Sistema','admin@rh.com.br','7c4a8d09ca3762af61e59520943dc26494f8941b',1,1,0,0,NULL);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 20:54:22
