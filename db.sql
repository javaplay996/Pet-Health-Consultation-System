/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - cwjiankangzixun
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cwjiankangzixun` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cwjiankangzixun`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1111','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-31 16:04:42'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-31 16:04:42'),(3,'guwen_yuyue_yesno_types','申请状态',1,'待审核',NULL,NULL,'2023-03-31 16:04:42'),(4,'guwen_yuyue_yesno_types','申请状态',2,'同意',NULL,NULL,'2023-03-31 16:04:42'),(5,'guwen_yuyue_yesno_types','申请状态',3,'拒绝',NULL,NULL,'2023-03-31 16:04:42'),(6,'guwen_chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-31 16:04:42'),(7,'guwen_chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-31 16:04:42'),(8,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-31 16:04:42'),(9,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-31 16:04:42'),(10,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-31 16:04:42'),(11,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-31 16:04:42'),(12,'jiankangzhishi_types','健康知识类型',1,'健康知识类型1',NULL,NULL,'2023-03-31 16:04:42'),(13,'jiankangzhishi_types','健康知识类型',2,'健康知识类型2',NULL,NULL,'2023-03-31 16:04:42'),(14,'jiankangzhishi_types','健康知识类型',3,'健康知识类型3',NULL,NULL,'2023-03-31 16:04:42'),(15,'jiankangzhishi_types','健康知识类型',4,'健康知识类型4',NULL,NULL,'2023-03-31 16:04:42'),(16,'jiankangzhishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-31 16:04:43'),(17,'jiankangzhishi_collection_types','收藏表类型',2,'赞',NULL,NULL,'2023-03-31 16:04:43'),(18,'jiankangzhishi_collection_types','收藏表类型',3,'踩',NULL,NULL,'2023-03-31 16:04:43'),(19,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-31 16:04:43'),(20,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-31 16:04:43'),(21,'jiankangzhishi_types','健康知识类型',5,'健康知识类型5',NULL,'','2023-03-31 16:19:58');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-03-31 16:04:47','公告详情1','2023-03-31 16:04:47'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-31 16:04:47','公告详情2','2023-03-31 16:04:47'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-03-31 16:04:47','公告详情3','2023-03-31 16:04:47'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-03-31 16:04:47','公告详情4','2023-03-31 16:04:47'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-03-31 16:04:47','公告详情5','2023-03-31 16:04:47'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-31 16:04:47','公告详情6','2023-03-31 16:04:47'),(7,'公告名称7','upload/gonggao7.jpg',1,'2023-03-31 16:04:47','公告详情7','2023-03-31 16:04:47'),(8,'公告名称8','upload/gonggao8.jpg',2,'2023-03-31 16:04:47','公告详情8','2023-03-31 16:04:47'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-03-31 16:04:47','公告详情9','2023-03-31 16:04:47'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-03-31 16:04:47','公告详情10','2023-03-31 16:04:47'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-31 16:04:47','公告详情11','2023-03-31 16:04:47'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-31 16:04:47','公告详情12','2023-03-31 16:04:47'),(13,'公告名称13','upload/gonggao13.jpg',1,'2023-03-31 16:04:47','公告详情13','2023-03-31 16:04:47'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-31 16:04:47','<p>公告详情14第三个十多个是多个</p>','2023-03-31 16:04:47');

/*Table structure for table `guwen` */

DROP TABLE IF EXISTS `guwen`;

CREATE TABLE `guwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `guwen_name` varchar(200) DEFAULT NULL COMMENT '顾问姓名 Search111 ',
  `guwen_phone` varchar(200) DEFAULT NULL COMMENT '顾问手机号',
  `guwen_id_number` varchar(200) DEFAULT NULL COMMENT '顾问身份证号',
  `guwen_photo` varchar(200) DEFAULT NULL COMMENT '顾问头像',
  `guwen_shanchang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `guwen_email` varchar(200) DEFAULT NULL COMMENT '顾问邮箱',
  `guwen_content` longtext COMMENT '顾问介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='顾问';

/*Data for the table `guwen` */

insert  into `guwen`(`id`,`username`,`password`,`guwen_name`,`guwen_phone`,`guwen_id_number`,`guwen_photo`,`guwen_shanchang`,`sex_types`,`guwen_email`,`guwen_content`,`create_time`) values (1,'a1','123456','顾问姓名1','17703786901','410224199010102001','upload/guwen1.jpg','擅长1',2,'1@qq.com','<p>顾问介绍1哼哼唧唧</p>','2023-03-31 16:04:47'),(2,'a2','123456','顾问姓名2','17703786902','410224199010102002','upload/guwen2.jpg','擅长2',1,'2@qq.com','顾问介绍2','2023-03-31 16:04:47'),(3,'a3','123456','顾问姓名3','17703786903','410224199010102003','upload/guwen3.jpg','擅长3',1,'3@qq.com','顾问介绍3','2023-03-31 16:04:47');

/*Table structure for table `guwen_chat` */

DROP TABLE IF EXISTS `guwen_chat`;

CREATE TABLE `guwen_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `guwen_id` int(11) DEFAULT NULL COMMENT '回答人',
  `guwen_chat_issue_text` longtext COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `guwen_chat_reply_text` longtext COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `guwen_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

/*Data for the table `guwen_chat` */

insert  into `guwen_chat`(`id`,`yonghu_id`,`guwen_id`,`guwen_chat_issue_text`,`issue_time`,`guwen_chat_reply_text`,`reply_time`,`zhuangtai_types`,`guwen_chat_types`,`insert_time`,`create_time`) values (1,2,2,'问题1','2023-03-31 16:04:47','回复1','2023-03-31 16:04:47',1,2,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(2,1,1,'问题2','2023-03-31 16:04:47','回复2','2023-03-31 16:04:47',1,2,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(3,3,3,'问题3','2023-03-31 16:04:47','回复3','2023-03-31 16:04:47',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(4,1,1,'问题4','2023-03-31 16:04:47','回复4','2023-03-31 16:04:47',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(5,3,2,'问题5','2023-03-31 16:04:47','回复5','2023-03-31 16:04:47',2,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(6,3,1,'问题6','2023-03-31 16:04:47','回复6','2023-03-31 16:04:47',1,2,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(7,3,2,'问题7','2023-03-31 16:04:47','回复7','2023-03-31 16:04:47',2,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(8,3,1,'问题8','2023-03-31 16:04:47','回复8','2023-03-31 16:04:47',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(9,3,3,'问题9','2023-03-31 16:04:47','回复9','2023-03-31 16:04:47',2,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(10,1,3,'问题10','2023-03-31 16:04:47','回复10','2023-03-31 16:04:47',2,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(11,2,1,'问题11','2023-03-31 16:04:47','回复11','2023-03-31 16:04:47',1,2,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(12,3,3,'问题12','2023-03-31 16:04:47','回复12','2023-03-31 16:04:47',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(13,3,3,'问题13','2023-03-31 16:04:47','回复13','2023-03-31 16:04:47',2,2,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(14,2,3,'问题14','2023-03-31 16:04:47','回复14','2023-03-31 16:04:47',2,2,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(15,1,2,'很好','2023-03-31 16:11:12',NULL,NULL,2,1,'2023-03-31 16:11:13','2023-03-31 16:11:13'),(16,1,2,NULL,NULL,'会很好看','2023-03-31 16:11:29',NULL,2,'2023-03-31 16:11:29','2023-03-31 16:11:29'),(17,4,1,'hhhh','2023-03-31 16:13:11',NULL,NULL,2,1,'2023-03-31 16:13:12','2023-03-31 16:13:12'),(18,4,1,NULL,NULL,'hfdhgfdsg 范德萨发生的','2023-03-31 16:13:26',NULL,2,'2023-03-31 16:13:26','2023-03-31 16:13:26'),(19,4,1,'啊啊啊的说法','2023-03-31 16:13:47',NULL,NULL,2,1,'2023-03-31 16:13:48','2023-03-31 16:13:48'),(20,4,1,'和哼哼唧唧','2023-03-31 16:13:49',NULL,NULL,2,1,'2023-03-31 16:13:50','2023-03-31 16:13:50'),(21,4,1,NULL,NULL,'快快快','2023-03-31 16:15:03',NULL,2,'2023-03-31 16:15:03','2023-03-31 16:15:03'),(22,4,1,NULL,NULL,'的粉红色','2023-03-31 16:15:09',NULL,2,'2023-03-31 16:15:09','2023-03-31 16:15:09');

/*Table structure for table `guwen_yuyue` */

DROP TABLE IF EXISTS `guwen_yuyue`;

CREATE TABLE `guwen_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guwen_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guwen_id` int(11) DEFAULT NULL COMMENT '顾问',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `guwen_yuyue_text` longtext COMMENT '预约缘由',
  `guwen_yuyue_time` date DEFAULT NULL COMMENT '预约日期',
  `guwen_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '申请状态 Search111 ',
  `guwen_yuyue_yesno_text` longtext COMMENT '审核回复',
  `guwen_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='顾问预约';

/*Data for the table `guwen_yuyue` */

insert  into `guwen_yuyue`(`id`,`guwen_yuyue_uuid_number`,`yonghu_id`,`guwen_id`,`insert_time`,`guwen_yuyue_text`,`guwen_yuyue_time`,`guwen_yuyue_yesno_types`,`guwen_yuyue_yesno_text`,`guwen_yuyue_shenhe_time`,`create_time`) values (1,'1680249887141',2,1,'2023-03-31 16:04:47','预约缘由1','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(2,'1680249887146',1,2,'2023-03-31 16:04:47','预约缘由2','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(3,'1680249887137',3,3,'2023-03-31 16:04:47','预约缘由3','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(4,'1680249887202',2,2,'2023-03-31 16:04:47','预约缘由4','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(5,'1680249887173',2,3,'2023-03-31 16:04:47','预约缘由5','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(6,'1680249887209',3,2,'2023-03-31 16:04:47','预约缘由6','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(7,'1680249887159',1,2,'2023-03-31 16:04:47','预约缘由7','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(8,'1680249887164',3,1,'2023-03-31 16:04:47','预约缘由8','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(9,'1680249887139',1,2,'2023-03-31 16:04:47','预约缘由9','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(10,'1680249887189',2,2,'2023-03-31 16:04:47','预约缘由10','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(11,'1680249887126',2,3,'2023-03-31 16:04:47','预约缘由11','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(12,'1680249887144',3,2,'2023-03-31 16:04:47','预约缘由12','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(13,'1680249887152',1,2,'2023-03-31 16:04:47','预约缘由13','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(14,'1680249887113',1,3,'2023-03-31 16:04:47','预约缘由14','2023-03-31',1,NULL,NULL,'2023-03-31 16:04:47'),(15,'1680250304120',1,2,'2023-03-31 16:11:44','更好地三国杀感受到','2023-04-01',1,NULL,NULL,'2023-03-31 16:11:44'),(16,'1680250435848',4,1,'2023-03-31 16:13:56','更大功夫当分公司的故事','2023-03-31',2,'来把 来某某位置沙发','2023-03-31 16:15:29','2023-03-31 16:13:56'),(17,'1680250448202',4,1,'2023-03-31 16:14:08','和京津冀军','2023-04-01',2,'广东省归属感是','2023-03-31 16:15:18','2023-03-31 16:14:08');

/*Table structure for table `jiankangzhishi` */

DROP TABLE IF EXISTS `jiankangzhishi`;

CREATE TABLE `jiankangzhishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guwen_id` int(11) DEFAULT NULL COMMENT '顾问',
  `jiankangzhishi_name` varchar(200) DEFAULT NULL COMMENT '健康知识名称  Search111 ',
  `jiankangzhishi_uuid_number` varchar(200) DEFAULT NULL COMMENT '健康知识编号',
  `jiankangzhishi_photo` varchar(200) DEFAULT NULL COMMENT '健康知识照片',
  `jiankangzhishi_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `jiankangzhishi_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `jiankangzhishi_types` int(11) DEFAULT NULL COMMENT '健康知识类型 Search111',
  `jiankangzhishi_clicknum` int(11) DEFAULT NULL COMMENT '健康知识热度',
  `jiankangzhishi_content` longtext COMMENT '健康知识内容',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `jiankangzhishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健康知识';

/*Data for the table `jiankangzhishi` */

insert  into `jiankangzhishi`(`id`,`guwen_id`,`jiankangzhishi_name`,`jiankangzhishi_uuid_number`,`jiankangzhishi_photo`,`jiankangzhishi_file`,`jiankangzhishi_video`,`zan_number`,`cai_number`,`jiankangzhishi_types`,`jiankangzhishi_clicknum`,`jiankangzhishi_content`,`shangxia_types`,`jiankangzhishi_delete`,`insert_time`,`create_time`) values (1,1,'健康知识名称1','1680249887130','upload/jiankangzhishi1.jpg','upload/file.rar','upload/video.mp4',227,188,1,15,'健康知识内容1',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(2,3,'健康知识名称2','1680249887178','upload/jiankangzhishi2.jpg','upload/file.rar','upload/video.mp4',59,207,4,350,'健康知识内容2',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(3,3,'健康知识名称3','1680249887160','upload/jiankangzhishi3.jpg','upload/file.rar','upload/video.mp4',228,100,3,500,'健康知识内容3',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(4,3,'健康知识名称4','1680249887213','upload/jiankangzhishi4.jpg','upload/file.rar','upload/video.mp4',174,285,4,135,'健康知识内容4',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(5,1,'健康知识名称5','1680249887199','upload/jiankangzhishi5.jpg','upload/file.rar','upload/video.mp4',317,257,3,38,'健康知识内容5',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(6,2,'健康知识名称6','1680249887141','upload/jiankangzhishi6.jpg','upload/file.rar','upload/video.mp4',233,474,3,185,'健康知识内容6',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(7,1,'健康知识名称7','1680249887130','upload/jiankangzhishi7.jpg','upload/file.rar','upload/video.mp4',431,112,2,400,'健康知识内容7',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(8,3,'健康知识名称8','1680249887189','upload/jiankangzhishi8.jpg','upload/file.rar','upload/video.mp4',301,348,1,97,'健康知识内容8',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(9,1,'健康知识名称9','1680249887129','upload/jiankangzhishi9.jpg','upload/file.rar','upload/video.mp4',237,100,3,501,'健康知识内容9',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(10,2,'健康知识名称10','1680249887178','upload/jiankangzhishi10.jpg','upload/file.rar','upload/video.mp4',138,415,1,450,'健康知识内容10',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(11,1,'健康知识名称11','1680249887137','upload/jiankangzhishi11.jpg','upload/file.rar','upload/video.mp4',468,288,1,199,'<p>健康知识内容11给大哥大纲</p>',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(12,1,'健康知识名称12','1680249887176','upload/jiankangzhishi12.jpg','upload/file.rar','upload/video.mp4',267,204,3,470,'<p>健康知识内容12高达杀手</p>',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(13,2,'健康知识名称13','1680249887182','upload/jiankangzhishi13.jpg','upload/file.rar','upload/video.mp4',17,63,2,171,'健康知识内容13',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(14,3,'健康知识名称14','1680249887195','upload/jiankangzhishi14.jpg','upload/file.rar','upload/video.mp4',33,480,2,311,'健康知识内容14',1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47');

/*Table structure for table `jiankangzhishi_collection` */

DROP TABLE IF EXISTS `jiankangzhishi_collection`;

CREATE TABLE `jiankangzhishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiankangzhishi_id` int(11) DEFAULT NULL COMMENT '健康知识',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiankangzhishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='健康知识收藏';

/*Data for the table `jiankangzhishi_collection` */

insert  into `jiankangzhishi_collection`(`id`,`jiankangzhishi_id`,`yonghu_id`,`jiankangzhishi_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(2,2,1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(4,4,1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(5,5,1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(6,6,3,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(7,7,2,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(8,8,2,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(9,9,3,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(10,10,3,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(11,11,1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(12,12,2,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(13,13,1,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(14,14,2,1,'2023-03-31 16:04:47','2023-03-31 16:04:47'),(15,12,4,1,'2023-03-31 16:14:11','2023-03-31 16:14:11'),(16,12,4,2,'2023-03-31 16:14:14','2023-03-31 16:14:14'),(17,10,4,1,'2023-03-31 16:14:40','2023-03-31 16:14:40');

/*Table structure for table `jiankangzhishi_liuyan` */

DROP TABLE IF EXISTS `jiankangzhishi_liuyan`;

CREATE TABLE `jiankangzhishi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiankangzhishi_id` int(11) DEFAULT NULL COMMENT '健康知识',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiankangzhishi_liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='健康知识留言';

/*Data for the table `jiankangzhishi_liuyan` */

insert  into `jiankangzhishi_liuyan`(`id`,`jiankangzhishi_id`,`yonghu_id`,`jiankangzhishi_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2023-03-31 16:04:47','回复信息1','2023-03-31 16:04:47','2023-03-31 16:04:47'),(2,2,1,'留言内容2','2023-03-31 16:04:47','回复信息2','2023-03-31 16:04:47','2023-03-31 16:04:47'),(3,3,2,'留言内容3','2023-03-31 16:04:47','回复信息3','2023-03-31 16:04:47','2023-03-31 16:04:47'),(4,4,3,'留言内容4','2023-03-31 16:04:47','回复信息4','2023-03-31 16:04:47','2023-03-31 16:04:47'),(5,5,2,'留言内容5','2023-03-31 16:04:47','回复信息5','2023-03-31 16:04:47','2023-03-31 16:04:47'),(6,6,1,'留言内容6','2023-03-31 16:04:47','回复信息6','2023-03-31 16:04:47','2023-03-31 16:04:47'),(7,7,2,'留言内容7','2023-03-31 16:04:47','回复信息7','2023-03-31 16:04:47','2023-03-31 16:04:47'),(8,8,1,'留言内容8','2023-03-31 16:04:47','回复信息8','2023-03-31 16:04:47','2023-03-31 16:04:47'),(9,9,1,'留言内容9','2023-03-31 16:04:47','回复信息9','2023-03-31 16:04:47','2023-03-31 16:04:47'),(10,10,3,'留言内容10','2023-03-31 16:04:47','回复信息10','2023-03-31 16:04:47','2023-03-31 16:04:47'),(11,11,1,'留言内容11','2023-03-31 16:04:47','回复信息11','2023-03-31 16:04:47','2023-03-31 16:04:47'),(12,12,1,'留言内容12','2023-03-31 16:04:47','回复信息12','2023-03-31 16:04:47','2023-03-31 16:04:47'),(13,13,1,'留言内容13','2023-03-31 16:04:47','回复信息13','2023-03-31 16:04:47','2023-03-31 16:04:47'),(14,14,2,'留言内容14','2023-03-31 16:04:47','回复信息14','2023-03-31 16:04:47','2023-03-31 16:04:47'),(15,3,1,'个搭嘎','2023-03-31 16:11:04',NULL,NULL,'2023-03-31 16:11:04'),(16,12,4,'和京津冀','2023-03-31 16:14:18','骨灰盒','2023-03-31 16:19:35','2023-03-31 16:14:18'),(17,10,4,'将基金奖金军军军军','2023-03-31 16:14:44',NULL,NULL,'2023-03-31 16:14:44');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','guwen','顾问','5b2nnyn33933hx93x6rtkfjr9tj3rkp3','2023-03-31 16:09:15','2023-03-31 17:14:50'),(2,1,'admin','users','管理员','eqevowbclqmumi3ecxkxp16qpj96763q','2023-03-31 16:09:41','2023-03-31 17:26:01'),(3,1,'a1','yonghu','用户','4xmvu44f3z6bf9ldmffrxt3j12tabbkw','2023-03-31 16:10:05','2023-03-31 17:10:06'),(4,2,'a2','guwen','顾问','ev53n6e5vzau7fn7exvhktsrpede1ko4','2023-03-31 16:11:21','2023-03-31 17:11:22'),(5,4,'a5','yonghu','用户','i2tlksrmh4xl4lrbuig4ubq7y06i2ame','2023-03-31 16:12:53','2023-03-31 17:13:36');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-31 16:04:42');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-03-31 16:04:47'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-03-31 16:04:47'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-03-31 16:04:47'),(4,'a5','123456','张5','17788889999','444555888899999999','upload/1680250467421.jpg',2,'5@qq.com','2023-03-31 16:12:48');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
