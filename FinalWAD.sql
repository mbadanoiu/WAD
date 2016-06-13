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
INSERT INTO `gympackages` VALUES (1,'UltraMegaSuperGiga Pack','Premium',30,'Extracerbated Gym','If we are not The Best, then there is probable someone better.','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\á\0\0\á\0\0\0\Ö(‘Y\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ã\0\0\Ã\Ço¨d\0\0#\áIDATx^\í\ÝO‹$Ç\Æñª¹Ë°’ðQ\Ó\ÃJ§¹Ø°\àó}ðöbŒÀ\Æo`\r½ƒÁ¯À\Ø ö\æC/\ì¾Á¾\ÌeÇ‹f|4\ÞE,Xw\Õ>U‘“#3\ã\Ï/\"¿’\éšQvWTd\äS²«ºÏ—\Ë\å\00\éIó\0`\r\0v5\×:\Î/ß¸¿\0²»\Üß¹Œ~\Õü\0 §oÚŒ\æZ\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]dt*o\Ï\Í\r4k\ã0&tFs\ær#12ƒø\ì\ÂÊ™\Ã\äÌ¨}rBg´N6;L\r\ÆM‹Á™a\å\Ì`rf\Ô>9\\\ëHBG\Îmv˜\Z€	d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF#Ÿ·\ç\æ€	d4òyv¹Æ´Í¤\æù6\Ñ0ÀZ \Ð0£\êŒ6u¦Œ†\á6#T¥­1µlS‡i…\Îh;+\ÉÔšvƒ±0¤6\íÌ†\ä.zaði\Ã12E\Z†ƒ%µ&tF[[\ßŽŸ©5$\îY;R¦Æ£Áœ#C²69µ¦\Þkn%Y8~\íH,Æ±3ø\àx\ß3\0»\Èh\0°‹Œ\0»\Èh\0°‹Œ\0»\Èh\Ô\åÅ›\æP2\Z! Q2\Zu¹BR£&d4j¡hV@uaM£.\ß|ô\Éýsª4ªAF£\n/\Þ\\£¨Ú¼>½¥J£\Zd4\Ê÷\â\Í\ïŸ+š›¿!£Q‘o>jnœNJmª4*@F£p·ý“\æ/@m\Èh\Ô\åo\ÍG¥ö…*ò‘\Ñ(Ù‹7\× \à\Ú4ªAF£:«\ÒTi”ŽŒF±T¢Ó”\èkqV4?\\\èpþ\Ô|\nFF£l‹A|\Íqª4ŠEF£LÍ‹:P12\Z%{\Ú|t.\n\íÏš\Êüúô¶\É\î§TiŒŒFT¢\ÍO\çÀ!\Ñ(\Ówš\Ûk9\Î/ßœ^Ý>}W™Û«\Õ\×L§J£@d4J£ýù£}}Q\Ç{¹¼\×ü¨	}\Ð|”ŸœNŸœžikJ´\èÏ—\ß\Þþãƒ§\×\Þ}Mvª4JCF£(*\Ñ?{W¢ÿt:ý\Ûmû¯Ó¥ù\' .d4JÓ–è§§\ï5·®D·\îŸô«ô\rU\Z\Å!£QŽ\Ç%úôõuSLoX¢\ïÞ½ü\Î d4\n\Ô}Q\Ç×ƒ=\ërG•FA\ÈhB%ú‡·­:ü÷\Îöt\âJô«»\×/¿jnwýÇ¹¹”€Œ†þ\ÅVý?·\íÁª\í\\³ž*B\Ñ\È\Êe¥BV7frS%úŸž¿\èvûhö\å¯\î¾?Z¥rÑ°A1=Ÿ\Ô\ï?\ä²s»½¡D_}@•F1\Èhä£”\ì%\ìhR»ý¿§\ë&Ý¤^ô\ê\îL•F\É\Èh\Ø3L\êÿ»m\ÒI\êóo¿º\î¶\Õ5÷»\Ï€Id42Q>\Î\'\ìCR_\Þ{~ú\ë\í_†I\rÔŽŒF!\\L\Ë-©\Ïð.\ÑÓ—;.ÿH•†ud4rX,ÑŽ+\Ñ-\Åt›\ÔÀ1\Ñ(\Í_O\çÿ^y%ZUú\çUZ\ÏTiFF#9e\â¿??½]z¿_¯D÷„\n\Ö\ï6›\Èhä£˜v\Û·o\'®HjU\é_pU\Z\å!£‘–Ò°{™\â\Ù\åº\rM—\èó7:ô\çÚ¤JCF#‡6—7÷\èVˆ¤©\Òû‘8\Ö\ÆSµ mmY›\ZLûgvnf²F9\è*°¸˜v=º7Ÿ\Ý\ã“Ô¯\îÎ¿ô{\Ïa;˜\\5ddbg$Ž©ñDL„]û”­\æÆ ?Gÿ§>%Á\r\Æ%cv\íBg4¾ý<ª\ÒÁ„…\Å\Ü25˜ªE\Èhkº]@vN0É»¬»÷že$\Ý=cC‰n-Þ…ªôoýª´©tvƒ12Sƒ;#‘ƒ	Ñ¦Žœ…Á¸4tƒ\É;žv\ÙGb/ð€AA3\ÚÎ™oj$¢X(ÑŽ•ˆp­\Ø\ã»9\ßWB•†5d4\âó/ÑŠH\çqR+\Ñ@i\Èh©S¿º;ÿ\ç\ä\åª4L!£Ù†ý\Ør‰\ëš€d4Ê·\áB‡ªôÆªô- ù-°ƒŒFL»KtR4h\ØCFÃ´\å½¡D;ª\Òú\â­\ÇM•†d4¢)¨DÓ a\r»\"–è®‰€¦J\Ã2\ZqQ¢{—;\0{\Èhµú—F@•Fvd4\"HS¢ƒ\\\è˜z`¬&®[(\ÑU\Zy‘\ÑÍ¿D+þD1½\áeAJ´C•†ad4l\è$µ\íP¥‘ Ö–\è\ÏN°D;óUúý\æ#\rÌºô\å‡Ti\äAF#œ%ú\æ\Úg\ç¿Hð\íŒVi\Z4r#£/TidAF#4%:%J4 £B¤\ëCQ\ï¨{¹c, ©\ÒHŒFB¥”h\Z4\Ì £±[%\ÚYz?U\Z‰‘\ÑH¥ +Ñ€d4öY\Õm\ß\ßq!Y[W•žþ­\áB•FJd4’P‰V´9ƒ¤¦DS\Èhì°§\Û\î\éÔ±Q¥aøº%º\ç}¿\ìB‡§š@ld4¶²–›a\ÍT\é[@_~F•F\nd4\"›)Ñž\ê~2\0f‘\Ñ\Ø$Pn^»ª\Ùü­Ò«Ti$@F#¦\ÊJ4—¡‘õŽP¢ýP¥hö—\èìº—;(\ÑÈŒ\ÆJ)K´\ÓM•FTd4â¨ D;K\ïg¢\"£±F\Êbk§D/¡J#2\Z,•\èÂ¾[¨*ý[ª4ò £\á=*H\Èh„VY‰v¨\ÒÈ„Œ†ŸU\Åöƒ#¾R*\Èh¥­¨rÆ’º°—\ÜuQ¥‘\rž¡\Ù\r\è–K\êc\Ô\êˆUúí¹¹a©Áˆµñ:£\íL–Fbj0\íŸ\Ù\å\Z\Ì|R·\ã±P¢7ON¤§\"#+\Ç15±3\ÄmA\Íh78;S&v£‘<»4·3j‘ÿ`ö”\èÇ®\×\nF¿T;*f3¹\ãÐ—Ï©\Ò	™š“8\'x„k’¨e\'»7,°¹¸-”\èm¢^\Ì\Ñü¸\Íƒƒ±#\Â`¸Pö\Å\Ô\æ²ÿ\ÊNP¢­q335?£Uúq@G¬\Ò•ý\Ì\ê\n=˜\Ð]õdm§‘Œ‘ô\Ø\Õ\"¥s\Ô\ÃšÑ¦N3;ƒ)w$‰Kô\Ì\íù‰j«ôt:S¥\n\×:€M¨\ÏH‚ŒÆ„\Ä%\Úó\îlPM>ÿr\áý,TiAF«l\é²ªFFcL¸í¥¨\í*ý\Èh\ÄU\ÌK\î\Özu·x¹ØŒ\Æ\0%:ª4v\"£Qµ%Ú¡J#>2\Zù—h5Dx Jc2\Z;¸w\ÙM¼R¸¾—Ü J#22\Z›KôtRC¨\ÒØŒŒF8k“ºô}£ü¥J#2\Z6—\èž[RWþ\Ý\Â¯÷³|pºüš*-\Èh¬ð[…U”h/\\\Âd4n‚&\æõÿý’¿\Î\Ìw;M•\Æd4¼ñz»µh\ÐØŒFŽ]ß…Ža•hª4\Ö\"£\á‡½\n\r\ZÑ‡—¾\Ò\ÖW¢¶J\Ï4U\Z«\Ñð\à]¢÷\Ý\Â!\Z4‚\"£”:òù\Ë\ïg¡J\Ã%”ho\ç\æ÷³ 02úÀª®´\ÆQ¥á‰ŒÆ¬°%ú\Ï\n¯\î|.w\0ž\Èè£¢D\çF•†2\Z\ÓÂ¾&ú8\Ï\nTi„CFR\è¸ä»…\ÛP¥±ˆŒ\Æ•h%\È^ð{´K+TiBFÏ†¸œMjJôTi\Ì#£1Æ•\èžPú ¨\ÒŒ>˜ý\×\\R?„5/¹Û*d4FKôµ\ZˆŒ>’,}ö\È%\ÚûrU\ZS\Èh<\æY¢o®\ÄEŒE\ßi>\Îñ\Ù‡t¾\\®?\æü’+†µó\ì³a3z‰Ž\Ý.,{M\éonSú÷\Û_{:\é|þ9\Ïy¸Ñš¹oV}>q¼D\ï\Ì\èý?/ö\×wÚŒvÚ¤tg2\ZNFs­\ãÒ„Qq4\'š™\Ø^\Ý]Ã·¥hv\ÛÀ5\ÊŒE!£ñ\àh%\Z(}\0„ÝŒ,Uz\ZU\Z=d4n(\Ñ	<½mÀ\Zdt\í(Ñ‹\ÒT\é\ÖRRS¥\ÑEFc]‰öB‰zuw~Ù¹\ÜA§†Ÿ\Ðýö\ÜÜ°À\Ô`$ýxf\Ân\ë`b½o%\ïÁ\êU\édƒ™H\ê~•\Öxò\ÎO—©ÁHíƒ©·G[;rÚž\åø¥\Ñ\ÝS½\å&\Çý™½D÷&g\í§\ç¦%†[•þSó—\ÏNo`«¸#ed0Ž‘Á¸a„LÐŒŽ3\Ä]>…kˆ£I½þ9#V‰–\ìG\ÊMT+\æxÓ‹Iý¨J\ëH\ÙI\Æv¦cÁú\ÊG„g YL»Œr\rf4©\Ý`‚—\è\Í\Æ\ë9`­H\ë\Õ\Ý÷®Jû$õ#\ZR®%\Ô\å†ag0Ž©°Š\ï¦’}Aw“z\Ó`R¼\ä./7?i\Í$õ\åžxx0òl\áDIèŒ¶3YRõ‘Û¨›\Ô*\Ñú\ê‰÷%\'\å\æ\ÇN¾\Ç<^¼\ÞV\é\ÖxR\Ã_½\'{ÐŒ¶3MR\ï1À%uW¤\Þ²¦\æG\ãÿ‘\×7ûþ\Ý\ä\ã&5U\Z\\\ë8*W¢{¦c:\âw;%:‰ŸÜ¶Qtjt‘\Ñxls¡®&dõ(bW\×Ww¯o—;“Z\Û©\Ò\ÇFF\Òh‰\îzÓ”\è¨f’\Z £Ì½\Ìk\ê\Å^›u\âW\éOîŸ»*ÝšIjªô‘‘\ÑÇ£­s¾—\Ë\ÓIý%w‡,Ñ¯o\ß9|}z\ëþÚ¢S£‡ŒF\ÇTR°\ÄÅ¯\Ò×»xù­bz*©»›z÷\È\è\Ãq%z^\'©›ß°\çk*#ôï›‹ðžÏ­\ÈhRBFZû\âm}×¤î¼’·›\ÔSa]÷x£\Ò]¼ü¶¹½”\ÔT\éc\"£\ä¡D\æòð_F~[¼Kj^./ôgo{>·^.©Û­ùW},\Ã \îYÜ¡\Ñ&u\Ý\Ò<\Æo>ºn\åõý“ú\ç‘Ñ‡ñ\â\Íõ%\\~\Ó\×_\Z²Xr]RoC‰v4	Ÿ\Þbw6©qXdô\Ñõ^?€>eh\Ê\êê’ºÝ†¨\ÒCF—Og\ì\âI;V¢GC\Ùý\ãõ³E-¹”è®¶J\Í\ç5€Œ.œ;\×õ“úÆ¥ð01\ÉMovmXq€\ï\à]‹™¤~(Ñž\Ñ|}²¾T<\ZaÔ¯_\"Mˆªôßš¿-2ºdÃ°\Ó_µ\r’z1½x\0CnVPLw·)T\é\Ã £k\ÔM\êo®\ï}˜0’\Ë/¿½~n<\ZRÔ¯_.M\Ëgƒ\ØõŒl\Ô\ë|¹\\\ßK6òn\çvc=W–;o{Cj¿Zy*\Ó9m«t}»Ysd\É\èbùdôÚ€^?\à)^«ýºùx5ú#®Zdt­:ÍµŽ2mºbÐ¿¬\Ñ\ã^3P÷\Ò\ã%Z}º¹¬¼n·!õn­TŒ®—\Î\Þû\'.—¥3¡\Õ|^£Rdt6•\èq{Ò¹—\È\Ú\Êü%i\Ãúsªt\å\È\èJ\ÝJts{Ô†t&‘SZŒi]šý%\Ú3{‰¬\r6Q¥«FF\×Hg\ìwM·¡^»\rÙViŽ\ÑÁ\ÑE\Ù_¢‡8\Õ-\Æô‡\ÍÇ«6¬J•®]\Î++¸\Ó€adt9¼Kôù›\æ\ÆÒ¹óUºE•®]ô\âI\èJ´+\Èó\Ûfí«¾\Ú\r±y\Æ4jDF\Å\ÅôlRŸ¿jn„Ñ‹cm0\ëcªt…\È\è\Ò(¦§’Zÿ²ö‡òôô\âXŒ J]¦©¤\î%¬Û¦ôv\Ó\ËF_Š‡Ú‘\Ñ%\ë&µ¶\Ï\'Jt/ˆ\Û\rõ\árGuøÙ¤µ˜\É\èQ¿\\³¿vFX«®J}öp«÷\Ì\Úû\Þï—·?ÿÌ¹\\>~~tm6´+\àžŸ\åöE÷[\âb;l}5Ï˜v?$\Ú\í\ï“\ÑBL—ŽŸu\å\Ê„\â\Ð8<2º|:\á7”hÑŸY.b¸VX\r8K3mÓŠþ\ÔmO\\•®\r?T\éP4”hx#£§~[‰vtÛ§J\ï|k\âî· \Ä\×P»“–L\ï\×\ê@w\Ö\Ô\Åh‡*]2\ZK\Ú,\à\'B\ì§	\Ü\\¢\Ü|Ä¡\Ñ%\Ó	¿§D;óU:l}\î\êV\é·\ç\ëfDo0\Z¤…\í\Ì¬ªtBg´3ML\rFŠ›œa@Ç¨\Ò\ÇY3šºm%\Ú\ìYX\í\ë‡„Žœ¶g×—¢{\ÑÉ¼…\Úas‰\î\rf´\Åk\Ð-Ý¯…F\â?3±õ£\á\r\Ël£%\Ú=XSbTiÍ[\ÏN{#/#\Ãp‚&\\F·‡\Í\Î1s‹\É\ÏÁ¸\\pù\ê\ë´3?˜™€ŽtU\ÚNLKŒÁhÒªy9‡\æ\Ç\È\É\å\Æ`\ä43˜=\Ú\ÎÉ¦É²0˜ö˜­\ÌLR\ë_V•\è.7ž\Þ`tGm;KÐ [\îÚ¤õž\Ø\Ò\è–h,w¼\ÚU$Ýƒµ(\ÒU\é\îxº·³“6\Ò&è¨¸Ö‘„Ž™\ça\æ‚þªMÿ¾ùL–\è\ÑÁ¸3?e@c3ý\ß\Ì\ï:\ë¡÷Â»Ü’n1M¸Œv3ej¾Œ&\È0ºI­ms‰–ý\ã	{¹\Ã=.k4¤\Þ\Ûújž:¦®D÷ŽÚ¿6½D}‡æ¶Œò\Þ{W„‘Ð£-Y\Ìý×µÁ1,\Ñ3´g·!»™sžƒ\ÕUoL\Íh;\Ó$¦SŸº«ô\â“\å*újaKô¼ßm\Öf\Þ\è\Ñfx\æ‚vó¿Ð±ªD;ÚŸvV\n\Ö\ÑØª\Ö*\íùd\éI_-e‰žag†±mƒg.h·¨%\Ú\Ñg\Ñ\Î›y\Ó\Ê<V\í\Èh\ìP_•ö|²ô¤¯f\ê}+f+‘\Ñx\æ‚vKP¢}.\í,™\Í%\Ú\Ñ\çþ™ƒU-2ºF. •\éÅ•&7\ì\\<Ÿ,=\é«%+\Ñ?\Äô\ïo‘w†±›g.h·µ\ï[Ñ—u\'\ä¶sRŸ\ëS¥\Ã^\î8 %\ÚYŒf‹Œ®N\ï*Çž¤öŒ\é°\Üh\ÓÓv\ç­8m•^”k†±	•g.h·=oþÝ‹;3cœœT\é!MˆÏ…Ž %Ú¡JWŠŒ®\Ëü·\n7$µö?B•\Ö\Ý\Í\Ì[)ü.Gú\ÆVdt>ž¹ \Ýv–\è\ÝiðS”*Ý¥©H\\¢ªt\È\èŠø¿\Þ\Îó\éÁÑžuW\éU³aœÿ¼¥œa\ì@Fg\â™\Ú-l‰\Þ\ãË‡mU\Ú\Ñ$d)Ñ¨]‹H%\Ú\Ñþ\Ý*\æ\'\Ê\ëN„þ†\Ù0\Î\Þ\Ò\Ì0ö!£sð\Ì\íf§D÷Œ\Æ4UZŸ Î—\Ëõ§j_²h\nž\ÑQKtKŸûñ\ã\ÏýAóñ\Õ\í°Iw\ZOð5¯\Ñ\Z\É\èUó{0X\ëÅ›\Ë}sP\È\è\ä<SR»ù—\è\\-½˜ž\Ñe\Ñ-ftš\í ÷,	D\Ò\Éh®u”/M@‹>wøN¶\ÞE#_\îð	\èdt°<„ÿžÈŒN\Ë3%µ›\Í+\ÑS1æ»ˆ\àJ4V\"£—¬D/jcú˜UZ\Ù\ÈUŽ–\î\Ëó@ø\ï‰\ä\È\è„<SR»ÿVa@ºÇ©Ÿ\ÝC›B#£Áó\éa?\ÓG«\Òz°\ÖJ´£{ô<þ{\"-2:Ï”\Ôn–K´£ûù1˜´i 2ú\0<Ÿúòt}\å\ÐAz™\æKÓ›ñ[…º_\Ï\á¿\'\"£“ðLI\íf¿D;º÷ÙŸ(þ¼¹q\ÎnÀVdt\í<Ÿbðÿq\Æ\å\Ò\\,ÑŸ\ZxBõ<þ{\"2\Ú¥”hGc˜­\Ò\0ö#£\ãSø\æŠÔŒw\r\'{‰v4ªt™\ÈhŠ+ÑŽF2_¥\ë¾Ü¡‡¶x¡Ø‡ŒŽL§q®H\Íx\×pŒ”hG#ñ|¾ô\ßñ‘\Ñ\è|(±D;\Z\Ï1«´\Ô|‰6\Ð(“N\ã\\giÆ»\îþŒi\ä¢%\áù|\é¿\'\"#£sÓ™Pn‰v4*Uieñ\è&õ½5\\‡$\È\èht\Z\ç:K3\Þ5Œ\Ó\Âð|¾ô\ß1‘\ÑY\é(½D;\Z[÷—\Ò\ÕT¥õ@(\ÑH…ŒŽC§q®³4\×]/\Æ4ŒÐ‘ò|¾ô\ßÑ\Ñùhõ\×Q¢=\ä–R¢A\Ø&»* \Ã\ÞõZº\ëê«´f¸‚÷­\èHy>_ú\ï‰8\È\èL´\î=Kô¼=77,\Ð`6‡\ÐBg´µ“-½™&»a<ñJt¤\É\Ñ\0fªô\è\å7+Gc˜†Ÿ¥DÇ˜©\á±\Õ\Û\ÓÂ‘\ê25žƒ¡G\ç Ÿ·Dk%=»4·ój×´…ñh{†q­)²\ÓUš\Ñ\î\Èùø)|§\Î\Ò\r“¼D·cˆ\Zˆ\Z†•v±u<kMGÃž)\ÑQZ\ã‰qZiÀ\Ýc1\Ã\Ï#kÏ¯ «\Þg¾\ÐZ\ÏX¢5¦%Šôœ±™µ\Ó<\è)!£\n\ß\Å&\å?9‘J´»{Ak0k¯J§\ç*\ÑN‹a†\íy,ü÷L&ÁJ6 hF\ÛLg#£r\Ã\Ð*·ðr›G\n‹\ìDR¤\çŒU¬-c7žÐ£ª÷ZG\â\ã§ð\rØ¤\â•hMKš™Ñ*«\ÒS\Ò|«°…acQƒ÷<\Ã=3tO\âó=¡\Ðmm¦L\çG_\å,\Ñ\ÉÒ¹>\n¦\ì\ï[1u\ì\ÍF\Òù\0SoNÉ§\Éú‹ñš\è,KY«þm‡)_o\ï \ê!¬ªÒ½‘\Øi\Ó5ª:£M=\Çjeó\ÆÂ®R.whv\Þüm!¦;\'—©\Ó<zônZ\Ù›T¼7f¡\áU\\¥³¼i\ÅER\Æêª‡\ìÒœ˜N‚ŒNBkš=d¿Jkx÷ON\ïý¥ù«‘\"©\r_µwX\È\è}´¦6©\ÊJ´£AVP¥‡1¥D·ò†£x›\æn$\\’Ž†ŒŽO«ù\à%z&¦z^7¦ót<\ÝðõG›Ž‰Œ\Þ!l“­²DM“|ÿø±v\Ñ#£^š\ÓÑÑ‘is%ZtJWP¥ZK´\Ó_\äFFo¥uðD¥D[£I\î•h‡*\Ý\"Í“ £c\Ò\n¦D·tJWP¥_~[ÿ$\ák	½‰VpÀ•m&y´D‡gL“\æñ‘\Ñ\Ñh\íR¢{tJý:¼#”hCF¯¶\ÉR¢;—;4Œƒ—hG+\Í\çˆxî†­X‹qh\ÕR¢G\é”.´JS¢‘½’\Â7\à‰J‰n}xº>«\Ñ\ÈL\Ñzó9\"ž»a2:­WJô\Òf«´Ž\Ý\è…J42!£\×\Ð	ðD¥D·T¢ª´5Zu>G\Äs7¬GF‡¦•J‰^¤S\Ú`•Ö±£D\Ã2Ú›N\à€\'*%z\nU\Ú\Z­=Ÿ#\â¹V\"£ƒ\Ò\Z¥D{\Ò)\íªt{¡#/;J4\ì!£ý\èx¢R¢\çQ¥­\Ñ\nô9\"ž»a\r2:­NJô*:¥\\•Ö±£D\Ã$2ÚƒN\à€\'*%ºKNbÝ¥©ð\éÈž»Áˆ\Ö%%: .w\07dô’°M–=¤Ç˜·Jkž‡:(\ÑCšŸ\'N\Ï\Ý\à‡ŒA+’U\Z £(#–)Jô=\Ò\\UZó|ÿ\ä“Ó³\æ¯%zŠ¦\Å\ç‰\Ós7x £w\ÓZ¤DG’°J÷c\Z°Œž¦tX¦(\Ñóôx\ÓWi\Ís\çJtÓ”\èyšŸ\'N\ÏÝ°„Œ\ÞG«UÚ«Ò´iXCFOP.,S”hz\Ô)«´\æyðrŽ\×/¿:\èä¯¢)òy\âô\Ü\r³\È\è´þ(\Ñ	¤­Ò€)dô%BÀ2E‰ö§ÇžþªôJô\nš(­\Õ\ÅMÜŸØŠŒ\ÞJ+].¾‡\\ƒ\Þ\È=Ÿ\é\ÏÅ˜ÞŒ\ÐzÒª\n…½–f`X¥\ã_\î D\Ã&2z\å%º\\:|_pøBÐ³š\Ïs§\çnCF?¦•°LQ¢·\Ñ<Ä®\Ò\ïý¥¹qC‰†YdôzJ\nŸ½* ‘Œ%: -rŸ\çN\Ï\Ý0@Fwh\r\åJÕŒwm“f#\ÕUiJ4,#£WRFP¢\Ó\é\àx\ç÷~š@Ÿ\çN\Ï\ÝðX\èŒ~{nnX°j0Q›¬\É\Ôx¢\ÞõSGJ<Ç³³J\ës}.t:9i093\"&hF»ñÙ™²g—ÀC\Ò¾¡D·c\ÐxŒ05™\Z¦1F•n¿a8U¢Û•OšFŸ\çN\Ï\ÝüY;­\"šÑ¦N{\ÇódÓº=W\Èx\×F$;\Í4\Õþ\ß-4\Óf\ÈÎ„ô„X\í×£\ÛùZœ¸Å§wí°¹DkY§‰!\ZRAƒ\Ñdöªt¨\ï.^‰6F¥\Ðdú\Ï\Ý|˜ZÉ­\ÐC\n\ÑÖ¦L\ãñ’Ö[:¡VOk~\0º»ù˜¨[\ÊsLS½\á%w\Zž‘˜¶3±3\r\ÃÎ´\Ä¡G\';\ëüiH>«j&©õ/¥¿œ\Ã=|ýi\ä\0ùDS\Z¼Jû¿œ\Ãg\åÀq§\Ï\"\Ï\Ýftˆ‘õ\ìDL\í\×:ºüÁ­¡\Ëh‘¾¾gL„b\'k?Uhªõ0Õ\ßa\è\ÅHL·\Ã05˜žýù»J\ÊU´(\Î`Ž”Ñ«t“Z[%\Ú\É{†\ëÞµ­]ÍšØUú\Ã\æ\ãÕ†\×DOER2n\ÞÜ\n¸“k\'S\r=K+)R\ìjFúÊ‹2®l—\Î\Ç8µ38i\Z\Ò\èFü]t˜UDF/©¬Dg\\\Ù. 7\Óôn«\ÒÚ§½\Ð!›\ßX8IY\Ø‰³a<{¢ü0-dtZšY½Ü€v†1XÞ˜6LnB†s²\'ñ=K\ë¬ô\ÝJ†·§n€µX¥õ_»%ú\Ó\ÝGŠ˜nõ\ÒyÃ´\å\È\è\ä´(Sº;sª	hMÝ†*\Ýý†\á~Ä´3?ò72zšV˜g‰6.\ãY1\Ë$x‰nµ1ñ\æ[gÿ\Ò\"Ê—\Ñû¸«nù,5\í*&<e	\è^|„MM`÷y\Ñó;‡ÁeŒ\éŒOºózSAþ†@FO\Ð\Úò)Ñ­UI]·afYÈ”€%Zô\ÓGs—˜\Þ?¢|½\äo­gø­\Âù¤\Ö?Œ‰R\ÄHM\ãb•Ö¿t/t„\Õ{PYòºˆ˜v§v £\ÇhU¹\Ý\Ë\åÑ¤šO\êºu\ÓJ§®‘	[¢1mG;\Û\æ(ŸFFO›Šc—\Ô\Ã\Ý\ÓKjý<&¬\étTšÌ™*­\ÛñJt\Ë\È3S³\á\ÎlEFh=\é„÷\é\Ë>Ú¤& sù,\æ\äw\éÁ«ôŸ˜ö\Ù\ç\È\è1‹ý»•§}õÝ•, 5«£U\Ú=\Ë&CL·\ÜTð\\ý˜N\ïŸ)OCiO\Ë\Ä\rº\ÓCQKtKº}\à\Äô(ªô&dôzkKtõ\\*us*W¥S–\è®\ì\ß\æ!(2ºÃ§DÐ£2ž–:SU:M‰\îróÀÿ\ìò©\É>û½\äË‡\r£”G¦z“+\ÑOo·³ ¦ý`´Dw£Y·)\ÑCz´J§/\Ñ-SOZ¦P¥\×#£\'Ð±‡bš*\È\è›^‰M\ç?S¢\r\ëU\éŒ%ºE›E•^‰Œ >0ƒŒ\î”\è™\ë”hû\Ú*­?9X–Q¥\× £PŸ\Øs¾\\®W\Í\Î/Z=\\‰ž\è\ß\ßvO\à\è¼;j.]\î›NF¿9}¼õÿ ù8b\æ\èM½tw\êSBýt\'Ë¾n>v\Ò*û,uŽR\ÑG¿Ö±9 •\ÎS­¨J[¥óh@\Ï|\Ê\Z‰ýKó±\0\n\è\Ãÿ/,×£WšIgY›\Î2õ)\Îü­Cð\Ü\Ì\";pF¯*\Ñ.š\ç\Óy& G\Í|J\×b\Z‰©J—Ò¦_¥\éÑ³£Y\æ\Óy[}\î©8¦\í—hg~\rª ¤>°£fôb‰öŒ\æm\é¼!s7|\n\à\Ã~R»JÓ£s\Ñ<“\Î.a§\ÓEóT:Ëž¨­/¦K)\Ñ\Îüsv\é\è\ÔVòµw‡ÿN1P¤#e¯\0«x}4\0Œ\0»\Èh\0°‹Œ\0»\Èh\0°«öŒ~{n6\0(P\èŒ6ˆÝ‘X˜™Sƒ&g“3¤a´›q4£\íL–ó\ìò\î÷~vo\çbê—š\ZŒ093˜œ®^Z;X¡c0hFk²¬Í—\Ø€m\Ü\Ýn¦DR„\ë\Ñ\Öf\r\0ˆ}µ\Ï\0JFF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]¡3úí¹¹a©Á“3ƒÉ™Á\äL\Ñ`jŸœ\Ðý\ì\ÒÜ°À\Ô`„É™Á\ä\Ì`r¦h0µO\×:\0À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À®ó\årýE¶\ç—o\Ü\ß\0\Ù]\î\ïÜ&£\0q­\0\ì\"£Àª\Ó\éÿ\'¢‡ñ·h2\é\0\0\0\0IEND®B`‚',NULL,''),(2,'pack 1','1',12,'smt','sss','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\á\0\0\á\0\0\0\Ö(‘Y\0\0\0sRGB\0®\Î\é\0\0\0gAMA\0\0±üa\0\0\0	pHYs\0\0\Ã\0\0\Ã\Ço¨d\0\0#\áIDATx^\í\ÝO‹$Ç\Æñª¹Ë°’ðQ\Ó\ÃJ§¹Ø°\àó}ðöbŒÀ\Æo`\r½ƒÁ¯À\Ø ö\æC/\ì¾Á¾\ÌeÇ‹f|4\ÞE,Xw\Õ>U‘“#3\ã\Ï/\"¿’\éšQvWTd\äS²«ºÏ—\Ë\å\00\éIó\0`\r\0v5\×:\Î/ß¸¿\0²»\Üß¹Œ~\Õü\0 §oÚŒ\æZ\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]dt*o\Ï\Í\r4k\ã0&tFs\ær#12ƒø\ì\ÂÊ™\Ã\äÌ¨}rBg´N6;L\r\ÆM‹Á™a\å\Ì`rf\Ô>9\\\ëHBG\Îmv˜\Z€	d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF#Ÿ·\ç\æ€	d4òyv¹Æ´Í¤\æù6\Ñ0ÀZ \Ð0£\êŒ6u¦Œ†\á6#T¥­1µlS‡i…\Îh;+\ÉÔšvƒ±0¤6\íÌ†\ä.zaði\Ã12E\Z†ƒ%µ&tF[[\ßŽŸ©5$\îY;R¦Æ£Áœ#C²69µ¦\Þkn%Y8~\íH,Æ±3ø\àx\ß3\0»\Èh\0°‹Œ\0»\Èh\0°‹Œ\0»\Èh\Ô\åÅ›\æP2\Z! Q2\Zu¹BR£&d4j¡hV@uaM£.\ß|ô\Éýsª4ªAF£\n/\Þ\\£¨Ú¼>½¥J£\Zd4\Ê÷\â\Í\ïŸ+š›¿!£Q‘o>jnœNJmª4*@F£p·ý“\æ/@m\Èh\Ô\åo\ÍG¥ö…*ò‘\Ñ(Ù‹7\× \à\Ú4ªAF£:«\ÒTi”ŽŒF±T¢Ó”\èkqV4?\\\èpþ\Ô|\nFF£l‹A|\Íqª4ŠEF£LÍ‹:P12\Z%{\Ú|t.\n\íÏš\Êüúô¶\É\î§TiŒŒFT¢\ÍO\çÀ!\Ñ(\Ówš\Ûk9\Î/ßœ^Ý>}W™Û«\Õ\×L§J£@d4J£ýù£}}Q\Ç{¹¼\×ü¨	}\Ð|”ŸœNŸœžikJ´\èÏ—\ß\Þþãƒ§\×\Þ}Mvª4JCF£(*\Ñ?{W¢ÿt:ý\Ûmû¯Ó¥ù\' .d4JÓ–è§§\ï5·®D·\îŸô«ô\rU\Z\Å!£QŽ\Ç%úôõuSLoX¢\ïÞ½ü\Î d4\n\Ô}Q\Ç×ƒ=\ërG•FA\ÈhB%ú‡·­:ü÷\Îöt\âJô«»\×/¿jnwýÇ¹¹”€Œ†þ\ÅVý?·\íÁª\í\\³ž*B\Ñ\È\Êe¥BV7frS%úŸž¿\èvûhö\å¯\î¾?Z¥rÑ°A1=Ÿ\Ô\ï?\ä²s»½¡D_}@•F1\Èhä£”\ì%\ìhR»ý¿§\ë&Ý¤^ô\ê\îL•F\É\Èh\Ø3L\êÿ»m\ÒI\êóo¿º\î¶\Õ5÷»\Ï€Id42Q>\Î\'\ìCR_\Þ{~ú\ë\í_†I\rÔŽŒF!\\L\Ë-©\Ïð.\ÑÓ—;.ÿH•†ud4rX,ÑŽ+\Ñ-\Åt›\ÔÀ1\Ñ(\Í_O\çÿ^y%ZUú\çUZ\ÏTiFF#9e\â¿??½]z¿_¯D÷„\n\Ö\ï6›\Èhä£˜v\Û·o\'®HjU\é_pU\Z\å!£‘–Ò°{™\â\Ù\åº\rM—\èó7:ô\çÚ¤JCF#‡6—7÷\èVˆ¤©\Òû‘8\Ö\ÆSµ mmY›\ZLûgvnf²F9\è*°¸˜v=º7Ÿ\Ý\ã“Ô¯\îÎ¿ô{\Ïa;˜\\5ddbg$Ž©ñDL„]û”­\æÆ ?Gÿ§>%Á\r\Æ%cv\íBg4¾ý<ª\ÒÁ„…\Å\Ü25˜ªE\Èhkº]@vN0É»¬»÷že$\Ý=cC‰n-Þ…ªôoýª´©tvƒ12Sƒ;#‘ƒ	Ñ¦Žœ…Á¸4tƒ\É;žv\ÙGb/ð€AA3\ÚÎ™oj$¢X(ÑŽ•ˆp­\Ø\ã»9\ßWB•†5d4\âó/ÑŠH\çqR+\Ñ@i\Èh©S¿º;ÿ\ç\ä\åª4L!£Ù†ý\Ør‰\ëš€d4Ê·\áB‡ªôÆªô- ù-°ƒŒFL»KtR4h\ØCFÃ´\å½¡D;ª\Òú\â­\ÇM•†d4¢)¨DÓ a\r»\"–è®‰€¦J\Ã2\ZqQ¢{—;\0{\Èhµú—F@•Fvd4\"HS¢ƒ\\\è˜z`¬&®[(\ÑU\Zy‘\ÑÍ¿D+þD1½\áeAJ´C•†ad4l\è$µ\íP¥‘ Ö–\è\ÏN°D;óUúý\æ#\rÌºô\å‡Ti\äAF#œ%ú\æ\Úg\ç¿Hð\íŒVi\Z4r#£/TidAF#4%:%J4 £B¤\ëCQ\ï¨{¹c, ©\ÒHŒFB¥”h\Z4\Ì £±[%\ÚYz?U\Z‰‘\ÑH¥ +Ñ€d4öY\Õm\ß\ßq!Y[W•žþ­\áB•FJd4’P‰V´9ƒ¤¦DS\Èhì°§\Û\î\éÔ±Q¥aøº%º\ç}¿\ìB‡§š@ld4¶²–›a\ÍT\é[@_~F•F\nd4\"›)Ñž\ê~2\0f‘\Ñ\Ø$Pn^»ª\Ùü­Ò«Ti$@F#¦\ÊJ4—¡‘õŽP¢ýP¥hö—\èìº—;(\ÑÈŒ\ÆJ)K´\ÓM•FTd4â¨ D;K\ïg¢\"£±F\Êbk§D/¡J#2\Z,•\èÂ¾[¨*ý[ª4ò £\á=*H\Èh„VY‰v¨\ÒÈ„Œ†ŸU\Åöƒ#¾R*\Èh¥­¨rÆ’º°—\ÜuQ¥‘\rž¡\Ù\r\è–K\êc\Ô\êˆUúí¹¹a©Áˆµñ:£\íL–Fbj0\íŸ\Ù\å\Z\Ì|R·\ã±P¢7ON¤§\"#+\Ç15±3\ÄmA\Íh78;S&v£‘<»4·3j‘ÿ`ö”\èÇ®\×\nF¿T;*f3¹\ãÐ—Ï©\Ò	™š“8\'x„k’¨e\'»7,°¹¸-”\èm¢^\Ì\Ñü¸\Íƒƒ±#\Â`¸Pö\Å\Ô\æ²ÿ\ÊNP¢­q335?£Uúq@G¬\Ò•ý\Ì\ê\n=˜\Ð]õdm§‘Œ‘ô\Ø\Õ\"¥s\Ô\ÃšÑ¦N3;ƒ)w$‰Kô\Ì\íù‰j«ôt:S¥\n\×:€M¨\ÏH‚ŒÆ„\Ä%\Úó\îlPM>ÿr\áý,TiAF«l\é²ªFFcL¸í¥¨\í*ý\Èh\ÄU\ÌK\î\Özu·x¹ØŒ\Æ\0%:ª4v\"£Qµ%Ú¡J#>2\Zù—h5Dx Jc2\Z;¸w\ÙM¼R¸¾—Ü J#22\Z›KôtRC¨\ÒØŒŒF8k“ºô}£ü¥J#2\Z6—\èž[RWþ\Ý\Â¯÷³|pºüš*-\Èh¬ð[…U”h/\\\Âd4n‚&\æõÿý’¿\Î\Ìw;M•\Æd4¼ñz»µh\ÐØŒFŽ]ß…Ža•hª4\Ö\"£\á‡½\n\r\ZÑ‡—¾\Ò\ÖW¢¶J\Ï4U\Z«\Ñð\à]¢÷\Ý\Â!\Z4‚\"£”:òù\Ë\ïg¡J\Ã%”ho\ç\æ÷³ 02úÀª®´\ÆQ¥á‰ŒÆ¬°%ú\Ï\n¯\î|.w\0ž\Èè£¢D\çF•†2\Z\ÓÂ¾&ú8\Ï\nTi„CFR\è¸ä»…\ÛP¥±ˆŒ\Æ•h%\È^ð{´K+TiBFÏ†¸œMjJôTi\Ì#£1Æ•\èžPú ¨\ÒŒ>˜ý\×\\R?„5/¹Û*d4FKôµ\ZˆŒ>’,}ö\È%\ÚûrU\ZS\Èh<\æY¢o®\ÄEŒE\ßi>\Îñ\Ù‡t¾\\®?\æü’+†µó\ì³a3z‰Ž\Ý.,{M\éonSú÷\Û_{:\é|þ9\Ïy¸Ñš¹oV}>q¼D\ï\Ì\èý?/ö\×wÚŒvÚ¤tg2\ZNFs­\ãÒ„Qq4\'š™\Ø^\Ý]Ã·¥hv\ÛÀ5\ÊŒE!£ñ\àh%\Z(}\0„ÝŒ,Uz\ZU\Z=d4n(\Ñ	<½mÀ\Zdt\í(Ñ‹\ÒT\é\ÖRRS¥\ÑEFc]‰öB‰zuw~Ù¹\ÜA§†Ÿ\Ðýö\ÜÜ°À\Ô`$ýxf\Ân\ë`b½o%\ïÁ\êU\édƒ™H\ê~•\Öxò\ÎO—©ÁHíƒ©·G[;rÚž\åø¥\Ñ\ÝS½\å&\Çý™½D÷&g\í§\ç¦%†[•þSó—\ÏNo`«¸#ed0Ž‘Á¸a„LÐŒŽ3\Ä]>…kˆ£I½þ9#V‰–\ìG\ÊMT+\æxÓ‹Iý¨J\ëH\ÙI\Æv¦cÁú\ÊG„g YL»Œr\rf4©\Ý`‚—\è\Í\Æ\ë9`­H\ë\Õ\Ý÷®Jû$õ#\ZR®%\Ô\å†ag0Ž©°Š\ï¦’}Aw“z\Ó`R¼\ä./7?i\Í$õ\åžxx0òl\áDIèŒ¶3YRõ‘Û¨›\Ô*\Ñú\ê‰÷%\'\å\æ\ÇN¾\Ç<^¼\ÞV\é\ÖxR\Ã_½\'{ÐŒ¶3MR\ï1À%uW¤\Þ²¦\æG\ãÿ‘\×7ûþ\Ý\ä\ã&5U\Z\\\ë8*W¢{¦c:\âw;%:‰ŸÜ¶Qtjt‘\Ñxls¡®&dõ(bW\×Ww¯o—;“Z\Û©\Ò\ÇFF\Òh‰\îzÓ”\è¨f’\Z £Ì½\Ìk\ê\Å^›u\âW\éOîŸ»*ÝšIjªô‘‘\ÑÇ£­s¾—\Ë\ÓIý%w‡,Ñ¯o\ß9|}z\ëþÚ¢S£‡ŒF\ÇTR°\ÄÅ¯\Ò×»xù­bz*©»›z÷\È\è\Ãq%z^\'©›ß°\çk*#ôï›‹ðžÏ­\ÈhRBFZû\âm}×¤î¼’·›\ÔSa]÷x£\Ò]¼ü¶¹½”\ÔT\éc\"£\ä¡D\æòð_F~[¼Kj^./ôgo{>·^.©Û­ùW},\Ã \îYÜ¡\Ñ&u\Ý\Ò<\Æo>ºn\åõý“ú\ç‘Ñ‡ñ\â\Íõ%\\~\Ó\×_\Z²Xr]RoC‰v4	Ÿ\Þbw6©qXdô\Ñõ^?€>eh\Ê\êê’ºÝ†¨\ÒCF—Og\ì\âI;V¢GC\Ùý\ãõ³E-¹”è®¶J\Í\ç5€Œ.œ;\×õ“úÆ¥ð01\ÉMovmXq€\ï\à]‹™¤~(Ñž\Ñ|}²¾T<\ZaÔ¯_\"Mˆªôßš¿-2ºdÃ°\Ó_µ\r’z1½x\0CnVPLw·)T\é\Ã £k\ÔM\êo®\ï}˜0’\Ë/¿½~n<\ZRÔ¯_.M\Ëgƒ\ØõŒl\Ô\ë|¹\\\ßK6òn\çvc=W–;o{Cj¿Zy*\Ó9m«t}»Ysd\É\èbùdôÚ€^?\à)^«ýºùx5ú#®Zdt­:ÍµŽ2mºbÐ¿¬\Ñ\ã^3P÷\Ò\ã%Z}º¹¬¼n·!õn­TŒ®—\Î\Þû\'.—¥3¡\Õ|^£Rdt6•\èq{Ò¹—\È\Ú\Êü%i\Ãúsªt\å\È\èJ\ÝJts{Ô†t&‘SZŒi]šý%\Ú3{‰¬\r6Q¥«FF\×Hg\ìwM·¡^»\rÙViŽ\ÑÁ\ÑE\Ù_¢‡8\Õ-\Æô‡\ÍÇ«6¬J•®]\Î++¸\Ó€adt9¼Kôù›\æ\ÆÒ¹óUºE•®]ô\âI\èJ´+\Èó\Ûfí«¾\Ú\r±y\Æ4jDF\Å\ÅôlRŸ¿jn„Ñ‹cm0\ëcªt…\È\è\Ò(¦§’Zÿ²ö‡òôô\âXŒ J]¦©¤\î%¬Û¦ôv\Ó\ËF_Š‡Ú‘\Ñ%\ë&µ¶\Ï\'Jt/ˆ\Û\rõ\árGuøÙ¤µ˜\É\èQ¿\\³¿vFX«®J}öp«÷\Ì\Úû\Þï—·?ÿÌ¹\\>~~tm6´+\àžŸ\åöE÷[\âb;l}5Ï˜v?$\Ú\í\ï“\ÑBL—ŽŸu\å\Ê„\â\Ð8<2º|:\á7”hÑŸY.b¸VX\r8K3mÓŠþ\ÔmO\\•®\r?T\éP4”hx#£§~[‰vtÛ§J\ï|k\âî· \Ä\×P»“–L\ï\×\ê@w\Ö\Ô\Åh‡*]2\ZK\Ú,\à\'B\ì§	\Ü\\¢\Ü|Ä¡\Ñ%\Ó	¿§D;óU:l}\î\êV\é·\ç\ëfDo0\Z¤…\í\Ì¬ªtBg´3ML\rFŠ›œa@Ç¨\Ò\ÇY3šºm%\Ú\ìYX\í\ë‡„Žœ¶g×—¢{\ÑÉ¼…\Úas‰\î\rf´\Åk\Ð-Ý¯…F\â?3±õ£\á\r\Ël£%\Ú=XSbTiÍ[\ÏN{#/#\Ãp‚&\\F·‡\Í\Î1s‹\É\ÏÁ¸\\pù\ê\ë´3?˜™€ŽtU\ÚNLKŒÁhÒªy9‡\æ\Ç\È\É\å\Æ`\ä43˜=\Ú\ÎÉ¦É²0˜ö˜­\ÌLR\ë_V•\è.7ž\Þ`tGm;KÐ [\îÚ¤õž\Ø\Ò\è–h,w¼\ÚU$Ýƒµ(\ÒU\é\îxº·³“6\Ò&è¨¸Ö‘„Ž™\ça\æ‚þªMÿ¾ùL–\è\ÑÁ¸3?e@c3ý\ß\Ì\ï:\ë¡÷Â»Ü’n1M¸Œv3ej¾Œ&\È0ºI­ms‰–ý\ã	{¹\Ã=.k4¤\Þ\Ûújž:¦®D÷ŽÚ¿6½D}‡æ¶Œò\Þ{W„‘Ð£-Y\Ìý×µÁ1,\Ñ3´g·!»™sžƒ\ÕUoL\Íh;\Ó$¦SŸº«ô\â“\å*újaKô¼ßm\Öf\Þ\è\Ñfx\æ‚vó¿Ð±ªD;ÚŸvV\n\Ö\ÑØª\Ö*\íùd\éI_-e‰žag†±mƒg.h·¨%\Ú\Ñg\Ñ\Î›y\Ó\Ê<V\í\Èh\ìP_•ö|²ô¤¯f\ê}+f+‘\Ñx\æ‚vKP¢}.\í,™\Í%\Ú\Ñ\çþ™ƒU-2ºF. •\éÅ•&7\ì\\<Ÿ,=\é«%+\Ñ?\Äô\ïo‘w†±›g.h·µ\ï[Ñ—u\'\ä¶sRŸ\ëS¥\Ã^\î8 %\ÚYŒf‹Œ®N\ï*Çž¤öŒ\é°\Üh\ÓÓv\ç­8m•^”k†±	•g.h·=oþÝ‹;3cœœT\é!MˆÏ…Ž %Ú¡JWŠŒ®\Ëü·\n7$µö?B•\Ö\Ý\Í\Ì[)ü.Gú\ÆVdt>ž¹ \Ýv–\è\ÝiðS”*Ý¥©H\\¢ªt\È\èŠø¿\Þ\Îó\éÁÑžuW\éU³aœÿ¼¥œa\ì@Fg\â™\Ú-l‰\Þ\ãË‡mU\Ú\Ñ$d)Ñ¨]‹H%\Ú\Ñþ\Ý*\æ\'\Ê\ëN„þ†\Ù0\Î\Þ\Ò\Ì0ö!£sð\Ì\íf§D÷Œ\Æ4UZŸ Î—\Ëõ§j_²h\nž\ÑQKtKŸûñ\ã\ÏýAóñ\Õ\í°Iw\ZOð5¯\Ñ\Z\É\èUó{0X\ëÅ›\Ë}sP\È\è\ä<SR»ù—\è\\-½˜ž\Ñe\Ñ-ftš\í ÷,	D\Ò\Éh®u”/M@‹>wøN¶\ÞE#_\îð	\èdt°<„ÿžÈŒN\Ë3%µ›\Í+\ÑS1æ»ˆ\àJ4V\"£—¬D/jcú˜UZ\Ù\ÈUŽ–\î\Ëó@ø\ï‰\ä\È\è„<SR»ÿVa@ºÇ©Ÿ\ÝC›B#£Áó\éa?\ÓG«\Òz°\ÖJ´£{ô<þ{\"-2:Ï”\Ôn–K´£ûù1˜´i 2ú\0<Ÿúòt}\å\ÐAz™\æKÓ›ñ[…º_\Ï\á¿\'\"£“ðLI\íf¿D;º÷ÙŸ(þ¼¹q\ÎnÀVdt\í<Ÿbðÿq\Æ\å\Ò\\,ÑŸ\ZxBõ<þ{\"2\Ú¥”hGc˜­\Ò\0ö#£\ãSø\æŠÔŒw\r\'{‰v4ªt™\ÈhŠ+ÑŽF2_¥\ë¾Ü¡‡¶x¡Ø‡ŒŽL§q®H\Íx\×pŒ”hG#ñ|¾ô\ßñ‘\Ñ\è|(±D;\Z\Ï1«´\Ô|‰6\Ð(“N\ã\\giÆ»\îþŒi\ä¢%\áù|\é¿\'\"#£sÓ™Pn‰v4*Uieñ\è&õ½5\\‡$\È\èht\Z\ç:K3\Þ5Œ\Ó\Âð|¾ô\ß1‘\ÑY\é(½D;\Z[÷—\Ò\ÕT¥õ@(\ÑH…ŒŽC§q®³4\×]/\Æ4ŒÐ‘ò|¾ô\ßÑ\Ñùhõ\×Q¢=\ä–R¢A\Ø&»* \Ã\ÞõZº\ëê«´f¸‚÷­\èHy>_ú\ï‰8\È\èL´\î=Kô¼=77,\Ð`6‡\ÐBg´µ“-½™&»a<ñJt¤\É\Ñ\0fªô\è\å7+Gc˜†Ÿ¥DÇ˜©\á±\Õ\Û\ÓÂ‘\ê25žƒ¡G\ç Ÿ·Dk%=»4·ój×´…ñh{†q­)²\ÓUš\Ñ\î\Èùø)|§\Î\Ò\r“¼D·cˆ\Zˆ\Z†•v±u<kMGÃž)\ÑQZ\ã‰qZiÀ\Ýc1\Ã\Ï#kÏ¯ «\Þg¾\ÐZ\ÏX¢5¦%Šôœ±™µ\Ó<\è)!£\n\ß\Å&\å?9‘J´»{Ak0k¯J§\ç*\ÑN‹a†\íy,ü÷L&ÁJ6 hF\ÛLg#£r\Ã\Ð*·ðr›G\n‹\ìDR¤\çŒU¬-c7žÐ£ª÷ZG\â\ã§ð\rØ¤\â•hMKš™Ñ*«\ÒS\Ò|«°…acQƒ÷<\Ã=3tO\âó=¡\Ðmm¦L\çG_\å,\Ñ\ÉÒ¹>\n¦\ì\ï[1u\ì\ÍF\Òù\0SoNÉ§\Éú‹ñš\è,KY«þm‡)_o\ï \ê!¬ªÒ½‘\Øi\Ó5ª:£M=\Çjeó\ÆÂ®R.whv\Þüm!¦;\'—©\Ó<zônZ\Ù›T¼7f¡\áU\\¥³¼i\ÅER\Æêª‡\ìÒœ˜N‚ŒNBkš=d¿Jkx÷ON\ïý¥ù«‘\"©\r_µwX\È\è}´¦6©\ÊJ´£AVP¥‡1¥D·ò†£x›\æn$\\’Ž†ŒŽO«ù\à%z&¦z^7¦ót<\ÝðõG›Ž‰Œ\Þ!l“­²DM“|ÿø±v\Ñ#£^š\ÓÑÑ‘is%ZtJWP¥ZK´\Ó_\äFFo¥uðD¥D[£I\î•h‡*\Ý\"Í“ £c\Ò\n¦D·tJWP¥_~[ÿ$\ák	½‰VpÀ•m&y´D‡gL“\æñ‘\Ñ\Ñh\íR¢{tJý:¼#”hCF¯¶\ÉR¢;—;4Œƒ—hG+\Í\çˆxî†­X‹qh\ÕR¢G\é”.´JS¢‘½’\Â7\à‰J‰n}xº>«\Ñ\ÈL\Ñzó9\"ž»a2:­WJô\Òf«´Ž\Ý\è…J42!£\×\Ð	ðD¥D·T¢ª´5Zu>G\Äs7¬GF‡¦•J‰^¤S\Ú`•Ö±£D\Ã2Ú›N\à€\'*%z\nU\Ú\Z­=Ÿ#\â¹V\"£ƒ\Ò\Z¥D{\Ò)\íªt{¡#/;J4\ì!£ý\èx¢R¢\çQ¥­\Ñ\nô9\"ž»a\r2:­NJô*:¥\\•Ö±£D\Ã$2ÚƒN\à€\'*%ºKNbÝ¥©ð\éÈž»Áˆ\Ö%%: .w\07dô’°M–=¤Ç˜·Jkž‡:(\ÑCšŸ\'N\Ï\Ý\à‡ŒA+’U\Z £(#–)Jô=\Ò\\UZó|ÿ\ä“Ó³\æ¯%zŠ¦\Å\ç‰\Ós7x £w\ÓZ¤DG’°J÷c\Z°Œž¦tX¦(\Ñóôx\ÓWi\Ís\çJtÓ”\èyšŸ\'N\ÏÝ°„Œ\ÞG«UÚ«Ò´iXCFOP.,S”hz\Ô)«´\æyðrŽ\×/¿:\èä¯¢)òy\âô\Ü\r³\È\è´þ(\Ñ	¤­Ò€)dô%BÀ2E‰ö§ÇžþªôJô\nš(­\Õ\ÅMÜŸØŠŒ\ÞJ+].¾‡\\ƒ\Þ\È=Ÿ\é\ÏÅ˜ÞŒ\ÐzÒª\n…½–f`X¥\ã_\î D\Ã&2z\å%º\\:|_pøBÐ³š\Ïs§\çnCF?¦•°LQ¢·\Ñ<Ä®\Ò\ïý¥¹qC‰†YdôzJ\nŸ½* ‘Œ%: -rŸ\çN\Ï\Ý0@Fwh\r\åJÕŒwm“f#\ÕUiJ4,#£WRFP¢\Ó\é\àx\ç÷~š@Ÿ\çN\Ï\ÝðX\èŒ~{nnX°j0Q›¬\É\Ôx¢\ÞõSGJ<Ç³³J\ës}.t:9i093\"&hF»ñÙ™²g—ÀC\Ò¾¡D·c\ÐxŒ05™\Z¦1F•n¿a8U¢Û•OšFŸ\çN\Ï\ÝüY;­\"šÑ¦N{\ÇódÓº=W\Èx\×F$;\Í4\Õþ\ß-4\Óf\ÈÎ„ô„X\í×£\ÛùZœ¸Å§wí°¹DkY§‰!\ZRAƒ\Ñdöªt¨\ï.^‰6F¥\Ðdú\Ï\Ý|˜ZÉ­\ÐC\n\ÑÖ¦L\ãñ’Ö[:¡VOk~\0º»ù˜¨[\ÊsLS½\á%w\Zž‘˜¶3±3\r\ÃÎ´\Ä¡G\';\ëüiH>«j&©õ/¥¿œ\Ã=|ýi\ä\0ùDS\Z¼Jû¿œ\Ãg\åÀq§\Ï\"\Ï\Ýftˆ‘õ\ìDL\í\×:ºüÁ­¡\Ëh‘¾¾gL„b\'k?Uhªõ0Õ\ßa\è\ÅHL·\Ã05˜žýù»J\ÊU´(\Î`Ž”Ñ«t“Z[%\Ú\É{†\ëÞµ­]ÍšØUú\Ã\æ\ãÕ†\×DOER2n\ÞÜ\n¸“k\'S\r=K+)R\ìjFúÊ‹2®l—\Î\Ç8µ38i\Z\Ò\èFü]t˜UDF/©¬Dg\\\Ù. 7\Óôn«\ÒÚ§½\Ð!›\ßX8IY\Ø‰³a<{¢ü0-dtZšY½Ü€v†1XÞ˜6LnB†s²\'ñ=K\ë¬ô\ÝJ†·§n€µX¥õ_»%ú\Ó\ÝGŠ˜nõ\ÒyÃ´\å\È\è\ä´(Sº;sª	hMÝ†*\Ýý†\á~Ä´3?ò72zšV˜g‰6.\ãY1\Ë$x‰nµ1ñ\æ[gÿ\Ò\"Ê—\Ñû¸«nù,5\í*&<e	\è^|„MM`÷y\Ñó;‡ÁeŒ\éŒOºózSAþ†@FO\Ð\Úò)Ñ­UI]·afYÈ”€%Zô\ÓGs—˜\Þ?¢|½\äo­gø­\Âù¤\Ö?Œ‰R\ÄHM\ãb•Ö¿t/t„\Õ{PYòºˆ˜v§v £\ÇhU¹\Ý\Ë\åÑ¤šO\êºu\ÓJ§®‘	[¢1mG;\Û\æ(ŸFFO›Šc—\Ô\Ã\Ý\ÓKjý<&¬\étTšÌ™*­\ÛñJt\Ë\È3S³\á\ÎlEFh=\é„÷\é\Ë>Ú¤& sù,\æ\äw\éÁ«ôŸ˜ö\Ù\ç\È\è1‹ý»•§}õÝ•, 5«£U\Ú=\Ë&CL·\ÜTð\\ý˜N\ïŸ)OCiO\Ë\Ä\rº\ÓCQKtKº}\à\Äô(ªô&dôzkKtõ\\*us*W¥S–\è®\ì\ß\æ!(2ºÃ§DÐ£2ž–:SU:M‰\îróÀÿ\ìò©\É>û½\äË‡\r£”G¦z“+\ÑOo·³ ¦ý`´Dw£Y·)\ÑCz´J§/\Ñ-SOZ¦P¥\×#£\'Ð±‡bš*\È\è›^‰M\ç?S¢\r\ëU\éŒ%ºE›E•^‰Œ >0ƒŒ\î”\è™\ë”hû\Ú*­?9X–Q¥\× £PŸ\Øs¾\\®W\Í\Î/Z=\\‰ž\è\ß\ßvO\à\è¼;j.]\î›NF¿9}¼õÿ ù8b\æ\èM½tw\êSBýt\'Ë¾n>v\Ò*û,uŽR\ÑG¿Ö±9 •\ÎS­¨J[¥óh@\Ï|\Ê\Z‰ýKó±\0\n\è\Ãÿ/,×£WšIgY›\Î2õ)\Îü­Cð\Ü\Ì\";pF¯*\Ñ.š\ç\Óy& G\Í|J\×b\Z‰©J—Ò¦_¥\éÑ³£Y\æ\Óy[}\î©8¦\í—hg~\rª ¤>°£fôb‰öŒ\æm\é¼!s7|\n\à\Ã~R»JÓ£s\Ñ<“\Î.a§\ÓEóT:Ëž¨­/¦K)\Ñ\Îüsv\é\è\ÔVòµw‡ÿN1P¤#e¯\0«x}4\0Œ\0»\Èh\0°‹Œ\0»\Èh\0°«öŒ~{n6\0(P\èŒ6ˆÝ‘X˜™Sƒ&g“3¤a´›q4£\íL–ó\ìò\î÷~vo\çbê—š\ZŒ093˜œ®^Z;X¡c0hFk²¬Í—\Ø€m\Ü\Ýn¦DR„\ë\Ñ\Öf\r\0ˆ}µ\Ï\0JFF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]d4\0\ØEF€]¡3úí¹¹a©Á“3ƒÉ™Á\äL\Ñ`jŸœ\Ðý\ì\ÒÜ°À\Ô`„É™Á\ä\Ì`r¦h0µO\×:\0À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À.2\Z\0\ì\"£À®ó\årýE¶\ç—o\Ü\ß\0\Ù]\î\ïÜ&£\0q­\0\ì\"£Àª\Ó\éÿ\'¢‡ñ·h2\é\0\0\0\0IEND®B`‚',NULL,'');
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
