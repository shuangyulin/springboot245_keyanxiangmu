/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiangmuyanshou
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiangmuyanshou` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiangmuyanshou`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,NULL,'2021-11-15 16:21:55'),(2,'sex_types','性别类型名称',2,'女',NULL,NULL,'2021-11-15 16:21:55'),(3,'shangxia_types','是否使用',1,'使用',NULL,NULL,'2021-11-15 16:21:55'),(4,'shangxia_types','是否使用',2,'禁用',NULL,NULL,'2021-11-15 16:21:55'),(5,'xiangmu_types','项目类型名称',1,'项目类型1',NULL,NULL,'2021-11-15 16:21:55'),(6,'xiangmu_types','项目类型名称',2,'项目类型2',NULL,NULL,'2021-11-15 16:21:55'),(7,'xiangmu_types','项目类型名称',3,'项目类型3',NULL,NULL,'2021-11-15 16:21:55'),(8,'xiangmu_types','项目类型名称',4,'项目类型4',NULL,NULL,'2021-11-15 16:21:55'),(9,'xiangmu_yesno_types','项目管理员审核类型名称',1,'待审核',NULL,NULL,'2021-11-15 16:21:55'),(10,'xiangmu_yesno_types','项目管理员审核类型名称',2,'通过',NULL,NULL,'2021-11-15 16:21:56'),(11,'xiangmu_yesno_types','项目管理员审核类型名称',3,'不通过',NULL,NULL,'2021-11-15 16:21:56'),(12,'zhuanjia1_types','专家1审核类型名称',1,'待审核',NULL,NULL,'2021-11-15 16:21:56'),(13,'zhuanjia1_types','专家1审核类型名称',2,'通过',NULL,NULL,'2021-11-15 16:21:56'),(14,'zhuanjia1_types','专家1审核类型名称',3,'不通过',NULL,NULL,'2021-11-15 16:21:56'),(15,'zhuanjia2_types','专家2审核类型名称',1,'待审核',NULL,NULL,'2021-11-15 16:21:56'),(16,'zhuanjia2_types','专家2审核类型名称',2,'通过',NULL,NULL,'2021-11-15 16:21:56'),(17,'zhuanjia2_types','专家2审核类型名称',3,'不通过',NULL,NULL,'2021-11-15 16:21:56'),(18,'zhuanjia3_types','专家3审核类型名称',1,'待审核',NULL,NULL,'2021-11-15 16:21:56'),(19,'zhuanjia3_types','专家3审核类型名称',2,'通过',NULL,NULL,'2021-11-15 16:21:56'),(20,'zhuanjia3_types','专家3审核类型名称',3,'不通过',NULL,NULL,'2021-11-15 16:21:56'),(21,'gonggao_types','公告类型名称',1,'公告类型1',NULL,NULL,'2021-11-15 16:21:56'),(22,'gonggao_types','公告类型名称',2,'公告类型2',NULL,NULL,'2021-11-15 16:21:56'),(23,'zuizhong_types','最终审核结果类型名称',1,'正在审核',NULL,NULL,'2021-11-16 11:15:59'),(24,'zuizhong_types','最终审核结果类型名称',2,'通过',NULL,NULL,'2021-11-16 11:15:59'),(25,'zuizhong_types','最终审核结果类型名称',3,'不通过',NULL,NULL,'2021-11-16 11:15:59'),(27,'xiangmu_types','项目类型名称',5,'项目类型5',NULL,NULL,'2021-11-16 17:36:50');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/xiangmuyanshou/upload/1637042761518.jfif',1,'2021-11-15 16:21:56','<p>公告详情1111</p>','2021-11-15 16:21:56');

/*Table structure for table `shenherizhi` */

DROP TABLE IF EXISTS `shenherizhi`;

CREATE TABLE `shenherizhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shenherizhi_table` varchar(200) DEFAULT NULL COMMENT '审核人所属表',
  `shenherizhi_name` varchar(200) DEFAULT NULL COMMENT '审核人名字 Search111 ',
  `shenherizhi_phone` varchar(200) DEFAULT NULL COMMENT '审核人手机号 Search111 ',
  `shenherizhi_id_number` varchar(200) DEFAULT NULL COMMENT '审核人身份证号 Search111 ',
  `shenherizhi_jieguo` varchar(200) DEFAULT NULL COMMENT '审核结果 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='审核日志';

/*Data for the table `shenherizhi` */

