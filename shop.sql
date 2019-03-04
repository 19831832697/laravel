/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-03-04 16:43:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `shop_cart`;
CREATE TABLE `shop_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(100) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `buy_num` int(10) DEFAULT NULL COMMENT '购买数量',
  `create_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_cart
-- ----------------------------
INSERT INTO `shop_cart` VALUES ('1', '多芬', '3', '1', '1', '3', '1551336367');
INSERT INTO `shop_cart` VALUES ('2', 'vivoX23', '14', '1', '1', '5', '1551336373');
INSERT INTO `shop_cart` VALUES ('3', '阿道夫', '4', '1', '1', '9', '1551512636');

-- ----------------------------
-- Table structure for shop_cate
-- ----------------------------
DROP TABLE IF EXISTS `shop_cate`;
CREATE TABLE `shop_cate` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(70) DEFAULT NULL,
  `is_show` tinyint(4) DEFAULT '1' COMMENT '是否展示  1展示  2不展示',
  `is_nav` tinyint(4) DEFAULT '2',
  `pid` int(11) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_cate
-- ----------------------------
INSERT INTO `shop_cate` VALUES ('1', '家用电器', '1', '1', '0', '0');
INSERT INTO `shop_cate` VALUES ('2', '电视', '1', '2', '1', '1');
INSERT INTO `shop_cate` VALUES ('3', '空调', '1', '2', '1', '1');
INSERT INTO `shop_cate` VALUES ('4', '冰箱', '1', '2', '1', '1');
INSERT INTO `shop_cate` VALUES ('5', '曲面电视', '1', '2', '2', '2');
INSERT INTO `shop_cate` VALUES ('6', '超薄电视', '1', '2', '2', '2');
INSERT INTO `shop_cate` VALUES ('7', '柜式空调', '1', '2', '3', '2');
INSERT INTO `shop_cate` VALUES ('8', '中央空调', '1', '2', '3', '2');
INSERT INTO `shop_cate` VALUES ('9', '变频空调', '1', '2', '3', '2');
INSERT INTO `shop_cate` VALUES ('10', '壁挂式空调', '1', '2', '3', '2');
INSERT INTO `shop_cate` VALUES ('11', '双门', '1', '2', '4', '2');
INSERT INTO `shop_cate` VALUES ('12', '三门', '1', '2', '4', '2');
INSERT INTO `shop_cate` VALUES ('13', '手机/数码', '1', '1', '0', '0');
INSERT INTO `shop_cate` VALUES ('14', '手机通讯', '1', '2', '13', '1');
INSERT INTO `shop_cate` VALUES ('15', '智能设备', '1', '2', '13', '1');
INSERT INTO `shop_cate` VALUES ('16', '游戏手机', '1', '2', '14', '2');
INSERT INTO `shop_cate` VALUES ('17', '老人机', '1', '2', '14', '2');
INSERT INTO `shop_cate` VALUES ('18', '对讲机', '1', '2', '14', '2');
INSERT INTO `shop_cate` VALUES ('19', '智能手机', '1', '2', '15', '2');
INSERT INTO `shop_cate` VALUES ('20', '智能手表', '1', '2', '15', '2');
INSERT INTO `shop_cate` VALUES ('21', '智能眼镜', '1', '2', '15', '2');
INSERT INTO `shop_cate` VALUES ('22', '服装', '1', '1', '0', '0');
INSERT INTO `shop_cate` VALUES ('23', '男装', '1', '2', '22', '1');
INSERT INTO `shop_cate` VALUES ('24', '女装', '1', '2', '22', '1');
INSERT INTO `shop_cate` VALUES ('25', '童装', '1', '2', '22', '1');
INSERT INTO `shop_cate` VALUES ('26', '风衣', '1', '2', '24', '2');
INSERT INTO `shop_cate` VALUES ('27', '婚纱', '1', '2', '24', '2');
INSERT INTO `shop_cate` VALUES ('28', '礼服', '1', '2', '24', '2');
INSERT INTO `shop_cate` VALUES ('29', '半身裙', '1', '2', '24', '2');
INSERT INTO `shop_cate` VALUES ('30', '打底裤', '1', '2', '24', '2');
INSERT INTO `shop_cate` VALUES ('31', '卫衣', '1', '2', '24', '2');
INSERT INTO `shop_cate` VALUES ('32', '西装', '1', '2', '23', '2');
INSERT INTO `shop_cate` VALUES ('33', '夹克', '1', '2', '23', '2');
INSERT INTO `shop_cate` VALUES ('34', '羽绒服', '1', '2', '23', '2');
INSERT INTO `shop_cate` VALUES ('35', '休闲裤', '1', '2', '23', '2');
INSERT INTO `shop_cate` VALUES ('36', '衬衫', '1', '2', '23', '2');
INSERT INTO `shop_cate` VALUES ('37', '连体衣', '1', '2', '25', '2');
INSERT INTO `shop_cate` VALUES ('38', '亲子装', '1', '2', '25', '2');
INSERT INTO `shop_cate` VALUES ('39', '毛衣', '1', '2', '25', '2');
INSERT INTO `shop_cate` VALUES ('40', '汽车', '1', '1', '0', '0');
INSERT INTO `shop_cate` VALUES ('41', '汽车价格', '1', '2', '40', '1');
INSERT INTO `shop_cate` VALUES ('42', '汽车装饰', '1', '2', '40', '1');
INSERT INTO `shop_cate` VALUES ('43', '汽车品牌', '1', '2', '40', '1');
INSERT INTO `shop_cate` VALUES ('44', '汽车车型', '1', '2', '40', '1');
INSERT INTO `shop_cate` VALUES ('45', '微型车', '1', '2', '44', '2');
INSERT INTO `shop_cate` VALUES ('46', '小型车', '1', '2', '44', '2');
INSERT INTO `shop_cate` VALUES ('47', '豪华车', '1', '2', '44', '2');
INSERT INTO `shop_cate` VALUES ('48', '跑车', '1', '2', '44', '2');
INSERT INTO `shop_cate` VALUES ('49', '5-8万', '1', '2', '41', '2');
INSERT INTO `shop_cate` VALUES ('50', '8-12万', '1', '2', '41', '2');
INSERT INTO `shop_cate` VALUES ('51', '12-16万', '1', '2', '41', '2');
INSERT INTO `shop_cate` VALUES ('52', '大众', '1', '2', '43', '2');
INSERT INTO `shop_cate` VALUES ('53', '宝马', '1', '2', '43', '2');
INSERT INTO `shop_cate` VALUES ('54', '五菱', '1', '2', '43', '2');
INSERT INTO `shop_cate` VALUES ('55', '劳斯莱斯', '1', '2', '43', '2');
INSERT INTO `shop_cate` VALUES ('56', '座垫座套', '1', '2', '42', '2');
INSERT INTO `shop_cate` VALUES ('57', '头枕腰套', '1', '2', '42', '2');
INSERT INTO `shop_cate` VALUES ('58', '车钥匙扣', '1', '2', '42', '2');
INSERT INTO `shop_cate` VALUES ('59', '车衣', '1', '2', '42', '2');
INSERT INTO `shop_cate` VALUES ('60', '食品', '1', '1', '0', '0');
INSERT INTO `shop_cate` VALUES ('61', '中外名酒', '1', '2', '60', '1');
INSERT INTO `shop_cate` VALUES ('62', '进口食品', '1', '2', '60', '1');
INSERT INTO `shop_cate` VALUES ('63', '休闲食品', '1', '2', '60', '1');
INSERT INTO `shop_cate` VALUES ('64', '白酒', '1', '2', '61', '2');
INSERT INTO `shop_cate` VALUES ('65', '葡萄酒', '1', '2', '61', '2');
INSERT INTO `shop_cate` VALUES ('66', '啤酒', '1', '2', '61', '2');
INSERT INTO `shop_cate` VALUES ('67', '洋酒', '1', '2', '61', '2');
INSERT INTO `shop_cate` VALUES ('68', '牛奶', '1', '2', '62', '2');
INSERT INTO `shop_cate` VALUES ('69', '饼干蛋糕', '1', '2', '62', '2');
INSERT INTO `shop_cate` VALUES ('70', '方便食品', '1', '2', '62', '2');
INSERT INTO `shop_cate` VALUES ('71', '巧克力', '1', '2', '62', '2');
INSERT INTO `shop_cate` VALUES ('72', '营养零食', '1', '2', '63', '2');
INSERT INTO `shop_cate` VALUES ('73', '膨化食品', '1', '2', '63', '2');
INSERT INTO `shop_cate` VALUES ('74', '坚果', '1', '2', '63', '2');
INSERT INTO `shop_cate` VALUES ('75', '肉干', '1', '2', '63', '2');
INSERT INTO `shop_cate` VALUES ('76', '美妆', '1', '1', '0', '0');
INSERT INTO `shop_cate` VALUES ('77', '面部护肤', '1', '2', '76', '1');
INSERT INTO `shop_cate` VALUES ('78', '香水彩妆', '1', '2', '76', '1');
INSERT INTO `shop_cate` VALUES ('79', '洗发护发', '1', '2', '76', '1');
INSERT INTO `shop_cate` VALUES ('80', '身体护理', '1', '2', '76', '1');
INSERT INTO `shop_cate` VALUES ('81', '洗发水', '1', '2', '79', '2');
INSERT INTO `shop_cate` VALUES ('82', '护发素', '1', '2', '79', '2');
INSERT INTO `shop_cate` VALUES ('83', '美发工具', '1', '2', '79', '2');
INSERT INTO `shop_cate` VALUES ('84', '假发', '1', '2', '79', '2');
INSERT INTO `shop_cate` VALUES ('85', '口腔护理', '1', '2', '76', '1');
INSERT INTO `shop_cate` VALUES ('86', '牙膏', '1', '2', '85', '2');
INSERT INTO `shop_cate` VALUES ('87', '牙贴', '1', '2', '85', '2');
INSERT INTO `shop_cate` VALUES ('88', '漱口水', '1', '2', '85', '2');
INSERT INTO `shop_cate` VALUES ('89', '沐浴露', '1', '2', '80', '2');
INSERT INTO `shop_cate` VALUES ('90', '洗手液', '1', '2', '80', '2');
INSERT INTO `shop_cate` VALUES ('91', '香皂', '1', '2', '80', '2');
INSERT INTO `shop_cate` VALUES ('92', '护手霜', '1', '2', '80', '2');
INSERT INTO `shop_cate` VALUES ('93', '女士香水', '1', '2', '78', '2');
INSERT INTO `shop_cate` VALUES ('94', '口红', '1', '2', '78', '2');
INSERT INTO `shop_cate` VALUES ('95', '腮红', '1', '2', '78', '2');
INSERT INTO `shop_cate` VALUES ('96', '眼影', '1', '2', '78', '2');
INSERT INTO `shop_cate` VALUES ('97', '连衣裙', '1', '2', '24', '2');

