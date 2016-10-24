
SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

/*Table structure for table `mini_apiconfig` */

DROP TABLE IF EXISTS `mini_apiconfig`;

CREATE TABLE `mini_apiconfig` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `key` varchar(255) NOT NULL COMMENT '配置项名称',
  `value` varchar(255) NOT NULL COMMENT '配置项值',
  `description` varchar(255) DEFAULT NULL COMMENT '配置描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `mini_apiconfig` */

insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (1,'print_apikey','','API密钥');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (2,'print_machine_code','','打印机终端号');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (3,'print_msign','','打印机密钥');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (4,'print_mobiliphone','','终端内部手机号');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (5,'print_partner','','易连云用户ID');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (6,'print_username','','易连云用户名');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (7,'print_printname','','打印机终端名称');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (8,'sms_appkey','','Key值');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (9,'sms_appsecret','','密钥');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (10,'sms_template_code','','模板ID');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (11,'sms_signname','','签名名称');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (12,'alipay_partner','','合作身份者ID，签约账号，以2088开头由16位纯数字组成的字符串');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (13,'alipay_appkey','',' MD5密钥，安全检验码，由数字和字母组成的32位字符串');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (14,'wechat_appid','','微信公众号身份的唯一标识');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (15,'wechat_mchid','','受理商ID，身份标识');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (16,'wechat_appkey','','商户支付密钥Key');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (17,'wechat_appsecret','','JSAPI接口中获取openid');
insert  into `mini_apiconfig`(`id`,`key`,`value`,`description`) values (18,'wechat_token','','微信通讯token值');

/*Table structure for table `mini_banner` */

DROP TABLE IF EXISTS `mini_banner`;

CREATE TABLE `mini_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '广告名称',
  `description` varchar(500) NOT NULL DEFAULT '' COMMENT '广告位置描述',
  `position` int(11) NOT NULL COMMENT '广告位置',
  `banner_path` varchar(140) NOT NULL COMMENT '图片地址',
  `link` varchar(140) NOT NULL DEFAULT '' COMMENT '连接地址',
  `level` int(4) NOT NULL DEFAULT '0' COMMENT '优先级',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态（2：禁用 1：正常）',
  `createtime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

/*Data for the table `mini_banner` */

insert  into `mini_banner`(`id`,`name`,`description`,`position`,`banner_path`,`link`,`level`,`status`,`createtime`,`endtime`) values (1,'banner图1','banner图1',1,'/uploads/picture/20160926/fd81afa1ead6f60e8bba9afc43a5b04a.png','#',0,1,1474862526,0);
insert  into `mini_banner`(`id`,`name`,`description`,`position`,`banner_path`,`link`,`level`,`status`,`createtime`,`endtime`) values (2,'banner图2','banner图2',1,'/uploads/picture/20160926/2ba51f15f329ec4d73052166f3e9671a.png','#',0,1,1474862717,0);
insert  into `mini_banner`(`id`,`name`,`description`,`position`,`banner_path`,`link`,`level`,`status`,`createtime`,`endtime`) values (3,'banner图3','banner图3',1,'/uploads/picture/20160926/cdd7b54c1218e6ff9334cf9557d67185.png','#',0,1,1474862753,0);
insert  into `mini_banner`(`id`,`name`,`description`,`position`,`banner_path`,`link`,`level`,`status`,`createtime`,`endtime`) values (4,'推荐商品','推荐商品',2,'/uploads/picture/20160926/91a68462bc3e5fca226a889807803980.png','#',0,1,1474878074,0);

/*Table structure for table `mini_banner_position` */

DROP TABLE IF EXISTS `mini_banner_position`;

CREATE TABLE `mini_banner_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(80) NOT NULL,
  `width` char(20) NOT NULL,
  `height` char(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态(0:禁用 1：正常)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `mini_banner_position` */

insert  into `mini_banner_position`(`id`,`title`,`width`,`height`,`status`) values (1,'pc首页banner图','300','1190',1);
insert  into `mini_banner_position`(`id`,`title`,`width`,`height`,`status`) values (2,'商品页推荐','200','260',1);

/*Table structure for table `mini_cart` */

DROP TABLE IF EXISTS `mini_cart`;

CREATE TABLE `mini_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `num` int(11) NOT NULL DEFAULT '0' COMMENT '购买数量',
  `createtime` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1：正常，2：已购买',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mini_cart` */

/*Table structure for table `mini_code` */

DROP TABLE IF EXISTS `mini_code`;

