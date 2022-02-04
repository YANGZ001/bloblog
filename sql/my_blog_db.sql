/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`my_blog_db` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `my_blog_db`;

/*Table structure for table `generator_test` */

DROP TABLE IF EXISTS `generator_test`;

CREATE TABLE `generator_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `test` varchar(100) NOT NULL COMMENT '测试字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `generator_test` */

/*Table structure for table `jdbc_test` */

DROP TABLE IF EXISTS `jdbc_test`;

CREATE TABLE `jdbc_test` (
  `type` varchar(100) DEFAULT NULL COMMENT '类型',
  `name` varchar(100) DEFAULT NULL COMMENT '名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `jdbc_test` */

insert  into `jdbc_test`(`type`,`name`) values ('com.zaxxer.hikari.HikariDataSource','hikari数据源');
insert  into `jdbc_test`(`type`,`name`) values ('org.apache.commons.dbcp2.BasicDataSource','dbcp2数据源');
insert  into `jdbc_test`(`type`,`name`) values ('test','测试类');
insert  into `jdbc_test`(`type`,`name`) values ('类别2','测试类2');

/*Table structure for table `tb_admin_user` */

DROP TABLE IF EXISTS `tb_admin_user`;

CREATE TABLE `tb_admin_user` (
  `admin_user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员id',
  `login_user_name` varchar(50) NOT NULL COMMENT '管理员登陆名称',
  `login_password` varchar(50) NOT NULL COMMENT '管理员登陆密码',
  `nick_name` varchar(50) NOT NULL COMMENT '管理员显示昵称',
  `locked` tinyint(4) DEFAULT '0' COMMENT '是否锁定 0未锁定 1已锁定无法登陆',
  PRIMARY KEY (`admin_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_admin_user` */

insert  into `tb_admin_user`(`admin_user_id`,`login_user_name`,`login_password`,`nick_name`,`locked`) values (1,'admin','e10adc3949ba59abbe56e057f20f883e','yangz',0);

/*Table structure for table `tb_blog` */

DROP TABLE IF EXISTS `tb_blog`;

CREATE TABLE `tb_blog` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '博客表主键id',
  `blog_title` varchar(200) NOT NULL COMMENT '博客标题',
  `blog_sub_url` varchar(200) NOT NULL COMMENT '博客自定义路径url',
  `blog_cover_image` varchar(200) NOT NULL COMMENT '博客封面图',
  `blog_content` mediumtext NOT NULL COMMENT '博客内容',
  `blog_category_id` int(11) NOT NULL COMMENT '博客分类id',
  `blog_category_name` varchar(50) NOT NULL COMMENT '博客分类(冗余字段)',
  `blog_tags` varchar(200) NOT NULL COMMENT '博客标签',
  `blog_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-草稿 1-发布',
  `blog_views` bigint(20) NOT NULL DEFAULT '0' COMMENT '阅读量',
  `enable_comment` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0-允许评论 1-不允许评论',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0=否 1=是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog` */

# insert into `tb_blog`(`blog_id`,`blog_title`,`blog_sub_url`,`blog_cover_image`,`blog_content`,`blog_category_id`,`blog_category_name`,`blog_tags`,`blog_status`,`blog_views`,`enable_comment`,`is_deleted`,`create_time`,`update_time`) values (1,'About me','about','/admin/dist/img/rand/33.jpg','## About me\n\n我是十三，一名Java开发者，技术一般，经历平平，但是也一直渴望进步，同时也努力活着，为了人生不留遗憾，也希望能够一直做着自己喜欢的事情，得闲时分享心得、分享一些浅薄的经验，等以后老得不能再老了，就说故事已经讲完了,不去奢求圆满。\n\n相信浏览这段话的你也知道，学习是一件极其枯燥而无聊的过程，甚至有时候显得很无助，我也想告诉你，成长就是这样一件残酷的事情，任何成功都不是一蹴而就，需要坚持、需要付出、需要你的毅力，短期可能看不到收获，因为破茧成蝶所耗费的时间不是一天。\n\n## Contact\n\n- 我的邮箱：2449207463@qq.com\n- QQ技术交流群：796794009\n- 我的网站：http://13blog.site\n\n## Quote\n\n- Steve Jobs\n\n> Stay hungry,Stay foolish\n\n- Kahlil Gibran\n\n>The FIRST TIME WHEN I saw her being meek that she might attain height.<br>\nThe SECOND TIME WHEN I saw her limping BEFORE the crippled.<br>\nThe third TIME WHEN she was given TO choose BETWEEN the hard AND the easy, AND she chose the easy.<br>\nThe fourth TIME WHEN she COMMITTED a wrong, AND comforted herself that others also COMMIT wrong.<br>\nThe fifth TIME WHEN she forbore FOR weakness, AND attributed her patience TO strength.<br>\nThe sixth TIME WHEN she despised the ugliness of a face, AND knew NOT that it was ONE of her own masks.<br>\nAND the seventh TIME WHEN she sang a song of praise, AND deemed it a virtue.',20,'About','世界上有一个很可爱的人,现在这个人就在看这句话',1,219,0,0,'2017-03-12 00:31:15','2018-11-12 00:31:15');
insert into `tb_blog`(`blog_id`,`blog_title`,`blog_sub_url`,`blog_cover_image`,`blog_content`,`blog_category_id`,`blog_category_name`,`blog_tags`,`blog_status`,`blog_views`,`enable_comment`,`is_deleted`,`create_time`,`update_time`) values (1,'About me','about','/admin/dist/img/rand/33.jpg','## About me\n\nPreviously received my Bachelor of Science degree in Chemistry at Sichuan University,  I not satisfied with that, jumped into the area of computer science. And now I am currently pursuing my Master of Computing degree at National University of Singapore.\n\nI am actively looking for an **backend** software engineering **internship at Singapore**.\n\n',20,'About','世界上有一个很可爱的人,现在这个人就在看这句话',1,219,0,0,'2021-01-01 15:23:45','2021-01-01 15:23:45');
insert into `tb_blog`(`blog_id`,`blog_title`,`blog_sub_url`,`blog_cover_image`,`blog_content`,`blog_category_id`,`blog_category_name`,`blog_tags`,`blog_status`,`blog_views`,`enable_comment`,`is_deleted`,`create_time`,`update_time`) values (2,'Clear Your Mental Space','mental_space','/admin/dist/img/rand/23.jpg','# Clear Your Mental Space\n\n **Author : Born to win**\n\n Think about the last time you felt a negative emotion---like stress, anger,  or frustration. What was going through your mind as you were going  through that negativity? Was your mind cluttered with thoughts? Or was  it paralyzed, unable to think?\n\n The next time you find yourself in the middle of a very stressful time, or you feel angry or frustrated, stop. Yes, that’s right, stop. Whatever you’re doing, stop and sit for one  minute. While you’re sitting there, completely immerse yourself in the  negative emotion.\n\nAllow that emotion to consume you. Allow  yourself one minute to truly feel that emotion. Don’t cheat yourself  here. Take the entire minute---but only one minute---to do nothing else  but feel that emotion.\n\nWhen the minute is over, ask yourself,  “Am I wiling to keep holding on to this negative emotion as I go through the rest of the day?”\n\nOnce you’ve allowed yourself to be totally  immersed in the emotion and really fell it, you will be surprised to  find that the emotion clears rather quickly.\n\n If you feel you  need to hold on to the emotion for a little longer, that is OK. Allow  yourself another minute to feel the emotion.\n\n When you feel  you’ve had enough of the emotion, ask yourself if you’re willing to  carry that negativity with you for the rest of the day. If not, take a  deep breath. As you exhale, release all that negativity with your  breath.\n\n This exercise seems simple---almost too simple. But, it  is very effective. By allowing that negative emotion the space to be  truly felt, you are dealing with the emotion rather than stuffing it  down and trying not to feel it. You are actually taking away the power  of the emotion by giving it the space and attention it needs. When you  immerse yourself in the emotion, and realize that it is only emotion, it loses its control. You can clear your head and proceed with your task.\n\nTry it. Next time you’re in the middle of a negative emotion, give yourself the space to feel the emotion and see what happens. Keep a piece of  paper with you that says the following:\n\nStop. Immerse for one minute. Do I want to keep this negativity? Breath deep, exhale, release. Move on!\n\nThis will remind you of the steps to the process. Remember; take the time  you need to really immerse yourself in the emotion. Then, when you feel  you’ve felt it enough, release it---really let go of it. You will be  surprised at how quickly you can move on from a negative situation and  get to what you really want to do!',22,'Articles','美文鉴赏',1,10,1,0,'2021-01-01 15:23:45','2021-01-01 15:23:45');
insert into `tb_blog`(`blog_id`,`blog_title`,`blog_sub_url`,`blog_cover_image`,`blog_content`,`blog_category_id`,`blog_category_name`,`blog_tags`,`blog_status`,`blog_views`,`enable_comment`,`is_deleted`,`create_time`,`update_time`) values (3,'What is Your Recovery Rate?','recover_rate','/admin/dist/img/rand/2.jpg','# What is Your Recovery Rate?\n\n **Author : Born to win**\n\nWhat is your  recovery rate? How long does it take you to recover from actions and  behaviors that upset you? Minutes? Hours? Days? Weeks? The longer it  takes you to recover, the more influence that incident has on your  actions, and the less able you are to perform to your personal best. In a nutshell, the longer it takes you to recover, the weaker you are and  the poorer your performance.\n\nYou are well aware that you need  to exercise to keep the body fit and, no doubt, accept that a reasonable measure of health is the speed in which your heart and respiratory  system recovers after exercise. Likewise the faster you let go of an  issue that upsets you, the faster you return to an equilibrium, the  healthier you will be. The best example of this behavior is found with  professional sportspeople. They know that the faster they can forget an  incident or missd opportunity and get on with the game, the better their performance. In fact, most measure the time it takes them to overcome  and forget an incident in a game and most reckon a recovery rate of 30  seconds is too long!\n\nImagine yourself to be an actor in a play on the stage. Your aim is to play your part to the best of your  ability. You have been given a script and at the end of each sentence is a ful stop. Each time you get to the end of the sentence you start a  new one and although the next sentence is related to the last it is not  affected by it. Your job is to deliver each sentence to the best of your ability.\n\nDon’t live your life in the past! Learn to live in  the present, to overcome the past. Stop the past from influencing your  daily life. Don’t allow thoughts of the past to reduce your personal  best. Stop the past from interfering with your life. Learn to recover  quickly.\n\nRemember: Rome wasn’t built in a day. Reflect on your recovery rate each day. Every day before you go to bed, look at your  progress. Don’t lie in bed saying to you, “I did that wrong.” “I should  have done better there.” No. look at your day and note when you made an  effort to place a full stop after an incident. This is a success. You  are taking control of your life. Remember this is a step by step  process. This is not a make-over. You are undertaking real change here.  Your aim: reduce the time spent in recovery.\n\nThe way forward?\n\nLive in the present. Not in the precedent.',22,'Articles','美文鉴赏',1,20,0,0,'2021-01-01 15:23:45','2021-01-01 15:23:45');
insert into `tb_blog`(`blog_id`,`blog_title`,`blog_sub_url`,`blog_cover_image`,`blog_content`,`blog_category_id`,`blog_category_name`,`blog_tags`,`blog_status`,`blog_views`,`enable_comment`,`is_deleted`,`create_time`,`update_time`) values (4,'Youth','youth','/admin/dist/img/rand/3.jpg','# Youth\n\n **Author : Born to win**\n\nYouth is not a time of life; it is a  state of mind; it is not a matter of rosy cheeks, red lips and supple  knees; it is a matter of the will, a quality of the imagination, a vigor of the emotions; it is the freshness of the deep springs of life.\n\n**Youth** means a temperamental predominance of courage over timidity, of the  appetite for adventure over the love of ease. This often exists in a man of 60 more than a boy of 20. Nobody grows old merely by a number of  years. We grow old by deserting our ideals.\n\nYears may wrinkle the  skin, but to give up enthusiasm wrinkles the soul. Worry, fear,  self-distrust bows the heart and turns the spirit back to dust.\n\nWhether 60 or 16, there is in every human being’s heart the lure of wonders,  the unfailing appetite for what’s next and the joy of the game of  living. In the center of your heart and my heart, there is a wireless  station; so long as it receives messages of beauty, hope, cheer, courage and power from man and from the infinite, so long as you are young.\n\nWhen your aerials are down, and your spirit is covered with snows of  cynicism and the ice of pessimism, then you’ve grown old, even at 20;  but as long as your aerials are up, to catch waves of optimism, there’s  hope you may die young at 80.\n\n',22,'Articles','美文鉴赏',1,32,0,0,'2021-01-01 15:23:45','2021-01-01 15:23:45');
/*Table structure for table `tb_blog_category` */

DROP TABLE IF EXISTS `tb_blog_category`;

CREATE TABLE `tb_blog_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类表主键',
  `category_name` varchar(50) NOT NULL COMMENT '分类的名称',
  `category_icon` varchar(50) NOT NULL COMMENT '分类的图标',
  `category_rank` int(11) NOT NULL DEFAULT '1' COMMENT '分类的排序值 被使用的越多数值越大',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0=否 1=是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog_category` */

insert  into `tb_blog_category`(`category_id`,`category_name`,`category_icon`,`category_rank`,`is_deleted`,`create_time`) values (20,'About','/admin/dist/img/category/10.png',8,0,'2018-11-12 00:28:49');
insert  into `tb_blog_category`(`category_id`,`category_name`,`category_icon`,`category_rank`,`is_deleted`,`create_time`) values (22,'Articles','/admin/dist/img/category/02.png',19,0,'2018-11-12 10:42:25');
insert  into `tb_blog_category`(`category_id`,`category_name`,`category_icon`,`category_rank`,`is_deleted`,`create_time`) values (24,'日常随笔','/admin/dist/img/category/06.png',22,0,'2018-11-12 10:43:21');

/*Table structure for table `tb_blog_comment` */

DROP TABLE IF EXISTS `tb_blog_comment`;

CREATE TABLE `tb_blog_comment` (
  `comment_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `blog_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '关联的blog主键',
  `commentator` varchar(50) NOT NULL DEFAULT '' COMMENT '评论者名称',
  `email` varchar(100) NOT NULL DEFAULT '' COMMENT '评论人的邮箱',
  `website_url` varchar(50) NOT NULL DEFAULT '' COMMENT '网址',
  `comment_body` varchar(200) NOT NULL DEFAULT '' COMMENT '评论内容',
  `comment_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '评论提交时间',
  `commentator_ip` varchar(20) NOT NULL DEFAULT '' COMMENT '评论时的ip地址',
  `reply_body` varchar(200) NOT NULL DEFAULT '' COMMENT '回复内容',
  `reply_create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '回复时间',
  `comment_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否审核通过 0-未审核 1-审核通过',
  `is_deleted` tinyint(4) DEFAULT '0' COMMENT '是否删除 0-未删除 1-已删除',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog_comment` */

insert  into `tb_blog_comment`(`comment_id`,`blog_id`,`commentator`,`email`,`website_url`,`comment_body`,`comment_create_time`,`commentator_ip`,`reply_body`,`reply_create_time`,`comment_status`,`is_deleted`) values (26,4,'fdaf','fdas@qq.com','','第一条评论','2019-05-13 10:12:19','','','2019-05-12 21:13:31',1,0);

/*Table structure for table `tb_blog_tag` */

DROP TABLE IF EXISTS `tb_blog_tag`;

CREATE TABLE `tb_blog_tag` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签表主键id',
  `tag_name` varchar(100) NOT NULL COMMENT '标签名称',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0=否 1=是',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog_tag` */

insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (57,'世界上有一个很可爱的人',0,'2018-11-12 00:31:15');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (58,'现在这个人就在看这句话',0,'2018-11-12 00:31:15');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (66,'Spring',0,'2018-11-12 10:55:14');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (67,'SpringMVC',0,'2018-11-12 10:55:14');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (68,'MyBatis',0,'2018-11-12 10:55:14');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (69,'easyUI',0,'2018-11-12 10:55:14');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (127,'目录',0,'2019-04-24 15:41:39');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (128,'AdminLte3',0,'2019-04-24 15:46:16');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (130,'SpringBoot',0,'2019-05-13 09:58:54');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (131,'入门教程',0,'2019-05-13 09:58:54');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (132,'实战教程',0,'2019-05-13 09:58:54');
insert  into `tb_blog_tag`(`tag_id`,`tag_name`,`is_deleted`,`create_time`) values (133,'美文鉴赏',0,'2019-05-13 09:58:54');

/*Table structure for table `tb_blog_tag_relation` */

DROP TABLE IF EXISTS `tb_blog_tag_relation`;

CREATE TABLE `tb_blog_tag_relation` (
  `relation_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关系表id',
  `blog_id` bigint(20) NOT NULL COMMENT '博客id',
  `tag_id` int(11) NOT NULL COMMENT '标签id',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_blog_tag_relation` */

insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (266,1,57,'2019-05-13 09:45:42');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (267,1,58,'2019-05-13 09:45:42');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (269,2,127,'2019-05-13 09:56:49');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (270,4,130,'2019-05-13 09:58:54');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (271,4,131,'2019-05-13 09:58:54');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (272,4,132,'2019-05-13 09:58:54');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (273,2,133,'2019-05-13 09:58:54');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (274,3,66,'2019-05-13 10:07:27');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (275,3,67,'2019-05-13 10:07:27');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (276,3,68,'2019-05-13 10:07:27');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (277,3,69,'2019-05-13 10:07:27');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (278,3,128,'2019-05-13 10:07:27');
insert  into `tb_blog_tag_relation`(`relation_id`,`blog_id`,`tag_id`,`create_time`) values (279,3,133,'2019-05-13 09:58:54');


/*Table structure for table `tb_config` */

DROP TABLE IF EXISTS `tb_config`;

CREATE TABLE `tb_config` (
  `config_name` varchar(100) NOT NULL DEFAULT '' COMMENT '配置项的名称',
  `config_value` varchar(200) NOT NULL DEFAULT '' COMMENT '配置项的值',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_config` */

insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerAbout','Blo blog, fantastic blog','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerCopyRight','2021 Yangz','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerICP','ICP','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerPoweredBy','https://github.com/YANGZ001','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('footerPoweredByURL','https://github.com/YANGZ001','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('websiteDescription','Bloblog is a simple & beautiful blogging system implemented with Spring-Boot & Thymeleaf & MyBatis','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('websiteIcon','/admin/dist/img/favicon.png','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('websiteLogo','/admin/dist/img/favicon.png','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('websiteName','personal blog','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('yourAvatar','/admin/dist/img/13.png','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('yourEmail','e0787809@u.nus.edu','2021-01-01 15:31:20','2021-01-23 15:31:20');
insert  into `tb_config`(`config_name`,`config_value`,`create_time`,`update_time`) values ('yourName','Zhang Yang','2021-01-01 15:31:20','2021-01-23 15:31:20');

/*Table structure for table `tb_link` */

DROP TABLE IF EXISTS `tb_link`;

CREATE TABLE `tb_link` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '友链表主键id',
  `link_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '友链类别 0-友链 1-推荐 2-个人网站',
  `link_name` varchar(50) NOT NULL COMMENT '网站名称',
  `link_url` varchar(100) NOT NULL COMMENT '网站链接',
  `link_description` varchar(100) NOT NULL COMMENT '网站描述',
  `link_rank` int(11) NOT NULL DEFAULT '0' COMMENT '用于列表排序',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0-未删除 1-已删除',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_link` */

insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (1,0,'tqr','rqwe','rqw',0,1,'2018-10-22 18:57:52');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (2,2,'十三的GitHub','https://github.com/ZHENFENG13','十三分享代码的地方',1,0,'2018-10-22 19:41:04');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (3,2,'十三的博客','http://13blog.site','个人独立博客13blog',14,0,'2018-10-22 19:53:34');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (4,1,'CSDN 图文课','https://gitchat.csdn.net','IT优质内容平台',6,0,'2018-10-22 19:55:55');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (5,2,'十三的博客园','https://www.cnblogs.com/han-1034683568','最开始写博客的地方',17,0,'2018-10-22 19:56:14');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (6,1,'CSDN','https://www.csdn.net/','CSDN-专业IT技术社区官网',4,0,'2018-10-22 19:56:47');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (7,0,'梁桂钊的博客','http://blog.720ui.com','后端攻城狮',1,0,'2018-10-22 20:01:38');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (8,0,'猿天地','http://cxytiandi.com','一个综合性的网站,以程序猿用户为主,提供各种开发相关的内容',12,0,'2018-10-22 20:02:41');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (9,0,'Giraffe Home','https://yemengying.com/','Giraffe Home',0,0,'2018-10-22 20:27:04');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (10,0,'纯洁的微笑','http://www.ityouknow.com','分享技术，分享生活',3,0,'2018-10-22 20:27:16');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (11,0,'afsdf','http://localhost:28080/admin/links','fad',0,1,'2018-10-22 20:27:26');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (12,1,'afsdf','http://localhost','fad1',0,1,'2018-10-24 14:04:18');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (13,0,'郭赵晖','http://guozh.net/','老郭三分地',0,0,'2019-04-24 15:30:19');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (14,0,'dalaoyang','https://www.dalaoyang.cn/','dalaoyang',0,0,'2019-04-24 15:31:50');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (15,0,'mushblog','https://www.sansani.cn','穆世明博客',0,0,'2019-04-24 15:32:19');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (16,1,'实验楼','https://www.shiyanlou.com/','一家专注于IT技术的在线实训平台',17,0,'2019-04-24 16:03:48');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (17,2,'《SSM 搭建精美实用的管理系统》','https://gitbook.cn/gitchat/column/5b4dae389bcda53d07056bc9','Spring+SpringMVC+MyBatis实战课程',18,0,'2019-04-24 16:06:52');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (18,2,'《Spring Boot 入门及前后端分离项目实践》','https://www.shiyanlou.com/courses/1244','SpringBoot实战课程',19,0,'2019-04-24 16:07:27');
insert  into `tb_link`(`link_id`,`link_type`,`link_name`,`link_url`,`link_description`,`link_rank`,`is_deleted`,`create_time`) values (19,2,'《玩转Spring Boot 系列》','https://www.shiyanlou.com/courses/1274','SpringBoot实战课程',20,0,'2019-04-24 16:10:30');

/*Table structure for table `tb_test` */

DROP TABLE IF EXISTS `tb_test`;

CREATE TABLE `tb_test` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `test_info` varchar(50) NOT NULL COMMENT '测试内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `tb_test` */

insert  into `tb_test`(`id`,`test_info`) values (1,'SpringBoot-MyBatis测试');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
