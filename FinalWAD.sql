-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: wadproject
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogs` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `BLOGNAME` varchar(45) NOT NULL,
  `AUTHOR` varchar(15) NOT NULL,
  `BLOGTYPE` varchar(40) NOT NULL,
  `PATH` varchar(100) NOT NULL,
  `PUBLIC` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`x`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Power Building','a','Hardcore','../createdjsp/52aaec62f1844466a2a7d0515bdcbfde.jsp',1),(2,'as','a','smt','../createdjsp/085e1273534141d8a564a21c70816fbe.jsp',1),(3,'abd','a','lala','../createdjsp/9c0e3f23dde4407c9896872c06035ffa.jsp',0);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boughtpackages`
--

DROP TABLE IF EXISTS `boughtpackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boughtpackages` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `GYMPACK` int(11) NOT NULL,
  `USER` int(11) NOT NULL,
  PRIMARY KEY (`x`),
  KEY `PKey_idx` (`GYMPACK`),
  KEY `UKey_idx` (`USER`),
  CONSTRAINT `bpPKey` FOREIGN KEY (`GYMPACK`) REFERENCES `gympackages` (`x`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bpUKey` FOREIGN KEY (`USER`) REFERENCES `clients` (`x`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boughtpackages`
--

LOCK TABLES `boughtpackages` WRITE;
/*!40000 ALTER TABLE `boughtpackages` DISABLE KEYS */;
INSERT INTO `boughtpackages` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `boughtpackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `VIEWNAME` varchar(15) NOT NULL,
  `USERNAME` varchar(15) NOT NULL,
  `PASS` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `GENDER` varchar(6) NOT NULL,
  `TELEPHONE` varchar(255) DEFAULT NULL,
  `COUNTRY` varchar(100) NOT NULL,
  `SUBSCRIBED` tinyint(1) DEFAULT NULL,
  `CREDITCARD` varchar(255) DEFAULT NULL,
  `SIGNUPDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ADMIN` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`USERNAME`),
  UNIQUE KEY `USERNAME_UNIQUE` (`USERNAME`),
  KEY `x` (`x`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'a a','a','86f7e437faa5a7fce15d1ddcb9eaeaea377667b8','as@san.ro','male','00','romania',1,'a8418eb92805c250e8e4f06159f69989','2016-05-21 12:25:25',1),(2,'b b','b','e9d71f5ee7c92d6dc9e92ffdad17b8bd49418f98','as@san.ro','male','','romania',1,NULL,'2016-05-21 13:10:07',NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gympackages`
--

DROP TABLE IF EXISTS `gympackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gympackages` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `PACKNAME` varchar(50) NOT NULL,
  `PACKTYPE` varchar(40) NOT NULL,
  `PRICE` float NOT NULL,
  `GYMNAME` varchar(40) NOT NULL,
  `DESCRIPTION` varchar(1000) DEFAULT NULL,
  `IMAGE` blob,
  `IMAGEPATH` varchar(50) DEFAULT NULL,
  `AVAILABLE` bit(1) DEFAULT NULL,
  PRIMARY KEY (`x`),
  UNIQUE KEY `PACKNAME_UNIQUE` (`PACKNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gympackages`
--

LOCK TABLES `gympackages` WRITE;
/*!40000 ALTER TABLE `gympackages` DISABLE KEYS */;
INSERT INTO `gympackages` VALUES (1,'UltraMegaSuperGiga Pack','Premium',30,'Extracerbated Gym','If we are not The Best, then there is probable someone better.','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\�\0\0\�\0\0\0\�(�Y\0\0\0sRGB\0�\�\�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0#\�IDATx^\�\�O�$ǝ\��˰��Q\�\�J��ذ\��}��b��\�o`\r�����\� �\�C/\����\�eǋf|4\�E,Xw\�>U����#3\�\�/\"��\�QvWTd\�S����ϗ\�\�\00\�I�\0`\r\0v5\�:\�/߸�\0��\�߹��~\��\0 �oڌ\�Z\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]dt*o\�\�\r4k\�0&tFs\�r#12���\�\�ʙ\�\�̨}rBg�N6;L\r\�M���a\�\�`rf\�>9\\\�HBG\�mv�\Z�	d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF#��\�\��	d4�yv�ƴͤ\��6�\�0�Z \�0�\�6u���\�6#T��1�lS�i�\�h;+\�Ԛv��0�6\�̏�\�.za�i\�12E\Z���%�&tF[[\����5$\�Y;R�ƣ��#C�69��\�kn%Y8~\�H,Ʊ3�\�x\�3\0�\�h\0���\0�\�h\0���\0�\�h\�\�ś\�P2\Z!�Q2\Zu�BR�&d4j�hV@uaM�.\�|�\��s�4�AF�\n/\�\\���ڼ>��J�\Zd4\��\�\�\�+���!�Q�o>jn�NJm�4*@F�p���\�/@m\�h\�\�o\�G���*��\�(ً7\� \�\�4�AF�:��\�Ti���F�T�Ӕ\�kqV4?\\\�p�\�|\nFF�l�A|\�q�4�EF�L�͋:P12\Z%{\�|t.\n\�Ϛ\�����\�\�Ti��F�T�\�O\��!�\�(\�w���\�k9\�/ߜ^ݝ>}W�۫\�\�L�J�@d4J����}}Q\�{��\���	�}\�|���N���ikJ�\�ϗ\�\��ョ\�\�}Mv�4JCF�(*\�?{W��t:�\�m��ӥ�\'�.d4JӖ觧\�5��D�\����\rU\Z\�!�Q�\�%���uSLoX�\�޽��\��d4\n\�}Q\�׃=\�rG�FA\�hB%����:��\��t\�J���\�/�jnw�ǹ������\�V�?�\���\�\\��*�B�\�\�\�e�BV7frS%����\�v�h�\��\�?Z��r�ѰA1=�\�\�?\�s���D_}@�F1\�h䣔\�%\�hR����\�&ݤ^�\�\�L�F\�\�h\�3L\���m\�I\��o��\�\�5��\��Id42Q>\�\'\�CR_\�{~�\�\�_�I\rԎ�F!\\L\�-�\��.\�ӗ;.�H��ud4rX,ю+\�-\�t�\��1�\�(\�_O\��^y%ZU�\�UZ\�TiFF#9e\�??�]z�_�D��\n\�\�6�\�h䣘v\��o\'�HjU\�_pU\Z\�!���Ұ{�\�\�\�\rM�\��7:�\�ڤJCF#�6�7�\�V���\�����8\�\�S��mmY�\ZL�gvnf�F9\�*���v=�7�\�\�ԯ\�ο�{\�a;�\\5ddbg$���DL�]���\�Ơ?G��>%��\r\�%cv\�B�g4��<�\����\�\�25��E\�hk�]@vN0ɻ����e$\�=cC�n-ޅ��o����tv�12S�;#��	�Ѧ�����4t�\�;�v\�Gb/��AA3\�Ιoj$�X(ю��p�\�\�9\�WB��5d4\��/ъH\�qR+\�@i\�h�S��;�\�\�\��4L!�ن�\�r�\����d4ʷ\�B���ƪ�-��-���FL�KtR4h\�CFô\���D;�\��\�\�M��d4�)�DӠa\r�\"�讉��J\�2\ZqQ�{�;\0{\�h���F@�Fvd4\"HS��\\\�z`��&�[(\�U\Zy�\�ͿD+�D1�\�eAJ�C��ad4l\�$��\�P����֖\�\�N�D;�U��\�#�\r̺�\�Ti\�AF#��%�\�\�g\�H�\�Vi\Z4r#�/TidAF#�4%:%J4 �B�\�CQ\�{�c,��\�H��FB��h\Z4\� ��[%\�Yz?U\Z��\�H��+рd4�Y\�m\�\�q!Y[W����\�B�FJd4�P�V�9���DS\�h찧\�\�\�ԱQ�a���%�\�}��\�B����@ld4����a\�T\�[@_~F�F\nd4\"�)ў\�~2\0f�\�\�$Pn^��\���ҝ�Ti$@F#�\�J4������P��P��h��\�캗;(\�ȁ�\�J)K��\�M�FTd4⨠D;K\�g�\"��F\�bk�D/�J#2\Z,�\�¾[�*�[�4� �\�=�*�H\�h�VY�v�\�Ȅ���U\���#�R�*�\�h���rƒ���\�uQ��\r��\�\r\�K\�c\�\�U��a������:�\�L�Fbj0\�\�\�\Z\�|R�\�P�7ON��\"#+\�15�3�\�mA\�h78;S&v��<�4�3j���`��\�Ǯ\�\nF�T;*f3�\�Зϩ\�	���8\'x�k��e\'�7,���-�\�m�^\�\���\����#\�`��P�\�\�\��\�NP��q335?�U�q@G�\���\�\�\n=�\�]�dm������\�\�\"�s\��\��ѦN3;�)w$�K�\�\���j��t:S�\n\�:�M�\�H��Ƅ\�%\��\�lPM>�r\��,TiAF��l\��FFcL��\�*��\�h\�U\�K\�\�zu�x�؏�\�\0%:�4v\"�Q�%ڡJ#>2\Z���h5Dx�Jc2\Z;�w\�M�R���܍�J#22\Z�K�tRC�\�،�F8k���}���J#2\Z6�\�[RW�\�\����|p���*�-\�h��[�U�h/\\\�d4n�&\������\�\�w;M�\�d4��z��h\�؍�F�]߅�a�h�4\�\"�\��\n\r\Z��ч��\�\�W���J\�4U\Z��\��\�]��\�\�!\Z4�\"����:��\�\�g�J\��%�ho\�\��� 02�����\�Q�ቌƬ�%�\�\n�\�|.w\0�\�裢D\�F��2\Z\�¾&�8\�\nTi�CFR\�仅\�P����\��h%\��^�{�K+TiBFφ��MjJ�Ti\�#�1ƕ\�P�� �\���>��\�\\R?�5/�ۏ*�d4FK��\Z���>�,}�\�%\��rU\ZS\�h<\�Y�o�\�E�E\�i>\��\��t�\\�?\���+���\�a3z��\�.,{M\�onS��\�_{:\�|�9\�y�њ�oV}>q�D\�\�\��?/�\�wڌvڤtg2\Z�NFs�\�҄Qq4\'��\�^\�]÷�hv\��5\��E!��\�h%\Z(}\0�݌,Uz\ZU\Z=d4n(\�	<�m�\Zdt\�(ы\�T\�\�RRS�\�EFc]��B�zuw~ٹ\�A���\���\�ܰ�\�`$�xf\�n\�`b�o%\��\�U\�d��H\�~�\�x�\�O���H탩�G[;rڞ\���\�\�S�\�&\����D�&g\�\�%�[��S�\�No`��#ed0����a�LЌ�3\�]>��k��I��9#V��\�G\�MT+\�xӋI��J\�H\�I\�v�c��\�G�g�YL��r\rf4�\�`��\�\�\�\�9`�H\�\�\���J�$�#\ZR�%\�\�ag0����\���}Aw�z\�`R�\�./7?i\�$�\�xx0�l\�DI茶3YR��ۨ�\�*\��\��%\'\�\�\�N�\�<^�\�V\�\�xR\�_�\'{Ќ�3MR\�1�%uW��\���\�G\���\�7��\�\�\�&5U\Z\\\�8*W�{�c:\�w;%:��ܶQtjt�\�xls��&d�(bW\�Ww�o�;�Z\��\�\�FF\�h�\�zӔ\�f�\Z �̽\�k\�\�^�u\�W\�O*ݚIj����\�ǣ�s��\�\�I�%w�,ѯo\�9|}z\��ڢS���F\�TR�\�ů\�׻x��bz*���z��\�\�\�q%z^\'��߰\�k*#��ϭ\�hRBFZ�\�m}פ��\�Sa]�x�\�]������\�T\�c\"��\�D�\���_F~[�Kj^./�go{>�^.�ۭ�W},\� \�Yܡ\�&u\�\�<\�o>�n\�����\���ч�\�\��%\\~\�\�_\Z�Xr]RoC�v4	�\�bw6�qXd�\��^?�>eh\�\�꒺݆�\�CF�Og\�\�I;V�GC\��\���E-��讶J\�\�5��.�;\����ƥ�0�1\�MovmXq�\�\�]���~(ў\�|}���T<\Zaԯ_\"M���ߚ�-2�dð\�_�\r�z1��x\0CnVPLw�)T\�\� �k\�M\�o�\�}�0�\�/��~n<\ZRԯ_.M\�g�\���l\�\�|�\\\�K6�n\�vc=W�;o{Cj�Zy*\�9m�t}�Ysd\�\�b�d�ڀ^?\�)^����x5�#�Zdt�:͵�2m�bп�\�\�^3P�\�\�%Z}����n�!�n�T����\�\��\'.��3�\�|^�Rdt�6�\�q{ҹ�\�\�\��%i\��s�t\�\�\�J\�Jts{Ԇt&�SZ�i]��%\�3�{��\r6Q��FF\�Hg\�wM��^�\rٍVi�\���\�E\�_��8\�-\��\�ǫ6�J��]�\�++�\��adt9�K���\�\�ҹ�U�E��]�\�I\�J�+\��\�f�\�\r�y\�4jDF\�\��lR��jn�ыcm0\�c�t�\�\�\�(���Z�������\�X��J]���\�%�ۦ�v\�\�F_��ڑ\�%\�&��\�\'Jt/�\�\r�\�rGu�٤��\�\�Q�\\��vFX��J}�p��\�\��\�?�̹\\>~~tm6�+\���\��E�[\�b;l}5Ϙv?$\�\�\�\�BL����u\�\��\�\�8<2�|:\�7�hџY.b�VX\r8K3mӊ�\�mO\\��\r?T\�P4��hx#��~[�vtۧJ\�|k\�\�\�P���L\�\�\�@w\�\�\�h�*]2\ZK\�,\�\'B\�	\�\\�\�|ġ�\�%\�	��D;�U:l}\�\�V\�\�\�fDo0\Z��\�\���tBg��3ML\rF���a@Ǩ\�\�Y3��m%\�\�YX\�\������gח�{\�ɼ�\�as�\�\rf��\�k\�-ݯ�F\�?3���\�\r\�l�%\�=XSbTi͏[\�N{#/#\�p�&\\F��\�\�1s�\�\���\\p�\�\��3?����tU\�NLK��hҪy9�\�\�\�\�\�\�`\�4�3�=\�\�ɦɲ0����\�LR\�_V�\�.7�\�`tGm;KР[\�ڤ���\�\�\�h,w�\�U$݃�(\�U\�\�x����6\�&訸֑���\�a\���M���L�\�\���3?e@c3�\�\�\�:\��»ܒn1M��v3ej��&\�0�I�ms���\�	{�\�=.k4�\�\��j�:��D��ڿ6�D}��涌�\�{W��У-Y\��׵�1,\�3�g��!��s��\�UoL\�h;\�$�S����\�\�*�jaK��ߏm\�f\�\�\�fx\�v�б�D;ڟvV\n\��\�ت\�*\��d\�I_-e��ag��m�g.h��%\�\�g\�\��y\�\�<V\�\�h\�P_��|����f\�}+f+�\�x\�vKP�}.\�,�\�%\�\�\����U-2�F.��\�ŕ&7\�\\<�,=\�%+\�?\��\�o��w����g.h��\�[їu\'\�sR�\�S�\�^\�8��%\�Y�f���N\�*Ǟ���\�\�h\�ӝv\�8m�^�k��	��g.h�=o�݋;3c��T\�!M�υ� %ڡJW���\���\n7$��?B�\�\�\�\�[)�.G�\�Vdt>���\�v�\�\�i�S�*ݥ�H\\��t�\�\���\�\��\��ўuW\�U�a�����a\�@Fg\�\�-l�\�\�ˇmU\�\�$d)Ѩ]�H%\�\��\�*�\�\'\�\�N���\�0\�\�\�\�0�!�s�\�\�f�D��\�4UZ���Η\���j�_�h\n�\�QKtK���\�\��A��\�\�Iw\ZO�5�\�\Z\�\�U�{0X\�ś\�}sP\�\�\�<SR���\�\\-���\�e\�-ft�\���,	D\�\�h�u�/M@�>w�N�\�E�#_\��	\�dt�<���ȁ�N\�3%��\�+\�S1�滈\�J4V\"���D/jc��UZ\�\�U��\�\��@�\�\�\�\�<SR��Va@�ǩ�\�C�B#����\�a?\�G�\�z�\�J��{�<�{\"-2:ϔ\�n�K�����1��i 2�\0<���t}\�\�Az�\�Kӛ�[��_\�\�\'\"���LI\�f�D;��ٟ(���q\�n�Vdt\�<�b��q\�\�\�\\,џ\ZxB�<�{\"2\����hGc��\�\0�#�\�S�\�Ԍw\r\'{�v4�t�\�h�+юF2_�\�ܡ��x�؇��L�q�H\�x\�p��hG#�|��\��\�\�|(�D;\Z\�1��\�|�6\�(�N\�\\giƻ\���i\�%\��|\�\'\"#�sәPn�v4*Uie�\�&��5\\��$\�\�ht\Z\�:K3\�5�\�\��|��\�1�\�Y\�(�D;\Z[��\�\�T��@(\�H���C�q��4\�]/\�4�Б�|��\�ѐ\��h�\�Q�=\��R�A\�&�*�\�\��Z�\�ꫴf����\�Hy>_�\�8\�\�L�\�=K��=77,\�`6���\�Bg���-��&�a<�Jt�\�\�\0f��\�\�7+Gc����Dǘ�\�\�\�\�\�25���G\���Dk%=�4��j״��h{�q��)�\�U�\�\�\���)|�\�\�\r��D�c�\Z�\Z��v�u<kM�GÞ)\�QZ\�qZi�\�c1\�\�#kϯ��\�g�\�Z\�X�5�%������\�<\�)!�\n\�\�&\�?9�J��{Ak0k�J�\�*\�N�a���\�y,��L&�J6 hF\�Lg#�r\�\�*��r�G\n�\�DR�\�U�-c7�У��ZG\�\��\rؤ\�hMK��ѐ*�\�S\�|���acQ��<\�=3tO\��=�\�mm�L�\�G_\�,\�\�ҹ>\n�\�\�[1u\�\�F\��\0�So�Nɧ\����\�,KY��m�)_o\� \�!��ҽ�\�i\�5�:�M=\�je�\�®R.wh�v\��m!�;\'��\�<z�nZ\��T�7f�\�U\\���i\�ER\�ꪇ\�Ҝ�N��NBk�=d�Jkx�ON\������\"�\r_�wX\�\�}��6�\�J��AVP��1��D��x�\�n$\\�����O��\�%z&�z^7��t<\���G����\�!l���DM�|���v\�#�^�\�ѐёis%ZtJWP��ZK�\�_\�FFo�u�D�D[�I\�h�*\�\"͓ �c\�\n�D�tJWP�_~[�$\�k	��Vp��m�&y�D�gL�\��\�\�h\�R�{tJ�:�#�hCF��\�R�;�;4���hG+\�\�xX�qh\�R�G\�.�JS����\�7\��J�n}x�>�\�\�L\�z�9\"��a2:�WJ��\�f���\�\�J42!�\�\�	�D�D�T���5Zu>G\�s7�GF���J�^�S\�`�ֱ�D\�2ڛN\��\'*%z\nU\�\Z�=�#\�V\"��\�\Z�D{\�)\�t{�#/;J4\�!��\�x�R�\�Q��\�\n�9\"��a\r2:�NJ�*:��\\�ֱ�D\�$2ڃN\��\'*%�K�Nbݥ��\�Ȟ���\�%%: .w\07d���M�=�ǘ�Jk��:(\�C��\'N\�\�\���A+�U\Z �(#�)J�=\�\\UZ�|�\�ӳ\�%z��\�\�\�s7x �w\�Z�DG��J�c\Z�����tX�(\���x\�Wi\�s\�JtӔ\�y��\'N\�ݰ��\�G��UګҴiXCFOP.,S�hz\�)��\�y�r�\�/�:\�䯢)�y\��\�\r�\�\���(\�	��Ҁ)d�%B�2E���Ǟ���J�\n�(�\�\�Mܟ؊�\�J+�].��\\�\�\�=�\�\�ō�ށ�\�zҪ\n���f`X�\�_\�D\�&2z\�%�\\:|_p�Bг�\�s�\�nCF?���LQ��\�<Į\�\����qC��Yd�zJ\n��*���%: -r�\�N\�\�0@Fwh\r\�JՌwm�f#\�UiJ4,#�WRFP�\��\�\�x\��~�@�\�N\�\��X\�~{nnX�j0Q��\�\�x�\��SGJ<ǳ�J\�s}.t:9i093\"&hF��ٙ�g��C\���D�c\�x�05�\Z��1F�n�a8U�ەO�F�\�N\�\��Y;�\"�ѦN{\��dӺ=W\�x\�F$;\�4\��\�-4\�f\�΄�X\�ף\��Z��ŧw�DkY��!\ZRA�\�d��t�\�.^�6F�\�d�\�\�|�Zɭ\�C\n�\�֦L\���֍[:�VOk~\0�����[\�sLS�\�%w\Z����3�3\r\�δ\��G\';\��iH>�j&��/���\�=|�i\�\0��DS\Z�J���\�g\��q�\�\"\�\�ft����\�DL\�\�:������\�h���gL�b\'k?Uh��0Տ\�a\�\�HL�\�05�����J\�U�(\�`��ѫt�Z[%\�\�{�\�޵�]͚؝U�\�\�\�Ն\�DOER2n\�܍\n��k\'S\r=K+)R\�j�F�ʋ2�l�\�\�8�38i\Z\�\�F��]t�UDF/��Dg\\\�.�7\��n�\�ڧ�\�!�\�X8IY\���a<{��0-dtZ�Y�܀v�1�Xޘ6LnB�s�\'�=K\��\�J���n���X��_�%�\�\�G��n�\�yô\�\�\�\�(S�;s�	hM݆*\���\�~Ĵ3?�72z�V�g�6.\�Y�1\�$x�n�1��\�[g�\�\"ʗ�\����n��,5\�*&<e	\�^|�MM`�y\��;��e�\�O��zSA��@FO\�\��)ѭUI]�afYȔ�%Z�\�Gs���\�?�|�\�o��g��\���\�?��R\�HM\�b�ֿt/t�\�{PY򺈘v�v �\�hU�\�\�\�Ѥ�O\�u\�J���	[�1mG;\�\�(�FFO��c�\�\�\�\�Kj�<&�\�tT�̙*�\��Jt\�\�3�S�\�\�lEFh=\��\�\�>ڤ&�s�,\�\�w\�������\�\�\�\�1�����}�ݕ,�5��U\�=\�&CL�\�T�\\��N\�)OCiO\�\�\r�\�CQKtK��}\�\��(��&d�zkKt�\\*us*W�S�\�\�\�\�!(2�çDУ2��:SU:M�\�r���\��\�>��\�ˇ\r��G�z�+\�Oo�� ��`�Dw�Y�)\�Cz�J�/\�-SOZ�P�\�#�\'Н��b�*�\�\�^�M\�?S�\r\�U\�%�E�E�^���>0��\�\�\��h�\�*�?9X�Q�\� �P�\�s�\\�W\�\�/�Z=\\��\�\�\�v�O\�\�;j.]\�NF�9}������8b\�\�M�tw\�SB�t\'˾n>v\�*�,u�R�\�G�ֱ9��\�S���J[��h@\�|\�\Z��K�\0\n\�\��/,ףW�IgY�\�2�)\���C�\�\�\";pF�*\�.�\�\�y&�G\�|J\�b\Z��J�Ҧ_�\�ѳ�Y\�\�y[}\�8�\�hg~\r���>��f�b���\�m\�!s7|\n\�\�~R�Jӣs\�<�\�.a�\�E�T:˞��/�K)\�\��sv\�\�\�V�w��N1P�#e��\0�x}4\0��\0�\�h\0���\0�\�h\0����~{n6\0(P\�6�ݑX���S�&g�3�a��q4�\�L��\��\��~vo\�bꗐ�\Z�093���^Z;X�c0hFk��͗\��m\�\�n�DR�\�\�\�f\r\0�}�\�\0JFF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]�3��a����3�ə�\�L\�`j��\��\�\�ܰ�\�`�ə�\�\�`r�h0�O\�:\0�.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"����\�r�E�\�o\�\�\0\�]\�\�܍&�\0q�\0\�\"���\�\��\'���h2\�\0\0\0\0IEND�B`�',NULL,''),(2,'pack 1','1',12,'smt','sss','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\�\0\0\�\0\0\0\�(�Y\0\0\0sRGB\0�\�\�\0\0\0gAMA\0\0���a\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0#\�IDATx^\�\�O�$ǝ\��˰��Q\�\�J��ذ\��}��b��\�o`\r�����\� �\�C/\����\�eǋf|4\�E,Xw\�>U����#3\�\�/\"��\�QvWTd\�S����ϗ\�\�\00\�I�\0`\r\0v5\�:\�/߸�\0��\�߹��~\��\0 �oڌ\�Z\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]dt*o\�\�\r4k\�0&tFs\�r#12���\�\�ʙ\�\�̨}rBg�N6;L\r\�M���a\�\�`rf\�>9\\\�HBG\�mv�\Z�	d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF#��\�\��	d4�yv�ƴͤ\��6�\�0�Z \�0�\�6u���\�6#T��1�lS�i�\�h;+\�Ԛv��0�6\�̏�\�.za�i\�12E\Z���%�&tF[[\����5$\�Y;R�ƣ��#C�69��\�kn%Y8~\�H,Ʊ3�\�x\�3\0�\�h\0���\0�\�h\0���\0�\�h\�\�ś\�P2\Z!�Q2\Zu�BR�&d4j�hV@uaM�.\�|�\��s�4�AF�\n/\�\\���ڼ>��J�\Zd4\��\�\�\�+���!�Q�o>jn�NJm�4*@F�p���\�/@m\�h\�\�o\�G���*��\�(ً7\� \�\�4�AF�:��\�Ti���F�T�Ӕ\�kqV4?\\\�p�\�|\nFF�l�A|\�q�4�EF�L�͋:P12\Z%{\�|t.\n\�Ϛ\�����\�\�Ti��F�T�\�O\��!�\�(\�w���\�k9\�/ߜ^ݝ>}W�۫\�\�L�J�@d4J����}}Q\�{��\���	�}\�|���N���ikJ�\�ϗ\�\��ョ\�\�}Mv�4JCF�(*\�?{W��t:�\�m��ӥ�\'�.d4JӖ觧\�5��D�\����\rU\Z\�!�Q�\�%���uSLoX�\�޽��\��d4\n\�}Q\�׃=\�rG�FA\�hB%����:��\��t\�J���\�/�jnw�ǹ������\�V�?�\���\�\\��*�B�\�\�\�e�BV7frS%����\�v�h�\��\�?Z��r�ѰA1=�\�\�?\�s���D_}@�F1\�h䣔\�%\�hR����\�&ݤ^�\�\�L�F\�\�h\�3L\���m\�I\��o��\�\�5��\��Id42Q>\�\'\�CR_\�{~�\�\�_�I\rԎ�F!\\L\�-�\��.\�ӗ;.�H��ud4rX,ю+\�-\�t�\��1�\�(\�_O\��^y%ZU�\�UZ\�TiFF#9e\�??�]z�_�D��\n\�\�6�\�h䣘v\��o\'�HjU\�_pU\Z\�!���Ұ{�\�\�\�\rM�\��7:�\�ڤJCF#�6�7�\�V���\�����8\�\�S��mmY�\ZL�gvnf�F9\�*���v=�7�\�\�ԯ\�ο�{\�a;�\\5ddbg$���DL�]���\�Ơ?G��>%��\r\�%cv\�B�g4��<�\����\�\�25��E\�hk�]@vN0ɻ����e$\�=cC�n-ޅ��o����tv�12S�;#��	�Ѧ�����4t�\�;�v\�Gb/��AA3\�Ιoj$�X(ю��p�\�\�9\�WB��5d4\��/ъH\�qR+\�@i\�h�S��;�\�\�\��4L!�ن�\�r�\����d4ʷ\�B���ƪ�-��-���FL�KtR4h\�CFô\���D;�\��\�\�M��d4�)�DӠa\r�\"�讉��J\�2\ZqQ�{�;\0{\�h���F@�Fvd4\"HS��\\\�z`��&�[(\�U\Zy�\�ͿD+�D1�\�eAJ�C��ad4l\�$��\�P����֖\�\�N�D;�U��\�#�\r̺�\�Ti\�AF#��%�\�\�g\�H�\�Vi\Z4r#�/TidAF#�4%:%J4 �B�\�CQ\�{�c,��\�H��FB��h\Z4\� ��[%\�Yz?U\Z��\�H��+рd4�Y\�m\�\�q!Y[W����\�B�FJd4�P�V�9���DS\�h찧\�\�\�ԱQ�a���%�\�}��\�B����@ld4����a\�T\�[@_~F�F\nd4\"�)ў\�~2\0f�\�\�$Pn^��\���ҝ�Ti$@F#�\�J4������P��P��h��\�캗;(\�ȁ�\�J)K��\�M�FTd4⨠D;K\�g�\"��F\�bk�D/�J#2\Z,�\�¾[�*�[�4� �\�=�*�H\�h�VY�v�\�Ȅ���U\���#�R�*�\�h���rƒ���\�uQ��\r��\�\r\�K\�c\�\�U��a������:�\�L�Fbj0\�\�\�\Z\�|R�\�P�7ON��\"#+\�15�3�\�mA\�h78;S&v��<�4�3j���`��\�Ǯ\�\nF�T;*f3�\�Зϩ\�	���8\'x�k��e\'�7,���-�\�m�^\�\���\����#\�`��P�\�\�\��\�NP��q335?�U�q@G�\���\�\�\n=�\�]�dm������\�\�\"�s\��\��ѦN3;�)w$�K�\�\���j��t:S�\n\�:�M�\�H��Ƅ\�%\��\�lPM>�r\��,TiAF��l\��FFcL��\�*��\�h\�U\�K\�\�zu�x�؏�\�\0%:�4v\"�Q�%ڡJ#>2\Z���h5Dx�Jc2\Z;�w\�M�R���܍�J#22\Z�K�tRC�\�،�F8k���}���J#2\Z6�\�[RW�\�\����|p���*�-\�h��[�U�h/\\\�d4n�&\������\�\�w;M�\�d4��z��h\�؍�F�]߅�a�h�4\�\"�\��\n\r\Z��ч��\�\�W���J\�4U\Z��\��\�]��\�\�!\Z4�\"����:��\�\�g�J\��%�ho\�\��� 02�����\�Q�ቌƬ�%�\�\n�\�|.w\0�\�裢D\�F��2\Z\�¾&�8\�\nTi�CFR\�仅\�P����\��h%\��^�{�K+TiBFφ��MjJ�Ti\�#�1ƕ\�P�� �\���>��\�\\R?�5/�ۏ*�d4FK��\Z���>�,}�\�%\��rU\ZS\�h<\�Y�o�\�E�E\�i>\��\��t�\\�?\���+���\�a3z��\�.,{M\�onS��\�_{:\�|�9\�y�њ�oV}>q�D\�\�\��?/�\�wڌvڤtg2\Z�NFs�\�҄Qq4\'��\�^\�]÷�hv\��5\��E!��\�h%\Z(}\0�݌,Uz\ZU\Z=d4n(\�	<�m�\Zdt\�(ы\�T\�\�RRS�\�EFc]��B�zuw~ٹ\�A���\���\�ܰ�\�`$�xf\�n\�`b�o%\��\�U\�d��H\�~�\�x�\�O���H탩�G[;rڞ\���\�\�S�\�&\����D�&g\�\�%�[��S�\�No`��#ed0����a�LЌ�3\�]>��k��I��9#V��\�G\�MT+\�xӋI��J\�H\�I\�v�c��\�G�g�YL��r\rf4�\�`��\�\�\�\�9`�H\�\�\���J�$�#\ZR�%\�\�ag0����\���}Aw�z\�`R�\�./7?i\�$�\�xx0�l\�DI茶3YR��ۨ�\�*\��\��%\'\�\�\�N�\�<^�\�V\�\�xR\�_�\'{Ќ�3MR\�1�%uW��\���\�G\���\�7��\�\�\�&5U\Z\\\�8*W�{�c:\�w;%:��ܶQtjt�\�xls��&d�(bW\�Ww�o�;�Z\��\�\�FF\�h�\�zӔ\�f�\Z �̽\�k\�\�^�u\�W\�O*ݚIj����\�ǣ�s��\�\�I�%w�,ѯo\�9|}z\��ڢS���F\�TR�\�ů\�׻x��bz*���z��\�\�\�q%z^\'��߰\�k*#��ϭ\�hRBFZ�\�m}פ��\�Sa]�x�\�]������\�T\�c\"��\�D�\���_F~[�Kj^./�go{>�^.�ۭ�W},\� \�Yܡ\�&u\�\�<\�o>�n\�����\���ч�\�\��%\\~\�\�_\Z�Xr]RoC�v4	�\�bw6�qXd�\��^?�>eh\�\�꒺݆�\�CF�Og\�\�I;V�GC\��\���E-��讶J\�\�5��.�;\����ƥ�0�1\�MovmXq�\�\�]���~(ў\�|}���T<\Zaԯ_\"M���ߚ�-2�dð\�_�\r�z1��x\0CnVPLw�)T\�\� �k\�M\�o�\�}�0�\�/��~n<\ZRԯ_.M\�g�\���l\�\�|�\\\�K6�n\�vc=W�;o{Cj�Zy*\�9m�t}�Ysd\�\�b�d�ڀ^?\�)^����x5�#�Zdt�:͵�2m�bп�\�\�^3P�\�\�%Z}����n�!�n�T����\�\��\'.��3�\�|^�Rdt�6�\�q{ҹ�\�\�\��%i\��s�t\�\�\�J\�Jts{Ԇt&�SZ�i]��%\�3�{��\r6Q��FF\�Hg\�wM��^�\rٍVi�\���\�E\�_��8\�-\��\�ǫ6�J��]�\�++�\��adt9�K���\�\�ҹ�U�E��]�\�I\�J�+\��\�f�\�\r�y\�4jDF\�\��lR��jn�ыcm0\�c�t�\�\�\�(���Z�������\�X��J]���\�%�ۦ�v\�\�F_��ڑ\�%\�&��\�\'Jt/�\�\r�\�rGu�٤��\�\�Q�\\��vFX��J}�p��\�\��\�?�̹\\>~~tm6�+\���\��E�[\�b;l}5Ϙv?$\�\�\�\�BL����u\�\��\�\�8<2�|:\�7�hџY.b�VX\r8K3mӊ�\�mO\\��\r?T\�P4��hx#��~[�vtۧJ\�|k\�\�\�P���L\�\�\�@w\�\�\�h�*]2\ZK\�,\�\'B\�	\�\\�\�|ġ�\�%\�	��D;�U:l}\�\�V\�\�\�fDo0\Z��\�\���tBg��3ML\rF���a@Ǩ\�\�Y3��m%\�\�YX\�\������gח�{\�ɼ�\�as�\�\rf��\�k\�-ݯ�F\�?3���\�\r\�l�%\�=XSbTi͏[\�N{#/#\�p�&\\F��\�\�1s�\�\���\\p�\�\��3?����tU\�NLK��hҪy9�\�\�\�\�\�\�`\�4�3�=\�\�ɦɲ0����\�LR\�_V�\�.7�\�`tGm;KР[\�ڤ���\�\�\�h,w�\�U$݃�(\�U\�\�x����6\�&訸֑���\�a\���M���L�\�\���3?e@c3�\�\�\�:\��»ܒn1M��v3ej��&\�0�I�ms���\�	{�\�=.k4�\�\��j�:��D��ڿ6�D}��涌�\�{W��У-Y\��׵�1,\�3�g��!��s��\�UoL\�h;\�$�S����\�\�*�jaK��ߏm\�f\�\�\�fx\�v�б�D;ڟvV\n\��\�ت\�*\��d\�I_-e��ag��m�g.h��%\�\�g\�\��y\�\�<V\�\�h\�P_��|����f\�}+f+�\�x\�vKP�}.\�,�\�%\�\�\����U-2�F.��\�ŕ&7\�\\<�,=\�%+\�?\��\�o��w����g.h��\�[їu\'\�sR�\�S�\�^\�8��%\�Y�f���N\�*Ǟ���\�\�h\�ӝv\�8m�^�k��	��g.h�=o�݋;3c��T\�!M�υ� %ڡJW���\���\n7$��?B�\�\�\�\�[)�.G�\�Vdt>���\�v�\�\�i�S�*ݥ�H\\��t�\�\���\�\��\��ўuW\�U�a�����a\�@Fg\�\�-l�\�\�ˇmU\�\�$d)Ѩ]�H%\�\��\�*�\�\'\�\�N���\�0\�\�\�\�0�!�s�\�\�f�D��\�4UZ���Η\���j�_�h\n�\�QKtK���\�\��A��\�\�Iw\ZO�5�\�\Z\�\�U�{0X\�ś\�}sP\�\�\�<SR���\�\\-���\�e\�-ft�\���,	D\�\�h�u�/M@�>w�N�\�E�#_\��	\�dt�<���ȁ�N\�3%��\�+\�S1�滈\�J4V\"���D/jc��UZ\�\�U��\�\��@�\�\�\�\�<SR��Va@�ǩ�\�C�B#����\�a?\�G�\�z�\�J��{�<�{\"-2:ϔ\�n�K�����1��i 2�\0<���t}\�\�Az�\�Kӛ�[��_\�\�\'\"���LI\�f�D;��ٟ(���q\�n�Vdt\�<�b��q\�\�\�\\,џ\ZxB�<�{\"2\����hGc��\�\0�#�\�S�\�Ԍw\r\'{�v4�t�\�h�+юF2_�\�ܡ��x�؇��L�q�H\�x\�p��hG#�|��\��\�\�|(�D;\Z\�1��\�|�6\�(�N\�\\giƻ\���i\�%\��|\�\'\"#�sәPn�v4*Uie�\�&��5\\��$\�\�ht\Z\�:K3\�5�\�\��|��\�1�\�Y\�(�D;\Z[��\�\�T��@(\�H���C�q��4\�]/\�4�Б�|��\�ѐ\��h�\�Q�=\��R�A\�&�*�\�\��Z�\�ꫴf����\�Hy>_�\�8\�\�L�\�=K��=77,\�`6���\�Bg���-��&�a<�Jt�\�\�\0f��\�\�7+Gc����Dǘ�\�\�\�\�\�25���G\���Dk%=�4��j״��h{�q��)�\�U�\�\�\���)|�\�\�\r��D�c�\Z�\Z��v�u<kM�GÞ)\�QZ\�qZi�\�c1\�\�#kϯ��\�g�\�Z\�X�5�%������\�<\�)!�\n\�\�&\�?9�J��{Ak0k�J�\�*\�N�a���\�y,��L&�J6 hF\�Lg#�r\�\�*��r�G\n�\�DR�\�U�-c7�У��ZG\�\��\rؤ\�hMK��ѐ*�\�S\�|���acQ��<\�=3tO\��=�\�mm�L�\�G_\�,\�\�ҹ>\n�\�\�[1u\�\�F\��\0�So�Nɧ\����\�,KY��m�)_o\� \�!��ҽ�\�i\�5�:�M=\�je�\�®R.wh�v\��m!�;\'��\�<z�nZ\��T�7f�\�U\\���i\�ER\�ꪇ\�Ҝ�N��NBk�=d�Jkx�ON\������\"�\r_�wX\�\�}��6�\�J��AVP��1��D��x�\�n$\\�����O��\�%z&�z^7��t<\���G����\�!l���DM�|���v\�#�^�\�ѐёis%ZtJWP��ZK�\�_\�FFo�u�D�D[�I\�h�*\�\"͓ �c\�\n�D�tJWP�_~[�$\�k	��Vp��m�&y�D�gL�\��\�\�h\�R�{tJ�:�#�hCF��\�R�;�;4���hG+\�\�xX�qh\�R�G\�.�JS����\�7\��J�n}x�>�\�\�L\�z�9\"��a2:�WJ��\�f���\�\�J42!�\�\�	�D�D�T���5Zu>G\�s7�GF���J�^�S\�`�ֱ�D\�2ڛN\��\'*%z\nU\�\Z�=�#\�V\"��\�\Z�D{\�)\�t{�#/;J4\�!��\�x�R�\�Q��\�\n�9\"��a\r2:�NJ�*:��\\�ֱ�D\�$2ڃN\��\'*%�K�Nbݥ��\�Ȟ���\�%%: .w\07d���M�=�ǘ�Jk��:(\�C��\'N\�\�\���A+�U\Z �(#�)J�=\�\\UZ�|�\�ӳ\�%z��\�\�\�s7x �w\�Z�DG��J�c\Z�����tX�(\���x\�Wi\�s\�JtӔ\�y��\'N\�ݰ��\�G��UګҴiXCFOP.,S�hz\�)��\�y�r�\�/�:\�䯢)�y\��\�\r�\�\���(\�	��Ҁ)d�%B�2E���Ǟ���J�\n�(�\�\�Mܟ؊�\�J+�].��\\�\�\�=�\�\�ō�ށ�\�zҪ\n���f`X�\�_\�D\�&2z\�%�\\:|_p�Bг�\�s�\�nCF?���LQ��\�<Į\�\����qC��Yd�zJ\n��*���%: -r�\�N\�\�0@Fwh\r\�JՌwm�f#\�UiJ4,#�WRFP�\��\�\�x\��~�@�\�N\�\��X\�~{nnX�j0Q��\�\�x�\��SGJ<ǳ�J\�s}.t:9i093\"&hF��ٙ�g��C\���D�c\�x�05�\Z��1F�n�a8U�ەO�F�\�N\�\��Y;�\"�ѦN{\��dӺ=W\�x\�F$;\�4\��\�-4\�f\�΄�X\�ף\��Z��ŧw�DkY��!\ZRA�\�d��t�\�.^�6F�\�d�\�\�|�Zɭ\�C\n�\�֦L\���֍[:�VOk~\0�����[\�sLS�\�%w\Z����3�3\r\�δ\��G\';\��iH>�j&��/���\�=|�i\�\0��DS\Z�J���\�g\��q�\�\"\�\�ft����\�DL\�\�:������\�h���gL�b\'k?Uh��0Տ\�a\�\�HL�\�05�����J\�U�(\�`��ѫt�Z[%\�\�{�\�޵�]͚؝U�\�\�\�Ն\�DOER2n\�܍\n��k\'S\r=K+)R\�j�F�ʋ2�l�\�\�8�38i\Z\�\�F��]t�UDF/��Dg\\\�.�7\��n�\�ڧ�\�!�\�X8IY\���a<{��0-dtZ�Y�܀v�1�Xޘ6LnB�s�\'�=K\��\�J���n���X��_�%�\�\�G��n�\�yô\�\�\�\�(S�;s�	hM݆*\���\�~Ĵ3?�72z�V�g�6.\�Y�1\�$x�n�1��\�[g�\�\"ʗ�\����n��,5\�*&<e	\�^|�MM`�y\��;��e�\�O��zSA��@FO\�\��)ѭUI]�afYȔ�%Z�\�Gs���\�?�|�\�o��g��\���\�?��R\�HM\�b�ֿt/t�\�{PY򺈘v�v �\�hU�\�\�\�Ѥ�O\�u\�J���	[�1mG;\�\�(�FFO��c�\�\�\�\�Kj�<&�\�tT�̙*�\��Jt\�\�3�S�\�\�lEFh=\��\�\�>ڤ&�s�,\�\�w\�������\�\�\�\�1�����}�ݕ,�5��U\�=\�&CL�\�T�\\��N\�)OCiO\�\�\r�\�CQKtK��}\�\��(��&d�zkKt�\\*us*W�S�\�\�\�\�!(2�çDУ2��:SU:M�\�r���\��\�>��\�ˇ\r��G�z�+\�Oo�� ��`�Dw�Y�)\�Cz�J�/\�-SOZ�P�\�#�\'Н��b�*�\�\�^�M\�?S�\r\�U\�%�E�E�^���>0��\�\�\��h�\�*�?9X�Q�\� �P�\�s�\\�W\�\�/�Z=\\��\�\�\�v�O\�\�;j.]\�NF�9}������8b\�\�M�tw\�SB�t\'˾n>v\�*�,u�R�\�G�ֱ9��\�S���J[��h@\�|\�\Z��K�\0\n\�\��/,ףW�IgY�\�2�)\���C�\�\�\";pF�*\�.�\�\�y&�G\�|J\�b\Z��J�Ҧ_�\�ѳ�Y\�\�y[}\�8�\�hg~\r���>��f�b���\�m\�!s7|\n\�\�~R�Jӣs\�<�\�.a�\�E�T:˞��/�K)\�\��sv\�\�\�V�w��N1P�#e��\0�x}4\0��\0�\�h\0���\0�\�h\0����~{n6\0(P\�6�ݑX���S�&g�3�a��q4�\�L��\��\��~vo\�bꗐ�\Z�093���^Z;X�c0hFk��͗\��m\�\�n�DR�\�\�\�f\r\0�}�\�\0JFF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]d4\0\�EF�]�3��a����3�ə�\�L\�`j��\��\�\�ܰ�\�`�ə�\�\�`r�h0�O\�:\0�.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"��.2\Z\0\�\"����\�r�E�\�o\�\�\0\�]\�\�܍&�\0q�\0\�\"���\�\��\'���h2\�\0\0\0\0IEND�B`�',NULL,'');
/*!40000 ALTER TABLE `gympackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likedblogs`
--

DROP TABLE IF EXISTS `likedblogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likedblogs` (
  `x` int(11) NOT NULL AUTO_INCREMENT,
  `BLOG` int(11) NOT NULL,
  `USER` int(11) NOT NULL,
  PRIMARY KEY (`x`),
  KEY `BKey_idx` (`BLOG`),
  KEY `UKey_idx` (`USER`),
  CONSTRAINT `lbBKey` FOREIGN KEY (`BLOG`) REFERENCES `blogs` (`x`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lbUKey` FOREIGN KEY (`USER`) REFERENCES `clients` (`x`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likedblogs`
--

LOCK TABLES `likedblogs` WRITE;
/*!40000 ALTER TABLE `likedblogs` DISABLE KEYS */;
INSERT INTO `likedblogs` VALUES (1,1,1),(2,2,1);
/*!40000 ALTER TABLE `likedblogs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-13 18:04:57