-- ----------------------------
-- Table structure for shop_code
-- ----------------------------
DROP TABLE IF EXISTS `shop_code`;
CREATE TABLE `shop_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) DEFAULT NULL,
  `tel` varchar(12) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_code
-- ----------------------------
INSERT INTO `shop_code` VALUES ('1', '2712', '19831832697', '1551420009', '0');

-- ----------------------------
-- Table structure for shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `shop_goods`;
CREATE TABLE `shop_goods` (
  `goods_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(100) DEFAULT NULL,
  `is_tell` int(20) DEFAULT '0',
  `goods_img` varchar(200) DEFAULT NULL,
  `market_price` varchar(20) DEFAULT NULL,
  `goods_price` decimal(10,0) DEFAULT NULL,
  `goods_shelf` varchar(10) DEFAULT '1' COMMENT '上架 下架',
  `goods_sn` varchar(20) DEFAULT NULL COMMENT '商品货号',
  `goods_num` int(11) DEFAULT NULL COMMENT '库存',
  `goods_hot` varchar(10) DEFAULT NULL COMMENT '精品 新品 热卖',
  `sale_num` int(10) DEFAULT NULL COMMENT '销量',
  `goods_product` varchar(300) DEFAULT NULL COMMENT '供货商',
  `goods_desc` varchar(3000) DEFAULT NULL COMMENT '描述',
  `goods_imgs` varchar(200) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_goods