insert  into `shenherizhi`(`id`,`shenherizhi_table`,`shenherizhi_name`,`shenherizhi_phone`,`shenherizhi_id_number`,`shenherizhi_jieguo`,`insert_time`,`create_time`) values (4,'项目管理员表','张22','17703786911','410224199610232011','审核通过','2021-11-16 17:08:34','2021-11-16 17:08:34'),(5,'项目管理员表','张22','17703786911','410224199610232011','审核通过','2021-11-16 17:15:36','2021-11-16 17:15:36'),(6,'项目管理员表','张222','17703786222','410224199610232222','审核通过','2021-11-16 17:16:44','2021-11-16 17:16:44'),(7,'项目管理员表','张222','17703786222','410224199610232222','审核通过','2021-11-16 17:20:32','2021-11-16 17:20:31'),(8,'项目管理员表','张222','17703786222','410224199610232222','审核通过','2021-11-16 17:23:14','2021-11-16 17:23:14'),(9,'项目管理员表','张222','17703786222','410224199610232222','审核通过','2021-11-16 17:24:37','2021-11-16 17:24:37'),(10,'项目管理员表','张222','17703786222','410224199610232222','审核通过','2021-11-16 17:24:42','2021-11-16 17:24:42'),(11,'项目管理员表','张222','17703786222','410224199610232222','审核通过','2021-11-16 17:26:37','2021-11-16 17:26:37'),(12,'项目管理员表','张111','17703786111','410224199610232111','审核通过','2021-11-16 17:29:17','2021-11-16 17:29:17'),(13,'项目管理员表','张333','17703786333','410224199610232333','审核通过','2021-11-16 17:29:53','2021-11-16 17:29:53'),(14,'项目管理员表','张333','17703786333','410224199610232333','审核不通过','2021-11-16 17:30:26','2021-11-16 17:30:26');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','0yw69costdyjef0o09riw1pwqvt0maxr','2021-11-15 16:58:21','2021-11-16 18:35:21'),(2,1,'a1','yonghu','用户','sni43ioxs6fbu0h153m2318d3k044kpf','2021-11-16 14:13:39','2021-11-16 17:37:34'),(3,2,'a222','zhuanjia','专家账户','wli95jba5w2hyl71cpdjz5h2t42vjcnz','2021-11-16 16:43:17','2021-11-16 18:16:24'),(4,1,'a11','xiangmuguanliyuan','项目管理员','41jx04c3bopek6q8chrg563g06e6chof','2021-11-16 16:45:18','2021-11-16 17:45:19'),(5,1,'a111','zhuanjia','专家账户','4xdgv9x6059r7fl543ftw4vaap811ggu','2021-11-16 17:29:04','2021-11-16 18:29:05'),(6,3,'a333','zhuanjia','专家账户','7fd3lx1ieb8vdaj6hppbqswd1f4tet1z','2021-11-16 17:29:40','2021-11-16 18:29:41');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `xiangmu` */

DROP TABLE IF EXISTS `xiangmu`;

