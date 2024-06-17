/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangshangxuankexitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangshangxuankexitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangshangxuankexitong`;

/*Table structure for table `chengji` */

DROP TABLE IF EXISTS `chengji`;

CREATE TABLE `chengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `chengji_types` int(11) NOT NULL COMMENT '成绩类型 Search111 ',
  `chengji_defen` decimal(10,2) DEFAULT NULL COMMENT '成绩得分',
  `chengji_content` text COMMENT '成绩详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='成绩';

/*Data for the table `chengji` */

insert  into `chengji`(`id`,`xuesheng_id`,`kecheng_id`,`chengji_types`,`chengji_defen`,`chengji_content`,`insert_time`,`create_time`) values (1,2,1,1,'91.00','成绩详情1','2022-04-04 15:30:28','2022-04-04 15:30:28'),(2,2,2,1,'92.00','成绩详情2','2022-04-04 15:30:28','2022-04-04 15:30:28'),(3,1,2,3,'93.00','成绩详情3','2022-04-04 15:30:28','2022-04-04 15:30:28'),(4,2,2,3,'41.00','成绩详情4','2022-04-04 15:30:28','2022-04-04 15:30:28'),(5,3,5,1,'56.00','成绩详情5','2022-04-04 15:30:28','2022-04-04 15:30:28'),(6,1,5,2,'67.00','<p>换大号或或或</p>','2022-04-04 16:56:44','2022-04-04 16:56:44'),(7,3,6,1,'98.00','<p>呵呵哈哈哈或</p>','2022-04-07 21:35:23','2022-04-07 21:35:23');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-04 15:30:24'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-04 15:30:24'),(3,'banji_types','班级',1,'班级1',NULL,NULL,'2022-04-04 15:30:24'),(4,'banji_types','班级',2,'班级2',NULL,NULL,'2022-04-04 15:30:24'),(5,'banji_types','班级',3,'班级3',NULL,NULL,'2022-04-04 15:30:24'),(6,'kecheng_kaohe_types','考核方式',1,'考试考核',NULL,NULL,'2022-04-04 15:30:24'),(7,'kecheng_kaohe_types','考核方式',2,'实践考核',NULL,NULL,'2022-04-04 15:30:24'),(8,'kecheng_xingzhi_types','课程性质',1,'课程性质1',NULL,NULL,'2022-04-04 15:30:24'),(9,'kecheng_xingzhi_types','课程性质',2,'课程性质2',NULL,NULL,'2022-04-04 15:30:24'),(10,'kecheng_xingzhi_types','课程性质',3,'课程性质3',NULL,NULL,'2022-04-04 15:30:24'),(11,'yuanxi_types','院系',1,'院系1',NULL,NULL,'2022-04-04 15:30:24'),(12,'yuanxi_types','院系',2,'院系2',NULL,NULL,'2022-04-04 15:30:24'),(13,'yuanxi_types','院系',3,'院系3',NULL,NULL,'2022-04-04 15:30:24'),(14,'jiaoxuejihua_types','计划类型',1,'计划类型1',NULL,NULL,'2022-04-04 15:30:24'),(15,'jiaoxuejihua_types','计划类型',2,'计划类型2',NULL,NULL,'2022-04-04 15:30:24'),(16,'jiaoxuejihua_types','计划类型',3,'计划类型3',NULL,NULL,'2022-04-04 15:30:25'),(17,'chengji_types','成绩类型',1,'优秀',NULL,NULL,'2022-04-04 15:30:25'),(18,'chengji_types','成绩类型',2,'一般',NULL,NULL,'2022-04-04 15:30:25'),(19,'chengji_types','成绩类型',3,'差',NULL,NULL,'2022-04-04 15:30:25'),(20,'yuanxi_types','院系',4,'院系4',NULL,'','2022-04-07 21:35:45');

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiaoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '教室编号 Search111 ',
  `jiaoshi_name` varchar(200) DEFAULT NULL COMMENT '教室名称 Search111 ',
  `jiaoshi_address` varchar(200) DEFAULT NULL COMMENT '教室位置',
  `jiaoshi_content` text COMMENT '教室详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='教室';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`jiaoshi_uuid_number`,`jiaoshi_name`,`jiaoshi_address`,`jiaoshi_content`,`insert_time`,`create_time`) values (1,'164905742859414','教室名称1','教室位置1','教室详情1','2022-04-04 15:30:28','2022-04-04 15:30:28'),(2,'16490574285947','教室名称2','教室位置2','教室详情2','2022-04-04 15:30:28','2022-04-04 15:30:28'),(3,'16490574285946','教室名称3','教室位置3','教室详情3','2022-04-04 15:30:28','2022-04-04 15:30:28'),(4,'164905742859419','教室名称4','教室位置4','教室详情4','2022-04-04 15:30:28','2022-04-04 15:30:28'),(5,'16490574285943','教室名称5','教室位置5','<p>教室详情5111</p>','2022-04-04 15:30:28','2022-04-04 15:30:28');