-- ----------------------------
INSERT INTO `shop_goods` VALUES ('1', '美的空调', '0', '20181220\\e693ef4ad614f0ed333d92736520fe00.jpg', '2300', '2799', '1', '', '700', '热卖', '20', '北京供货商', '清爽', '20181220\\e693ef4ad614f0ed333d92736520fe00.jpg', '1', '10');
INSERT INTO `shop_goods` VALUES ('2', '美心', '1', '20181220\\c0ac0ba76cf275ee28f31c84ebbbc4b0.jpg', '137', '136', '1', '', '10', '热卖', '200', '北京供货商', '好吃', '20181220\\c0ac0ba76cf275ee28f31c84ebbbc4b0.jpg', '2', '69');
INSERT INTO `shop_goods` VALUES ('3', '多芬', '1', '20181220\\49cdf0fdb722644de20e3f568f43f73c.jpg', '88', '80', '1', '', '800', '热卖', '299', '上海供货商', '护发', '20181220\\49cdf0fdb722644de20e3f568f43f73c.jpg', '3', '81');
INSERT INTO `shop_goods` VALUES ('4', '阿道夫', '0', '20181218\\bc09ff605349403bbc32569d91849dd5.jpg', '188', '180', '1', '', '10', '热卖', '300', '上海供货商', '', '20181218\\bc09ff605349403bbc32569d91849dd5.jpg', '4', '81');
INSERT INTO `shop_goods` VALUES ('5', '云南白药', '0', '20181221\\e42dfe45bcec674a764124558969334c.jpg', '4799', '4799', '1', '', '100', '热卖', '500', '北京供货商', '<img src=\"/upload/20181219/732fec06e1fbeed47e8927be94eff522.jpg\" alt=\"商品详情图片\">', '20181219\\2800a8dca51a18ce50c2de2c3d4d871a.jpg|20181219\\7e2967627a7a6b602e8bbba2926fd56f.jpg|20181219\\c978cff8d8d9956b69e275e43d28ebe1.jpg|20181219\\6dabfa21a74b72809562f5dbcc6a1d7b.jpg|', '1', '86');
INSERT INTO `shop_goods` VALUES ('6', '璞衣', '0', '20181220\\d2beb3eb913e348db49d2b6b906a450e.jpg', '120', '119', '1', '', '666', '热卖-精品', '200', '北京供货商', '舒适保暖', '20181220\\9f71e9df61f51e651c6dc2bafefc77fe.jpg|', '11', '26');
INSERT INTO `shop_goods` VALUES ('7', '波菲熊', '0', '20181220\\df4812a0dc1437232ae1cbd1dca162a7.jpg', '160', '158', '1', '', '100', '精品-新品', '378', '河北供货商', '美丽大方典雅', '20181220\\4c2037e3f70631eb1e675f9d02e99e66.jpg|', '12', '97');
INSERT INTO `shop_goods` VALUES ('8', '洛诗琳连衣裙', '1', '20181220\\1add7501e45d997f2900d4c735f643b6.jpg', '300', '329', '1', '', '999', '热卖', '1200', '唐山供货商', '舒适', '20181220\\4c7c0cbf84a5172ec847df3b6aa25dd4.jpg|', '13', '97');
INSERT INTO `shop_goods` VALUES ('9', '宝马（BMW）X5', '0', '20181220\\8129e0787ccb01e5fa0695d4f4d40027.jpg', '10000', '10000', '1', '', '100', '热卖-精品', '248', '北京供货商', '豪气', '20181220\\c5b07fd29921e365088f8db7b97ceb28.jpg|', '7', '53');
INSERT INTO `shop_goods` VALUES ('10', '名爵（MG）', '0', '20181220\\d133c35108e65f89f47d0a97d2d2f843.jpg', '9000', '9000', '1', '', '100', '热卖-新品', '390', '北京供货商', '速度快', '20181220\\97be51cfa9f953262fff9000693340a5.jpg|', '14', '46');
INSERT INTO `shop_goods` VALUES ('11', 'vivo 【直降100 】Z3 高通骁龙', '0', '20181220\\85e95baf44546820b9d288c4e1b6c678.jpg', '1799', '1798', '1', '', '100', '热卖-精品', '1000', '上海供货商', '<ul class=\"parameter1 p-parameter-list\"><li class=\"fore1\"><div class=\"detail\"><p title=\"1600万+200万像素\">后置摄像头：1600万+200万像素</p><p title=\"2x1200万像素（2400万感光单元）\">前置摄像头：2x1200万像素（2400万感光单元）</p></div></li><li class=\"fore1\"><div><br></div></li><li class=\"fore2\"></li></ul>', '20181220\\d4ee3dfd383f015aacd4c3a73ab446bb.jpg|', '15', '19');
INSERT INTO `shop_goods` VALUES ('12', '飞利浦', '0', '20181220\\f910fae3be4ae94e841eb9b2a9bec3b9.jpg', '200', '198', '1', '', '100', '热卖-精品-新品', '200', '北京供货商', '老年功能机', '20181220\\a0b5a46b667b9ca5c94dbdf34c48da59.jpg|', '16', '17');
INSERT INTO `shop_goods` VALUES ('13', '飞利浦 PHILIPS E256S 陨石黑 双屏翻盖 大屏大字 长待机 移动联通2G 双卡双待 老人手机 学生备用功能机', '0', '20181220\\b21e88ecda9dd940339417c97af2ee8a.jpg', '300', '299', '1', '', '100', '精品', '100', '湖南供货商', '<p title=\"30万像素\">后置摄像头：30万像素</p><p title=\"无\">前置摄像头：无</p>', '20181220\\33939d375dc070575313663b90eb315d.jpg|', '16', '19');
INSERT INTO `shop_goods` VALUES ('14', 'vivoX23', '1', '20181220\\0cb5bd8233a101e1ac610f7d33095459.jpg', '2999', '2793', '1', '', '100', '热卖', '1890', '北京供货商', '幻彩版', '20181220\\e3916b51f65fce07aa26ee087918283f.jpg|', '15', '19');
INSERT INTO `shop_goods` VALUES ('15', ' 荣耀8X 千元屏霸 91%屏占比 2000万AI双摄 4GB+64GB 幻影蓝 移动联通电信4G全面屏手机 双卡双待', '0', '20181220\\db865c24c1335c431572104a042b7bbb.jpg', '1399.00', '1399', '1', '', '100', '热卖-精品', '2000', '北京供货商', '<p><span>限时赠送耳机，送完即止！麒麟710！2000万AI双摄！</span><a href=\"https://sale.jd.com/mall/hF2HXITYgxb5c0.html\" target=\"_blank\">荣耀爆品特惠，选品质，购荣耀~</a></p>', '20181220\\b55cdd6213ede95ce47da3c5b7e429be.jpg|20181220\\cc0224c3236619decaf9a1bfe5a991d7.jpg|20181220\\f6af2130d786a7dffb19dfa0111f0544.jpg|', '17', '16');
INSERT INTO `shop_goods` VALUES ('16', '华为 HUAWEI P20 AI智慧徕卡双摄全面屏游戏手机 6GB+64GB 极光色 全网通移动联通电信4G手机 双卡双待', '0', '20181220\\2ef1c1a6c9f120b7ccfae51b483d6852.jpg', '3388.00', '3388', '1', '', '188', '热卖-精品-新品', '1300', '北京供货商', '<p><span>下单减200+白条6期免息+到手价3188！】麒麟970芯片/DxO评分过百！</span><a href=\"https://sale.jd.com/act/DhKrOjXnFcGL.html\" target=\"_blank\">Nova4全新上市，新品不断，详情猛戳》</a></p>', '20181220\\5a1628ea89414a7261c441e8ada7e39c.jpg|20181220\\6bdab4de846b520a2d696b28dd073eec.jpg|20181220\\e25b14a170637e6c5905a32f2d3c35d5.jpg|', '17', '16');
INSERT INTO `shop_goods` VALUES ('17', '荣耀9青春版 全网通 标配版 3GB+32GB 珠光白 移动联通电信4G全面屏手机 双卡双待', '0', '20181220\\6618242e752c43986979b1b1dbcfffdd.jpg', '999.00', '999', '1', '', '100', '热卖-精品', '167', '北京供货商', '<p><span>全屏四摄，正反都美！</span><a href=\"https://sale.jd.com/mall/hF2HXITYgxb5c0.html\" target=\"_blank\">荣耀爆品特惠，选品质，购荣耀~</a></p>', '20181220\\bff89983ea17f32abf92cade9a13f9d7.jpg|20181220\\78da59f58b42e6f58a4427ad17e1d862.jpg|20181220\\9d64a5369011656ad7a5451788f0106d.jpg|', '17', '16');
INSERT INTO `shop_goods` VALUES ('18', '长虹55D7C 55英寸4K超高清曲面 7.8mm超薄全面屏 人工智能全金属平板液晶电视机（黑色）', '0', '20181220\\74f9bf4d0f6ed105d0f1224210b96dee.jpg', '3699.00', '3699', '1', '', '208', '热卖-新品', '298', '北京供货商', '<p><span>下单立省100元】①2018年全光域曲面新品； ②金属一体化机身，声纹识别、个性推荐</span><a target=\"_blank\" href=\"https://sale.jd.com/act/VuCYTEc7k5Opfv.html\">长虹换新专场</a></p>', '20181220\\eb03aabeda07716f61ecebb1b5eadf38.jpg|20181220\\8a7a2f5c229f36da7ba49e3fac60bfb1.jpg|20181220\\b65b23840fc8ae8032983e77fcfe8e17.jpg|', '18', '5');
INSERT INTO `shop_goods` VALUES ('19', '长虹（CHANGHONG）65D7C 65英寸AI3.0人工智能4K超高清HDR超薄曲面护眼液晶电视', '0', '20181220\\77e3f9b399e6cbd66e3326284bfe1473.jpg', '5999.00', '5999', '1', '', '100', '热卖-精品-新品', '387', '北京供货商', '<div class=\"p-parameter\"><ul id=\"parameter-brand\" class=\"p-parameter-list\"><li title=\"长虹（CHANGHONG）\">品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=737,794,798&amp;ev=exbrand_20710\" clstag=\"shangpin|keycount|product|pinpai_1\" target=\"_blank\">长虹（CHANGHONG）</a></li></ul><ul class=\"parameter2 p-parameter-list\"><li title=\"长虹（CHANGHONG）65D7C\">商品名称：长虹（CHANGHONG）65D7C</li><li title=\"28296786674\">商品编号：28296786674</li><li title=\"长虹电视旗舰店\">店铺：&nbsp;<a href=\"https://changhongtv.jd.com/\" target=\"_blank\">长虹电视旗舰店</a></li><li title=\"32.5kg\">商品毛重：32.5kg</li><li title=\"3m-3.5m（56-65英寸）\">观看距离：3m-3.5m（56-65英寸）</li><li title=\"4k超高清（3840×2160）\">分辨率：4k超高清（3840×2160）</li><li title=\"3级\">能效等级：3级</li><li title=\"65英寸\">屏幕尺寸：65英寸</li><li title=\"10.0-8.0\">选购指数：10.0-8.0</li></ul><p class=\"more-par\" style=\"text-align: right;\"><a href=\"https://item.jd.com/28296786674.html#product-detail\" class=\"J-more-param\">更多参数<span class=\"txt-arr\">&gt;&gt;</span></a></p></div><div id=\"suyuan-video\"></div><div id=\"J-detail-banner\" style=\"text-align: center;\"></div><div id=\"J-detail-pop-tpl-top-new\" clstag=\"shangpin|keycount|product|pop-glbs\"><p style=\"text-align: center;\"><img src=\"http://img10.360buyimg.com/imgzone/jfs/t1/11345/16/3001/296221/5c18b190E3b2f49c2/04dd7b58844372e5.jpg\" alt=\"\" width=\"990\" height=\"1400\" usemap=\"#swde\"></p></div>', '20181220\\17981dd9984135b46109990fd1786742.jpg|20181220\\bf802957fb780aaa03b13ba35c95a313.jpg|20181220\\1a6715b391e90c3fc64709f0c86ce0e1.jpg|', '18', '5');
INSERT INTO `shop_goods` VALUES ('20', '长虹 65D3C 65英寸电视 32核4K超高清HDR 曲面人工智能液晶智能平板电视机（黑色）', '0', '20181220\\399a20280c69c18283b26ef366f28648.jpg', '4298.00 ', '4298', '1', '', '100', '热卖-精品-新品', '389', '北京供货商', '<div class=\"p-parameter\"><ul id=\"parameter-brand\" class=\"p-parameter-list\"><li title=\"长虹（CHANGHONG）\">品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=737,794,798&amp;tid=798&amp;ev=exbrand_20710\" clstag=\"shangpin|keycount|product|pinpai_1\" target=\"_blank\">长虹（CHANGHONG）</a></li></ul><ul class=\"parameter2 p-parameter-list\"><li title=\"长虹65D3C\">商品名称：长虹65D3C</li><li title=\"5188790\">商品编号：5188790</li><li title=\"33.9kg\">商品毛重：33.9kg</li><li title=\"中国大陆\">商品产地：中国大陆</li><li title=\"4k超高清（3840×2160）\">分辨率：4k超高清（3840×2160）</li><li title=\"人工智能，大屏，超薄，曲面，4K超清\">电视类型：人工智能，大屏，超薄，曲面，4K超清</li><li title=\"3级\">能效等级：3级</li><li title=\"65英寸\">屏幕尺寸：65英寸</li></ul><p class=\"more-par\" style=\"text-align: right;\"><a href=\"https://item.jd.com/5188790.html#product-detail\" class=\"J-more-param\">更多参数<span class=\"txt-arr\">&gt;&gt;</span></a></p></div><div id=\"suyuan-video\"></div><div id=\"J-detail-banner\" style=\"text-align: center;\"></div><div class=\"detail-content clearfix z-have-detail-nav\" data-name=\"z-have-detail-nav\"><div class=\"detail-content-wrap\"><div id=\"tencent-video\"><div tabindex=\"-1\" poster=\"http://jdvodimg.jcloudcache.com/vodtransgzp1251412368/4564972819218627225/coverBySnapshot/1517300772_1502761326.100_0.jpg\" class=\"video-js vjs-default-skin detail-video-player-dimensions vjs-controls-enabled vjs-workinghover vjs-v5 vjs-has-started vjs-paused vjs-user-inactive\" id=\"detail-video-player\" role=\"region\" aria-label=\"video player\"><video id=\"detail-video-player_html5_api\" class=\"vjs-tech\" poster=\"http://jdvodimg.jcloudcache.com/vodtransgzp1251412368/4564972819218627225/coverBySnapshot/1517300772_1502761326.100_0.jpg\" tabindex=\"-1\" preload=\"auto\" src=\"https://jdvodoss.jcloudcache.com/vodtransgzp1251412368/4564972819218627225/v.f30.mp4?dockingId=689db66c-1d63-46b2-8ad9-e79afeb56394&amp;storageSource=3\"></video><div></div><div class=\"vjs-text-track-display\" aria-live=\"off\" aria-atomic=\"true\"></div><button class=\"vjs-big-play-button\" type=\"button\" aria-live=\"polite\" title=\"播放视频\" aria-disabled=\"false\"><span class=\"vjs-control-text\">播放视频</span></button><div class=\"vjs-control-bar\" dir=\"ltr\" role=\"group\"><button class=\"vjs-play-control vjs-control vjs-button vjs-paused\" type=\"button\" aria-live=\"polite\" title=\"播放\" aria-disabled=\"false\"><span class=\"vjs-control-text\">播放</span></button><div class=\"vjs-volume-menu-button vjs-menu-button vjs-menu-button-inline vjs-control vjs-button vjs-volume-menu-button-horizontal vjs-vol-3\" tabindex=\"0\" role=\"button\" aria-live=\"polite\" title=\"静音\" aria-disabled=\"false\" style=\"text-align: center;\"><div class=\"vjs-menu\"><div class=\"vjs-menu-content\"><div tabindex=\"0\" class=\"vjs-volume-bar vjs-slider-bar vjs-slider vjs-slider-horizontal\" role=\"slider\" aria-valuenow=\"100.00\" aria-valuemin=\"0\" aria-valuemax=\"100\" aria-label=\"volume level\" aria-valuetext=\"100.00%\"><div class=\"vjs-volume-level\"><span class=\"vjs-control-text\"></span></div></div></div></div><span class=\"vjs-control-text\">静音</span></div><div class=\"vjs-current-time vjs-time-control vjs-control\" s', '20181220\\2feecdbeec6e744fdb6c2fde8b0bd40b.jpg|20181220\\82f635d617d8eb0902b5e1287084cd8b.jpg|20181220\\c5036edb582bc0758ff8ae5f2e1aead7.jpg|', '18', '6');
INSERT INTO `shop_goods` VALUES ('21', '海信（Hisense）HZ55E6AC 55英寸 4K曲面 超薄全面屏 人工智能电视 银色', '0', '20181220\\6faeacc913380047e67c5adadad3dcd2.jpg', '4199.00 ', '4199', '1', '', '100', '热卖-精品-新品', '588', '北京供货商', '<div class=\"p-parameter\"><ul id=\"parameter-brand\" class=\"p-parameter-list\"><li title=\"海信（Hisense）\">品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=737,794,798&amp;tid=798&amp;ev=exbrand_7888\" clstag=\"shangpin|keycount|product|pinpai_1\" target=\"_blank\">海信（Hisense）</a></li></ul><ul class=\"parameter2 p-parameter-list\"><li title=\"海信（Hisense）HZ55E6AC 55英寸 4K曲面 超薄全面屏 人工智能电视 银色\">商品名称：海信（Hisense）HZ55E6AC 55英寸 4K曲面 超薄全面屏 人工智能电视 银色</li><li title=\"28704836216\">商品编号：28704836216</li><li title=\"海信中恒兴达专卖店\">店铺：&nbsp;<a href=\"https://mall.jd.com/index-776642.html\" target=\"_blank\">海信中恒兴达专卖店</a></li><li title=\"24.0kg\">商品毛重：24.0kg</li><li title=\"中国大陆\">商品产地：中国大陆</li><li title=\"1TE55KGTCNES\">货号：1TE55KGTCNES</li><li title=\"2.5m-3m（46-55英寸）\">观看距离：2.5m-3m（46-55英寸）</li><li title=\"4k超高清（3840×2160）\">分辨率：4k超高清（3840×2160）</li><li title=\"超薄\">电视类型：超薄</li><li title=\"2级\">能效等级：2级</li><li title=\"55英寸\">屏幕尺寸：55英寸</li><li title=\"10.0-8.0\">选购指数：10.0-8.0</li></ul><p class=\"more-par\" style=\"text-align: right;\"><a href=\"https://item.jd.com/28704836216.html#product-detail\" class=\"J-more-param\">更多参数<span class=\"txt-arr\">&gt;&gt;</span></a></p></div><div id=\"suyuan-video\"></div><div id=\"J-detail-banner\" style=\"text-align: center;\"></div><div id=\"J-detail-pop-tpl-top-new\" clstag=\"shangpin|keycount|product|pop-glbs\"><p style=\"text-align: center;\"><img src=\"https://img10.360buyimg.com/imgzone/jfs/t1/8044/29/8945/582103/5c108a36Eda4f409b/62fda7ad51dc6df6.jpg\" usemap=\"#aaaa\"></p></div>', '20181220\\9e8b931d8134776060eaed7c726a1ab7.jpg|20181220\\b4ad108e1f8fa7aa8a0b445f4f7e870d.jpg|20181220\\a09ae82ffdb84cbdf979da3baa3dbf1d.jpg|', '19', '6');
INSERT INTO `shop_goods` VALUES ('22', '海信(Hisense)65英寸超高清4K HDR 人工智能液晶曲面电视WIFI网络 海信65英寸曲屏', '0', '20181220\\65644294b79c745f2ee64b093a719297.jpg', '7788.00', '7788', '1', '', '100', '热卖-精品-新品', '876', '北京供货商', '<div class=\"p-parameter\"><ul id=\"parameter-brand\" class=\"p-parameter-list\"><li title=\"海信（Hisense）\">品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=737,794,798&amp;ev=exbrand_7888\" clstag=\"shangpin|keycount|product|pinpai_1\" target=\"_blank\">海信（Hisense）</a></li></ul><ul class=\"parameter2 p-parameter-list\"><li title=\"海信（Hisense）KD-49X9000E\">商品名称：海信（Hisense）KD-49X9000E</li><li title=\"33170953398\">商品编号：33170953398</li><li title=\"德明永林家电旗舰店\">店铺：&nbsp;<a href=\"https://mall.jd.com/index-767113.html\" target=\"_blank\">德明永林家电旗舰店</a></li><li title=\"35.0kg\">商品毛重：35.0kg</li><li title=\"中国大陆\">商品产地：中国大陆</li><li title=\"HZ65A66\">货号：HZ65A66</li><li title=\"3m-3.5m（56-65英寸）\">观看距离：3m-3.5m（56-65英寸）</li><li title=\"4k超高清（3840×2160）\">分辨率：4k超高清（3840×2160）</li><li title=\"人工智能，大屏，超薄，曲面，4K超清\">电视类型：人工智能，大屏，超薄，曲面，4K超清</li><li title=\"其他\">能效等级：其他</li><li title=\"65英寸\">屏幕尺寸：65英寸</li><li title=\"10.0-8.0\">选购指数：10.0-8.0</li></ul><p class=\"more-par\" style=\"text-align: right;\"><a href=\"https://item.jd.com/33170953398.html#product-detail\" class=\"J-more-param\">更多参数<span class=\"txt-arr\">&gt;&gt;</span></a></p></div><div id=\"suyuan-video\"></div><div id=\"J-detail-banner\" style=\"text-align: center;\"></div><div id=\"J-detail-pop-tpl-top-new\" clstag=\"shangpin|keycount|product|pop-glbs\"><p><img src=\"http://img10.360buyimg.com/imgzone/jfs/t1/22561/38/1327/1654141/5c11b727Ef5cde0c9/22c33734f6becb56.jpg\" usemap=\"#Map789654258\"></p></div>', '20181220\\d94f8b374185fe7497493b83dff4af99.jpg|20181220\\ee10e204332feca1a0ea88818b71798f.jpg|20181220\\c3cb104f52aef18bbbeeb62f3e18a4ad.jpg|', '19', '6');
INSERT INTO `shop_goods` VALUES ('23', '京鱼智能 奥克斯 (AUX) 正1.5匹 一级能效 变频冷暖 黄金侠壁挂式空调挂机 微联控制 (KFR-35GW/BpTYC1+1)', '0', '20181220\\bd21525c4d248000ac933e69f283a7b7.jpg', '2899.00', '2899', '1', '', '309', '热卖-新品', '265', '北京供货商', '<div class=\"p-parameter\"><ul id=\"parameter-brand\" class=\"p-parameter-list\"><li title=\"奥克斯（AUX）\">品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=737,794,870&amp;tid=870&amp;ev=exbrand_3659\" clstag=\"shangpin|keycount|product|pinpai_1\" target=\"_blank\">奥克斯（AUX）</a></li></ul><ul class=\"parameter2 p-parameter-list\"><li title=\"奥克斯KFR-35GW/BpTYC1+1\">商品名称：奥克斯KFR-35GW/BpTYC1+1</li><li title=\"2743359\">商品编号：2743359</li><li title=\"13.5kg\">商品毛重：13.5kg</li><li title=\"中国大陆\">商品产地：中国大陆</li><li title=\"变频\">变频/定频：变频</li><li title=\"智能空调，自动清洁\">产品特色：智能空调，自动清洁</li><li title=\"冷暖空调\">冷暖类型：冷暖空调</li><li title=\"1级\">能效等级：1级</li><li title=\"1.5匹（15-25㎡）\">商品匹数：1.5匹（15-25㎡）</li><li title=\"壁挂式空调\">空调类别：壁挂式空调</li></ul><p class=\"more-par\" style=\"text-align: right;\"><a href=\"https://item.jd.com/2743359.html#product-detail\" class=\"J-more-param\">更多参数<span class=\"txt-arr\">&gt;&gt;</span></a></p></div><div id=\"quality-life\" class=\"quality-life\" clstag=\"shangpin|keycount|product|pinzhishenghuo\"><div class=\"q-logo\"><img src=\"https://img11.360buyimg.com/devfe/jfs/t19249/266/555939662/10324/447efd03/5a965eb2Nf83fd68c.jpg\" alt=\"品质生活\"></div><ul class=\"quality-icon\"><li class=\"J_fresh\" title=\"节能认证\" style=\"text-align: center;\"><a href=\"https://item.jd.com/2743359.html#none\"><span><img src=\"https://img30.360buyimg.com/vms/jfs/t19327/202/2493234284/1639/8585ed5a/5afbccf1Nd9882aa8.png\"></span><span>节能认证</span></a></li></ul></div><div id=\"suyuan-video\"></div><div id=\"J-detail-banner\" style=\"text-align: center;\"></div><div class=\"detail-content clearfix z-have-detail-nav\" data-name=\"z-have-detail-nav\"><div class=\"detail-content-wrap\"><div id=\"tencent-video\"><div tabindex=\"-1\" poster=\"http://jdvodimg.jcloudcache.com/vodtransgzp1251412368/9031868223031258467/snapshot/f0.100_3.jpg\" class=\"video-js vjs-default-skin vjs-paused detail-video-player-dimensions vjs-controls-enabled vjs-workinghover vjs-v5 vjs-has-started vjs-user-active\" id=\"detail-video-player\" role=\"region\" aria-label=\"video player\"><video id=\"detail-video-player_html5_api\" class=\"vjs-tech\" poster=\"http://jdvodimg.jcloudcache.com/vodtransgzp1251412368/9031868223031258467/snapshot/f0.100_3.jpg\" tabindex=\"-1\" preload=\"auto\" src=\"https://jdvodoss.jcloudcache.com/vodtransgzp1251412368/9031868223031258467/f0.f30.mp4?dockingId=7ba6a2a2-3a88-4159-a7d5-16db10c40be4&amp;storageSource=3\"></video><div></div><div class=\"vjs-text-track-display\" aria-live=\"off\" aria-atomic=\"true\"></div><button class=\"vjs-big-play-button\" type=\"button\" aria-live=\"polite\" title=\"播放视频\" aria-disabled=\"false\"><span class=\"vjs-control-text\">播放视频</span></button><div class=\"vjs-control-bar\" dir=\"ltr\" role=\"group\"><button class=\"vjs-play-control vjs-control vjs-button\" type=\"button\" aria-live=\"polite\" title=\"播放\" aria-disabled=\"false\"><span class=\"vjs-control-text\">播放</span></button><div class=\"vjs-volume-menu-button vjs-menu-button vjs-menu-button-inline vjs-control vjs-button vjs-volume-menu-button-horizontal vjs-vol-3\" tabindex=\"0\" role=\"button\" aria-live=\"polite\" title=\"静音\" a', '20181220\\ffac4999e0aa6691015276d966d47564.jpg|20181220\\c563569d1f3b8e4ece55ced8593adae9.jpg|20181220\\6af15f1bba0ec8f01843bf0eef869ec2.jpg|', '20', '9');
INSERT INTO `shop_goods` VALUES ('24', '京鱼智能 奥克斯 (AUX) 3匹 一级能效 变频冷暖节能 60秒速热 倾国智能立柜式空调柜机(KFR-72LW/BpNHA1+1)', '0', '20181220\\2a09f89eb71d80bbc7ba95c5cfcc48eb.jpg', '7999.00', '7999', '1', '', '100', '热卖-精品', '1992', '北京供货商', '<div class=\"p-parameter\"><ul id=\"parameter-brand\" class=\"p-parameter-list\"><li title=\"奥克斯（AUX）\">品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=737,794,870&amp;tid=870&amp;ev=exbrand_3659\" clstag=\"shangpin|keycount|product|pinpai_1\" target=\"_blank\">奥克斯（AUX）</a></li></ul><ul class=\"parameter2 p-parameter-list\"><li title=\"奥克斯KFR-72LW/BpNHA1+1\">商品名称：奥克斯KFR-72LW/BpNHA1+1</li><li title=\"3849274\">商品编号：3849274</li><li title=\"44.0kg\">商品毛重：44.0kg</li><li title=\"中国大陆\">商品产地：中国大陆</li><li title=\"变频\">变频/定频：变频</li><li title=\"圆柱式空调，智能空调，自动清洁\">产品特色：圆柱式空调，智能空调，自动清洁</li><li title=\"冷暖空调\">冷暖类型：冷暖空调</li><li title=\"1级\">能效等级：1级</li><li title=\"3匹（30-40㎡）\">商品匹数：3匹（30-40㎡）</li><li title=\"立柜式空调\">空调类别：立柜式空调</li></ul><p class=\"more-par\" style=\"text-align: right;\"><a href=\"https://item.jd.com/3849274.html#product-detail\" class=\"J-more-param\">更多参数<span class=\"txt-arr\">&gt;&gt;</span></a></p></div><div id=\"quality-life\" class=\"quality-life\" clstag=\"shangpin|keycount|product|pinzhishenghuo\"><div class=\"q-logo\"><img src=\"https://img11.360buyimg.com/devfe/jfs/t19249/266/555939662/10324/447efd03/5a965eb2Nf83fd68c.jpg\" alt=\"品质生活\"></div><ul class=\"quality-icon\"><li class=\"J_fresh\" title=\"节能认证\" style=\"text-align: center;\"><a href=\"https://item.jd.com/3849274.html#none\"><span><img src=\"https://img30.360buyimg.com/vms/jfs/t19327/202/2493234284/1639/8585ed5a/5afbccf1Nd9882aa8.png\"></span><span>节能认证</span></a></li></ul></div><div id=\"suyuan-video\"></div><div id=\"J-detail-banner\" style=\"text-align: center;\"></div><div class=\"detail-content clearfix\" data-name=\"z-have-detail-nav\"><div class=\"detail-content-wrap\"><div id=\"tencent-video\"><div tabindex=\"-1\" poster=\"http://jdvodimg.jcloudcache.com/vodtransgzp1251412368/9031868223101686751/snapshot/1502258853_1951541513.100_21300.jpg\" class=\"video-js vjs-default-skin vjs-paused detail-video-player-dimensions vjs-controls-enabled vjs-workinghover vjs-v5 vjs-has-started vjs-user-inactive\" id=\"detail-video-player\" role=\"region\" aria-label=\"video player\"><video id=\"detail-video-player_html5_api\" class=\"vjs-tech\" poster=\"http://jdvodimg.jcloudcache.com/vodtransgzp1251412368/9031868223101686751/snapshot/1502258853_1951541513.100_21300.jpg\" tabindex=\"-1\" preload=\"auto\" src=\"https://jdvodoss.jcloudcache.com/vodtransgzp1251412368/9031868223101686751/f0.f30.mp4?dockingId=d892d5d7-3941-49b0-8bac-7ffd903d3e5b&amp;storageSource=3\"></video><div></div><div class=\"vjs-text-track-display\" aria-live=\"off\" aria-atomic=\"true\"></div><button class=\"vjs-big-play-button\" type=\"button\" aria-live=\"polite\" title=\"播放视频\" aria-disabled=\"false\"><span class=\"vjs-control-text\">播放视频</span></button><div class=\"vjs-control-bar\" dir=\"ltr\" role=\"group\"><button class=\"vjs-play-control vjs-control vjs-button\" type=\"button\" aria-live=\"polite\" title=\"播放\" aria-disabled=\"false\"><span class=\"vjs-control-text\">播放</span></button><div class=\"vjs-volume-menu-button vjs-menu-button vjs-menu-button-inline vjs-control vjs-button vjs-volume-menu-button-horizontal vjs-vol-3\" tabindex=\"0\" role=\"b', '20181220\\b427acb8fe580fdb5194bcf3e692b3f9.jpg|20181220\\578c431610a3fd7fb01a795427e20164.jpg|20181220\\ac675db1410e474f71d1bbc9387e61f2.jpg|', '20', '9');
INSERT INTO `shop_goods` VALUES ('25', '海尔（Haier）258升三门冰箱 家用干湿分储 变频风冷无霜电冰箱海尔 BCD-258WDVLU1', '0', '20181220\\5ff2a4184fc82778af4dceb92d0e19e0.png', '2799.90', '2800', '1', '', '105', '热卖-精品-新品', '876', '北京供货商', '<ul id=\"parameter-brand\" class=\"p-parameter-list\"><li title=\"海尔（Haier）\">品牌：&nbsp;<a href=\"https://list.jd.com/list.html?cat=737,794,878&amp;ev=exbrand_7817\" clstag=\"shangpin|keycount|product|pinpai_1\" target=\"_blank\">海尔（Haier）</a></li></ul><ul class=\"parameter2 p-parameter-list\"><li title=\"海尔（Haier）BCD-258WDVLU1\">商品名称：海尔（Haier）BCD-258WDVLU1</li><li title=\"29929076661\">商品编号：29929076661</li><li title=\"海尔集团官方旗舰店\">店铺：&nbsp;<a href=\"https://mall.jd.com/index-738967.html\" target=\"_blank\">海尔集团官方旗舰店</a></li><li title=\"77.0kg\">商品毛重：77.0kg</li><li title=\"中国大陆\">商品产地：中国大陆</li><li title=\"电脑控温\">控温方式：电脑控温</li><li title=\"智能APP，干湿分储\">特色推荐：智能APP，干湿分储</li><li title=\"风冷（无霜）\">制冷方式：风冷（无霜）</li><li title=\"2级\">能效等级：2级</li><li title=\"180.1-190cm\">高度：180.1-190cm</li><li title=\"金色\">面板颜色：金色</li><li title=\"变频（节能）\">压缩机：变频（节能）</li><li title=\"60cm及以下\">宽度：60cm及以下</li><li title=\"251-300升\">总容积：251-300升</li><li title=\"60.1-65cm\">深度：60.1-65cm</li><li title=\"三门\">门款式：三门</li></ul>', '20181220\\8245caa453c8667b6e63d5b8dd43a1b8.jpg|20181220\\3e43b21c8560e4b074e01ec5de8d4d6d.png|20181220\\d6308a62687d950dcdf4832789cc367d.jpg|', '22', '12');
INSERT INTO `shop_goods` VALUES ('26', '香奈儿邂逅清新淡香水', '0', '20181221\\0cf273081acf47fd87325f95c59539d6.jpg', '200', '198', '1', '', '100', '热卖-精品', '2876', '北京供货商', '清新&nbsp; 淡雅', '20181221\\2017a389e1d10b3ca1dbfcac0987f31c.jpg|', '23', '93');
INSERT INTO `shop_goods` VALUES ('27', '香奈儿邂逅清新香水', '0', '20181221\\1415b928165d42a3dbb16800adfe59b0.jpg', '298', '200', '1', '', '200', '精品', '928', '深圳供货商', '淡淡的清香', '20181221\\6f6a9adde9a9fb3cec68fe03e95f48cb.jpg|', '23', '93');
INSERT INTO `shop_goods` VALUES ('28', '迪奥香水2件套装', '0', '20181221\\14396c865e88ee81659fd0a790a9274b.jpg', '368', '368', '1', '', '200', '热卖-精品', '666', '北京供货商', '<img src=\"/upload/20181221/544423bfd55fdfef4cd9b14436558352.jpg\" alt=\"商品详情图片\">', '20181221\\6d7c8ec89dbd0ed97ba587385d6bae73.jpg|', '24', '93');
INSERT INTO `shop_goods` VALUES ('29', 'DHC', '0', '20181222\\9967952107a6d33dd5321dc45b8dcd1b.jpg', '', '20', '1', '', '200', '新品', '999', '上海供货商', '<p><a name=\"ssdsn_search_pro_name01-1_0_0_105732319_0070182556\" title=\"清洁肌肤\" target=\"_blank\" href=\"https://product.suning.com/0070182556/105732319.html\"><span class=\"highlight\">DHC&nbsp;</span>白玉柔肤皂沐浴皂固体沐浴露身体清洁润肤滋润</a></p>', '20181222\\46c659a9f311a2177131a4ca55c0fe72.jpg|', '25', '91');
INSERT INTO `shop_goods` VALUES ('30', '蓝月亮 瓶+瓶补6瓶装', '0', '20181222\\7a76219131e55d91f25878278103d638.jpg', '66.00', '66', '1', '', '200', '热卖', '879', '北京供货商', '<img src=\"/upload/20181222/1348d86e3ffea094ca836cc520757bb0.jpg\" alt=\"商品详情图片\">', '20181222\\e3e6d3ff5e88e8155b0a55b319ca3eeb.jpg|20181222\\a7920a391121cf44649ac725396320b2.jpg|', '26', '90');
INSERT INTO `shop_goods` VALUES ('31', '舒肤佳沐浴露', '0', '20181222\\5a89765a387219e6f3caa3106eb9d499.jpg', '75', '76', '1', '', '289', '精品-新品', '876', '上海供货商', '<ul class=\"parameter2 p-parameter-list\"><li title=\"混合\">适合肤质：混合</li><li title=\"滋润，保湿，持久留香，舒缓，清洁，除菌，清爽\">功效：滋润，保湿，持久留香，舒缓，清洁，除菌，清爽</li><li title=\"清香型\">香型：清香型</li><li title=\"1000ml以上\">净含量：1000ml以上</li><li title=\"成人\">适用人群：成人</li><li></li></ul>', '20181222\\c565e5fb386eb2fc4107a272b8f68759.jpg|', '27', '89');
INSERT INTO `shop_goods` VALUES ('32', '多芬深层营润滋养美肤沐浴乳1000ml', '0', '20181222\\88a8078bb0c0a7f1e824b8f48d25185d.jpg', '38', '38', '1', '', '200', '精品', '987', '广州供货商', '<ul class=\"parameter2 p-parameter-list\"><li title=\"干性，油性，中性，混合\">适合肤质：干性，油性，中性，混合</li><li title=\"滋润，保湿，舒缓，清洁，嫩肤\">功效：滋润，保湿，舒缓，清洁，嫩肤</li><li title=\"清香型\">香型：清香型</li><li title=\"1000ml以上\">净含量：1000ml以上</li><li title=\"成人\">适用人群：成人</li></ul>', '20181222\\1d86dfaf0196e5005139a67dd18909ab.jpg|', '3', '89');
INSERT INTO `shop_goods` VALUES ('33', '佳洁士漱口水', '0', '20181222\\8b0601c081c4175ff9f4b645df7696ad.jpg', '33.00', '33', '1', '', '300', '热卖-新品', '1000', '', '<ul class=\"parameter2 p-parameter-list\"><li title=\"薄荷\">口味：薄荷</li><li title=\"深层清洁，清新口气，消炎止血，抗敏感，其它\">功效：深层清洁，清新口气，消炎止血，抗敏感，其它</li><li title=\"通用\">适用人群：通用</li></ul>', '20181222\\a31a77938589a6262996ae02ea487fb1.jpg|', '28', '88');
INSERT INTO `shop_goods` VALUES ('34', '云南白药牙膏 65g（薄荷香型）', '0', '20181222\\1a187a027a365d362ca9f6157cb8decd.jpg', '13', '14', '1', '', '200', '热卖-精品', '2900', '河北供货商', '<ul class=\"parameter2 p-parameter-list\"><li title=\"41-90g\">净含量：41-90g</li><li title=\"亮白，牙龈护理，抗敏感，牙周护理，清新口气，多效护理，其它\">功效：亮白，牙龈护理，抗敏感，牙周护理，清新口气，多效护理，其它</li><li title=\"成人，吸烟人群，口腔敏感人群，其它\">适用人群：成人，吸烟人群，口腔敏感人群，其它</li><li></li></ul>', '20181222\\51030dafe01b773c33418b0bee3a229f.jpg|', '29', '86');
INSERT INTO `shop_goods` VALUES ('35', '汤姆福特眼影', '0', '20181222\\8525ecc693fb7f2d6361addd2b0254e3.jpg', '689', '689', '1', '', '200', '热卖-精品', '1000', '山西供货商', '<ul class=\"parameter2 p-parameter-list\"><li title=\"125.00g\">商品毛重：125.00g</li><li title=\"意大利\">商品产地：意大利</li><li title=\"欧美\">产品产地：欧美</li><li title=\"进口\">国产/进口：进口</li><li title=\"4色\">分类：4色</li><li></li></ul>', '20181222\\d2c7e0853a56757625730ad2f1b529bc.jpg|', '30', '96');
INSERT INTO `shop_goods` VALUES ('36', '香奈儿（Chanel） 细腻质地妆效持久四色眼影 268限量色', '0', '20181222\\4ceaf8abf5fb5c85364dbba4d72d8296.jpg', '398', '399', '1', '', '200', '新品', '2877', '山东供货商', '<ul class=\"parameter2\"><li title=\"烟熏\">妆效：烟熏</li><li title=\"欧美\">产品产地：欧美</li><li title=\"进口\">国产/进口：进口</li><li title=\"4色\">分类：4色</li><li title=\"大地色\">色系：大地色</li></ul>', '20181222\\51adb65cc56b7c62d772e5c7bbf5e7e9.jpg|', '23', '96');
INSERT INTO `shop_goods` VALUES ('37', '汤姆福特（TOM FORD） 四色眼影TF眼影盘', '0', '20181222\\aef17733e66650389ea7fea10878c5dd.jpg', '486', '485', '1', '', '200', '热卖-精品-新品', '189', '陕西供货商', '<ul class=\"parameter2\"><li title=\"150.00g\">商品毛重：150.00g</li><li title=\"法国\">商品产地：法国</li><li title=\"进口\">国产/进口：进口</li><li title=\"4色\">分类：4色</li><li title=\"其它\">色系：其它</li><li title=\"欧美\">产品产地：欧美</li></ul>', '20181222\\6916579b49c889804b9825313c73c0d7.jpg|20181222\\e28fc34628914cfdd7e409e36ca495d1.jpg|20181222\\97f8c5f64a3fcab229bcb12f3bc02842.jpg|', '30', '96');
INSERT INTO `shop_goods` VALUES ('38', '茵曼童装冬季新款冬新品女童百搭羽绒服连帽拉链加厚保暖羽绒中长款儿童外套 黑色 160cm', '0', '20181222\\7c5c3469f9b6dd5539f9c59f1ce19007.jpg', '499', '499', '1', '', '200', '热卖-精品', '290', '', '<ul class=\"parameter2 p-parameter-list\"><li title=\"加绒\">厚度：加绒</li><li title=\"母女装\">适用对象：母女装</li><li title=\"有帽不可拆卸\">是否带帽子：有帽不可拆卸</li><li title=\"长袖\">袖长：长袖</li><li title=\"女童\">适用性别：女童</li><li title=\"1-3岁，3-6岁，6-9岁\">适用年龄：1-3岁，3-6岁，6-9岁</li><li title=\"纯色\">图案：纯色</li><li title=\"冬季\">适用季节：冬季</li><li title=\"棉混纺布\">面料：棉混纺布</li><li title=\"C类\">安全等级：C类</li><li title=\"往年\">上市时间：往年</li></ul><p class=\"more-par\" style=\"text-align: right;\"><a href=\"https://item.jd.com/10702817383.html#product-detail\" class=\"J-more-param\">更</a></p>', '20181222\\2b0cf94cafbedfa4fe66a7a24346fbc4.jpg|', '31', '38');
INSERT INTO `shop_goods` VALUES ('39', '茵曼童装2018春季新款针织衫母女亲子毛衣中大女童荷叶边毛衣 枣红 110', '0', '20181222\\64e84fb10fc59e1080d5587b08bda5cb.jpg', '139', '149', '1', '', '1000', '精品-新品', '4366', '北京供货商', '<ul class=\"parameter2 p-parameter-list\"><li title=\"百搭\">风格：百搭</li><li title=\"适中\">厚度：适中</li><li title=\"母女装\">适用对象：母女装</li><li title=\"纯棉\">面料：纯棉</li><li title=\"长袖\">袖长：长袖</li><li title=\"女童\">适用性别：女童</li><li title=\"6-9岁，9-12岁，12岁以上\">适用年龄：6-9岁，9-12岁，12岁以上</li><li title=\"纯色\">图案：纯色</li><li title=\"春秋\">适用季节：春秋</li><li title=\"无\">是否带帽子：无</li></ul>', '20181222\\db7baced48e1deef530909934693dad4.jpg|', '31', '38');
INSERT INTO `shop_goods` VALUES ('40', '亲子装秋装全家装运动套', '0', '20181222\\8c828b089bbbd7386a1393d427a7eed6.jpg', '252', '246', '1', 'ECS000039', '800', '热卖-精品-新品', '3987', '河北供货商', '<ul class=\"parameter2 p-parameter-list\"><li title=\"全家装\">适用对象：全家装</li><li title=\"纯棉，棉，棉混纺布，棉麻\">面料：纯棉，棉，棉混纺布，棉麻</li><li title=\"无袖\">袖长：无袖</li><li title=\"中性\">适用性别：中性</li><li title=\"0-1岁\">适用年龄：0-1岁</li><li title=\"纯色\">图案：纯色</li><li title=\"冬季\">适用季节：冬季</li><li title=\"套装\">分类：套装</li></ul>', '20181222\\4ad9a41b17274630beaee54ca2d75567.jpg|', '31', '38');
INSERT INTO `shop_goods` VALUES ('45', 'E470', '0', '20190109\\d6006bf687e6b7308d3e3288d73f7d4c.jpg', '2000', '4799', '1', '8p201901091241519914', '200', null, null, null, '', '1', '4', '5');
INSERT INTO `shop_goods` VALUES ('44', '佳洁士牙膏', '0', '20190109\\c44e4734461a6c749ac15b37c5293f9f.jpg', '60', '60', '1', '8p201901091030028964', '685', null, null, null, '', '1', '28', '86');
INSERT INTO `shop_goods` VALUES ('46', '双方的郭富城', '0', '20190109\\2fe2c33b23ba7a1ce0a67245bef642ee.jpg', '200', '200', '1', '8p201901091335473354', '1083', null, null, null, '<p><img src=\"/ueditor/php/upload/image/20190109/1547012122915673.jpg\" title=\"1547012122915673.jpg\" alt=\"5af43bd3N291f2b28.jpg\"/><img src=\"/ueditor/php/upload/image/20190109/1547012133481611.jpg\" title=\"1547012133481611.jpg\" alt=\"19d347c34c37a5ed.jpg\"/></p>', '1', '16', '17');
INSERT INTO `shop_goods` VALUES ('47', '华硕', '0', '20190121\\860d2033774d9b946d44b9c3abb02160.jpg', '2000', '4799', '1', '8p201901211635219764', null, null, null, null, '', '1', '15', '16');

