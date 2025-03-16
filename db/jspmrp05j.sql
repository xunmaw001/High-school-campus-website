-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmrp05j
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmrp05j/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmrp05j/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmrp05j/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615188827063 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1615188827062,'2021-03-08 07:33:46','心理问卷',90,0);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615188872543 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1615188847431,'2021-03-08 07:34:06',1615188827062,'心理问卷','111111','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'A','111',2,1),(1615188872542,'2021-03-08 07:34:31',1615188827062,'心理问卷','222','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'B','111',2,1);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615188998385 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1615188937983,'2021-03-08 07:35:36',11,NULL,1615188827062,'心理问卷',1615188847431,'111111','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'A','111',0,'B'),(1615188944651,'2021-03-08 07:35:43',11,NULL,1615188827062,'心理问卷',1615188872542,'222','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'B','111',1,'B'),(1615188996045,'2021-03-08 07:36:35',21,NULL,1615188827062,'心理问卷',1615188847431,'111111','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'A','111',1,'A'),(1615188998384,'2021-03-08 07:36:37',21,NULL,1615188827062,'心理问卷',1615188872542,'222','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',1,'B','111',0,'A');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615188700897 DEFAULT CHARSET=utf8 COMMENT='校园论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (61,'2021-03-08 07:27:48','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(62,'2021-03-08 07:27:48','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(63,'2021-03-08 07:27:48','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(64,'2021-03-08 07:27:48','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(65,'2021-03-08 07:27:48','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(66,'2021-03-08 07:27:48','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615188659644,'2021-03-08 07:30:59','11111','<img src=\"../../../upload/1615188627795.jpg\" _src=\"../../../upload/1615188627795.jpg\">\r\n\r\n\r\n11111111\r\n\r\n<img src=\"../../../upload/1615188637491.jpg\" _src=\"../../../upload/1615188637491.jpg\">\r\n\r\n1111122 222233 44 \r\n',0,21,'学生1','开放'),(1615188700896,'2021-03-08 07:31:40',NULL,'44444',1615188659644,21,'学生1',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615189102526 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (11,'2021-03-08 07:27:48','教师1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/jspmrp05j/upload/jiaoshi_zhaopian1.jpg'),(12,'2021-03-08 07:27:48','教师2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/jspmrp05j/upload/jiaoshi_zhaopian2.jpg'),(13,'2021-03-08 07:27:48','教师3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/jspmrp05j/upload/jiaoshi_zhaopian3.jpg'),(14,'2021-03-08 07:27:48','教师4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/jspmrp05j/upload/jiaoshi_zhaopian4.jpg'),(15,'2021-03-08 07:27:48','教师5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/jspmrp05j/upload/jiaoshi_zhaopian5.jpg'),(16,'2021-03-08 07:27:48','教师6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/jspmrp05j/upload/jiaoshi_zhaopian6.jpg'),(1615189102525,'2021-03-08 07:38:22','11','11','11','男','13800013800','11@qq.com','http://localhost:8080/jspmrp05j/upload/1615189086903.jpg');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mingshifengcai`
--

DROP TABLE IF EXISTS `mingshifengcai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mingshifengcai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615189344668 DEFAULT CHARSET=utf8 COMMENT='名师风采';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mingshifengcai`
--

LOCK TABLES `mingshifengcai` WRITE;
/*!40000 ALTER TABLE `mingshifengcai` DISABLE KEYS */;
INSERT INTO `mingshifengcai` VALUES (41,'2021-03-08 07:27:48','标题1','http://localhost:8080/jspmrp05j/upload/mingshifengcai_tupian1.jpg','内容1','2021-03-08 15:27:48','2021-03-08 15:32:31',4),(42,'2021-03-08 07:27:48','标题2','http://localhost:8080/jspmrp05j/upload/mingshifengcai_tupian2.jpg','内容2','2021-03-08 15:27:48','2021-03-08 15:27:48',2),(43,'2021-03-08 07:27:48','标题3','http://localhost:8080/jspmrp05j/upload/mingshifengcai_tupian3.jpg','内容3','2021-03-08 15:27:48','2021-03-08 15:27:48',3),(44,'2021-03-08 07:27:48','标题4','http://localhost:8080/jspmrp05j/upload/mingshifengcai_tupian4.jpg','内容4','2021-03-08 15:27:48','2021-03-08 15:27:48',4),(45,'2021-03-08 07:27:48','标题5','http://localhost:8080/jspmrp05j/upload/mingshifengcai_tupian5.jpg','内容5','2021-03-08 15:27:48','2021-03-08 15:27:48',5),(46,'2021-03-08 07:27:48','标题6','http://localhost:8080/jspmrp05j/upload/mingshifengcai_tupian6.jpg','内容6','2021-03-08 15:27:48','2021-03-08 15:27:48',6),(1615189344667,'2021-03-08 07:42:24','李老师','http://localhost:8080/jspmrp05j/upload/1615189321702.jpg','<img src=\"http://localhost:8080/jspmrp05j/upload/1615189363449.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmrp05j/upload/1615189363449.jpg\"><img src=\"http://localhost:8080/jspmrp05j/upload/1615189328860.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmrp05j/upload/1615189328860.jpg\">\r\n','2021-03-07 15:42:47','2021-03-08 15:42:37',4);
/*!40000 ALTER TABLE `mingshifengcai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615189467396 DEFAULT CHARSET=utf8 COMMENT='校园资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-08 07:27:48','标题1','简介1','http://localhost:8080/jspmrp05j/upload/news_picture1.jpg','内容1'),(102,'2021-03-08 07:27:48','标题2','简介2','http://localhost:8080/jspmrp05j/upload/news_picture2.jpg','内容2'),(103,'2021-03-08 07:27:48','标题3','简介3','http://localhost:8080/jspmrp05j/upload/news_picture3.jpg','内容3'),(104,'2021-03-08 07:27:48','标题4','简介4','http://localhost:8080/jspmrp05j/upload/news_picture4.jpg','内容4'),(105,'2021-03-08 07:27:48','标题5','简介5','http://localhost:8080/jspmrp05j/upload/news_picture5.jpg','内容5'),(106,'2021-03-08 07:27:48','标题6','简介6','http://localhost:8080/jspmrp05j/upload/news_picture6.jpg','内容6'),(1615189467395,'2021-03-08 07:44:27','11','11','http://localhost:8080/jspmrp05j/upload/1615189465626.jpg','11\r\n');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'学生1','xuesheng','学生','gwi43cy5sialezi8jz6ymo6vg77v5pp3','2021-03-08 07:28:25','2021-03-08 08:36:22'),(2,11,'教师1','jiaoshi','教师','fuouvslt22zyo9jc4w3ekc0cjsu5bhry','2021-03-08 07:33:07','2021-03-08 08:37:01'),(3,1,'abo','users','管理员','ptzo0jjsg0hg91hfk4ker17givxe63o5','2021-03-08 07:37:36','2021-03-08 08:37:37');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-08 07:27:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyuangaikuang`
--

DROP TABLE IF EXISTS `xiaoyuangaikuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyuangaikuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext NOT NULL COMMENT '内容',
  `fabushijian` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615189302243 DEFAULT CHARSET=utf8 COMMENT='校园概况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyuangaikuang`
--

LOCK TABLES `xiaoyuangaikuang` WRITE;
/*!40000 ALTER TABLE `xiaoyuangaikuang` DISABLE KEYS */;
INSERT INTO `xiaoyuangaikuang` VALUES (31,'2021-03-08 07:27:48','标题1','http://localhost:8080/jspmrp05j/upload/xiaoyuangaikuang_tupian1.jpg','内容1','2021-03-08 15:27:48'),(32,'2021-03-08 07:27:48','标题2','http://localhost:8080/jspmrp05j/upload/xiaoyuangaikuang_tupian2.jpg','内容2','2021-03-08 15:27:48'),(33,'2021-03-08 07:27:48','标题3','http://localhost:8080/jspmrp05j/upload/xiaoyuangaikuang_tupian3.jpg','内容3','2021-03-08 15:27:48'),(34,'2021-03-08 07:27:48','标题4','http://localhost:8080/jspmrp05j/upload/xiaoyuangaikuang_tupian4.jpg','内容4','2021-03-08 15:27:48'),(35,'2021-03-08 07:27:48','标题5','http://localhost:8080/jspmrp05j/upload/xiaoyuangaikuang_tupian5.jpg','内容5','2021-03-08 15:27:48'),(36,'2021-03-08 07:27:48','标题6','http://localhost:8080/jspmrp05j/upload/xiaoyuangaikuang_tupian6.jpg','内容6','2021-03-08 15:27:48'),(1615189302242,'2021-03-08 07:41:41','11','http://localhost:8080/jspmrp05j/upload/1615189286372.jpg','<img src=\"http://localhost:8080/jspmrp05j/upload/1615189295736.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmrp05j/upload/1615189295736.jpg\">1111\r\n','2021-03-08 15:41:16');
/*!40000 ALTER TABLE `xiaoyuangaikuang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyuangonggao`
--

DROP TABLE IF EXISTS `xiaoyuangonggao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyuangonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615189397062 DEFAULT CHARSET=utf8 COMMENT='校园公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyuangonggao`
--

LOCK TABLES `xiaoyuangonggao` WRITE;
/*!40000 ALTER TABLE `xiaoyuangonggao` DISABLE KEYS */;
INSERT INTO `xiaoyuangonggao` VALUES (51,'2021-03-08 07:27:48','公告标题1','公告类型1','http://localhost:8080/jspmrp05j/upload/xiaoyuangonggao_tupian1.jpg','内容1','2021-03-08',4),(52,'2021-03-08 07:27:48','公告标题2','公告类型2','http://localhost:8080/jspmrp05j/upload/xiaoyuangonggao_tupian2.jpg','内容2','2021-03-08',2),(53,'2021-03-08 07:27:48','公告标题3','公告类型3','http://localhost:8080/jspmrp05j/upload/xiaoyuangonggao_tupian3.jpg','内容3','2021-03-08',3),(54,'2021-03-08 07:27:48','公告标题4','公告类型4','http://localhost:8080/jspmrp05j/upload/xiaoyuangonggao_tupian4.jpg','内容4','2021-03-08',4),(55,'2021-03-08 07:27:48','公告标题5','公告类型5','http://localhost:8080/jspmrp05j/upload/xiaoyuangonggao_tupian5.jpg','内容5','2021-03-08',5),(56,'2021-03-08 07:27:48','公告标题6','公告类型6','http://localhost:8080/jspmrp05j/upload/xiaoyuangonggao_tupian6.jpg','内容6','2021-03-08',6),(1615189397061,'2021-03-08 07:43:16','33','33','http://localhost:8080/jspmrp05j/upload/1615189384391.jpg','333<img src=\"http://localhost:8080/jspmrp05j/upload/1615189394597.jpg\" width=\"900\" height=\"560\" _src=\"http://localhost:8080/jspmrp05j/upload/1615189394597.jpg\">\r\n','2021-03-08',0);
/*!40000 ALTER TABLE `xiaoyuangonggao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `nianji` varchar(200) DEFAULT NULL COMMENT '年级',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615189226690 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (21,'2021-03-08 07:27:48','学生1','学生姓名1','123456','年级1','班级1','女','020-89819991','773890001@qq.com','440300199101010001'),(22,'2021-03-08 07:27:48','学生2','学生姓名2','123456','年级2','班级2','男','020-89819992','773890002@qq.com','440300199202020002'),(23,'2021-03-08 07:27:48','学生3','学生姓名3','123456','年级3','班级3','男','020-89819993','773890003@qq.com','440300199303030003'),(24,'2021-03-08 07:27:48','学生4','学生姓名4','123456','年级4','班级4','男','020-89819994','773890004@qq.com','440300199404040004'),(25,'2021-03-08 07:27:48','学生5','学生姓名5','123456','年级5','班级5','男','020-89819995','773890005@qq.com','440300199505050005'),(26,'2021-03-08 07:27:48','学生6','学生姓名6','123456','年级6','班级6','男','020-89819996','773890006@qq.com','440300199606060006'),(1615189226689,'2021-03-08 07:40:26','22','22','22','22','22','男','050-8989898','11@qq.com','444444444444444444');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-09  9:45:15