/*Table structure for table `jiaoxuejihua` */

DROP TABLE IF EXISTS `jiaoxuejihua`;

CREATE TABLE `jiaoxuejihua` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `jiaoxuejihua_uuid_number` varchar(200) DEFAULT NULL COMMENT '教学计划编号 Search111 ',
  `jiaoxuejihua_name` varchar(200) DEFAULT NULL COMMENT '教学计划名称 Search111 ',
  `jiaoxuejihua_types` int(11) DEFAULT NULL COMMENT '计划类型 Search111',
  `jiaoxuejihua_content` text COMMENT '计划详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='教学计划';

/*Data for the table `jiaoxuejihua` */

insert  into `jiaoxuejihua`(`id`,`kecheng_id`,`jiaoxuejihua_uuid_number`,`jiaoxuejihua_name`,`jiaoxuejihua_types`,`jiaoxuejihua_content`,`insert_time`,`create_time`) values (1,1,'16490574285970','教学计划名称1',2,'计划详情1','2022-04-04 15:30:28','2022-04-04 15:30:28'),(2,2,'164905742859717','教学计划名称2',3,'计划详情2','2022-04-04 15:30:28','2022-04-04 15:30:28'),(3,1,'16490574285979','教学计划名称3',3,'计划详情3','2022-04-04 15:30:28','2022-04-04 15:30:28'),(4,3,'164905742859720','教学计划名称4',2,'计划详情4','2022-04-04 15:30:28','2022-04-04 15:30:28'),(5,4,'164905742859712','教学计划名称5',2,'计划详情5','2022-04-04 15:30:28','2022-04-04 15:30:28'),(6,5,'1649062569063','教学计划111',2,'<p>阿萨嘎宿管和</p>','2022-04-04 16:56:25','2022-04-04 16:56:25'),(7,6,'1649338476264','教学几哈11111',2,'<p>打上花火或</p>','2022-04-07 21:34:47','2022-04-07 21:34:47');

/*Table structure for table `kecheng` */

DROP TABLE IF EXISTS `kecheng`;

CREATE TABLE `kecheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `kecheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '课程编号 Search111 ',
  `kecheng_name` varchar(200) DEFAULT NULL COMMENT '课程名称 Search111 ',
  `kecheng_daima` varchar(200) DEFAULT NULL COMMENT '课程代码 Search111 ',
  `yuanxi_types` int(11) DEFAULT NULL COMMENT '院系 Search111 ',
  `kecheng_xingzhi_types` int(11) DEFAULT NULL COMMENT '课程性质',
  `kecheng_xuefen` int(11) DEFAULT NULL COMMENT '课程学分',
  `kecheng_zongxueshi` int(11) DEFAULT NULL COMMENT '总学时',
  `kecheng_kaohe_types` int(11) DEFAULT NULL COMMENT '考核方式',
  `kecheng_renshu` int(11) DEFAULT NULL COMMENT '最大选课人数',
  `jiezhi_time` timestamp NULL DEFAULT NULL COMMENT '选课截止时间',
  `kecheng_content` text COMMENT '课程详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='课程';

/*Data for the table `kecheng` */