-- ----------------------------
-- Table structure for shop_order
-- ----------------------------
DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `user_id` int(5) DEFAULT NULL,
  `order_amount` float DEFAULT NULL COMMENT '总金额',
  `order_pay_type` varchar(10) DEFAULT '1' COMMENT '线上支付，货到付款',
  `pay_status` varchar(5) DEFAULT '1' COMMENT '支付状态',
  `pay_way` varchar(10) DEFAULT '1' COMMENT '支付方式',
  `status` varchar(5) DEFAULT '1',
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order
-- ----------------------------
INSERT INTO `shop_order` VALUES ('1', '201902280646299753', '1', '2953', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for shop_order_address
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_address`;
CREATE TABLE `shop_order_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL COMMENT '收货人姓名',
  `address_name` varchar(100) DEFAULT NULL COMMENT '详细地址',
  `region` varchar(50) DEFAULT NULL COMMENT '所在区域',
  `tel` varchar(12) DEFAULT NULL,
  `status` varchar(3) DEFAULT '1',
  `check_status` tinyint(2) DEFAULT '2' COMMENT '默认不选中',
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_address
-- ----------------------------
INSERT INTO `shop_order_address` VALUES ('1', '1', '哦哦哦', '而他与', '嗯嗯', '12345434544', '1', '1');

-- ----------------------------
-- Table structure for shop_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `shop_order_detail`;
CREATE TABLE `shop_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL COMMENT '订单id',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `user_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  `buy_num` int(11) DEFAULT NULL COMMENT '购买数量',
  `goods_price` decimal(10,0) DEFAULT NULL COMMENT '商品价格',
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `goods_img` varchar(100) DEFAULT NULL COMMENT '商品图片',
  `comment_status` varchar(10) DEFAULT '1' COMMENT '评论',
  `ctime` int(11) DEFAULT NULL COMMENT '添加时间',
  `utime` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_order_detail
-- ----------------------------
INSERT INTO `shop_order_detail` VALUES ('1', '1', '201902280646299753', '1', '3', '2', '80', '多芬', '20181220\\49cdf0fdb722644de20e3f568f43f73c.jpg', '1', '1551336389', null);
INSERT INTO `shop_order_detail` VALUES ('2', '1', '201902280646299753', '1', '14', '1', '2793', 'vivoX23', '20181220\\0cb5bd8233a101e1ac610f7d33095459.jpg', '1', '1551336389', null);

-- ----------------------------
-- Table structure for shop_register
-- ----------------------------
DROP TABLE IF EXISTS `shop_register`;
CREATE TABLE `shop_register` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) DEFAULT NULL,
  `pwd` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop_register
-- ----------------------------
INSERT INTO `shop_register` VALUES ('1', '19831832697', 'e10adc3949ba59abbe56e057f20f883e');
