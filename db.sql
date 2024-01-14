/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm00wl9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm00wl9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm00wl9`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm00wl9/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm00wl9/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm00wl9/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `discussgonggaolan` */

DROP TABLE IF EXISTS `discussgonggaolan`;

CREATE TABLE `discussgonggaolan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615342309119 DEFAULT CHARSET=utf8 COMMENT='公告栏评论表';

/*Data for the table `discussgonggaolan` */

insert  into `discussgonggaolan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (71,'2021-03-10 09:33:40',1,1,'用户名1','评论内容1','回复内容1'),(72,'2021-03-10 09:33:40',2,2,'用户名2','评论内容2','回复内容2'),(73,'2021-03-10 09:33:40',3,3,'用户名3','评论内容3','回复内容3'),(74,'2021-03-10 09:33:40',4,4,'用户名4','评论内容4','回复内容4'),(75,'2021-03-10 09:33:40',5,5,'用户名5','评论内容5','回复内容5'),(76,'2021-03-10 09:33:40',6,6,'用户名6','评论内容6','回复内容6'),(1615342309118,'2021-03-10 10:11:48',61,1615342294271,'1','asdasdasd','');

/*Table structure for table `gonggaolan` */

DROP TABLE IF EXISTS `gonggaolan`;

CREATE TABLE `gonggaolan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `fengmiantupian` varchar(200) DEFAULT NULL COMMENT '封面图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='公告栏';

/*Data for the table `gonggaolan` */

insert  into `gonggaolan`(`id`,`addtime`,`gonggaobiaoti`,`fengmiantupian`,`neirong`,`faburiqi`,`faburen`) values (61,'2021-03-10 09:33:40','公告标题1','http://localhost:8080/ssm00wl9/upload/gonggaolan_fengmiantupian1.jpg','<h1>内容1</h1><p>sdasdas</p>','2021-03-10','发布人1'),(62,'2021-03-10 09:33:40','公告标题2','http://localhost:8080/ssm00wl9/upload/gonggaolan_fengmiantupian2.jpg','内容2','2021-03-10','发布人2'),(63,'2021-03-10 09:33:40','公告标题3','http://localhost:8080/ssm00wl9/upload/gonggaolan_fengmiantupian3.jpg','内容3','2021-03-10','发布人3'),(64,'2021-03-10 09:33:40','公告标题4','http://localhost:8080/ssm00wl9/upload/gonggaolan_fengmiantupian4.jpg','内容4','2021-03-10','发布人4'),(65,'2021-03-10 09:33:40','公告标题5','http://localhost:8080/ssm00wl9/upload/gonggaolan_fengmiantupian5.jpg','内容5','2021-03-10','发布人5'),(66,'2021-03-10 09:33:40','公告标题6','http://localhost:8080/ssm00wl9/upload/gonggaolan_fengmiantupian6.jpg','内容6','2021-03-10','发布人6');

/*Table structure for table `huizhidan` */

DROP TABLE IF EXISTS `huizhidan`;

