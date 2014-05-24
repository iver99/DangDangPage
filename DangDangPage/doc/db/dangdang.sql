/*
MySQL Data Transfer
Source Host: localhost
Source Database: dangdang
Target Host: localhost
Target Database: dangdang
Date: 2012/4/5 20:57:16
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for d_book
-- ----------------------------
DROP TABLE IF EXISTS `d_book`;
CREATE TABLE `d_book` (
  `id` int(12) NOT NULL,
  `author` varchar(200) NOT NULL,
  `publishing` varchar(200) NOT NULL,
  `publish_time` bigint(20) NOT NULL,
  `word_number` varchar(15) DEFAULT NULL,
  `which_edtion` varchar(15) DEFAULT NULL,
  `total_page` varchar(15) DEFAULT NULL,
  `print_time` int(20) DEFAULT NULL,
  `print_number` varchar(15) DEFAULT NULL,
  `isbn` varchar(25) DEFAULT NULL,
  `author_summary` text NOT NULL,
  `catalogue` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for d_category
-- ----------------------------
DROP TABLE IF EXISTS `d_category`;
CREATE TABLE `d_category` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `turn` int(10) NOT NULL,
  `en_name` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for d_category_product
-- ----------------------------
DROP TABLE IF EXISTS `d_category_product`;
CREATE TABLE `d_category_product` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for d_item
-- ----------------------------
DROP TABLE IF EXISTS `d_item`;
CREATE TABLE `d_item` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `dang_price` double NOT NULL,
  `product_num` int(10) NOT NULL,
  `amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for d_order
-- ----------------------------
DROP TABLE IF EXISTS `d_order`;
CREATE TABLE `d_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `order_time` bigint(20) NOT NULL,
  `order_desc` varchar(100) DEFAULT NULL,
  `total_price` double NOT NULL,
  `receive_name` varchar(100) DEFAULT NULL,
  `full_address` varchar(200) DEFAULT NULL,
  `postal_code` varchar(8) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for d_product
-- ----------------------------
DROP TABLE IF EXISTS `d_product`;
CREATE TABLE `d_product` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `add_time` bigint(20) DEFAULT NULL,
  `fixed_price` double NOT NULL,
  `dang_price` double NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `has_deleted` int(1) NOT NULL DEFAULT '0',
  `product_pic` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for d_receive_address
-- ----------------------------
DROP TABLE IF EXISTS `d_receive_address`;
CREATE TABLE `d_receive_address` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `receive_name` varchar(20) NOT NULL,
  `full_address` varchar(200) NOT NULL,
  `postal_code` varchar(8) NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for d_user
-- ----------------------------
DROP TABLE IF EXISTS `d_user`;
CREATE TABLE `d_user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `user_integral` int(12) NOT NULL DEFAULT '0',
  `is_email_verify` char(3) DEFAULT NULL,
  `email_verify_code` varchar(50) DEFAULT NULL,
  `last_login_time` bigint(20) DEFAULT NULL,
  `last_login_ip` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `d_book` VALUES ('1', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('2', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('3', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('4', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('5', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('6', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('7', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('8', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('9', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('10', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('11', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('12', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('13', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('14', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('15', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('16', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('17', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('18', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('19', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('20', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('21', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('22', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('23', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_book` VALUES ('24', '我写的', '地球出版社', '1237873000234', '1万', '1', '100', '1', null, '12345678', '作者是好人', '这真是一本好书啊');
INSERT INTO `d_category` VALUES ('1', '1', 'Book', '图书', null, '0');
INSERT INTO `d_category` VALUES ('2', '1', 'Novel', '小说', null, '1');
INSERT INTO `d_category` VALUES ('3', '2', 'Youth', '青春', null, '1');
INSERT INTO `d_category` VALUES ('4', '3', 'Humanity And Social Science', '人文社科', null, '1');
INSERT INTO `d_category` VALUES ('5', '4', 'Management', '管理', null, '1');
INSERT INTO `d_category` VALUES ('6', '5', 'Children', '少儿', null, '1');
INSERT INTO `d_category` VALUES ('7', '6', 'Foreign Language', '外语', null, '1');
INSERT INTO `d_category` VALUES ('8', '7', 'Computer', '计算机', null, '1');
INSERT INTO `d_category` VALUES ('9', '1', 'Chinese Contemporary Novel', '当代小说', null, '2');
INSERT INTO `d_category` VALUES ('10', '2', 'Chinese Modern Novel', '近现代小说', null, '2');
INSERT INTO `d_category` VALUES ('11', '3', 'Chinese Classical  Novel', '古典小说', null, '2');
INSERT INTO `d_category` VALUES ('12', '4', 'Four Classic Novels', '四大名著', null, '2');
INSERT INTO `d_category` VALUES ('13', '5', 'Translated Works', '世界名著', null, '2');
INSERT INTO `d_category` VALUES ('14', '1', 'School', '校园', null, '3');
INSERT INTO `d_category` VALUES ('15', '2', 'Love', '爱情/情感', null, '3');
INSERT INTO `d_category` VALUES ('16', '3', 'Grow Up', '叛逆/成长', null, '3');
INSERT INTO `d_category` VALUES ('17', '4', 'Fantasy', '玄幻', null, '3');
INSERT INTO `d_category` VALUES ('18', '5', 'Original', '原创', null, '3');
INSERT INTO `d_category` VALUES ('19', '1', 'Political', '政治', null, '4');
INSERT INTO `d_category` VALUES ('20', '2', 'Economic', '经济', null, '4');
INSERT INTO `d_category` VALUES ('21', '3', 'Law', '法律', null, '4');
INSERT INTO `d_category` VALUES ('22', '4', 'Philosophy', '哲学', null, '4');
INSERT INTO `d_category` VALUES ('23', '5', 'History', '历史', null, '4');
INSERT INTO `d_category` VALUES ('24', '1', 'Commen Management', '管理学', null, '5');
INSERT INTO `d_category` VALUES ('25', '2', 'Strategic Management', '战略管理', null, '5');
INSERT INTO `d_category` VALUES ('26', '3', 'Marketing', '市场营销', null, '5');
INSERT INTO `d_category` VALUES ('27', '4', 'Business History', '商业史传', null, '5');
INSERT INTO `d_category` VALUES ('28', '5', 'E-Business', '电子商务', null, '5');
INSERT INTO `d_category` VALUES ('29', '1', '0-2', '0-2岁', null, '6');
INSERT INTO `d_category` VALUES ('30', '2', '3-6', '3-6岁', null, '6');
INSERT INTO `d_category` VALUES ('31', '3', '7-10', '7-10岁', null, '6');
INSERT INTO `d_category` VALUES ('32', '4', '11-14', '11-14岁', null, '6');
INSERT INTO `d_category` VALUES ('33', '5', 'Child Literature', '儿童文学', null, '6');
INSERT INTO `d_category` VALUES ('34', '1', 'English', '英语', null, '7');
INSERT INTO `d_category` VALUES ('35', '2', 'Japanese', '日语', null, '7');
INSERT INTO `d_category` VALUES ('36', '3', 'Korean', '韩语', null, '7');
INSERT INTO `d_category` VALUES ('37', '4', 'Russian', '俄语', null, '7');
INSERT INTO `d_category` VALUES ('38', '5', 'German', '德语', null, '7');
INSERT INTO `d_category` VALUES ('39', '1', 'Computer Theory', '计算机理论', null, '8');
INSERT INTO `d_category` VALUES ('40', '2', 'Database', '数据库', null, '8');
INSERT INTO `d_category` VALUES ('41', '3', 'Programming', '程序设计', null, '8');
INSERT INTO `d_category` VALUES ('42', '4', 'Artificial Intelligence', '人工智能', null, '8');
INSERT INTO `d_category` VALUES ('43', '5', 'Computer Examination', '计算机考试', null, '8');
INSERT INTO `d_category_product` VALUES ('1', '1', '9');
INSERT INTO `d_category_product` VALUES ('2', '2', '9');
INSERT INTO `d_category_product` VALUES ('3', '3', '9');
INSERT INTO `d_category_product` VALUES ('4', '4', '9');
INSERT INTO `d_category_product` VALUES ('5', '5', '9');
INSERT INTO `d_category_product` VALUES ('6', '6', '9');
INSERT INTO `d_category_product` VALUES ('7', '7', '9');
INSERT INTO `d_category_product` VALUES ('8', '8', '9');
INSERT INTO `d_category_product` VALUES ('9', '9', '9');
INSERT INTO `d_category_product` VALUES ('10', '10', '9');
INSERT INTO `d_category_product` VALUES ('11', '11', '10');
INSERT INTO `d_category_product` VALUES ('12', '12', '10');
INSERT INTO `d_category_product` VALUES ('13', '13', '10');
INSERT INTO `d_category_product` VALUES ('14', '14', '10');
INSERT INTO `d_category_product` VALUES ('15', '15', '10');
INSERT INTO `d_category_product` VALUES ('16', '16', '10');
INSERT INTO `d_category_product` VALUES ('17', '17', '10');
INSERT INTO `d_category_product` VALUES ('18', '18', '10');
INSERT INTO `d_category_product` VALUES ('19', '19', '10');
INSERT INTO `d_category_product` VALUES ('20', '20', '10');
INSERT INTO `d_category_product` VALUES ('21', '21', '10');
INSERT INTO `d_category_product` VALUES ('22', '22', '10');
INSERT INTO `d_category_product` VALUES ('23', '23', '10');
INSERT INTO `d_category_product` VALUES ('24', '24', '10');
INSERT INTO `d_category_product` VALUES ('25', '1', '2');
INSERT INTO `d_category_product` VALUES ('26', '2', '2');
INSERT INTO `d_category_product` VALUES ('27', '3', '2');
INSERT INTO `d_category_product` VALUES ('28', '4', '2');
INSERT INTO `d_category_product` VALUES ('29', '5', '2');
INSERT INTO `d_category_product` VALUES ('30', '6', '2');
INSERT INTO `d_category_product` VALUES ('31', '7', '2');
INSERT INTO `d_category_product` VALUES ('32', '8', '2');
INSERT INTO `d_category_product` VALUES ('33', '9', '2');
INSERT INTO `d_category_product` VALUES ('34', '10', '2');
INSERT INTO `d_category_product` VALUES ('35', '11', '2');
INSERT INTO `d_category_product` VALUES ('36', '12', '2');
INSERT INTO `d_category_product` VALUES ('37', '13', '2');
INSERT INTO `d_category_product` VALUES ('38', '14', '2');
INSERT INTO `d_category_product` VALUES ('39', '15', '2');
INSERT INTO `d_category_product` VALUES ('40', '16', '2');
INSERT INTO `d_category_product` VALUES ('41', '17', '2');
INSERT INTO `d_category_product` VALUES ('42', '18', '2');
INSERT INTO `d_category_product` VALUES ('43', '19', '2');
INSERT INTO `d_category_product` VALUES ('44', '20', '2');
INSERT INTO `d_category_product` VALUES ('45', '21', '2');
INSERT INTO `d_category_product` VALUES ('46', '22', '2');
INSERT INTO `d_category_product` VALUES ('47', '23', '2');
INSERT INTO `d_category_product` VALUES ('48', '24', '2');
INSERT INTO `d_category_product` VALUES ('49', '1', '1');
INSERT INTO `d_category_product` VALUES ('50', '2', '1');
INSERT INTO `d_category_product` VALUES ('51', '3', '1');
INSERT INTO `d_category_product` VALUES ('52', '4', '1');
INSERT INTO `d_category_product` VALUES ('53', '5', '1');
INSERT INTO `d_category_product` VALUES ('54', '6', '1');
INSERT INTO `d_category_product` VALUES ('55', '7', '1');
INSERT INTO `d_category_product` VALUES ('56', '8', '1');
INSERT INTO `d_category_product` VALUES ('57', '9', '1');
INSERT INTO `d_category_product` VALUES ('58', '10', '1');
INSERT INTO `d_category_product` VALUES ('59', '11', '1');
INSERT INTO `d_category_product` VALUES ('60', '12', '1');
INSERT INTO `d_category_product` VALUES ('61', '13', '1');
INSERT INTO `d_category_product` VALUES ('62', '14', '1');
INSERT INTO `d_category_product` VALUES ('63', '15', '1');
INSERT INTO `d_category_product` VALUES ('64', '16', '1');
INSERT INTO `d_category_product` VALUES ('65', '17', '1');
INSERT INTO `d_category_product` VALUES ('66', '18', '1');
INSERT INTO `d_category_product` VALUES ('67', '19', '1');
INSERT INTO `d_category_product` VALUES ('68', '20', '1');
INSERT INTO `d_category_product` VALUES ('69', '21', '1');
INSERT INTO `d_category_product` VALUES ('70', '22', '1');
INSERT INTO `d_category_product` VALUES ('71', '23', '1');
INSERT INTO `d_category_product` VALUES ('72', '24', '1');
INSERT INTO `d_item` VALUES ('1', '1', '1', '上课头疼的故事', '180', '1', '180');
INSERT INTO `d_order` VALUES ('1', '1', '0', '1332696045204', null, '180', '何路斌', '北京市朝阳区三里屯78号', '100011', '12828282929', '15811010987');
INSERT INTO `d_product` VALUES ('1', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '16.jpg');
INSERT INTO `d_product` VALUES ('2', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '17.jpg');
INSERT INTO `d_product` VALUES ('3', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '18.jpg');
INSERT INTO `d_product` VALUES ('4', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '19.jpg');
INSERT INTO `d_product` VALUES ('5', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '20.jpg');
INSERT INTO `d_product` VALUES ('6', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '21.jpg');
INSERT INTO `d_product` VALUES ('7', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '22.jpg');
INSERT INTO `d_product` VALUES ('8', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '23.jpg');
INSERT INTO `d_product` VALUES ('9', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '24.jpg');
INSERT INTO `d_product` VALUES ('10', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '2.jpg');
INSERT INTO `d_product` VALUES ('11', '上课头疼的故事', '上课头疼的故事', '1237873000234', '200', '180', 'key', '0', '3.jpg');
INSERT INTO `d_product` VALUES ('12', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '4.jpg');
INSERT INTO `d_product` VALUES ('13', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '5.jpg');
INSERT INTO `d_product` VALUES ('14', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '6.jpg');
INSERT INTO `d_product` VALUES ('15', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '7.jpg');
INSERT INTO `d_product` VALUES ('16', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '8.jpg');
INSERT INTO `d_product` VALUES ('17', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '9.jpg');
INSERT INTO `d_product` VALUES ('18', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '10.jpg');
INSERT INTO `d_product` VALUES ('19', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '11.jpg');
INSERT INTO `d_product` VALUES ('20', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '12.jpg');
INSERT INTO `d_product` VALUES ('21', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '13.jpg');
INSERT INTO `d_product` VALUES ('22', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '14.jpg');
INSERT INTO `d_product` VALUES ('23', '上课睡觉的故事', '上课睡觉的故事', '1237873000234', '200', '180', 'key', '0', '15.jpg');
INSERT INTO `d_receive_address` VALUES ('1', '6', 'Java', 'sun.cn', '10000800', '12345', '67890');
INSERT INTO `d_receive_address` VALUES ('2', '6', 'JavaJavaJava', 'ibm.cn', '10000600', '12345', '67890');
INSERT INTO `d_receive_address` VALUES ('3', '1', '何路斌', '北京市朝阳区三里屯78号', '100011', '12828282929', '15811010987');
INSERT INTO `d_user` VALUES ('1', 'roben@126.com', 'roben', '4QrcOUm6Wau+VuBX8g+IPg==', '0', 'n', 'b1c1bdc2-435f-45af-83f2-f025713e1aa1', '1332695834764', '0:0:0:0:0:0:0:1');
INSERT INTO `d_user` VALUES ('2', '4', 's', 'sfsf', '0', null, null, null, null);
INSERT INTO `d_user` VALUES ('3', '3', null, 'sfsdf', '0', null, null, null, null);
INSERT INTO `d_user` VALUES ('4', 'sdf', null, 'sfsf', '0', null, null, null, null);
INSERT INTO `d_user` VALUES ('5', 'sf', null, 'sfsdf', '0', null, null, null, null);
INSERT INTO `d_user` VALUES ('6', 'sdff@fas.sdf', 'aaaa', 'lueSGJZetyySpUndWjMBEg==', '0', 'Y', 'ac265d75-ff51-4820-bdb4-e88c67516de8', '1333424991353', '0:0:0:0:0:0:0:1');
INSERT INTO `d_user` VALUES ('7', 'aaa@dsfas.fgh', 'aaaa', 'lueSGJZetyySpUndWjMBEg==', '0', 'N', '2d26f82d-c3ff-4f4c-815f-33f391e1ea67', '1333430810352', '0:0:0:0:0:0:0:1');
INSERT INTO `d_user` VALUES ('8', '242sef@gfj.ffd', 'qqqqqq', 'lueSGJZetyySpUndWjMBEg==', '0', 'Y', 'b78b32bb-fa5e-490b-949d-33901ef8318c', '1333431437000', '0:0:0:0:0:0:0:1');
INSERT INTO `d_user` VALUES ('9', 'aaaaa@111.com', 'aaaaa', 'lueSGJZetyySpUndWjMBEg==', '0', 'N', '7d939b69-d233-4c8f-af78-a96ab41596e8', '1333432362938', '0:0:0:0:0:0:0:1');