insert  into `kecheng`(`id`,`laoshi_id`,`kecheng_uuid_number`,`kecheng_name`,`kecheng_daima`,`yuanxi_types`,`kecheng_xingzhi_types`,`kecheng_xuefen`,`kecheng_zongxueshi`,`kecheng_kaohe_types`,`kecheng_renshu`,`jiezhi_time`,`kecheng_content`,`insert_time`,`create_time`) values (1,3,'16490574286023','课程名称1','课程代码1',3,3,445,482,2,429,'2022-04-16 15:30:28','课程详情1','2022-04-16 15:30:28','2022-04-04 15:30:28'),(2,3,'164905742860318','课程名称2','课程代码2',3,3,304,324,2,413,'2022-04-16 15:30:28','课程详情2','2022-04-16 15:30:28','2022-04-04 15:30:28'),(3,3,'164905742860313','课程名称3','课程代码3',2,1,323,231,1,492,'2022-04-06 15:30:28','课程详情3','2022-04-16 15:30:28','2022-04-04 15:30:28'),(4,1,'16490574286031','课程名称4','课程代码4',1,3,500,299,1,496,'2022-04-16 15:30:28','课程详情4','2022-04-16 15:30:28','2022-04-04 15:30:28'),(5,1,'16490574286038','课程名称5','课程代码5',1,1,97,354,1,300,'2022-04-16 15:30:28','<p>课程详情5</p>','2022-04-16 15:30:28','2022-04-04 15:30:28'),(6,1,'1649338150291','课程1111','23453156431',2,2,8,120,1,300,'2022-04-16 15:30:28','<p>规划局将</p>','2022-04-16 15:30:28','2022-04-07 21:29:41');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `laoshi_shanchang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `laoshi_rongyu` varchar(200) DEFAULT NULL COMMENT '所获荣誉',
  `laoshi_content` text COMMENT '老师介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`laoshi_phone`,`laoshi_photo`,`sex_types`,`laoshi_email`,`laoshi_shanchang`,`laoshi_rongyu`,`laoshi_content`,`create_time`) values (1,'a1','123456','老师姓名1','17703786901','http://localhost:8080/wangshangxuankexitong/upload/laoshi1.jpg',2,'1@qq.com','擅长1','所获荣誉1','<p>老师介绍1222</p>','2022-04-04 15:30:28'),(2,'a2','123456','老师姓名2','17703786902','http://localhost:8080/wangshangxuankexitong/upload/laoshi2.jpg',1,'2@qq.com','擅长2','所获荣誉2','老师介绍2','2022-04-04 15:30:28'),(3,'a3','123456','老师姓名3','17703786903','http://localhost:8080/wangshangxuankexitong/upload/laoshi3.jpg',2,'3@qq.com','擅长3','所获荣誉3','老师介绍3','2022-04-04 15:30:28');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','fvit8gcsouxsg1nuc1313v2knm7kzwvr','2022-04-04 15:33:28','2022-04-07 22:35:32'),(2,1,'a1','xuesheng','学生','sdbuycpswo9tr1r2mkr0imkt0t9zdsio','2022-04-04 15:48:29','2022-04-07 22:32:55'),(3,1,'a1','laoshi','老师','p7vw70o9yatd3pkhn1webi7da3t55xki','2022-04-04 16:55:51','2022-04-07 22:34:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `xuanke` */

DROP TABLE IF EXISTS `xuanke`;

CREATE TABLE `xuanke` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `xuanke_uuid_number` varchar(200) DEFAULT NULL COMMENT '选课编号 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '选课时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='选课';

/*Data for the table `xuanke` */

insert  into `xuanke`(`id`,`xuesheng_id`,`kecheng_id`,`xuanke_uuid_number`,`insert_time`,`create_time`) values (8,1,5,'1649337727591','2022-04-07 21:22:08','2022-04-07 21:22:08'),(9,1,4,'1649338087961','2022-04-07 21:28:08','2022-04-07 21:28:08');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_name`,`xuesheng_phone`,`xuesheng_id_number`,`xuesheng_photo`,`sex_types`,`banji_types`,`xuesheng_email`,`create_time`) values (1,'a1','123456','学生姓名1','17703786901','410224199610232001','http://localhost:8080/wangshangxuankexitong/upload/xuesheng1.jpg',2,3,'1@qq.com','2022-04-04 15:30:28'),(2,'a2','123456','学生姓名2','17703786902','410224199610232002','http://localhost:8080/wangshangxuankexitong/upload/xuesheng2.jpg',1,1,'2@qq.com','2022-04-04 15:30:28'),(3,'a3','123456','学生姓名3','17703786903','410224199610232003','http://localhost:8080/wangshangxuankexitong/upload/xuesheng3.jpg',1,1,'3@qq.com','2022-04-04 15:30:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