CREATE TABLE `mini_code` (
  `id` int(60) NOT NULL AUTO_INCREMENT,
  `mobile` char(128) DEFAULT NULL,
  `code` char(30) DEFAULT NULL,
  `yzm_time` int(60) DEFAULT NULL,
  `num` int(60) NOT NULL DEFAULT '0',
  `captcha` char(30) NOT NULL,
  `date` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Data for the table `mini_code` */

/*Table structure for table `mini_email_check` */

DROP TABLE IF EXISTS `mini_email_check`;

CREATE TABLE `mini_email_check` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `username` char(128) NOT NULL,
  `email` char(128) NOT NULL,
  `passtime` int(128) NOT NULL,
  `token` char(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mini_email_check` */

/*Table structure for table `mini_goods` */

DROP TABLE IF EXISTS `mini_goods`;

CREATE TABLE `mini_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '商品名称',
  `num` int(11) NOT NULL COMMENT '商品库存数量',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `description` text NOT NULL COMMENT '商品描述',
  `standard` varchar(255) NOT NULL COMMENT '规格型号',
  `cover_path` varchar(255) NOT NULL COMMENT '封面图',
  `photo_path_1` varchar(255) DEFAULT NULL,
  `photo_path_2` varchar(255) DEFAULT NULL,
  `photo_path_3` varchar(255) DEFAULT NULL,
  `content` text NOT NULL COMMENT '商品详情',
  `click_count` int(11) NOT NULL DEFAULT '0' COMMENT '商品点击数',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:上架，2：下架',
  `is_best` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为精品',
  `is_new` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为新品',
  `is_hot` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为热销',
  `sell_num` int(11) NOT NULL DEFAULT '0' COMMENT '已经出售的数量',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  `score_num` tinyint(2) NOT NULL DEFAULT '1' COMMENT '平均评分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `mini_goods` */

insert  into `mini_goods`(`id`,`uid`,`uuid`,`name`,`num`,`price`,`description`,`standard`,`cover_path`,`photo_path_1`,`photo_path_2`,`photo_path_3`,`content`,`click_count`,`status`,`is_best`,`is_new`,`is_hot`,`sell_num`,`createtime`,`score_num`) values (1,1,'1bee2b80-9857-b759-8ce6-57500ba318b3','三只松鼠',100,'10.00','三只松鼠100g大礼包','1000*15*20','/uploads/picture/20160926/341ea62f12bc779a9f498e0159cce1d8.jpg','/uploads/picture/20160926/faadc58d68f24bb2e8b94c3ee6d11f0b.jpg','/uploads/picture/20160926/a4f1436144bf14650d247bf7891c045f.jpg','','<p>三只松鼠详情<br/></p>',0,1,0,0,0,0,1474873059,1);
insert  into `mini_goods`(`id`,`uid`,`uuid`,`name`,`num`,`price`,`description`,`standard`,`cover_path`,`photo_path_1`,`photo_path_2`,`photo_path_3`,`content`,`click_count`,`status`,`is_best`,`is_new`,`is_hot`,`sell_num`,`createtime`,`score_num`) values (2,1,'71eccb9c-14f9-f8bb-d16d-0605b0f161f9','鱿鱼片',100,'20.00','鱿鱼片','100*10*10','/uploads/picture/20160926/bb6d9cfb25faf4489fa35c16f15d3add.jpg','/uploads/picture/20160926/fa3d6659e8fd1cfe5cbd3d511447d534.jpg','/uploads/picture/20160926/95ebe04aad356d859a221417cc190822.jpg','','<p>风琴鱿鱼片<br/></p>',0,1,1,1,0,0,1474874065,1);
insert  into `mini_goods`(`id`,`uid`,`uuid`,`name`,`num`,`price`,`description`,`standard`,`cover_path`,`photo_path_1`,`photo_path_2`,`photo_path_3`,`content`,`click_count`,`status`,`is_best`,`is_new`,`is_hot`,`sell_num`,`createtime`,`score_num`) values (3,1,'05772dd5-715a-e082-e6cd-d7bf87e6e019','鸭梨',100,'5.00','鸭梨','箱','/uploads/picture/20160926/1c33d466b8558a2f48b7fad38852bfd6.jpg','/uploads/picture/20160926/2ef87086059c70da9113f5c735cfa33b.jpg','/uploads/picture/20160926/c6f50e32370672c4d88d6d0803fff46d.jpg','','<p>鸭梨<br/></p>',0,1,1,1,1,0,1474873907,1);

/*Table structure for table `mini_goods_cate` */

DROP TABLE IF EXISTS `mini_goods_cate`;

CREATE TABLE `mini_goods_cate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL COMMENT '分类名',
  `slug` varchar(200) NOT NULL COMMENT '缩略名',
  `cover_path` varchar(200) NOT NULL COMMENT '分类封面图',
  `pid` int(11) NOT NULL DEFAULT '0',
  `page_num` int(11) NOT NULL,
  `lists_tpl` varchar(200) NOT NULL,
  `detail_tpl` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1:启用，2：禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `mini_goods_cate` */

insert  into `mini_goods_cate`(`id`,`name`,`slug`,`cover_path`,`pid`,`page_num`,`lists_tpl`,`detail_tpl`,`status`) values (1,'零食','lingshi','/uploads/picture/20160926/44bfb87ac0b9e57bd44d42f178b3a714.png',0,20,'goods_list','goods_detail',1);
insert  into `mini_goods_cate`(`id`,`name`,`slug`,`cover_path`,`pid`,`page_num`,`lists_tpl`,`detail_tpl`,`status`) values (2,'干果','ganguo','/uploads/picture/20160926/66181a96b11106db950015dc73f915b1.png',1,20,'goods_list','goods_detail',1);
insert  into `mini_goods_cate`(`id`,`name`,`slug`,`cover_path`,`pid`,`page_num`,`lists_tpl`,`detail_tpl`,`status`) values (3,'水果','fruit','/uploads/picture/20160926/ebdc0529dc755654a2dd845cd8eb3d3a.png',0,20,'goods_list','goods_detail',1);
insert  into `mini_goods_cate`(`id`,`name`,`slug`,`cover_path`,`pid`,`page_num`,`lists_tpl`,`detail_tpl`,`status`) values (4,'梨','li','/uploads/picture/20160926/06218487c89780e88d7e2918473cdf34.png',3,20,'goods_list','goods_detail',1);

/*Table structure for table `mini_goods_cate_relationships` */

DROP TABLE IF EXISTS `mini_goods_cate_relationships`;

CREATE TABLE `mini_goods_cate_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `mini_goods_cate_relationships` */

insert  into `mini_goods_cate_relationships`(`id`,`goods_id`,`cate_id`) values (1,1,2);
insert  into `mini_goods_cate_relationships`(`id`,`goods_id`,`cate_id`) values (3,3,4);
insert  into `mini_goods_cate_relationships`(`id`,`goods_id`,`cate_id`) values (4,2,2);

/*Table structure for table `mini_goods_collection` */

DROP TABLE IF EXISTS `mini_goods_collection`;

CREATE TABLE `mini_goods_collection` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL COMMENT '用户id',
  `goods_id` int(10) DEFAULT NULL COMMENT '商品id',
  `createtime` varchar(11) DEFAULT NULL COMMENT '收藏时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mini_goods_collection` */

/*Table structure for table `mini_goods_comment` */

DROP TABLE IF EXISTS `mini_goods_comment`;

CREATE TABLE `mini_goods_comment` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增唯一ID',
  `uid` int(20) DEFAULT NULL,
  `goods_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '对应文章ID',
  `order_id` varchar(20) DEFAULT NULL COMMENT '订单号',
  `createtime` int(11) NOT NULL DEFAULT '0' COMMENT '评论时间',
  `content` text NOT NULL COMMENT '评论正文',
  `approved` varchar(20) NOT NULL DEFAULT '0' COMMENT '审核 0-待审核  1-已审核',
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父评论ID',
  `score` int(2) DEFAULT NULL COMMENT '商品评分',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态 -1-删除  1-正常',
  PRIMARY KEY (`id`),
  KEY `comment_post_ID` (`goods_id`),
  KEY `comment_approved_date_gmt` (`approved`),
  KEY `comment_parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mini_goods_comment` */

/*Table structure for table `mini_key_value` */

DROP TABLE IF EXISTS `mini_key_value`;

CREATE TABLE `mini_key_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection` varchar(128) NOT NULL COMMENT '命名集合键和值对',
  `uuid` varchar(128) NOT NULL DEFAULT 'default' COMMENT '系统唯一标识',
  `name` varchar(128) NOT NULL COMMENT '键名',
  `value` longtext NOT NULL COMMENT 'The value.',
  PRIMARY KEY (`id`,`collection`,`uuid`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `mini_key_value` */

insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (1,'config.base','default','web_allow_register','1');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (2,'config.base','default','web_site_close','0');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (3,'config.base','default','web_site_description','小微云商电子商城解决方案');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (4,'config.base','default','web_site_icp','');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (5,'config.base','default','web_site_keyword','小微云商 v1.0');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (6,'config.base','default','web_site_title','小微云商 v1.0');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (7,'config.base','default','web_allow_ticket','0');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (8,'indextheme','default','name','default');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (9,'posts.form','9db99141-65a4-2393-bfa8-d4d100e1a1f4','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (10,'posts.form','1d3fa553-6e07-eed6-f459-4694de378122','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (11,'term.taxonomy','1caad667-985e-4b91-ef4a-fbbac872fbce','page_num','20');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (12,'term.taxonomy','1caad667-985e-4b91-ef4a-fbbac872fbce','lists_tpl','news_list');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (13,'term.taxonomy','1caad667-985e-4b91-ef4a-fbbac872fbce','detail_tpl','news_detail');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (14,'term.taxonomy','1caad667-985e-4b91-ef4a-fbbac872fbce','bind_form','article');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (15,'term.taxonomy','75d26c72-c68f-6c2b-3f5d-da6b85915a1c','page_num','20');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (16,'term.taxonomy','75d26c72-c68f-6c2b-3f5d-da6b85915a1c','lists_tpl','news_list');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (17,'term.taxonomy','75d26c72-c68f-6c2b-3f5d-da6b85915a1c','detail_tpl','news_detail');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (18,'term.taxonomy','75d26c72-c68f-6c2b-3f5d-da6b85915a1c','bind_form','article');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (19,'term.taxonomy','8e830d6a-2be3-ad99-08b5-de279d877937','page_num','20');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (20,'term.taxonomy','8e830d6a-2be3-ad99-08b5-de279d877937','lists_tpl','news_list');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (21,'term.taxonomy','8e830d6a-2be3-ad99-08b5-de279d877937','detail_tpl','news_detail');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (22,'term.taxonomy','8e830d6a-2be3-ad99-08b5-de279d877937','bind_form','article');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (25,'posts.form','224ac0b6-a569-3d4d-aad4-f96d5cf4869d','description','小微云商1.0正式上线啦，欢迎大家使用！');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (26,'posts.cover','224ac0b6-a569-3d4d-aad4-f96d5cf4869d','cover_path_1','/uploads/picture/20160926/be449a2e369d8b41cb949b2164d89360.jpg');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (27,'posts.form','effd77f3-b1e0-d78b-3a72-8a02f6cd6aea','description','小微企业正式上线，欢迎使用');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (28,'posts.cover','effd77f3-b1e0-d78b-3a72-8a02f6cd6aea','cover_path_1','/uploads/picture/20160926/afbdda0ace1ec75a96c343be7753bdba.jpg');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (29,'posts.form','085b628d-d8ae-d04c-dfa0-61992ca70f29','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (30,'posts.form','3cf4069c-80d0-ac82-fcfe-e7e378569c12','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (31,'posts.form','7df6d672-48ef-b8ed-1d18-74c3770dcbc3','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (32,'posts.form','7faa2c91-b173-6bd2-4b69-c0234c7c1a57','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (33,'posts.form','b64c7e04-b8a0-eeda-0314-35eabe258111','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (34,'posts.form','8bc618f8-c8a4-2219-fee2-2da0a71ca8ff','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (35,'posts.form','8cfc3471-3754-30cb-b030-a11dba360e0c','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (36,'posts.form','9bb4e644-482b-c2cd-68c7-9a1a2f290435','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (37,'posts.form','1c6e5535-86e8-6e0b-548b-02e631b85b20','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (38,'posts.form','879bda21-07f8-df3c-9270-7789515157ed','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (39,'posts.form','74610495-ab86-d787-fa50-8ba3987b680b','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (40,'posts.form','76ce6961-894e-8d13-59c4-49881ddf6748','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (41,'posts.form','94714551-683d-aa79-6fb4-60dd70201473','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (42,'posts.form','11646a6e-cd35-bcdd-4136-c5b392b63a6f','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (43,'posts.form','d27eea5e-e553-d2d5-b05b-9574af56ce3f','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (44,'posts.form','60e38eeb-97a5-61ac-be60-425f9f8eb1c5','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (45,'posts.form','f569d8f0-0510-8c55-2cbf-f29a4ffea591','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (46,'posts.form','e4ec7532-1686-71f3-f57e-e19cc49a81bf','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (47,'posts.form','fabe0485-4f82-643a-6a46-cd8defc7f6d4','page_tpl','page');
insert  into `mini_key_value`(`id`,`collection`,`uuid`,`name`,`value`) values (48,'posts.form','88de9d39-21e8-d00f-c8ff-2b56791ea559','page_tpl','page');

/*Table structure for table `mini_links` */

DROP TABLE IF EXISTS `mini_links`;

CREATE TABLE `mini_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增唯一ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接URL',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '链接标题',
  `image` varchar(255) NOT NULL DEFAULT '' COMMENT '链接图片',
  `target` varchar(25) NOT NULL DEFAULT '' COMMENT '链接打开方式',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '链接描述',
  `visible` varchar(20) NOT NULL DEFAULT 'Y' COMMENT '是否可见（Y/N）',
  `owner` bigint(20) unsigned NOT NULL DEFAULT '1' COMMENT '添加者用户ID',
  `createtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `link_visible` (`visible`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `mini_links` */

insert  into `mini_links`(`id`,`url`,`name`,`image`,`target`,`description`,`visible`,`owner`,`createtime`) values (1,'http://www.baidu.com','百度','','_blank','百度','Y',1,1474877272);

/*Table structure for table `mini_menu` */

DROP TABLE IF EXISTS `mini_menu`;

CREATE TABLE `mini_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;

/*Data for the table `mini_menu` */

insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (1,'文章','fa fa-fw fa-files-o',0,0,'#',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (2,'订单','fa fa-fw fa-exchange',0,3,'#',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (3,'会员','fa fa-fw fa-users',0,4,'#',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (4,'设置','fa fa-gears',0,5,'#',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (5,'个人','fa fa-fw fa-user',0,6,'#',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (31,'写文章','fa fa-fw fa-edit',1,1,'post/add',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (32,'所有文章','fa fa-fw fa-file',1,0,'post/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (37,'分类目录','fa fa-fw fa-cubes',1,2,'taxonomy/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (38,'订单列表','fa fa-money',2,0,'order/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (39,'会员列表','fa fa-fw fa-user',3,0,'member/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (40,'添加会员','fa fa-fw fa-user-plus',3,1,'member/add',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (41,'基本设置','fa  fa-wrench',4,0,'config/edit',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (42,'菜单设置','fa  fa-navicon ',4,1,'menu/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (43,'个人资料','fa fa-user-times',5,0,'user/edit',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (44,'修改密码','fa fa-fw fa-key',5,1,'user/password',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (48,'插件','fa fa-puzzle-piece',0,7,'#',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (49,'广告管理','fa  fa-picture-o',48,1,'banner/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (50,'导航设置','fa  fa-cog',4,2,'navigation/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (51,'页面','fa fa-newspaper-o',0,1,'#',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (52,'所有页面','fa fa-fw fa-file',51,0,'page/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (53,'新增页面','fa fa-edit (alias)',51,1,'page/add',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (54,'权限设置','fa fa-plug',4,0,'authmanager/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (55,'广告位置','fa fa-picture-o',48,0,'banner_position/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (56,'链接管理','fa fa-link',48,3,'links/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (59,'登录','',0,0,'index/index',1,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (58,'评论管理','fa fa-comment-o',48,0,'comment/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (60,'删除分类','',37,0,'taxonomyt/setStatus',1,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (61,'添加分类目录','',37,0,'taxonomy/edit',1,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (64,'主题设置','fa fa-sliders',4,5,'theme/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (65,'微信设置','fa fa-plug',4,0,'wx/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (67,'接口设置','fa fa-support',4,7,'apiconfig/edit',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (68,'数据库','fa fa-cog',0,8,'#',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (69,'数据库备份','fa fa-cog',68,0,'Database/index?type=export',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (70,'数据库还原','fa fa-cog',68,0,'Database/index?type=import',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (71,'商品','fa fa-shopping-cart',0,2,'#',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (72,'所有商品',' fa fa-shopping-cart',71,0,'goods/index',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (73,'添加商品','fa  fa-plus-square',71,1,'goods/goodsAdd',0,0);
insert  into `mini_menu`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`,`status`) values (74,'商品分类','fa fa-list',71,2,'goods/category',0,0);

/*Table structure for table `mini_navigation` */

DROP TABLE IF EXISTS `mini_navigation`;

CREATE TABLE `mini_navigation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `mini_navigation` */

insert  into `mini_navigation`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`) values (1,'首页','fa fa-fw fa-files-o',0,0,'index/index',0);
insert  into `mini_navigation`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`) values (2,'关于我们','fa fa-fw fa-exchange',0,1,'article/page?name=company',0);
insert  into `mini_navigation`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`) values (3,'新闻资讯','fa fa-fw fa-users',0,2,'article/lists?category=news',0);
insert  into `mini_navigation`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`) values (4,'商品中心','fa fa-gears',0,3,'goods/index',0);
insert  into `mini_navigation`(`id`,`name`,`icon`,`pid`,`sort`,`url`,`hide`) values (5,'联系我们','fa fa-fw fa-edit',0,5,'article/page?name=address',0);

/*Table structure for table `mini_orders` */

DROP TABLE IF EXISTS `mini_orders`;

CREATE TABLE `mini_orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(128) NOT NULL,
  `uid` int(11) NOT NULL COMMENT '用户id',
  `order_no` varchar(20) NOT NULL COMMENT '订单号',
  `print_no` varchar(30) DEFAULT NULL COMMENT '小票打印机单号',
  `express_type` varchar(100) DEFAULT NULL COMMENT '快递方式',
  `express_no` varchar(100) DEFAULT NULL COMMENT '快递编号',
  `pay_type` varchar(10) NOT NULL COMMENT '支付方式',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `createtime` int(11) NOT NULL,
  `is_pay` int(11) NOT NULL DEFAULT '0',
  `status` varchar(10) NOT NULL COMMENT '支付状态',
  `memo` varchar(255) DEFAULT NULL COMMENT '订单备注',
  `consignee_name` varchar(100) DEFAULT NULL COMMENT '收货人',
  `address` text COMMENT '收货地址',
  `mobile` varchar(11) DEFAULT NULL COMMENT '收货人电话',
  PRIMARY KEY (`id`,`uuid`,`order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mini_orders` */

/*Table structure for table `mini_orders_address` */

DROP TABLE IF EXISTS `mini_orders_address`;

CREATE TABLE `mini_orders_address` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `consignee_name` varchar(100) NOT NULL COMMENT '收货人',
  `province` varchar(100) NOT NULL COMMENT '省',
  `city` varchar(100) NOT NULL COMMENT '市',
  `county` varchar(100) NOT NULL COMMENT '县/区',
  `address` text NOT NULL COMMENT '详细地址',
  `mobile` varchar(11) NOT NULL COMMENT '联系电话',
  `status` int(10) NOT NULL DEFAULT '1' COMMENT '1-正常 -1-已删除',
  `default` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否为默认收货地址1-是 0-否',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mini_orders_address` */

/*Table structure for table `mini_orders_goods` */

DROP TABLE IF EXISTS `mini_orders_goods`;

CREATE TABLE `mini_orders_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(11) NOT NULL COMMENT '订单号',
  `goods_id` int(11) NOT NULL COMMENT '商品id',
  `name` varchar(255) NOT NULL,
  `num` int(10) NOT NULL COMMENT '购买数量',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `description` text NOT NULL,
  `standard` varchar(255) NOT NULL,
  `cover_path` varchar(255) NOT NULL,
  `is_comment` varchar(10) NOT NULL DEFAULT '-1' COMMENT '商品是否评论 -1-否  1-是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mini_orders_goods` */

/*Table structure for table `mini_orders_status` */

DROP TABLE IF EXISTS `mini_orders_status`;

CREATE TABLE `mini_orders_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) NOT NULL COMMENT '订单号',
  `approve_uid` int(50) DEFAULT NULL COMMENT '审核人',
  `trade_no` varchar(50) DEFAULT NULL COMMENT '支付接口流水号',
  `trade_status` varchar(50) DEFAULT NULL COMMENT '支付接口状态',
  `status` varchar(30) NOT NULL COMMENT 'nopaid-未支付 paid-已支付,待发货  shipped-已发货  completed-收货已完成',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mini_orders_status` */

/*Table structure for table `mini_posts` */

DROP TABLE IF EXISTS `mini_posts`;

CREATE TABLE `mini_posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增唯一ID',
  `uid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '对应作者ID',
  `uuid` varchar(128) NOT NULL,
  `createtime` int(11) NOT NULL DEFAULT '0' COMMENT '发布时间',
  `content` longtext NOT NULL COMMENT '正文',
  `title` text NOT NULL COMMENT '标题',
  `description` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'publish' COMMENT '文章状态（publish/draft/inherit等）',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open' COMMENT '评论状态（open/closed）',
  `password` varchar(20) NOT NULL DEFAULT '' COMMENT '文章密码',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '文章缩略名',
  `updatetime` int(11) NOT NULL DEFAULT '0' COMMENT '修改时间',
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父文章，主要用于PAGE',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` varchar(20) NOT NULL DEFAULT 'post' COMMENT '文章类型（post/page等）',
  `comment` bigint(20) NOT NULL DEFAULT '0' COMMENT '评论总数',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '文章浏览量',
  PRIMARY KEY (`id`),
  KEY `post_name` (`name`(191)),
  KEY `type_status_date` (`type`,`status`,`createtime`,`id`),
  KEY `post_parent` (`pid`),
  KEY `post_author` (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `mini_posts` */

insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (1,1,'86a350ae-3b57-9084-aca5-85b40bcbfc2b',1474852188,'<p>关于我们<br/></p>','关于我们','','publish','open','','',1474852188,0,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (2,1,'9db99141-65a4-2393-bfa8-d4d100e1a1f4',1474852669,'<p><span style=\"color: rgb(50, 50, 50); font-family: &#39;Century Gothic&#39;, &#39;Microsoft yahei&#39;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\"><span class=\"Apple-converted-space\">&nbsp;</span>小微云商基于thinkphp框架开发，随着thinkphp v5.0 完整版的正式发布，小微云商的推出，适时地满足了上网企业及开发者对于thinkphp5.0 版本的需求。小微云商丰富了标签元素，文章类型及商品的标签化，方便开发者对于网站的建设。对于thinkphp的初学者来说更是一大便利。</span><br/><span style=\"color: rgb(50, 50, 50); font-family: &#39;Century Gothic&#39;, &#39;Microsoft yahei&#39;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">2小微云商定性为小型的企业商城，在完全满足企业网站需求的同时，融入了在线购物商城的板块，满足了个别企业对于自身产品及商品的在线销售及推广，推动了网络对企业发展的积极作用。</span><br/><span style=\"color: rgb(50, 50, 50); font-family: &#39;Century Gothic&#39;, &#39;Microsoft yahei&#39;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">3 随着移动互联网的迅速发展，企业在手机端、微信端推广的需求日益增强。小微云商三站合一，PC端、微信端、手机端的合体，充分满足了企业上网服务的需求与发展。</span><br/><span style=\"color: rgb(50, 50, 50); font-family: &#39;Century Gothic&#39;, &#39;Microsoft yahei&#39;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">4 小微云商在与同类型的商城网站对比中，版块足够小，在满足中小型企业对于产品或商品销售推广需求的前提下，去除了其他商城网站中不必要的复杂模块。因此，小微云商对于企业及开发者而言，操作更加简单，功能拓展更加灵活。</span><br/><span style=\"color: rgb(50, 50, 50); font-family: &#39;Century Gothic&#39;, &#39;Microsoft yahei&#39;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">5 后台管理更加人性化，导航设置、模板主题设置、权限设置、插件配置（广告、评论、友情链接等）、接口配置（微信、短信、小票打印机、微信支付、支付宝支付等）等菜单，能够满足普通企业及附有产品或商品销售和推广企业的上网服务需求。</span><br/><span style=\"color: rgb(50, 50, 50); font-family: &#39;Century Gothic&#39;, &#39;Microsoft yahei&#39;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">6 小微云商实现了模板分离，企业用户及开发者在后台更换主题模板，便可随时切换整套网站的主题风格，给访问者一种不一样的视觉体验。</span><br/><span style=\"color: rgb(50, 50, 50); font-family: &#39;Century Gothic&#39;, &#39;Microsoft yahei&#39;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">7 具有智能表单功能，发布文章勾选文章表单，商品上架勾选商品表单，开发者可根据参数需求设置任一表单，充分满足企业及开发者业务需求。</span><br/><span style=\"color: rgb(50, 50, 50); font-family: &#39;Century Gothic&#39;, &#39;Microsoft yahei&#39;; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">8 小微云商实现了与微信的对接。微信作为目前最火热的沟通产品，占据了人们大部分的生活及业务时间，微信公众号已经成为企业推广品牌及商品的重要工具。小微云商通过后台对微信的参数配置，能够满足客户及开发者对于微信平台的业务需求，同时为公众平台的二次开发提供了更有利的基础</span></p>','企业简介','','publish','open','','company',1474852669,1,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (3,1,'1d3fa553-6e07-eed6-f459-4694de378122',1474853044,'<p>企业文化</p>','企业文化','','publish','open','','culture',1474853044,1,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (4,1,'224ac0b6-a569-3d4d-aad4-f96d5cf4869d',1474855015,'<p><span style=\"color: rgb(128, 128, 128); font-family: &#39;Microsoft YaHei&#39;, Verdana, Geneva, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 20px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">社会正步入互联网+时代，未来经济发展的一大特点就是网络化。中国的互联网正处于一个高速发展期，不少企业都充分认识到网络对企业发展的积极作用，都纷纷推动企业上网工程。于是为企业解决上网服务的公司及产品亦如雨后春笋，由于建网站门槛很低，造成此市场无序而激烈。</span><br/><span style=\"color: rgb(128, 128, 128); font-family: &#39;Microsoft YaHei&#39;, Verdana, Geneva, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: start; text-indent: 20px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);\">小微云商作为一款集微信、PC、手机三站为一体的小型综合产品，打破了市场上单一的产品类型，为中小型企业提供更便捷的电子商务解决方案</span></p>','小微云商产品介绍','','publish','open','','',1474855126,0,0,'post',0,1);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (5,1,'effd77f3-b1e0-d78b-3a72-8a02f6cd6aea',1474855262,'<p><a href=\"http://minishop.qa114.com/index.php/index/article/detail.html?id=14&category=info\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); text-decoration: none; outline: none; font-family: &#39;Microsoft YaHei&#39;, Verdana, Geneva, sans-serif; font-size: 18px; font-style: normal; font-variant: normal; font-weight: bold; letter-spacing: normal; line-height: 25.7143px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);\">行业资讯测试</a><br/></p>','行业资讯测试','','publish','open','','',1474855262,0,0,'post',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (6,1,'085b628d-d8ae-d04c-dfa0-61992ca70f29',1474857641,'<p>发展历程</p>','发展历程','','publish','open','','history',1474857641,1,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (7,1,'7df6d672-48ef-b8ed-1d18-74c3770dcbc3',1474857699,'<p>资质荣誉<br/></p>','资质荣誉','','publish','open','','honor',1474857719,1,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (8,1,'7faa2c91-b173-6bd2-4b69-c0234c7c1a57',1474861254,'<p>联系我们</p>','联系我们','','publish','open','','address',1474861254,0,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (9,1,'b64c7e04-b8a0-eeda-0314-35eabe258111',1474875879,'<p>帮助中心<br/></p>','帮助中心','','publish','open','','help',1474875879,0,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (10,1,'9bb4e644-482b-c2cd-68c7-9a1a2f290435',1474875914,'<p>购物指南</p>','购物指南','','publish','open','','shopping',1474875983,9,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (11,1,'8cfc3471-3754-30cb-b030-a11dba360e0c',1474875963,'<p>账号注册</p>','账号注册','','publish','open','','registration',1474875963,10,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (12,1,'1c6e5535-86e8-6e0b-548b-02e631b85b20',1474876064,'<p>购物流程</p>','购物流程','','publish','open','','process',1474876064,10,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (13,1,'879bda21-07f8-df3c-9270-7789515157ed',1474876127,'<p>售后服务<br/></p>','售后服务','','publish','open','','service',1474876127,9,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (14,1,'74610495-ab86-d787-fa50-8ba3987b680b',1474876180,'<p>先行赔付</p>','先行赔付','','publish','open','','payment',1474876180,13,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (15,1,'76ce6961-894e-8d13-59c4-49881ddf6748',1474876216,'<p>退货流程</p>','退货流程','','publish','open','','refund',1474876216,13,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (16,1,'94714551-683d-aa79-6fb4-60dd70201473',1474876249,'<p>投诉举报</p>','投诉举报','','publish','open','','complain',1474876249,13,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (17,1,'11646a6e-cd35-bcdd-4136-c5b392b63a6f',1474876284,'<p>支付方式</p>','支付方式','','publish','open','','payway',1474876284,9,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (18,1,'d27eea5e-e553-d2d5-b05b-9574af56ce3f',1474876316,'<p>支付宝</p>','支付宝','','publish','open','','alipay',1474876316,17,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (19,1,'f569d8f0-0510-8c55-2cbf-f29a4ffea591',1474876350,'<p>微信支付</p>','微信支付','','publish','open','','wxpay',1474876382,17,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (20,1,'e4ec7532-1686-71f3-f57e-e19cc49a81bf',1474876431,'<p>配送方式<br/></p>','配送方式','','publish','open','','distributionway',1474876431,9,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (21,1,'fabe0485-4f82-643a-6a46-cd8defc7f6d4',1474876534,'<p>配送范围</p>','配送范围','','publish','open','','distribution',1474876534,20,0,'page',0,0);
insert  into `mini_posts`(`id`,`uid`,`uuid`,`createtime`,`content`,`title`,`description`,`status`,`comment_status`,`password`,`name`,`updatetime`,`pid`,`level`,`type`,`comment`,`view`) values (22,1,'88de9d39-21e8-d00f-c8ff-2b56791ea559',1474876595,'<p>运费计算</p>','运费计算','','publish','open','','freight',1474876595,0,0,'page',0,0);

/*Table structure for table `mini_term_relationships` */

DROP TABLE IF EXISTS `mini_term_relationships`;

CREATE TABLE `mini_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '对应文章ID/链接ID',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '对应分类方法ID',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `mini_term_relationships` */

insert  into `mini_term_relationships`(`object_id`,`term_taxonomy_id`,`sort`) values (4,2,0);
insert  into `mini_term_relationships`(`object_id`,`term_taxonomy_id`,`sort`) values (5,3,0);

/*Table structure for table `mini_term_taxonomy` */

DROP TABLE IF EXISTS `mini_term_taxonomy`;

CREATE TABLE `mini_term_taxonomy` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类方法ID',
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '分类方法(post_tag)',
  `uuid` varchar(128) NOT NULL,
  `taxonomy` varchar(32) NOT NULL DEFAULT '' COMMENT '分类方法(category)',
  `description` longtext NOT NULL,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '所属父分类方法ID',
  `count` bigint(20) NOT NULL DEFAULT '0' COMMENT '文章数统计',
  PRIMARY KEY (`id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `mini_term_taxonomy` */

insert  into `mini_term_taxonomy`(`id`,`term_id`,`uuid`,`taxonomy`,`description`,`pid`,`count`) values (1,1,'1caad667-985e-4b91-ef4a-fbbac872fbce','category','',0,0);
insert  into `mini_term_taxonomy`(`id`,`term_id`,`uuid`,`taxonomy`,`description`,`pid`,`count`) values (2,2,'75d26c72-c68f-6c2b-3f5d-da6b85915a1c','category','',1,0);
insert  into `mini_term_taxonomy`(`id`,`term_id`,`uuid`,`taxonomy`,`description`,`pid`,`count`) values (3,3,'8e830d6a-2be3-ad99-08b5-de279d877937','category','',1,0);

/*Table structure for table `mini_terms` */

DROP TABLE IF EXISTS `mini_terms`;

CREATE TABLE `mini_terms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(200) NOT NULL DEFAULT '' COMMENT '分类名',
  `slug` varchar(200) NOT NULL DEFAULT '' COMMENT '缩略名',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `mini_terms` */

insert  into `mini_terms`(`id`,`name`,`slug`,`term_group`) values (1,'新闻资讯','',0);
insert  into `mini_terms`(`id`,`name`,`slug`,`term_group`) values (2,'企业新闻','news',0);
insert  into `mini_terms`(`id`,`name`,`slug`,`term_group`) values (3,'行业资讯','info',0);

/*Table structure for table `mini_user_extend` */

DROP TABLE IF EXISTS `mini_user_extend`;

CREATE TABLE `mini_user_extend` (
  `group_id` mediumint(10) unsigned NOT NULL COMMENT '用户id',
  `extend_id` varchar(300) NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限',
  UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`),
  KEY `uid` (`group_id`),
  KEY `group_id` (`extend_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户组与分类的对应关系表';

/*Data for the table `mini_user_extend` */

/*Table structure for table `mini_user_group` */

DROP TABLE IF EXISTS `mini_user_group`;

CREATE TABLE `mini_user_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL DEFAULT '' COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为-1禁用',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `mini_user_group` */

insert  into `mini_user_group`(`id`,`module`,`type`,`title`,`description`,`status`,`rules`) values (1,'admin',1,'测试用户组','',1,'');

/*Table structure for table `mini_user_group_access` */

DROP TABLE IF EXISTS `mini_user_group_access`;

CREATE TABLE `mini_user_group_access` (
  `uid` bigint(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `mini_user_group_access` */

/*Table structure for table `mini_user_rule` */

DROP TABLE IF EXISTS `mini_user_rule`;

CREATE TABLE `mini_user_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `mini_user_rule` */

/*Table structure for table `mini_users` */

DROP TABLE IF EXISTS `mini_users`;

CREATE TABLE `mini_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(128) NOT NULL COMMENT '系统唯一标识符',
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` varchar(11) NOT NULL,
  `regdate` int(10) NOT NULL DEFAULT '0',
  `regip` char(15) NOT NULL DEFAULT '0',
  `salt` varchar(6) NOT NULL DEFAULT '0' COMMENT '加密盐',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1正常，2禁用，-1删除',
  `last_login` int(11) DEFAULT NULL COMMENT '最后登录时间',
  `wechat_openid` varchar(255) DEFAULT NULL COMMENT '微信openid',
  `qq_openid` varchar(255) DEFAULT NULL COMMENT 'qqopenid',
  `sina_openid` varchar(255) NOT NULL COMMENT '微博openid',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE,
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

/*Table structure for table `mini_wx_menu` */

DROP TABLE IF EXISTS `mini_wx_menu`;

CREATE TABLE `mini_wx_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '菜单名',
  `type` mediumint(2) NOT NULL COMMENT '菜单类型(1跳转，2消息)',
  `url` varchar(225) NOT NULL COMMENT '菜单跳转地址',
  `msg` varchar(1000) NOT NULL COMMENT '回复消息',
  `parent` int(11) NOT NULL DEFAULT '0' COMMENT '父id',
  `key` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mini_wx_menu` */

/*Table structure for table `mini_wx_reply` */

DROP TABLE IF EXISTS `mini_wx_reply`;

CREATE TABLE `mini_wx_reply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` mediumint(2) NOT NULL COMMENT '回复类型，1关注回复2消息回复3关键词回复',
  `key` varchar(225) DEFAULT NULL COMMENT '关键词',
  `msg` varchar(1000) DEFAULT NULL COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