CREATE TABLE `huizhidan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `zhenshixingming` varchar(200) DEFAULT NULL COMMENT '真实姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `huizhineirong` longtext COMMENT '回执内容',
  `huizhishijian` datetime DEFAULT NULL COMMENT '回执时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615342392964 DEFAULT CHARSET=utf8 COMMENT='回执单';

/*Data for the table `huizhidan` */

insert  into `huizhidan`(`id`,`addtime`,`yonghuzhanghao`,`zhenshixingming`,`xingbie`,`nianling`,`zhaopian`,`lianxidianhua`,`gonghao`,`huizhineirong`,`huizhishijian`,`userid`) values (41,'2021-03-10 09:33:40','用户账号1','真实姓名1','性别1','年龄1','http://localhost:8080/ssm00wl9/upload/huizhidan_zhaopian1.jpg','联系电话1','工号1','回执内容1','2021-03-10 09:33:40',1),(42,'2021-03-10 09:33:40','用户账号2','真实姓名2','性别2','年龄2','http://localhost:8080/ssm00wl9/upload/huizhidan_zhaopian2.jpg','联系电话2','工号2','回执内容2','2021-03-10 09:33:40',2),(43,'2021-03-10 09:33:40','用户账号3','真实姓名3','性别3','年龄3','http://localhost:8080/ssm00wl9/upload/huizhidan_zhaopian3.jpg','联系电话3','工号3','回执内容3','2021-03-10 09:33:40',3),(44,'2021-03-10 09:33:40','用户账号4','真实姓名4','性别4','年龄4','http://localhost:8080/ssm00wl9/upload/huizhidan_zhaopian4.jpg','联系电话4','工号4','回执内容4','2021-03-10 09:33:40',4),(45,'2021-03-10 09:33:40','用户账号5','真实姓名5','性别5','年龄5','http://localhost:8080/ssm00wl9/upload/huizhidan_zhaopian5.jpg','联系电话5','工号5','回执内容5','2021-03-10 09:33:40',5),(46,'2021-03-10 09:33:40','用户账号6','真实姓名6','性别6','年龄6','http://localhost:8080/ssm00wl9/upload/huizhidan_zhaopian6.jpg','联系电话6','工号6','回执内容6','2021-03-10 09:33:40',6),(1615342392963,'2021-03-10 10:13:12','1','xxx用户','男','22','http://localhost:8080/ssm00wl9/upload/1615342317606.png','13245678910','1','dasdasd','2021-03-10 10:13:05',21);

/*Table structure for table `jingfang` */

DROP TABLE IF EXISTS `jingfang`;

CREATE TABLE `jingfang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jingchaxingming` varchar(200) DEFAULT NULL COMMENT '警察姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='警方';

/*Data for the table `jingfang` */

insert  into `jingfang`(`id`,`addtime`,`gonghao`,`mima`,`jingchaxingming`,`xingbie`,`nianling`,`lianxidianhua`,`zhaopian`) values (21,'2021-03-10 09:33:40','1','1','警察姓名1','男',1,'联系电话1','http://localhost:8080/ssm00wl9/upload/jingfang_zhaopian1.jpg'),(22,'2021-03-10 09:33:40','警方2','123456','警察姓名2','男',2,'联系电话2','http://localhost:8080/ssm00wl9/upload/jingfang_zhaopian2.jpg'),(23,'2021-03-10 09:33:40','警方3','123456','警察姓名3','男',3,'联系电话3','http://localhost:8080/ssm00wl9/upload/jingfang_zhaopian3.jpg'),(24,'2021-03-10 09:33:40','警方4','123456','警察姓名4','男',4,'联系电话4','http://localhost:8080/ssm00wl9/upload/jingfang_zhaopian4.jpg'),(25,'2021-03-10 09:33:40','警方5','123456','警察姓名5','男',5,'联系电话5','http://localhost:8080/ssm00wl9/upload/jingfang_zhaopian5.jpg'),(26,'2021-03-10 09:33:40','警方6','123456','警察姓名6','男',6,'联系电话6','http://localhost:8080/ssm00wl9/upload/jingfang_zhaopian6.jpg');

/*Table structure for table `juzhuzhengdengji` */

DROP TABLE IF EXISTS `juzhuzhengdengji`;

CREATE TABLE `juzhuzhengdengji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenbaobianhao` varchar(200) DEFAULT NULL COMMENT '申报编号',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `zhenshixingming` varchar(200) DEFAULT NULL COMMENT '真实姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `chushengriqi` date DEFAULT NULL COMMENT '出生日期',
  `minzu` varchar(200) DEFAULT NULL COMMENT '民族',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `suozaihuji` varchar(200) DEFAULT NULL COMMENT '所在户籍',
  `zhengzhimianmao` varchar(200) DEFAULT NULL COMMENT '政治面貌',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `huzhu` varchar(200) DEFAULT NULL COMMENT '户主',
  `yuhuzhuguanxi` varchar(200) DEFAULT NULL COMMENT '与户主关系',
  `shenbaoshijian` datetime DEFAULT NULL COMMENT '申报时间',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenbaobianhao` (`shenbaobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615342354743 DEFAULT CHARSET=utf8 COMMENT='居住证登记';

/*Data for the table `juzhuzhengdengji` */

insert  into `juzhuzhengdengji`(`id`,`addtime`,`shenbaobianhao`,`yonghuzhanghao`,`zhenshixingming`,`xingbie`,`nianling`,`chushengriqi`,`minzu`,`shenfenzheng`,`zhaopian`,`suozaihuji`,`zhengzhimianmao`,`lianxidianhua`,`huzhu`,`yuhuzhuguanxi`,`shenbaoshijian`,`sfsh`,`shhf`,`userid`) values (31,'2021-03-10 09:33:40','申报编号1','用户账号1','真实姓名1','性别1',1,'2021-03-10','民族1','440300199101010001','http://localhost:8080/ssm00wl9/upload/juzhuzhengdengji_zhaopian1.jpg','所在户籍1','政治面貌1','13823888881','否','与户主关系1','2021-03-10 09:33:40','是','',1),(32,'2021-03-10 09:33:40','申报编号2','用户账号2','真实姓名2','性别2',2,'2021-03-10','民族2','440300199202020002','http://localhost:8080/ssm00wl9/upload/juzhuzhengdengji_zhaopian2.jpg','所在户籍2','政治面貌2','13823888882','否','与户主关系2','2021-03-10 09:33:40','是','',2),(33,'2021-03-10 09:33:40','申报编号3','用户账号3','真实姓名3','性别3',3,'2021-03-10','民族3','440300199303030003','http://localhost:8080/ssm00wl9/upload/juzhuzhengdengji_zhaopian3.jpg','所在户籍3','政治面貌3','13823888883','否','与户主关系3','2021-03-10 09:33:40','是','',3),(34,'2021-03-10 09:33:40','申报编号4','用户账号4','真实姓名4','性别4',4,'2021-03-10','民族4','440300199404040004','http://localhost:8080/ssm00wl9/upload/juzhuzhengdengji_zhaopian4.jpg','所在户籍4','政治面貌4','13823888884','否','与户主关系4','2021-03-10 09:33:40','是','',4),(35,'2021-03-10 09:33:40','申报编号5','用户账号5','真实姓名5','性别5',5,'2021-03-10','民族5','440300199505050005','http://localhost:8080/ssm00wl9/upload/juzhuzhengdengji_zhaopian5.jpg','所在户籍5','政治面貌5','13823888885','否','与户主关系5','2021-03-10 09:33:40','是','',5),(36,'2021-03-10 09:33:40','申报编号6','用户账号6','真实姓名6','性别6',6,'2021-03-10','民族6','440300199606060006','http://localhost:8080/ssm00wl9/upload/juzhuzhengdengji_zhaopian6.jpg','所在户籍6','政治面貌6','13823888886','否','与户主关系6','2021-03-10 09:33:40','是','',6),(1615342354742,'2021-03-10 10:12:33','1615342317947','1','xxx用户','男',22,'2011-03-10','汉','441411111111111111','http://localhost:8080/ssm00wl9/upload/1615342317606.png','xxx','xx','13245678910','否','母子','2021-03-10 10:03:53','是','11111',1615342294271);

/*Table structure for table `lingzhengxinxi` */

DROP TABLE IF EXISTS `lingzhengxinxi`;

CREATE TABLE `lingzhengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `zhenshixingming` varchar(200) DEFAULT NULL COMMENT '真实姓名',
  `shenbaoshijian` varchar(200) DEFAULT NULL COMMENT '申报时间',
  `lingzhengshijian` datetime DEFAULT NULL COMMENT '领证时间',
  `lingzhengdidian` varchar(200) DEFAULT NULL COMMENT '领证地点',
  `shuoming` varchar(200) DEFAULT NULL COMMENT '说明',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `jingchaxingming` varchar(200) DEFAULT NULL COMMENT '警察姓名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615342410489 DEFAULT CHARSET=utf8 COMMENT='领证信息';

/*Data for the table `lingzhengxinxi` */

insert  into `lingzhengxinxi`(`id`,`addtime`,`yonghuzhanghao`,`zhenshixingming`,`shenbaoshijian`,`lingzhengshijian`,`lingzhengdidian`,`shuoming`,`gonghao`,`jingchaxingming`,`userid`) values (51,'2021-03-10 09:33:40','用户账号1','真实姓名1','申报时间1','2021-03-10 09:33:40','领证地点1','说明1','工号1','警察姓名1',1),(52,'2021-03-10 09:33:40','用户账号2','真实姓名2','申报时间2','2021-03-10 09:33:40','领证地点2','说明2','工号2','警察姓名2',2),(53,'2021-03-10 09:33:40','用户账号3','真实姓名3','申报时间3','2021-03-10 09:33:40','领证地点3','说明3','工号3','警察姓名3',3),(54,'2021-03-10 09:33:40','用户账号4','真实姓名4','申报时间4','2021-03-10 09:33:40','领证地点4','说明4','工号4','警察姓名4',4),(55,'2021-03-10 09:33:40','用户账号5','真实姓名5','申报时间5','2021-03-10 09:33:40','领证地点5','说明5','工号5','警察姓名5',5),(56,'2021-03-10 09:33:40','用户账号6','真实姓名6','申报时间6','2021-03-10 09:33:40','领证地点6','说明6','工号6','警察姓名6',6),(1615342410488,'2021-03-10 10:13:30','1','xxx用户','2021-03-10 10:03:53','2021-03-19 03:13:12','xxx公安局','领证','1','警察姓名1',21);

/*Table structure for table `qunzhongyonghu` */

DROP TABLE IF EXISTS `qunzhongyonghu`;

CREATE TABLE `qunzhongyonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `zhenshixingming` varchar(200) DEFAULT NULL COMMENT '真实姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615342294272 DEFAULT CHARSET=utf8 COMMENT='群众用户';

/*Data for the table `qunzhongyonghu` */

insert  into `qunzhongyonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`zhenshixingming`,`xingbie`,`nianling`,`zhaopian`) values (11,'2021-03-10 09:33:40','群众用户1','123456','真实姓名1','男',1,'http://localhost:8080/ssm00wl9/upload/qunzhongyonghu_zhaopian1.jpg'),(12,'2021-03-10 09:33:40','群众用户2','123456','真实姓名2','男',2,'http://localhost:8080/ssm00wl9/upload/qunzhongyonghu_zhaopian2.jpg'),(13,'2021-03-10 09:33:40','群众用户3','123456','真实姓名3','男',3,'http://localhost:8080/ssm00wl9/upload/qunzhongyonghu_zhaopian3.jpg'),(14,'2021-03-10 09:33:40','群众用户4','123456','真实姓名4','男',4,'http://localhost:8080/ssm00wl9/upload/qunzhongyonghu_zhaopian4.jpg'),(15,'2021-03-10 09:33:40','群众用户5','123456','真实姓名5','男',5,'http://localhost:8080/ssm00wl9/upload/qunzhongyonghu_zhaopian5.jpg'),(16,'2021-03-10 09:33:40','群众用户6','123456','真实姓名6','男',6,'http://localhost:8080/ssm00wl9/upload/qunzhongyonghu_zhaopian6.jpg'),(1615342294271,'2021-03-10 10:11:34','1','1','xxx用户','男',22,'http://localhost:8080/ssm00wl9/upload/1615342317606.png');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','m98lf9qh9rjowmhedqq3oax0bd0k3a56','2021-03-10 10:09:26','2021-03-10 11:09:27'),(2,1615342294271,'1','qunzhongyonghu','群众用户','b184w9ljsr4li18mtugnikbxer7nbay7','2021-03-10 10:11:39','2021-03-10 11:13:41'),(3,21,'1','jingfang','警方','ovmlyue0yxqsvy7utirxxs3jc0sbwmnk','2021-03-10 10:12:46','2021-03-10 11:12:47');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-10 09:33:40');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
