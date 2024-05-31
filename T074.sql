/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t074`;
CREATE DATABASE IF NOT EXISTS `t074` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t074`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springboot0w575/upload/1618711431899.jpg'),
	(2, 'picture2', 'http://localhost:8080/springboot0w575/upload/1618711439101.jpg'),
	(3, 'picture3', 'http://localhost:8080/springboot0w575/upload/1618712696871.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discusswenda`;
CREATE TABLE IF NOT EXISTS `discusswenda` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618713275269 DEFAULT CHARSET=utf8mb3 COMMENT='问答评论表';

DELETE FROM `discusswenda`;
INSERT INTO `discusswenda` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(121, '2021-04-17 12:29:57', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(122, '2021-04-17 12:29:57', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(123, '2021-04-17 12:29:57', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(124, '2021-04-17 12:29:57', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(125, '2021-04-17 12:29:57', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(126, '2021-04-17 12:29:57', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1618713275268, '2021-04-18 02:34:34', 1618713188366, 11, '用户1', '这里可以进行解答', '多谢解答');

DROP TABLE IF EXISTS `discusswenzhangxinxi`;
CREATE TABLE IF NOT EXISTS `discusswenzhangxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618713218800 DEFAULT CHARSET=utf8mb3 COMMENT='文章信息评论表';

DELETE FROM `discusswenzhangxinxi`;
INSERT INTO `discusswenzhangxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2021-04-17 12:29:57', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2021-04-17 12:29:57', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2021-04-17 12:29:57', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2021-04-17 12:29:57', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2021-04-17 12:29:57', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2021-04-17 12:29:57', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussziliaoxiazai`;
CREATE TABLE IF NOT EXISTS `discussziliaoxiazai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618713253911 DEFAULT CHARSET=utf8mb3 COMMENT='资料下载评论表';

DELETE FROM `discussziliaoxiazai`;
INSERT INTO `discussziliaoxiazai` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(111, '2021-04-17 12:29:57', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(112, '2021-04-17 12:29:57', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(113, '2021-04-17 12:29:57', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(114, '2021-04-17 12:29:57', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(115, '2021-04-17 12:29:57', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(116, '2021-04-17 12:29:57', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1618713253910, '2021-04-18 02:34:13', 1618713118864, 11, '用户1', 'dsarfe', '1');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618713288474 DEFAULT CHARSET=utf8mb3 COMMENT='论坛交流';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(71, '2021-04-17 12:29:57', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(72, '2021-04-17 12:29:57', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(73, '2021-04-17 12:29:57', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(74, '2021-04-17 12:29:57', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(75, '2021-04-17 12:29:57', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(1618712856331, '2021-04-18 02:27:36', '一个极简单的MVC提交表单的页面，怎么搞不定？求助。', '<p>&nbsp;</p>\n<div class="user_right" style="box-sizing: border-box; margin: 0px; padding: 14px 12px 12px 0px; float: left; width: 124px;">\n<div class="user_nick_name" style="box-sizing: border-box; margin: 0px; padding: 0px;">\n<div class="user_level" style="box-sizing: border-box; margin: 0px 0px 6px; padding: 0px; position: relative; font-size: 0px;"><span class="user_right_title" style="box-sizing: border-box; margin: 0px 4px 0px 0px; padding: 0px; outline: 0px; display: inline-block; font-size: 13px; color: #999aaa; line-height: 20px; vertical-align: middle;">等级</span>&nbsp;<img class="topic_show_user_level" style="box-sizing: border-box; border: none; vertical-align: middle; outline: 0px; margin-top: 0px; width: 20px; height: 20px; display: inline-block;" src="https://bbs.csdn.net/dist/images/bbs1.png?t=1595470293682" /></div>\n</div>\n<div class="close_topic" style="box-sizing: border-box; margin: 6px 0px 0px; padding: 0px; width: 112px; height: 18px; font-size: 13px; line-height: 18px; color: #555666;">结帖率 82.35%</div>\n</div>\n<div class="post_body post_body_min_h" style="box-sizing: border-box; margin: 0px; padding: 6px 0px; overflow-wrap: break-word; line-height: 24px; clear: both; overflow: auto; color: #222226; position: relative; width: 782px; min-height: 116px;">\n<div class="text" style="box-sizing: border-box; margin: 0px; padding: 0px;">跟网页上的一个例子学习一个MVC处理表单的例子，怎么搞不定啊？提交了表单没有效果，就是页面刷新一下，求助啊！<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />okController页面位于Controller文件夹下，代码如下================<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />using&nbsp;System;<br style="box-sizing: border-box;" />using&nbsp;System.Collections.Generic;<br style="box-sizing: border-box;" />using&nbsp;System.Linq;<br style="box-sizing: border-box;" />using&nbsp;System.Web;<br style="box-sizing: border-box;" />using&nbsp;System.Web.Mvc;<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />namespace&nbsp;WebApplication1.Models<br style="box-sizing: border-box;" />{<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;class&nbsp;okController&nbsp;:&nbsp;Controller<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;{<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//&nbsp;GET:&nbsp;/ok/<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;ActionResult&nbsp;Index()<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;View();<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br style="box-sizing: border-box;" />}<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;class&nbsp;person<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;{<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//[Required(ErrorMessage&nbsp;=&nbsp;"请输入名字")]<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;string&nbsp;name&nbsp;{&nbsp;get;&nbsp;set;&nbsp;}<br style="box-sizing: border-box;" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public string email { get; set; }</div>\n</div>', 0, 1618712717906, '1', '开放'),
	(1618713288473, '2021-04-18 02:34:47', NULL, 'SRFDSTRET', 1618712856331, 11, '用户1', NULL);

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707372539660 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(91, '2021-04-17 12:29:57', 1, '用户名1', '留言内容1', '回复内容1'),
	(92, '2021-04-17 12:29:57', 2, '用户名2', '留言内容2', '回复内容2'),
	(93, '2021-04-17 12:29:57', 3, '用户名3', '留言内容3', '回复内容3'),
	(94, '2021-04-17 12:29:57', 4, '用户名4', '留言内容4', '回复内容4'),
	(95, '2021-04-17 12:29:57', 5, '用户名5', '留言内容5', '回复内容5'),
	(96, '2021-04-17 12:29:57', 6, '用户名6', '留言内容6', '回复内容6'),
	(1618712898262, '2021-04-18 02:28:17', 1618712717906, '1', 'SRSTRDTR', 'DTRETYR'),
	(1707372539659, '2024-02-08 06:08:59', 11, '用户1', '666', NULL);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1707372524232 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1618713212113, '2021-04-18 02:33:31', 11, 1618713033247, 'wenzhangxinxi', '面试指南：算法与数据结构', 'http://localhost:8080/springboot0w575/upload/1618713028407.jpg'),
	(1618713246538, '2021-04-18 02:34:05', 11, 1618713118864, 'ziliaoxiazai', '基于遗传算法的矩形排样', 'http://localhost:8080/springboot0w575/upload/1618713074693.jpg'),
	(1618713265785, '2021-04-18 02:34:25', 11, 1618713188366, 'wenda', 'pytorch加载alexnet预训练模型的使用方法', 'http://localhost:8080/springboot0w575/upload/1618713184354.jpg'),
	(1707372516526, '2024-02-08 06:08:35', 11, 33, 'wenzhangxinxi', '文章标题3', 'http://localhost:8080/springboot0w575/upload/1618711370810.jpg'),
	(1707372524231, '2024-02-08 06:08:43', 11, 53, 'ziliaoxiazai', '资料标题3', 'http://localhost:8080/springboot0w575/upload/ziliaoxiazai_fengmiantu3.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 11, '用户1', 'yonghu', '用户', 'u08jf73c5njwaf6siex904v7v2nrptsh', '2021-04-17 12:31:02', '2024-02-08 07:01:28'),
	(2, 1, 'abo', 'users', '管理员', '4zomtzf10s4j55gpb71xwr8cbowton95', '2021-04-17 12:31:08', '2024-02-08 07:07:36'),
	(3, 1618712717906, '1', 'yonghu', '用户', 'oy8z7llq2zvbufwkh7ubsjlbopym0anp', '2021-04-18 02:25:23', '2021-04-18 03:35:02');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-04-17 12:29:57');

DROP TABLE IF EXISTS `wenda`;
CREATE TABLE IF NOT EXISTS `wenda` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `wentimiaoshu` longtext COMMENT '问题描述',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618713188367 DEFAULT CHARSET=utf8mb3 COMMENT='问答';

DELETE FROM `wenda`;
INSERT INTO `wenda` (`id`, `addtime`, `biaoti`, `tupian`, `wentimiaoshu`, `faburiqi`, `yonghuming`) VALUES
	(61, '2021-04-17 12:29:57', '标题1', 'http://localhost:8080/springboot0w575/upload/wenda_tupian1.jpg', '问题描述1', '2021-04-17', '用户名1'),
	(62, '2021-04-17 12:29:57', '标题2', 'http://localhost:8080/springboot0w575/upload/wenda_tupian2.jpg', '问题描述2', '2021-04-17', '用户名2'),
	(63, '2021-04-17 12:29:57', '标题3', 'http://localhost:8080/springboot0w575/upload/wenda_tupian3.jpg', '问题描述3', '2021-04-17', '用户名3'),
	(64, '2021-04-17 12:29:57', '标题4', 'http://localhost:8080/springboot0w575/upload/wenda_tupian4.jpg', '问题描述4', '2021-04-17', '用户名4'),
	(65, '2021-04-17 12:29:57', '标题5', 'http://localhost:8080/springboot0w575/upload/wenda_tupian5.jpg', '问题描述5', '2021-04-17', '用户名5'),
	(66, '2021-04-17 12:29:57', '标题6', 'http://localhost:8080/springboot0w575/upload/wenda_tupian6.jpg', '问题描述6', '2021-04-17', '用户名6'),
	(1618713188366, '2021-04-18 02:33:07', 'pytorch加载alexnet预训练模型的使用方法', 'http://localhost:8080/springboot0w575/upload/1618713184354.jpg', '<p>我加载了torchvision.models.alexnet，取预训练模型，但是原来alexnet是分1000类的，我只有30类，直接net = torchvision.models.alexnet(pretrained=True,num_classes=30)会报错，说模型不匹配什么的，请问要怎么使用预训练模型呢？</p>', '2021-04-18', '1');

DROP TABLE IF EXISTS `wenzhangfenlei`;
CREATE TABLE IF NOT EXISTS `wenzhangfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangfenlei` varchar(200) NOT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wenzhangfenlei` (`wenzhangfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1618712676242 DEFAULT CHARSET=utf8mb3 COMMENT='文章分类';

DELETE FROM `wenzhangfenlei`;
INSERT INTO `wenzhangfenlei` (`id`, `addtime`, `wenzhangfenlei`) VALUES
	(21, '2021-04-17 12:29:57', '文章分类1'),
	(22, '2021-04-17 12:29:57', '文章分类2'),
	(23, '2021-04-17 12:29:57', '文章分类3'),
	(24, '2021-04-17 12:29:57', '文章分类4'),
	(25, '2021-04-17 12:29:57', '文章分类5'),
	(26, '2021-04-17 12:29:57', '文章分类6'),
	(1618712669796, '2021-04-18 02:24:29', '办公类'),
	(1618712676241, '2021-04-18 02:24:35', '编程类');

DROP TABLE IF EXISTS `wenzhangxinxi`;
CREATE TABLE IF NOT EXISTS `wenzhangxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbiaoti` varchar(200) NOT NULL COMMENT '文章标题',
  `wenzhangfenlei` varchar(200) NOT NULL COMMENT '文章分类',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `wenzhangneirong` longtext COMMENT '文章内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618713033248 DEFAULT CHARSET=utf8mb3 COMMENT='文章信息';

DELETE FROM `wenzhangxinxi`;
INSERT INTO `wenzhangxinxi` (`id`, `addtime`, `wenzhangbiaoti`, `wenzhangfenlei`, `biaoqian`, `tupian`, `wenzhangneirong`, `faburiqi`, `yonghuming`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(31, '2021-04-17 12:29:57', '文章标题1', '文章分类1', '标签1', 'http://localhost:8080/springboot0w575/upload/wenzhangxinxi_tupian1.jpg', '文章内容1', '2021-04-17', '用户名1', 1, 1, '2021-04-18 09:45:56', 3),
	(32, '2021-04-17 12:29:57', '文章标题2', '文章分类2', '标签2', 'http://localhost:8080/springboot0w575/upload/wenzhangxinxi_tupian2.jpg', '文章内容2', '2021-04-17', '用户名2', 2, 2, '2024-02-08 14:01:29', 5),
	(33, '2021-04-17 12:29:57', '文章标题3', '文章分类3', '标签3', 'http://localhost:8080/springboot0w575/upload/1618711370810.jpg', '<p>文章内容3</p>', '2021-04-17', '用户名3', 3, 3, '2024-02-08 14:08:34', 7),
	(34, '2021-04-17 12:29:57', '文章标题4', '文章分类4', '标签4', 'http://localhost:8080/springboot0w575/upload/1618711381772.jpg', '<p>文章内容4</p>', '2021-04-17', '用户名4', 4, 4, '2021-04-18 10:02:54', 5),
	(35, '2021-04-17 12:29:57', '文章标题5', '文章分类5', '标签5', 'http://localhost:8080/springboot0w575/upload/1618711408280.jpg', '<p>文章内容5</p>', '2021-04-17', '用户名5', 5, 5, '2021-04-18 10:25:24', 10),
	(36, '2021-04-17 12:29:57', '文章标题6', '文章分类6', '标签6', 'http://localhost:8080/springboot0w575/upload/1618711418715.jpg', '<p>文章内容6</p>', '2021-04-17', '用户名6', 6, 6, '2021-04-18 10:25:51', 12),
	(1618713033247, '2021-04-18 02:30:32', '面试指南：算法与数据结构', '编程类', 'java', 'http://localhost:8080/springboot0w575/upload/1618713028407.jpg', '<p>今天来介绍另外两个线性表中的数据结构：栈和队列。</p><p><br></p><p>栈 Stack</p><p>栈是一种线性表，只有前后关系，但是相对于数组和链表来说，其元素的操作是受限的。栈只允许在一端进行元素的插入、删除操作，往栈中放入元素我们称之为压栈操作，从栈中取出元素我们称之为出栈。我们可以把栈看作是一个一端开口的羽毛球筒，我们压栈、出栈操作数据的过程，就是我们从筒中放入、取出羽毛球的过程。当然，栈是一种抽象的数据结构，我们在实现它时，既可以使用数组，也可以使用链表。</p><p>————————————————</p><p>版权声明：本文为CSDN博主「QinGeneral」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。</p><p>原文链接：https://blog.csdn.net/u013647453/article/details/115801399</p><p>接下来我们看一下栈的使用情景。</p><p><br></p><p>浏览器网页前进后退</p><p>我们经常会使用浏览器浏览网页，网页中有很多超链接可以跳转到下一个页面。而有时我们希望能够返回上一个页面继续浏览，再返回上一个页面之后，我们还可能再回到刚才的子页面。</p><p><br></p><p>使用两个栈就可以实现这种能够随意前进后退的网页浏览了。</p><p><br></p><p>我们把一开始打开的网页压栈放入栈 a，如果此时点击网页中的链接查看下一个页面，那我们把子页面继续放入栈 a。当我们返回时，把子页面从 a 中出栈，放入栈 b。这个时候我们关闭页面，继续从 a 中出栈放入栈 b 即可。如果我们点击前进按钮，则去栈 b 中出栈即可。也就是说，如果我们把依次打开过的网页放入栈 a 维护，回退的界面放入栈 b 维护。点击后退按钮时，查询栈 a，有页面则出栈，放入栈 b，没有则无法后退；点击前进按钮时，查询栈 b，有页面则出栈，没有则无法前进。</p><p><br></p><p>函数调用栈</p><p>基本每一个编程语言中，都存在函数的概念。一个函数可以调用另外一个函数，那么函数之间的调用是如何实现的呢？也是用栈。</p><p><br></p><p>以 Java 为例，我们编写 Java 代码之后，是编译为 class 字节码，然后交给 Java 虚拟机执行。在 Java 虚拟机中，是使用一个栈来完成函数调用的，每一个函数在栈中所占有的空间称为栈帧。Java 入口函数为 main 函数，执行时先将 main 函数入栈，此时栈帧中会保存该函数的局部变量、操作数栈、动态连接、方法返回地址等内容。当 main 函数调用一个子函数 add 时，虚拟机会继续将 add 函数相关内容压入栈顶，add 函数执行完毕后会出栈，此时 main 函数处于栈顶，会继续执行 main 函数。</p><p><br></p><p>这个例子我们可以看到，对于基础数据结构的理解，可以帮助我们了解平时常用语言、框架的实现细节，对于我们深入学习计算机知识很有帮助。除了以上两个例子之外，栈还可以用来做表达式求值、括号匹配等，感兴趣的话可以自行了解。</p><p><br></p><p>队列 Queue</p><p>————————————————</p><p>版权声明：本文为CSDN博主「QinGeneral」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。</p><p>原文链接：https://blog.csdn.net/u013647453/article/details/115801399</p>', '2021-04-18', '1', 1, 0, '2021-04-18 10:33:41', 3);

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1618712717907 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `lianxidianhua`) VALUES
	(11, '2021-04-17 12:29:57', '用户1', '123456', '姓名1', 'http://localhost:8080/springboot0w575/upload/yonghu_touxiang1.jpg', '男', '13823888881'),
	(12, '2021-04-17 12:29:57', '用户2', '123456', '姓名2', 'http://localhost:8080/springboot0w575/upload/yonghu_touxiang2.jpg', '男', '13823888882'),
	(13, '2021-04-17 12:29:57', '用户3', '123456', '姓名3', 'http://localhost:8080/springboot0w575/upload/yonghu_touxiang3.jpg', '男', '13823888883'),
	(14, '2021-04-17 12:29:57', '用户4', '123456', '姓名4', 'http://localhost:8080/springboot0w575/upload/yonghu_touxiang4.jpg', '男', '13823888884'),
	(15, '2021-04-17 12:29:57', '用户5', '123456', '姓名5', 'http://localhost:8080/springboot0w575/upload/yonghu_touxiang5.jpg', '男', '13823888885'),
	(16, '2021-04-17 12:29:57', '用户6', '123456', '姓名6', 'http://localhost:8080/springboot0w575/upload/yonghu_touxiang6.jpg', '男', '13823888886'),
	(1618712717906, '2021-04-18 02:25:17', '1', '1', '张明', 'http://localhost:8080/springboot0w575/upload/1618712733443.jpg', '男', '12345678978');

DROP TABLE IF EXISTS `ziliaofenlei`;
CREATE TABLE IF NOT EXISTS `ziliaofenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaofenlei` varchar(200) NOT NULL COMMENT '资料分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ziliaofenlei` (`ziliaofenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1618712689256 DEFAULT CHARSET=utf8mb3 COMMENT='资料分类';

DELETE FROM `ziliaofenlei`;
INSERT INTO `ziliaofenlei` (`id`, `addtime`, `ziliaofenlei`) VALUES
	(41, '2021-04-17 12:29:57', '资料分类1'),
	(42, '2021-04-17 12:29:57', '资料分类2'),
	(43, '2021-04-17 12:29:57', '资料分类3'),
	(44, '2021-04-17 12:29:57', '资料分类4'),
	(45, '2021-04-17 12:29:57', '资料分类5'),
	(46, '2021-04-17 12:29:57', '资料分类6'),
	(1618712683388, '2021-04-18 02:24:42', 'python'),
	(1618712689255, '2021-04-18 02:24:48', 'java');

DROP TABLE IF EXISTS `ziliaoxiazai`;
CREATE TABLE IF NOT EXISTS `ziliaoxiazai` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `ziliaobiaoti` varchar(200) NOT NULL COMMENT '资料标题',
  `ziliaofenlei` varchar(200) DEFAULT NULL COMMENT '资料分类',
  `fengmiantu` varchar(200) DEFAULT NULL COMMENT '封面图',
  `neirongjianjie` longtext COMMENT '内容简介',
  `ziliao` varchar(200) DEFAULT NULL COMMENT '资料',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618713118865 DEFAULT CHARSET=utf8mb3 COMMENT='资料下载';

DELETE FROM `ziliaoxiazai`;
INSERT INTO `ziliaoxiazai` (`id`, `addtime`, `ziliaobiaoti`, `ziliaofenlei`, `fengmiantu`, `neirongjianjie`, `ziliao`, `faburiqi`, `yonghuming`) VALUES
	(51, '2021-04-17 12:29:57', '资料标题1', '资料分类1', 'http://localhost:8080/springboot0w575/upload/ziliaoxiazai_fengmiantu1.jpg', '内容简介1', '', '2021-04-17', '用户名1'),
	(52, '2021-04-17 12:29:57', '资料标题2', '资料分类2', 'http://localhost:8080/springboot0w575/upload/ziliaoxiazai_fengmiantu2.jpg', '内容简介2', '', '2021-04-17', '用户名2'),
	(53, '2021-04-17 12:29:57', '资料标题3', '资料分类3', 'http://localhost:8080/springboot0w575/upload/ziliaoxiazai_fengmiantu3.jpg', '内容简介3', '', '2021-04-17', '用户名3'),
	(54, '2021-04-17 12:29:57', '资料标题4', '资料分类4', 'http://localhost:8080/springboot0w575/upload/ziliaoxiazai_fengmiantu4.jpg', '内容简介4', '', '2021-04-17', '用户名4'),
	(55, '2021-04-17 12:29:57', '资料标题5', '资料分类5', 'http://localhost:8080/springboot0w575/upload/ziliaoxiazai_fengmiantu5.jpg', '内容简介5', '', '2021-04-17', '用户名5'),
	(56, '2021-04-17 12:29:57', '资料标题6', '资料分类6', 'http://localhost:8080/springboot0w575/upload/ziliaoxiazai_fengmiantu6.jpg', '内容简介6', '', '2021-04-17', '用户名6'),
	(1618713118864, '2021-04-18 02:31:58', '基于遗传算法的矩形排样', 'python', 'http://localhost:8080/springboot0w575/upload/1618713074693.jpg', '利用遗传算法解决矩形排样问题，具有可视化的界面，输入数据为含有矩形的长和宽的文本文件，输出的结果以可视化的形式显示出来', 'http://localhost:8080/springboot0w575/upload/1618713114494.doc', '2021-04-18', '1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