CREATE TABLE `xiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xiangmu_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目唯一标识 Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `xiangmu_photo` varchar(200) DEFAULT NULL COMMENT '项目照片',
  `xiangmu_types` int(11) DEFAULT NULL COMMENT '项目类型',
  `xiangmu_file` varchar(200) DEFAULT NULL COMMENT '验收申请书',
  `xiangmu_content` text COMMENT '项目简介',
  `xiangmuguanliyuan_id` int(11) DEFAULT NULL COMMENT '项目管理员',
  `xiangmu_yesno_types` int(11) DEFAULT NULL COMMENT '项目管理员审核结果 Search111 ',
  `xiangmuguanliyuan_content` text COMMENT '项目管理员审核意见',
  `zhuanjia1_uuid_number` varchar(200) DEFAULT NULL COMMENT '专家1的唯一标识 Search111 ',
  `zhuanjia1_name` varchar(200) DEFAULT NULL COMMENT '专家1姓名',
  `zhuanjia1_types` int(11) DEFAULT NULL COMMENT '专家1的审核结果 Search111 ',
  `zhuanjia1_yijian_content` text COMMENT '专家1的审核意见',
  `zhuanjia2_uuid_number` varchar(200) DEFAULT NULL COMMENT '专家2的唯一标识 Search111 ',
  `zhuanjia2_name` varchar(200) DEFAULT NULL COMMENT '专家2姓名',
  `zhuanjia2_types` int(11) DEFAULT NULL COMMENT '专家2的审核结果 Search111 ',
  `zhuanjia2_yijian_content` text COMMENT '专家2的审核意见',
  `zhuanjia3_uuid_number` varchar(200) DEFAULT NULL COMMENT '专家3的唯一标识 Search111 ',
  `zhuanjia3_name` varchar(200) DEFAULT NULL COMMENT '专家3姓名',
  `zhuanjia3_types` int(11) DEFAULT NULL COMMENT '专家3的审核结果 Search111 ',
  `zhuanjia3_yijian_content` text COMMENT '专家3的审核意见',
  `zuizhong_types` int(11) DEFAULT NULL COMMENT '最终审核结果 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='项目';

/*Data for the table `xiangmu` */

insert  into `xiangmu`(`id`,`xiangmu_uuid_number`,`yonghu_id`,`xiangmu_name`,`xiangmu_photo`,`xiangmu_types`,`xiangmu_file`,`xiangmu_content`,`xiangmuguanliyuan_id`,`xiangmu_yesno_types`,`xiangmuguanliyuan_content`,`zhuanjia1_uuid_number`,`zhuanjia1_name`,`zhuanjia1_types`,`zhuanjia1_yijian_content`,`zhuanjia2_uuid_number`,`zhuanjia2_name`,`zhuanjia2_types`,`zhuanjia2_yijian_content`,`zhuanjia3_uuid_number`,`zhuanjia3_name`,`zhuanjia3_types`,`zhuanjia3_yijian_content`,`zuizhong_types`,`create_time`) values (4,'1637044140014',1,'项目1','http://localhost:8080/xiangmuyanshou/upload/1637044164835.webp',1,'http://localhost:8080/xiangmuyanshou/upload/1637045583686.xls','<p>项目1的介绍</p>',NULL,1,'','','',1,'','','',1,'','','',1,'',1,'2021-11-16 14:29:36'),(5,'1637051860708',1,'项目2','http://localhost:8080/xiangmuyanshou/upload/1637051923735.jfif',3,'http://localhost:8080/xiangmuyanshou/upload/1637051970416.sql','<p>项目2的简介</p>',1,1,'','','',1,'','','',1,'','','',1,'',1,'2021-11-16 16:39:40');

/*Table structure for table `xiangmuguanliyuan` */

DROP TABLE IF EXISTS `xiangmuguanliyuan`;

CREATE TABLE `xiangmuguanliyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xiangmuguanliyuan_name` varchar(200) DEFAULT NULL COMMENT '项目管理员姓名 Search111 ',
  `xiangmuguanliyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系电话 Search111 ',
  `xiangmuguanliyuan_id_number` varchar(200) DEFAULT NULL COMMENT '项目管理员身份证号 Search111 ',
  `xiangmuguanliyuan_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xiangmuguanliyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `xiangmuguanliyuan_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `xiangmuguanliyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='项目管理员';

/*Data for the table `xiangmuguanliyuan` */

insert  into `xiangmuguanliyuan`(`id`,`username`,`password`,`xiangmuguanliyuan_name`,`xiangmuguanliyuan_phone`,`xiangmuguanliyuan_id_number`,`xiangmuguanliyuan_photo`,`sex_types`,`xiangmuguanliyuan_email`,`xiangmuguanliyuan_address`,`xiangmuguanliyuan_delete`,`create_time`) values (1,'a11','123456','张22','17703786911','410224199610232011','http://localhost:8080/xiangmuyanshou/upload/1637028942633.jpg',2,'22@qq.com','地址11',1,'2021-11-16 10:15:56'),(2,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/xiangmuyanshou/upload/1637029038672.jpg',1,'22@qq.com','地址22',1,'2021-11-16 10:17:31');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系电话 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_address`,`yonghu_delete`,`create_time`) values (1,'a1','123456','张1','17703786901','410224199610232001','http://localhost:8080/xiangmuyanshou/upload/1637028584431.jpg',2,'22@qq.com','地址1',1,'2021-11-16 09:41:20'),(2,'a2','123456','张2','17703786902','410224199610232002','http://localhost:8080/xiangmuyanshou/upload/1637028635385.jpg',1,'22@qq.com','地址2',1,'2021-11-16 10:10:54');

/*Table structure for table `zhuanjia` */

DROP TABLE IF EXISTS `zhuanjia`;

CREATE TABLE `zhuanjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `zhuanjia_uuid_number` varchar(200) DEFAULT NULL COMMENT '专家唯一标识 Search111 ',
  `zhuanjia_name` varchar(200) DEFAULT NULL COMMENT '专家姓名 Search111 ',
  `zhuanjia_phone` varchar(200) DEFAULT NULL COMMENT '专家联系电话 Search111 ',
  `zhuanjia_id_number` varchar(200) DEFAULT NULL COMMENT '专家身份证号 Search111 ',
  `zhuanjia_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否使用 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='专家账户';

/*Data for the table `zhuanjia` */

insert  into `zhuanjia`(`id`,`username`,`password`,`zhuanjia_uuid_number`,`zhuanjia_name`,`zhuanjia_phone`,`zhuanjia_id_number`,`zhuanjia_photo`,`shangxia_types`,`create_time`) values (1,'a111','123456','1637029216630','张111','17703786111','410224199610232111','http://localhost:8080/xiangmuyanshou/upload/1637029348651.jpg',1,'2021-11-16 10:22:40'),(2,'a222','123456','1637029416911','张222','17703786222','410224199610232222','http://localhost:8080/xiangmuyanshou/upload/1637029448870.jpg',1,'2021-11-16 10:24:12'),(3,'a333','123456','1637029874646','张333','17703786333','410224199610232333','http://localhost:8080/xiangmuyanshou/upload/1637029906826.jpg',1,'2021-11-16 10:31:49'),(4,'a444','123456','1637054829569','张444','17703786444','410224199610232444','http://localhost:8080/xiangmuyanshou/upload/1637054864839.webp',1,'2021-11-16 17:27:47');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
