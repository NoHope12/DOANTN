/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100424
 Source Host           : localhost:3306
 Source Schema         : basefs

 Target Server Type    : MySQL
 Target Server Version : 100424
 File Encoding         : 65001

 Date: 10/10/2022 11:37:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fs_address
-- ----------------------------
DROP TABLE IF EXISTS `fs_address`;
CREATE TABLE `fs_address`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_time` datetime NULL DEFAULT NULL,
  `edited_time` datetime NULL DEFAULT NULL,
  `published` tinyint NULL DEFAULT NULL,
  `ordering` int NULL DEFAULT NULL,
  `latitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `longitude` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `more_info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `googlemap` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city_id` int NULL DEFAULT NULL,
  `city_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bitrix_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_address
-- ----------------------------

-- ----------------------------
-- Table structure for fs_blocks
-- ----------------------------
DROP TABLE IF EXISTS `fs_blocks`;
CREATE TABLE `fs_blocks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ordering` int NULL DEFAULT NULL,
  `published` tinyint NULL DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `listItemid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `showTitle` tinyint NULL DEFAULT NULL,
  `hide_admin` tinyint NULL DEFAULT NULL,
  `news_categories` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `contents_categories` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `comments_total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 107 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_blocks
-- ----------------------------

-- ----------------------------
-- Table structure for fs_blocks_exist
-- ----------------------------
DROP TABLE IF EXISTS `fs_blocks_exist`;
CREATE TABLE `fs_blocks_exist`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `block` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ordering` int NULL DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT 1,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_blocks_exist
-- ----------------------------
INSERT INTO `fs_blocks_exist` VALUES (29, 'newslist', 'Danh sách tin', NULL, NULL, 1, '');
INSERT INTO `fs_blocks_exist` VALUES (34, 'banners', 'Quảng cáo', NULL, NULL, 1, '');
INSERT INTO `fs_blocks_exist` VALUES (54, 'products_list', 'Danh sách sản phẩm', NULL, NULL, 1, '');
INSERT INTO `fs_blocks_exist` VALUES (55, 'onlinesupport', 'Hỗ trợ trực tuyến', NULL, NULL, 1, '');
INSERT INTO `fs_blocks_exist` VALUES (56, 'services', 'Dịch vụ', NULL, NULL, 1, '');
INSERT INTO `fs_blocks_exist` VALUES (57, 'video', 'Video', NULL, NULL, 1, '');
INSERT INTO `fs_blocks_exist` VALUES (58, 'tags', 'Tags', NULL, NULL, 1, '');
INSERT INTO `fs_blocks_exist` VALUES (59, 'facebook', 'Facebook', NULL, NULL, 1, '');
INSERT INTO `fs_blocks_exist` VALUES (60, 'mainmenu', 'Menu', NULL, NULL, 1, '');
INSERT INTO `fs_blocks_exist` VALUES (61, 'news_filter', 'Danh mục tin', NULL, NULL, 1, '');

-- ----------------------------
-- Table structure for fs_config
-- ----------------------------
DROP TABLE IF EXISTS `fs_config`;
CREATE TABLE `fs_config`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `data_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'text',
  `is_common` tinyint(1) NOT NULL DEFAULT 1,
  `published` tinyint NULL DEFAULT NULL COMMENT 'thông số giành cho google',
  `is_ga` tinyint NULL DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT 0,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 181 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_config
-- ----------------------------
INSERT INTO `fs_config` VALUES (1, 'site_name', 'Site Name', 'Base Finalstyle', 'text', 1, 1, NULL, 1, NULL);
INSERT INTO `fs_config` VALUES (2, 'title', 'Title', 'Base Finalstyle', 'text', 1, 1, NULL, 2, NULL);
INSERT INTO `fs_config` VALUES (3, 'meta_des', 'Meta des', 'Base Finalstyle', 'text', 1, 1, NULL, 3, NULL);
INSERT INTO `fs_config` VALUES (4, 'meta_key', 'Meta key', 'Base Finalstyle', 'text', 1, 1, NULL, 4, NULL);
INSERT INTO `fs_config` VALUES (5, 'admin_name', 'Admin name', 'Base Finalstyle', 'text', 0, 1, NULL, 5, NULL);
INSERT INTO `fs_config` VALUES (6, 'admin_email', 'Admin email', 'manhlinh@finalstyle.com', 'text', 1, 1, NULL, 6, NULL);
INSERT INTO `fs_config` VALUES (7, 'main_title', 'Đuôi tiêu đề', 'finalstyle.com', 'text', 1, 1, NULL, 7, NULL);
INSERT INTO `fs_config` VALUES (8, 'main_meta_key', 'Thẻ meta_key chính', 'finalstyle.com', 'text', 1, 1, NULL, 8, NULL);
INSERT INTO `fs_config` VALUES (9, 'main_meta_des', 'Thẻ meta_des chính', 'finalstyle.com', 'text', 1, 1, NULL, 9, NULL);
INSERT INTO `fs_config` VALUES (13, 'footer', 'Cấu hình chân trang', '', 'editor', 1, 1, NULL, 13, '<img src=\"images/chuthich_1.png\" />');
INSERT INTO `fs_config` VALUES (10, 'logo', 'Logo', NULL, 'image', 1, 1, NULL, 10, NULL);
INSERT INTO `fs_config` VALUES (11, 'background_home', 'Background trang chủ', 'images/config/background-trang-chu_1594023321.jpg', 'image', 1, 0, NULL, 11, NULL);
INSERT INTO `fs_config` VALUES (12, 'background_inner', 'Background chung', 'images/config/logojpg_1405259122_1406701798.jpg', 'image', 1, 0, NULL, 12, NULL);
INSERT INTO `fs_config` VALUES (14, 'copyright', 'Copyright', '@ Bản quyền thuộc về Công Ty Finalstyle', 'text', 1, 1, NULL, 14, NULL);
INSERT INTO `fs_config` VALUES (15, 'hotline', 'Hotline', '0383760076', 'text', 1, 1, NULL, 15, '<img src=\"https://minh-finalstyle-com.nimbusweb.me/box/attachment/6853329/ar81rtd2poa7x06ha05p/3yMCMwlR5fdk8Asq/screenshot-didongthongminh.vn-2022.05.02-11_41_48.png\" />');
INSERT INTO `fs_config` VALUES (18, 'homeh1', 'H1 Trang chủ', '', 'text', 1, 0, NULL, 10, NULL);
INSERT INTO `fs_config` VALUES (19, 'address', 'Liên hệ', '<p><strong>Hà Nội:</strong><br />\r\n- Bán hàng Online - 18006501<br />\r\n- 119 Thái Thịnh, Đống Đa, Hà Nội -&nbsp;0966119995<br />\r\n-&nbsp;75 Quảng Oai, Ba Vì, Hà Nội - 0886007755</p>\r\n\r\n<p><strong>Hải Dương:&nbsp;<img data-thumb=\"icon\" original-height=\"225\" original-width=\"225\" src=\"https://bizweb.dktcdn.net/thumb/icon/100/420/160/files/images-2.png?v=1623729435837\" /></strong><br />\r\n-&nbsp;35B&nbsp;Chợ Con, gần Hồ Bạch Đằng, TP Hải Dương - 0899965566 (Mới chuyển từ&nbsp;địa điểm cũ&nbsp;56 Trần Hưng Đạo)&nbsp;</p>\r\n\r\n<p><strong>Hải Phòng:</strong><br />\r\n-&nbsp;12 Điện Biên Phủ Hải Phòng - 0916551212</p>\r\n\r\n<p><strong>Thái Nguyên:</strong><br />\r\n-&nbsp;467 Lương Ngọc Quyến, TP Thái Nguyên - 0888338555</p>\r\n\r\n<p><strong>Đà Nẵng:&nbsp;</strong><br />\r\n-&nbsp;65 Hàm Nghi, quận Thanh Khê, Đà Nẵng - 0899976655</p>\r\n\r\n<p><strong>Cần Thơ:&nbsp;</strong><br />\r\n-&nbsp;58E Đường 3/2, quận Ninh Kiều,&nbsp;TP Cần Thơ - 0911108855</p>\r\n\r\n<p><strong>Hồ Chí Minh:</strong><br />\r\n-&nbsp;699 Lê Hồng Phong, Phường 10, Quận 10, TP HCM -&nbsp;0911569933 (Hỗ trợ kĩ thuật chi nhánh HCM)</p>\r\n\r\n<p>- 701&nbsp;Lê Hồng Phong, Phường 10, Quận 10, TP HCM - 0971699701&nbsp;(Bán hàng)</p>', 'editor', 1, 0, NULL, 18, NULL);
INSERT INTO `fs_config` VALUES (125, 'sales', 'Quà khuyến mại', '<p>+ Bảo hiểm rơi vỡ&nbsp;mặt kính, trị&nbsp;giá lên đến <strong>250.000đ</strong>&nbsp;(*) và miễn phí dịch vụ&nbsp;phủ&nbsp;nano trị&nbsp;giá<strong> 200.000đ</strong>&nbsp;(**)</p>\r\n\r\n<p>+ Bảo hành mở&nbsp;rộng 18 tháng trị&nbsp;giá <strong>400.000đ</strong>&nbsp;(**)</p>\r\n\r\n<p>+ Tặng nón bảo hiểm cao cấp <strong>300.000đ</strong>&nbsp;(*)</p>\r\n\r\n<p>+ Tặng voucher giảm giá mua máy <strong>100.000đ</strong>&nbsp;(*)</p>\r\n\r\n<p>+ Giảm giá 15% bao da - ốp lưng trị&nbsp;giá lên đến <strong>80.000đ</strong></p>\r\n\r\n<p>+ Giảm giá 50% dịch vụ&nbsp;phủ&nbsp;nano trị&nbsp;giá <strong>100.000đ</strong></p>\r\n\r\n<p>&nbsp;</p>', 'editor', 1, 0, NULL, 24, NULL);
INSERT INTO `fs_config` VALUES (16, 'hotline2', 'Hotline2', '0988.242424', 'text', 1, 0, NULL, 16, NULL);
INSERT INTO `fs_config` VALUES (18, 'facebook', 'Facebook', '', 'text', 1, 0, NULL, 18, NULL);
INSERT INTO `fs_config` VALUES (19, 'twitter', 'Twitter', '', 'text', 1, 0, NULL, 19, NULL);
INSERT INTO `fs_config` VALUES (20, 'google', 'Google', '', 'text', 1, 0, NULL, 20, NULL);
INSERT INTO `fs_config` VALUES (21, 'youtube', 'Youtube', '', 'text', 1, 0, NULL, 21, NULL);
INSERT INTO `fs_config` VALUES (22, 'zing', 'Zing', '', 'text', 1, 0, NULL, 22, NULL);
INSERT INTO `fs_config` VALUES (123, 'contact_name', 'Tên liên hệ', 'LIÊN HỆ', 'text', 1, 0, NULL, 0, NULL);
INSERT INTO `fs_config` VALUES (124, 'time', 'Giờ làm việc ', '(8h -21h30)', 'text', 1, 0, NULL, 23, NULL);
INSERT INTO `fs_config` VALUES (140, 'mail_order_body', 'Mẫu email nhận đơn hàng', '', 'editor', 1, 0, NULL, 25, NULL);
INSERT INTO `fs_config` VALUES (141, 'mail_order_subject', 'Chủ đề mail Đơn hàng', '', 'text', 1, 0, NULL, 24, NULL);
INSERT INTO `fs_config` VALUES (142, 'showroom', 'Footer showroom', '<p><strong>Hà Nội:</strong><br />\r\n- Bán hàng Online - 18006501<br />\r\n- 119 Thái Thịnh, Đống Đa, Hà Nội -&nbsp;0966119995<br />\r\n-&nbsp;75 Quảng Oai, Ba Vì, Hà Nội - 0886007755</p>\r\n\r\n<p><strong>Hải Dương:&nbsp;<img data-thumb=\"icon\" original-height=\"225\" original-width=\"225\" src=\"https://bizweb.dktcdn.net/thumb/icon/100/420/160/files/images-2.png?v=1623729435837\" /></strong><br />\r\n-&nbsp;35B&nbsp;Chợ Con, gần Hồ Bạch Đằng, TP Hải Dương - 0899965566 (Mới chuyển từ&nbsp;địa điểm cũ&nbsp;56 Trần Hưng Đạo)&nbsp;</p>\r\n\r\n<p><strong>Hải Phòng:</strong><br />\r\n-&nbsp;12 Điện Biên Phủ Hải Phòng - 0916551212</p>\r\n\r\n<p><strong>Thái Nguyên:</strong><br />\r\n-&nbsp;467 Lương Ngọc Quyến, TP Thái Nguyên - 0888338555</p>\r\n\r\n<p><strong>Đà Nẵng:&nbsp;</strong><br />\r\n-&nbsp;65 Hàm Nghi, quận Thanh Khê, Đà Nẵng - 0899976655</p>\r\n\r\n<p><strong>Cần Thơ:&nbsp;</strong><br />\r\n-&nbsp;58E Đường 3/2, quận Ninh Kiều,&nbsp;TP Cần Thơ - 0911108855</p>\r\n\r\n<p><strong>Hồ Chí Minh:</strong><br />\r\n-&nbsp;699 Lê Hồng Phong, Phường 10, Quận 10, TP HCM -&nbsp;0911569933 (Hỗ trợ kĩ thuật chi nhánh HCM)</p>\r\n\r\n<p>- 701&nbsp;Lê Hồng Phong, Phường 10, Quận 10, TP HCM - 0971699701&nbsp;(Bán hàng)</p>', 'editor', 1, 0, NULL, 26, NULL);
INSERT INTO `fs_config` VALUES (143, 'support', 'Footer support', '', 'tinyeditor', 1, 0, NULL, 25, '<img src=\"https://lh3.googleusercontent.com/d/1JqjEq1KZK15xLesBsPpyZMhxoC6ni-Af\" />');
INSERT INTO `fs_config` VALUES (150, 'name_sale', 'Tên danh mục khuyến mại', 'XEM THÊM TOÀN BỘ SẢN PHẨM GIÁ SỐC', 'text', 1, 0, NULL, 12, NULL);
INSERT INTO `fs_config` VALUES (151, 'show_popup', 'Hiển thị popup', '', 'bool', 1, 0, NULL, 13, NULL);
INSERT INTO `fs_config` VALUES (152, 'image_popup', 'Ảnh popup', 'images/config/hotsale-iphone-13-256gb-6_1639118337.png', 'image', 1, 0, NULL, 13, NULL);
INSERT INTO `fs_config` VALUES (158, 'banner_top_home', 'Banner trên header', 'images/config/group-667_1635589176.jpg', 'image', 1, 0, NULL, 32, '<img src=\"https://lh3.googleusercontent.com/d/1YvguMHIcRndU7J_2JiQT6nLA-SqrhWhm\" />');
INSERT INTO `fs_config` VALUES (159, 'link_banner_top', 'Link banner trên header', '', 'text', 1, 0, NULL, 33, NULL);
INSERT INTO `fs_config` VALUES (160, 'show_banner_top', 'Hiển thị banner trên header', '', 'bool', 1, 0, NULL, 34, NULL);
INSERT INTO `fs_config` VALUES (145, 'zalo', 'zalo', '', 'text', 1, 0, NULL, 23, NULL);
INSERT INTO `fs_config` VALUES (146, 'date_start', 'Thời gian bắt đầu khuyến mại', '14-01-2019-10-35-40', 'text', 1, 0, NULL, 11, NULL);
INSERT INTO `fs_config` VALUES (155, 'text_down', 'Text đếm ngược', 'Sắp diễn ra trong', 'text', 1, 0, NULL, 13, NULL);
INSERT INTO `fs_config` VALUES (154, 'module_popup', 'Nơi hiển thị popup', 'home', 'module', 1, 0, NULL, 13, NULL);
INSERT INTO `fs_config` VALUES (147, 'date_end', 'Thời gian kết thúc khuyến mại', '15-2-2019-10-35-40', 'text', 1, 0, NULL, 11, NULL);
INSERT INTO `fs_config` VALUES (153, 'link_popup', 'Link popup', '', 'text', 1, 0, NULL, 13, NULL);
INSERT INTO `fs_config` VALUES (148, 'sitemap', 'Thêm link sitemap', '', 'text', 1, 0, NULL, 0, NULL);
INSERT INTO `fs_config` VALUES (13, 'show_cat', 'Hiển thị khung danh mục', '1', 'bool', 1, 0, NULL, 11, NULL);
INSERT INTO `fs_config` VALUES (12, 'background_sales', 'Background trang sales', 'images/config/background-01_1593601474.jpg', 'image', 1, 0, NULL, 12, NULL);
INSERT INTO `fs_config` VALUES (149, 'info_footer_amp', 'Footer Amp', '<p><span style=\"font-size:14px;\"><strong><span style=\"color:#27ae60;\">Mua trả góp&nbsp;</span><span style=\"color:#27ae60;\"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color:#27ae60;\">Tin tức</span></strong></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"line-height:4px;\"><strong><span style=\"color:#27ae60;\"><span style=\"background-color:#ffffff;\">Chính sách bảo hành</span></span><span style=\"color:#27ae60;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style=\"background-color:#ffffff;\">&nbsp;</span></span><span style=\"color:#27ae60;\"><span style=\"background-color:#ffffff;\">K</span></span></strong><span style=\"color:#27ae60;\"><strong><span style=\"background-color:#ffffff;\">huyến mãi</span></strong></span></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"line-height:4px;\"><strong><span style=\"background-color:#ffffff;\"><span style=\"color:#27ae60;\">Hướng dẫn kỹ thuật&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span><span style=\"color:#27ae60;\">Điện thoại HOT</span></span></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"line-height:4px;\"><strong>Facebook&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<span style=\"font-weight: bold;\"><span style=\"text-decoration: none; color: rgb(231, 76, 60);\"><span style=\"background-color:#ffffff;\">YouTube&nbsp;</span></span></span></span></span></p>', 'editor', 1, 0, NULL, 30, NULL);
INSERT INTO `fs_config` VALUES (176, 'banks_send', 'Thông tin tài khoản ngân hàng', '', 'tinyeditor', 1, 0, NULL, 15, '<img src=\"https://minh-finalstyle-com.nimbusweb.me/box/attachment/6853347/c68rr67nqf72kxkwrlqr/EIly0QKZ6CTYLpSM/screenshot-didongthongminh.vn-2022.05.02-11_45_16.png\" />');
INSERT INTO `fs_config` VALUES (176, 'mail_register', 'Email kích hoạt tài khoản đăng ký', '', 'editor', 1, 0, NULL, 44, NULL);
INSERT INTO `fs_config` VALUES (180, 'introhome', 'Giới thiệu trang chủ', '', 'editor', 1, 0, NULL, 14, '<img src=\"https://minh-finalstyle-com.nimbusweb.me/box/attachment/6853316/6kx3239eikhk1spu6tpu/HmfoXt4UAsqrBzIM/screenshot-didongthongminh.vn-2022.05.02-11_39_06.png\"  alt=\"\"/>');
INSERT INTO `fs_config` VALUES (150, 'code', 'Mã code', '', 'editor', 1, 0, NULL, 31, NULL);
INSERT INTO `fs_config` VALUES (157, 'title_store', 'title cửa hàng', '', 'editor', 1, 0, NULL, 30, NULL);
INSERT INTO `fs_config` VALUES (163, 'color_boxsale', 'Màu nền box sale', '#216945', 'text', 1, 0, NULL, 11, NULL);
INSERT INTO `fs_config` VALUES (164, 'show_color_boxsale', 'hiển thị màu nền box sale', '1', 'bool', 1, 0, NULL, 11, NULL);
INSERT INTO `fs_config` VALUES (165, 'banner_header_mb', 'Banner header mobile', 'images/config/group-1_1638173437.jpg', 'image', 1, 0, NULL, 32, NULL);
INSERT INTO `fs_config` VALUES (161, 'color_banner_top', 'Mã màu banner top', '#216945', 'text', 1, 0, NULL, 35, NULL);
INSERT INTO `fs_config` VALUES (162, 'show_background_home', 'Hiển thị background trang chủ', '', 'bool', 1, 0, NULL, 10, NULL);
INSERT INTO `fs_config` VALUES (156, 'copyright1', 'copyright1', '', 'editor', 1, 0, NULL, 13, NULL);
INSERT INTO `fs_config` VALUES (167, 'background_gaming', 'Background trang gaming', 'images/config/purple-space-galaxy-s4_1600245266_1616038533.jpg', 'image', 1, 0, NULL, 36, NULL);
INSERT INTO `fs_config` VALUES (168, 'banner_gaming', 'Banner trang gaming', 'images/config/banner-gaming-misthy_1616035042.png', 'image', 1, 0, NULL, 37, NULL);
INSERT INTO `fs_config` VALUES (166, 'showroom_mobile', 'showroom mobile', '<p>119 Thái Thịnh, Đống Đa, Hà Nội -&nbsp;0966119995</p>\r\n\r\n<p>75 Quảng Oai, Ba Vì, Hà Nội - 0886007755</p>\r\n\r\n<p>35B&nbsp;Chợ Con, gần Hồ Bạch Đằng, TP Hải Dương - 0899965566 (Mới chuyển từ&nbsp;địa điểm cũ&nbsp;56 Trần Hưng Đạo)&nbsp;</p>\r\n\r\n<p>12 Điện Biên Phủ Hải Phòng - 0916551212</p>\r\n\r\n<p>467 Lương Ngọc Quyến, TP Thái Nguyên - 0888338555</p>\r\n\r\n<p>65 Hàm Nghi, quận Thanh Khê, Đà Nẵng - 0899976655</p>\r\n\r\n<p>58E Đường 3/2, quận Ninh Kiều,&nbsp;TP Cần Thơ - 0911108855</p>\r\n\r\n<p>699 Lê Hồng Phong, Phường 10, Quận 10, TP HCM -&nbsp;0911569933 (Hỗ trợ kĩ thuật chi nhánh HCM)</p>\r\n\r\n<p>701&nbsp;Lê Hồng Phong, Phường 10, Quận 10, TP HCM - 0971699701&nbsp;(Bán hàng)</p>', 'editor', 1, 0, NULL, 26, NULL);
INSERT INTO `fs_config` VALUES (169, 'link_banner_gaming', 'Link banner trang gaming', '', 'text', 1, 0, NULL, 38, NULL);
INSERT INTO `fs_config` VALUES (170, 'background_color_listcat', 'Màu nền list danh mục home', '#fff', 'text', 1, 0, NULL, 39, NULL);
INSERT INTO `fs_config` VALUES (171, 'background_color_icon', 'Màu nền icon danh mục home', '#fff', 'text', 1, 0, NULL, 40, NULL);
INSERT INTO `fs_config` VALUES (172, 'color_cat', 'Màu chữ danh mục home', '#4e4653', 'text', 1, 0, NULL, 41, NULL);
INSERT INTO `fs_config` VALUES (173, 'qr_code', 'QR code', 'images/config/asset-9_1621830443.png', 'image', 1, 0, NULL, 42, NULL);
INSERT INTO `fs_config` VALUES (174, 'about', 'Về chúng tôi', '', 'editor', 1, 0, NULL, 14, NULL);
INSERT INTO `fs_config` VALUES (175, 'payment', 'Hỗ trợ thanh toán', '<p style=\"display: grid;grid-template-columns: 54px 54px 54px 54px;grid-gap: 10px;\"><img alt=\"\" src=\"/upload_images/images/2021/10/26/visa.jpg\" style=\"width: 54px; height: 33px;\" /><img alt=\"\" src=\"/upload_images/images/2021/10/26/payment_2.jpg\" style=\"width: 54px; height: 33px;\" /><img alt=\"\" src=\"/upload_images/images/2021/10/26/payment_3.jpg\" style=\"width: 54px; height: 33px;\" /><img alt=\"\" src=\"/upload_images/images/2021/10/26/payment_4.jpg\" style=\"width: 54px; height: 33px;\" /><img alt=\"\" src=\"/upload_images/images/2021/10/26/payment_5.jpg\" style=\"width: 54px; height: 33px;\" /><img alt=\"\" src=\"/upload_images/images/2021/10/26/payment_6.jpg\" style=\"width: 54px; height: 33px;\" /></p>', 'editor', 1, 0, NULL, 14, NULL);
INSERT INTO `fs_config` VALUES (177, 'messenger', 'Messenger', '', 'text', 1, 0, NULL, 23, NULL);
INSERT INTO `fs_config` VALUES (178, 'fee', 'Phí vận chuyển', '', 'text', 1, 0, NULL, 15, NULL);
INSERT INTO `fs_config` VALUES (179, 'logo_mb', 'Logo mobile', 'images/config/logo_1648529142.svg', 'image', 1, 0, NULL, 10, NULL);

-- ----------------------------
-- Table structure for fs_config_modules
-- ----------------------------
DROP TABLE IF EXISTS `fs_config_modules`;
CREATE TABLE `fs_config_modules`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Tên module hoặc type',
  `view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `task` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Mặc định là display',
  `published` tinyint NOT NULL DEFAULT 1,
  `ordering` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cache` int NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `fields_seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'số 1 đứng đằng trước trường tức là \"AND\" là luôn cộng vào\r\nsố 0 đứng đằng trước trường là \"OR\" là có tham số trước nó rồi thì sau sẽ ko cộng thêm vào nữa',
  `fields_seo_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'số 1 đứng đằng trước trường tức là \"AND\" là luôn cộng vào\r\nsố 0 đứng đằng trước trường là \"OR\" là có tham số trước nó rồi thì sau sẽ ko cộng thêm vào nữa',
  `fields_seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'số 1 đứng đằng trước trường tức là \"AND\" là luôn cộng vào\r\nsố 0 đứng đằng trước trường là \"OR\" là có tham số trước nó rồi thì sau sẽ ko cộng thêm vào nữa',
  `fields_seo_h1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fields_seo_h2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fields_seo_image_alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value_seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Thông số này giúp cho các trang không nhập được  SEO như trang \"trang chủ sp, trang chủ tin tức,...)',
  `value_seo_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value_seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_config_modules
-- ----------------------------
INSERT INTO `fs_config_modules` VALUES (24, 'Danh mục sản phẩm', 'products', 'cat', NULL, 1, NULL, 0, '', '1,seo_title', '1,seo_keyword', NULL, '', '', '1,', '', '', '');
INSERT INTO `fs_config_modules` VALUES (25, 'Hãng sản xuất', 'products', 'manufactory', NULL, 0, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_config_modules` VALUES (26, 'Chi tiết sản phẩm', 'products', 'product', NULL, 1, NULL, 0, 'image_large_size=400x400\rimage_large_method=resize_image_fix_height_webp\r\rimage_resized_size=210x210\rimage_resized_method=resize_image_fix_height_webp\r\rimage_small_size=60x60\rimage_small_method=resize_image_fix_height_webp\r\ruse_manufactory=1\ruse_model=0', '1,seo_title|2,name', '1,seo_keyword|1,name|1,tags', '1,seo_description|2,name', '', '', '1,', '', '', '');
INSERT INTO `fs_config_modules` VALUES (27, 'Loại sản phẩm', 'products', 'types', NULL, 0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_config_modules` VALUES (28, 'Danh mục tin', 'news', 'cat', NULL, 1, NULL, 0, 'limit=6', '1,seo_title|1,name', '1,seo_keyword|2,name', '1,seo_description|2,name', '', '', '1,', '', '', '');
INSERT INTO `fs_config_modules` VALUES (29, 'Chi tiết tin', 'news', 'news', '', 1, NULL, 0, '', '1,seo_title|2,title|1,category_name', '1,seo_keyword|2,title|1,tags', '1,seo_description|2,summary', '', '', '1,', '', '', '');
INSERT INTO `fs_config_modules` VALUES (30, 'Tìm kiếm tin', 'news', 'search', NULL, 0, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fs_groups
-- ----------------------------
DROP TABLE IF EXISTS `fs_groups`;
CREATE TABLE `fs_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `published` tinyint NULL DEFAULT NULL,
  `ordering` int NULL DEFAULT NULL,
  `created_time` datetime NULL DEFAULT NULL,
  `creator` int NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  `edit_other` tinyint NULL DEFAULT NULL,
  `is_default` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_groups
-- ----------------------------
INSERT INTO `fs_groups` VALUES (1, 'Super Admin', 'full permission', 1, 1, '2014-01-21 07:10:10', 1, '2014-01-21 07:10:10', 0, 1);
INSERT INTO `fs_groups` VALUES (2, 'Special', 'adminisatrator', 1, 2, '2014-07-07 09:30:58', 1, '2014-07-07 09:30:58', 0, 0);
INSERT INTO `fs_groups` VALUES (50, 'Mod', NULL, 1, 3, '2012-12-03 08:29:08', NULL, '2012-12-03 08:29:08', 0, 0);
INSERT INTO `fs_groups` VALUES (53, 'Đăng tin', NULL, 1, 0, '2014-07-04 02:35:40', NULL, '2014-07-04 02:35:40', 0, 0);

-- ----------------------------
-- Table structure for fs_groups_permission
-- ----------------------------
DROP TABLE IF EXISTS `fs_groups_permission`;
CREATE TABLE `fs_groups_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NULL DEFAULT NULL,
  `module_type_id` int NULL DEFAULT NULL,
  `permission` int NULL DEFAULT NULL COMMENT '3: view\r\n5: edit\r\n7: delete',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 185 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of fs_groups_permission
-- ----------------------------
INSERT INTO `fs_groups_permission` VALUES (1, 28, 1, 3);
INSERT INTO `fs_groups_permission` VALUES (2, 28, 2, 3);
INSERT INTO `fs_groups_permission` VALUES (3, 28, 3, 0);
INSERT INTO `fs_groups_permission` VALUES (4, 28, 4, 3);
INSERT INTO `fs_groups_permission` VALUES (5, 29, 1, 5);
INSERT INTO `fs_groups_permission` VALUES (6, 29, 2, 7);
INSERT INTO `fs_groups_permission` VALUES (7, 29, 3, 5);
INSERT INTO `fs_groups_permission` VALUES (8, 29, 4, 5);
INSERT INTO `fs_groups_permission` VALUES (9, 30, 1, 5);
INSERT INTO `fs_groups_permission` VALUES (10, 30, 2, 7);
INSERT INTO `fs_groups_permission` VALUES (11, 30, 3, 5);
INSERT INTO `fs_groups_permission` VALUES (12, 30, 4, 3);
INSERT INTO `fs_groups_permission` VALUES (24, 43, 4, 3);
INSERT INTO `fs_groups_permission` VALUES (23, 43, 3, 3);
INSERT INTO `fs_groups_permission` VALUES (22, 43, 2, 3);
INSERT INTO `fs_groups_permission` VALUES (21, 43, 1, 3);
INSERT INTO `fs_groups_permission` VALUES (25, 44, 1, 7);
INSERT INTO `fs_groups_permission` VALUES (26, 44, 2, 7);
INSERT INTO `fs_groups_permission` VALUES (27, 44, 3, 7);
INSERT INTO `fs_groups_permission` VALUES (28, 44, 4, 7);
INSERT INTO `fs_groups_permission` VALUES (29, 45, 1, 7);
INSERT INTO `fs_groups_permission` VALUES (30, 45, 2, 7);
INSERT INTO `fs_groups_permission` VALUES (31, 45, 3, 7);
INSERT INTO `fs_groups_permission` VALUES (32, 45, 4, 7);
INSERT INTO `fs_groups_permission` VALUES (33, 1, 1, 7);
INSERT INTO `fs_groups_permission` VALUES (34, 1, 2, 7);
INSERT INTO `fs_groups_permission` VALUES (35, 1, 3, 7);
INSERT INTO `fs_groups_permission` VALUES (36, 1, 4, 7);
INSERT INTO `fs_groups_permission` VALUES (37, 2, 1, 0);
INSERT INTO `fs_groups_permission` VALUES (38, 2, 2, 3);
INSERT INTO `fs_groups_permission` VALUES (39, 2, 3, 0);
INSERT INTO `fs_groups_permission` VALUES (40, 2, 4, 0);
INSERT INTO `fs_groups_permission` VALUES (61, 50, 1, 0);
INSERT INTO `fs_groups_permission` VALUES (62, 50, 9, 0);
INSERT INTO `fs_groups_permission` VALUES (63, 50, 3, 3);
INSERT INTO `fs_groups_permission` VALUES (64, 50, 4, 7);
INSERT INTO `fs_groups_permission` VALUES (65, 50, 5, 7);
INSERT INTO `fs_groups_permission` VALUES (66, 50, 6, 7);
INSERT INTO `fs_groups_permission` VALUES (67, 50, 7, 7);
INSERT INTO `fs_groups_permission` VALUES (68, 50, 8, 7);
INSERT INTO `fs_groups_permission` VALUES (69, 50, 10, 7);
INSERT INTO `fs_groups_permission` VALUES (70, 50, 11, 7);
INSERT INTO `fs_groups_permission` VALUES (71, 50, 12, 7);
INSERT INTO `fs_groups_permission` VALUES (72, 50, 13, 7);
INSERT INTO `fs_groups_permission` VALUES (73, 50, 14, 7);
INSERT INTO `fs_groups_permission` VALUES (74, 50, 15, 7);
INSERT INTO `fs_groups_permission` VALUES (75, 50, 16, 7);
INSERT INTO `fs_groups_permission` VALUES (76, 50, 17, 7);
INSERT INTO `fs_groups_permission` VALUES (77, 50, 18, 7);
INSERT INTO `fs_groups_permission` VALUES (78, 50, 19, 7);
INSERT INTO `fs_groups_permission` VALUES (79, 50, 20, 0);
INSERT INTO `fs_groups_permission` VALUES (80, 1, 9, 7);
INSERT INTO `fs_groups_permission` VALUES (81, 1, 5, 7);
INSERT INTO `fs_groups_permission` VALUES (82, 1, 6, 7);
INSERT INTO `fs_groups_permission` VALUES (83, 1, 7, 7);
INSERT INTO `fs_groups_permission` VALUES (84, 1, 8, 7);
INSERT INTO `fs_groups_permission` VALUES (85, 1, 10, 7);
INSERT INTO `fs_groups_permission` VALUES (86, 1, 11, 7);
INSERT INTO `fs_groups_permission` VALUES (87, 1, 12, 7);
INSERT INTO `fs_groups_permission` VALUES (88, 1, 13, 7);
INSERT INTO `fs_groups_permission` VALUES (89, 1, 14, 7);
INSERT INTO `fs_groups_permission` VALUES (90, 1, 15, 7);
INSERT INTO `fs_groups_permission` VALUES (91, 1, 16, 7);
INSERT INTO `fs_groups_permission` VALUES (92, 1, 17, 7);
INSERT INTO `fs_groups_permission` VALUES (93, 1, 18, 7);
INSERT INTO `fs_groups_permission` VALUES (94, 1, 19, 7);
INSERT INTO `fs_groups_permission` VALUES (95, 1, 20, 7);
INSERT INTO `fs_groups_permission` VALUES (96, 51, 1, 0);
INSERT INTO `fs_groups_permission` VALUES (97, 51, 9, 5);
INSERT INTO `fs_groups_permission` VALUES (98, 51, 3, 0);
INSERT INTO `fs_groups_permission` VALUES (99, 51, 4, 0);
INSERT INTO `fs_groups_permission` VALUES (100, 51, 5, 0);
INSERT INTO `fs_groups_permission` VALUES (101, 51, 6, 0);
INSERT INTO `fs_groups_permission` VALUES (102, 51, 7, 0);
INSERT INTO `fs_groups_permission` VALUES (103, 51, 8, 0);
INSERT INTO `fs_groups_permission` VALUES (104, 51, 10, 0);
INSERT INTO `fs_groups_permission` VALUES (105, 51, 11, 0);
INSERT INTO `fs_groups_permission` VALUES (106, 51, 12, 0);
INSERT INTO `fs_groups_permission` VALUES (107, 51, 13, 0);
INSERT INTO `fs_groups_permission` VALUES (108, 51, 14, 0);
INSERT INTO `fs_groups_permission` VALUES (109, 51, 15, 0);
INSERT INTO `fs_groups_permission` VALUES (110, 51, 16, 0);
INSERT INTO `fs_groups_permission` VALUES (111, 51, 17, 0);
INSERT INTO `fs_groups_permission` VALUES (112, 51, 18, 0);
INSERT INTO `fs_groups_permission` VALUES (113, 51, 19, 0);
INSERT INTO `fs_groups_permission` VALUES (114, 51, 20, 0);
INSERT INTO `fs_groups_permission` VALUES (115, 51, 21, 7);
INSERT INTO `fs_groups_permission` VALUES (116, 51, 22, 0);
INSERT INTO `fs_groups_permission` VALUES (117, 51, 23, 0);
INSERT INTO `fs_groups_permission` VALUES (118, 51, 24, 0);
INSERT INTO `fs_groups_permission` VALUES (119, 1, 21, 7);
INSERT INTO `fs_groups_permission` VALUES (120, 1, 22, 7);
INSERT INTO `fs_groups_permission` VALUES (121, 1, 23, 7);
INSERT INTO `fs_groups_permission` VALUES (122, 1, 24, 7);
INSERT INTO `fs_groups_permission` VALUES (184, 2, 30, 0);
INSERT INTO `fs_groups_permission` VALUES (183, 2, 29, 0);
INSERT INTO `fs_groups_permission` VALUES (182, 2, 28, 0);
INSERT INTO `fs_groups_permission` VALUES (181, 2, 27, 0);
INSERT INTO `fs_groups_permission` VALUES (180, 2, 26, 0);
INSERT INTO `fs_groups_permission` VALUES (179, 2, 25, 0);
INSERT INTO `fs_groups_permission` VALUES (178, 2, 24, 0);
INSERT INTO `fs_groups_permission` VALUES (177, 2, 23, 0);
INSERT INTO `fs_groups_permission` VALUES (176, 2, 22, 0);
INSERT INTO `fs_groups_permission` VALUES (175, 2, 21, 0);
INSERT INTO `fs_groups_permission` VALUES (174, 2, 17, 0);
INSERT INTO `fs_groups_permission` VALUES (173, 2, 16, 0);
INSERT INTO `fs_groups_permission` VALUES (172, 2, 15, 0);
INSERT INTO `fs_groups_permission` VALUES (171, 2, 13, 0);
INSERT INTO `fs_groups_permission` VALUES (170, 2, 11, 0);
INSERT INTO `fs_groups_permission` VALUES (169, 2, 10, 0);
INSERT INTO `fs_groups_permission` VALUES (168, 2, 8, 0);
INSERT INTO `fs_groups_permission` VALUES (167, 2, 7, 0);
INSERT INTO `fs_groups_permission` VALUES (166, 2, 6, 0);
INSERT INTO `fs_groups_permission` VALUES (165, 2, 5, 0);
INSERT INTO `fs_groups_permission` VALUES (144, 53, 1, 0);
INSERT INTO `fs_groups_permission` VALUES (145, 53, 3, 5);
INSERT INTO `fs_groups_permission` VALUES (146, 53, 4, 0);
INSERT INTO `fs_groups_permission` VALUES (147, 53, 5, 0);
INSERT INTO `fs_groups_permission` VALUES (148, 53, 6, 0);
INSERT INTO `fs_groups_permission` VALUES (149, 53, 7, 0);
INSERT INTO `fs_groups_permission` VALUES (150, 53, 8, 0);
INSERT INTO `fs_groups_permission` VALUES (151, 53, 10, 0);
INSERT INTO `fs_groups_permission` VALUES (152, 53, 11, 0);
INSERT INTO `fs_groups_permission` VALUES (153, 53, 13, 0);
INSERT INTO `fs_groups_permission` VALUES (154, 53, 15, 0);
INSERT INTO `fs_groups_permission` VALUES (155, 53, 16, 0);
INSERT INTO `fs_groups_permission` VALUES (156, 53, 17, 0);
INSERT INTO `fs_groups_permission` VALUES (157, 53, 21, 0);
INSERT INTO `fs_groups_permission` VALUES (158, 53, 22, 0);
INSERT INTO `fs_groups_permission` VALUES (159, 53, 23, 0);
INSERT INTO `fs_groups_permission` VALUES (160, 53, 24, 0);
INSERT INTO `fs_groups_permission` VALUES (161, 53, 25, 0);
INSERT INTO `fs_groups_permission` VALUES (162, 53, 26, 0);
INSERT INTO `fs_groups_permission` VALUES (163, 53, 27, 0);
INSERT INTO `fs_groups_permission` VALUES (164, 53, 28, 0);

-- ----------------------------
-- Table structure for fs_history
-- ----------------------------
DROP TABLE IF EXISTS `fs_history`;
CREATE TABLE `fs_history`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'buy' COMMENT 'buy: mua , sale: bán sp, add: nạp tiền',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `created_time` datetime NULL DEFAULT NULL,
  `service_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_history
-- ----------------------------

-- ----------------------------
-- Table structure for fs_hits
-- ----------------------------
DROP TABLE IF EXISTS `fs_hits`;
CREATE TABLE `fs_hits`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `visited_time` datetime NULL DEFAULT NULL,
  `page` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 59649 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_hits
-- ----------------------------

-- ----------------------------
-- Table structure for fs_keywords_seo
-- ----------------------------
DROP TABLE IF EXISTS `fs_keywords_seo`;
CREATE TABLE `fs_keywords_seo`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_content` int NULL DEFAULT NULL,
  `module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published` tinyint NULL DEFAULT 1,
  `keywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_keywords_seo
-- ----------------------------

-- ----------------------------
-- Table structure for fs_languages
-- ----------------------------
DROP TABLE IF EXISTS `fs_languages`;
CREATE TABLE `fs_languages`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lang_sort` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_default` tinyint NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_languages
-- ----------------------------
INSERT INTO `fs_languages` VALUES (1, 'viet nam', 'vi', 1);
INSERT INTO `fs_languages` VALUES (2, 'english', 'en', 0);

-- ----------------------------
-- Table structure for fs_languages_contents
-- ----------------------------
DROP TABLE IF EXISTS `fs_languages_contents`;
CREATE TABLE `fs_languages_contents`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `field_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `value` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `modified_time` datetime NULL DEFAULT NULL,
  `created_time` datetime NULL DEFAULT NULL,
  `published` tinyint NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_languages_contents
-- ----------------------------

-- ----------------------------
-- Table structure for fs_languages_tables
-- ----------------------------
DROP TABLE IF EXISTS `fs_languages_tables`;
CREATE TABLE `fs_languages_tables`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `main_field_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'field to display main when show records',
  `edited_time` datetime NULL DEFAULT NULL,
  `published` int NOT NULL DEFAULT 1,
  `field_not_display` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'các trường ko hiển thị',
  `field_synchronize` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Các trường luôn phải lấy theo trang gốc, ko thay đổi theo ngôn ngữ',
  `field_inner_change_simultaneously` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Những trường (ẩn) trong bảng tự động thay đổi theo, thay đổi cùng lúc save',
  `field_inner_change_after` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Những trường (ẩn) trong bảng tự động thay đổi theo, thay đổi sau khi lưu record',
  `field_outer_change` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'những trường ngoài bảng tự động thay đổi theo\r\nfield_outer_change => field_inner_from|table_outer|function|field_compare_inner|field_compare_outer',
  `where` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Thêm điều kiện hiển thị dịch',
  `functions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Hàm hỗ trợ: (function => field|function1 => field1)',
  `ordering` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_languages_tables
-- ----------------------------
INSERT INTO `fs_languages_tables` VALUES (1, 'fs_contents', 'Content', 'title', '2022-02-14 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (2, 'fs_contents_categories', 'Categories', 'name', '2022-02-14 00:00:00', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (3, 'fs_menus_items', 'Menu', 'name', '2022-02-14 00:00:00', 1, ',show_admin,alias,image,parent_id,group_id,ordering,default,published,created_time,updated_time,template,condition,list_parent,level,is_rewrite,target,description,\r\n', NULL, NULL, NULL, NULL, '(fs_menus_items.show_admin = 1 AND fs_menus_items.is_en=1 AND  fs_menus_items.group_id IS NOT NULL) ', 'translate_menu=>link', NULL);
INSERT INTO `fs_languages_tables` VALUES (4, 'fs_departments', 'Departments', 'name', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (5, 'fs_employees', 'Nhân viên', 'name', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (6, 'fs_practice', 'Kinh nghiệm', 'name', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (7, 'fs_projects', 'Dự án', 'name', NULL, 0, ',category_alias,category_name,category_id_wrapper,category_alias_wrapper,current_status,alias,', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (8, 'fs_projects_categories', 'Nhóm dự án', 'name', NULL, 0, ',alias_wrapper,list_parents,icon,parent_id,', ',list_parents,', 'alias_wrapper=>list_parents|generate_alias_wrapper;\r\n', NULL, 'category_alias=>alias|fs_projects||id|category_id;', NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (9, 'fs_projects_regions', 'Khu vực', 'name', NULL, 0, 'description', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (10, 'fs_contact', 'Liên hệ', 'name', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (11, 'fs_news', 'News', 'title', NULL, 0, ',category_alias,category_name,category_id_wrapper,category_alias_wrapper,editor,creator,source_website,', ',list_parents,', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (12, 'fs_news_categories', 'Danh mục tin tức', 'name', NULL, 0, ',alias_wrapper,list_parents,icon,parent_id,name_display, ', ',list_parents,', 'alias_wrapper=>list_parents|generate_alias_wrapper;\r\n', NULL, 'category_alias=>alias|fs_news||id|category_id;', NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (13, 'fs_config', 'Cấu hình', 'title', NULL, 1, ',data_type,name,', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (16, 'fs_partners', 'Đối tác', 'name', NULL, 0, ',alias,field,address,adress,', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (17, 'fs_services_categories', 'Danh mục dịch vụ', 'name', NULL, 0, ',alias_wrapper,list_parents,icon,parent_id,name_display, ', NULL, 'alias_wrapper=>list_parents|generate_alias_wrapper;\r\n', NULL, 'category_alias=>alias|fs_services||id|category_id;', NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (18, 'fs_services', 'Dịch vụ', 'title', NULL, 0, ',category_alias,category_name,category_id_wrapper,category_alias_wrapper,editor,creator,source_website,', ',list_parents,', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (19, 'fs_products_categories', 'Danh mục sản phẩm', 'name', NULL, 0, ',alias_wrapper,list_parents,icon,parent_id,', ',list_parents,', 'alias_wrapper=>list_parents|generate_alias_wrapper;\r\n', NULL, 'category_alias=>alias|fs_products||id|category_id;\r\n', NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (20, 'fs_products', 'Sản phẩm', 'name', NULL, 0, ',category_alias,category_name,category_id_wrapper,category_alias_wrapper,current_status,', ',list_parents,', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (21, 'fs_onlinesupport', 'Hỗ trợ trực tuyến', 'name', NULL, 0, ',alias,', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (22, 'fs_blocks', 'Tên menu', 'title', NULL, 0, ',content,ordering,ordering,module,position,listItemid,params,showTitle,hide_admin,news_categories,', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (23, 'fs_contents', 'Trang tĩnh', 'title', NULL, 1, ',tags,category_id,category_alias,category_name,category_id_wrapper,category_alias_wrapper,image,creator,source_website,created_time,updated_time,editor,show_in_homepage,hits,published,ordering,title_display,display_title,display_column,tags_group,rating_count,rating_sum,keywords,notice,', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (24, 'fs_contents_categories', 'Danh mục trang tĩnh', 'name', NULL, 1, ',alias_wrapper,old_path,old_name,list_parents,icon,name_display,', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (25, 'fs_address', 'Địa chỉ', 'name', NULL, 0, ',alias,icon,', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_languages_tables` VALUES (26, 'fs_aq_questions', 'Hỏi đáp', 'question', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fs_languages_text
-- ----------------------------
DROP TABLE IF EXISTS `fs_languages_text`;
CREATE TABLE `fs_languages_text`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lang_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lang_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lang_fr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_common` tinyint NOT NULL DEFAULT 1,
  `module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_change` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_languages_text
-- ----------------------------
INSERT INTO `fs_languages_text` VALUES (1, 'Trang chủ', 'Trang chủ', 'Home', NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text` VALUES (2, 'Sắp có hàng trở lại', 'Nhận đặt trước', 'Nhận đặt trước', NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text` VALUES (3, 'Nhận đặt trước', 'Nhận đặt trước', 'Nhận đặt trước', NULL, 1, NULL, 1);

-- ----------------------------
-- Table structure for fs_languages_text_admin
-- ----------------------------
DROP TABLE IF EXISTS `fs_languages_text_admin`;
CREATE TABLE `fs_languages_text_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `lang_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lang_vi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lang_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lang_fr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_common` tinyint NOT NULL DEFAULT 1,
  `module` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_change` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 97 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_languages_text_admin
-- ----------------------------
INSERT INTO `fs_languages_text_admin` VALUES (1, 'user info', 'Thông tin người dùng', 'User information', 'User information', 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (2, 'Log out', 'Đăng xuất', 'Log out', 'Log out', 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (3, 'List Management', 'Danh mục quản trị', 'List Management', 'List Management', 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (4, 'User management', 'Quản trị người dùng', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (5, 'User group', 'Nhóm người dùng', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (6, 'User', 'Người dùng', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (7, 'Menu groups', 'Nhóm menu', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (8, 'Menus Items', 'Danh sách menu', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (9, 'Module, advertisement', 'Module, quảng cáo', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (10, 'News', 'Tin tức', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (11, 'Categories', 'Danh mục', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (12, 'Configuration', 'Cấu hình', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (13, 'Background', 'Hình nền', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (14, 'Languages', 'Ngôn ngữ', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (15, 'Translate content', 'Dịch nội dung', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (16, 'Translate phrase (font-end)', 'Dịch từ (font-end)', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (17, 'Translate phrase (backend)', 'Dịch từ (back-end)', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (18, 'Departments', 'Bộ phận', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (19, 'Employees', 'Nhân viên', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (20, 'Projects', 'Dự án', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (21, 'Region', 'Khu vực', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (22, 'Practice', 'Kinh nghiệm', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (23, 'Contact', 'Liên hệ', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (24, 'Add', ' Thêm mới', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (25, 'Edit', 'Sửa', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (26, 'Editor', 'Người sửa', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (27, 'Remove', 'Xóa', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (28, 'Not remove', 'Không xóa được', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (29, 'Published', 'Kích hoạt', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (30, 'Unpublished', 'Ngừng kích hoạt', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (31, 'You must select at least one record', 'Bạn phải chọn ít nhất một bản ghi', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (32, 'Name', 'Tên', 'Name', 'Nom', 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (33, 'Ordering', 'Thứ tự', 'Ordering', NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (34, 'Module', 'Module', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (35, 'View', 'Xem', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (36, 'Permission', 'Quyền', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (37, 'Department', 'Bộ phận', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (38, 'record was deleted', 'bản ghi đã được xóa', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (39, 'Not delete', 'Không thể xóa', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (40, 'record was published', 'bản ghi được kích hoạt', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (41, 'Error when published record', 'Xảy ra lỗi khi kích hoạt', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (42, 'record was unpublished', 'bản ghi bị ngừng kích hoạt', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (43, 'Error when unpublished record', 'Lỗi khi ngừng kích hoạt', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (44, 'Saved', 'Đã lưu', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (45, 'Not save', 'Không thể lưu được', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (46, 'User list', 'Danh sách người dùng', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (47, 'Search', 'Tìm kiếm', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (48, 'Username', 'Tên đăng nhập', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (49, 'Detail', 'Chi tiết', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (50, 'Other information', 'Thông tin khác', 'Other information', 'Autres informations', 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (51, 'Password', 'Mật khẩu', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (52, 'Re-password', 'Nhập lại mật khẩu', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (53, 'Yes', 'Có', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (54, 'No', 'Không', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (55, 'First name', 'Họ', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (56, 'Middle-last name', 'Chữ đệm - tên', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (57, 'Phone', 'Điện thoại', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (58, 'Address', 'Địa chỉ', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (59, 'Country', 'Quốc gia', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (60, 'Apply', 'Apply', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (61, 'Save', 'Lưu', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (62, 'Cancel', 'Thoát', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (63, 'Value', 'Giá trị', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (64, 'Translate', 'Dịch', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (65, 'Translate to', 'Dịch sang', NULL, NULL, 0, 'languages', 1);
INSERT INTO `fs_languages_text_admin` VALUES (66, 'Category list', 'Danh sách các danh mục', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (67, 'Created time', 'Thời gian tạo', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (68, 'Alias', 'Tên hiệu', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (69, 'Description', 'Mô tả ', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (70, 'Can auto generate', 'Có thể sinh tự động', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (71, 'Region list', 'Danh sách khu vực', NULL, NULL, 0, 'projects', 1);
INSERT INTO `fs_languages_text_admin` VALUES (72, 'Page', 'Trang', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (73, 'Image', 'Ảnh', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (74, 'Year', 'Năm', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (75, 'Base field', 'Trường cơ bản', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (76, 'Other images', 'Ảnh khác', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (77, 'Title', 'Tiêu đề', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (78, 'Default', 'Mặc định', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (79, 'Map', 'Bản đồ', NULL, NULL, 0, 'contact', 1);
INSERT INTO `fs_languages_text_admin` VALUES (80, 'Position', 'Vị trí', NULL, NULL, 0, 'departments', 1);
INSERT INTO `fs_languages_text_admin` VALUES (81, 'Level', 'Cấp độ', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (82, 'Parent', 'Cha', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (83, 'Home', 'Trang chủ', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (84, 'Creator', 'Người tạo', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (85, 'Source', 'Nguồn', NULL, NULL, 0, 'contents', 1);
INSERT INTO `fs_languages_text_admin` VALUES (86, 'Summary', 'Tóm tắt', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (87, 'No translate', 'Chưa dịch', NULL, NULL, 0, 'languages', 1);
INSERT INTO `fs_languages_text_admin` VALUES (88, 'Back', 'Quay lại', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (89, 'Synchronize', 'Đồng bộ hóa', NULL, NULL, 0, 'languages', 1);
INSERT INTO `fs_languages_text_admin` VALUES (90, 'Left content', ' Nội dung bên trái', NULL, NULL, 0, 'practice', 1);
INSERT INTO `fs_languages_text_admin` VALUES (91, 'Right content', 'Nội dung phải', NULL, NULL, 0, 'practice', 1);
INSERT INTO `fs_languages_text_admin` VALUES (92, 'Banners list', 'Danh sách  banner', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (93, 'Width', 'Chiều rộng', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (94, 'Height', 'Chiều cao', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (95, 'Edited time', 'Thời gian sửa', NULL, NULL, 1, NULL, 1);
INSERT INTO `fs_languages_text_admin` VALUES (96, 'Sắp có hàng trở lại', 'Nhận đặt trước', 'Nhận đặt trước', NULL, 1, NULL, 1);

-- ----------------------------
-- Table structure for fs_menus_admin
-- ----------------------------
DROP TABLE IF EXISTS `fs_menus_admin`;
CREATE TABLE `fs_menus_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT 0,
  `published` tinyint NOT NULL DEFAULT 1,
  `ordering` int NOT NULL DEFAULT 1,
  `admin_type` tinyint NULL DEFAULT NULL COMMENT 'to used for Admin or User in back-end',
  `module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `featured` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'fa fa-star',
  `view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `code_color` int NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 210 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_menus_admin
-- ----------------------------
INSERT INTO `fs_menus_admin` VALUES (1, 'Quản  trị user trong back-end', 'backend.png', NULL, 0, 1, 1, NULL, NULL, NULL, 'fa fa-user', NULL, 2);
INSERT INTO `fs_menus_admin` VALUES (2, 'Nhóm người dùng', NULL, 'index.php?module=users&view=groups', 1, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (3, 'Danh sách người dùng', NULL, 'index.php?module=users&view=users', 1, 1, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (10, 'Mẫu vouchers', NULL, NULL, 0, 0, 1, NULL, NULL, NULL, 'fa fa-list-alt', NULL, 7);
INSERT INTO `fs_menus_admin` VALUES (11, 'Mẫu vouchers', 'banner.png', 'index.php?module=sample_vouchers&view=sample_vouchers', 10, 0, 1, NULL, NULL, NULL, 'fa fa-photo', NULL, 8);
INSERT INTO `fs_menus_admin` VALUES (12, 'Danh mục banner', NULL, 'index.php?module=banners&view=categories', 11, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (13, 'Danh sách banner', NULL, 'index.php?module=banners&view=banners', 11, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (14, 'Danh sách block', NULL, 'index.php?module=module&view=module', 10, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (20, 'Menu', 'menu.png', NULL, 0, 0, 1, NULL, NULL, NULL, 'fa fa-th-list', NULL, 9);
INSERT INTO `fs_menus_admin` VALUES (21, 'Nhóm menu', NULL, 'index.php?module=menus&view=groups', 20, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (22, 'Danh sách menu', '', 'index.php?module=menus&view=items', 20, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (30, 'Cấu hình', 'config.png', NULL, 0, 1, 1, NULL, NULL, NULL, 'fa fa-wrench fa-fw', NULL, 4);
INSERT INTO `fs_menus_admin` VALUES (31, 'Cấu hình chung', NULL, 'index.php?module=config&view=config', 30, 1, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (32, 'Cấu hình SEO, module', NULL, 'index.php?module=config&view=modules', 30, 1, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (40, 'Trang  tĩnh', 'static.png', NULL, 0, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (41, 'Danh mục trang  tĩnh', NULL, 'index.php?module=contents&view=categories', 40, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (50, 'Đối tác', NULL, '', 0, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (51, 'Danh sách đối tác', NULL, 'index.php?module=partners&view=partners', 50, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (4, 'Đơn vị', NULL, 'index.php?module=users&view=users&task=list_group_2', 1, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);
INSERT INTO `fs_menus_admin` VALUES (42, 'Danh sách trang  tĩnh', NULL, 'index.php?module=contents&view=contents', 40, 0, 1, NULL, NULL, NULL, 'fa fa-star', NULL, 1);

-- ----------------------------
-- Table structure for fs_menus_createlink
-- ----------------------------
DROP TABLE IF EXISTS `fs_menus_createlink`;
CREATE TABLE `fs_menus_createlink`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `link_menu` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_parameter` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_field_display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'component of module',
  `add_field_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_field_distinct` tinyint NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT 0,
  `published` tinyint UNSIGNED NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_menus_createlink
-- ----------------------------
INSERT INTO `fs_menus_createlink` VALUES (1, 'Sản phẩm', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (2, 'Trang chủ', '1', 'index.php?module=products&view=home', '', '', '', '', NULL, NULL, 0, 0);
INSERT INTO `fs_menus_createlink` VALUES (3, 'Danh mục', '1', 'index.php?module=products&view=cat', 'ccode', 'fs_products_categories', 'name', 'alias', NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (24, 'Sản phẩm', '1', 'index.php?module=products&view=product', 'code,ccode,id', 'fs_products', 'name', 'alias,category_alias,id', NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (5, 'Tin  tức', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (6, 'Trang chủ', '5', 'index.php?module=news&view=home', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (7, 'Danh mục', '5', 'index.php?module=news&view=cat', 'ccode', 'fs_news_categories', 'name', 'alias', NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (8, 'Bài viết', '5', 'index.php?module=news&view=news', 'code,ccode,id', 'fs_news', 'title', 'alias,category_alias,id', NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (12, 'Bài viết', '9', 'index.php?module=contents&view=contents', 'ccode', 'fs_contents', 'title', 'alias', NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (9, 'Trang tĩnh', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (10, 'Trang chủ', '9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `fs_menus_createlink` VALUES (11, 'Danh mục', '9', NULL, 'ccode', NULL, NULL, NULL, NULL, NULL, 0, 0);
INSERT INTO `fs_menus_createlink` VALUES (13, 'Liên hệ', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (14, 'Liên hệ', '13', 'index.php?module=connect', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (15, 'Xả hàng', '1', 'index.php?module=products&view=hotdeal', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (4, 'Sản phẩm', '1', 'index.php?module=products&view=product', 'code,ccode,id', 'fs_products', 'name', 'alias,category_alias,id', NULL, '', 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (25, 'Hệ thống cửa hàng', '13', 'index.php?module=contact', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (26, 'Video', '1', 'index.php?module=videos&view=cat', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (27, 'Thẻ tích điểm ', '0', 'index.php?module=points&view=points', '', '', '', '', NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (28, 'Sales offline', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (29, 'Trang chủ', '28', 'index.php?module=sales_offline&view=home', NULL, NULL, NULL, NULL, NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (30, 'Danh mục', '28', 'index.php?module=sales_offline&view=cat', 'ccode', 'fs_news_categories', 'name', 'alias', NULL, NULL, 0, 1);
INSERT INTO `fs_menus_createlink` VALUES (32, 'Thu cũ đổi mới', '0', 'index.php?module=autumn&view=autumn', '', '', '', '', NULL, NULL, 0, 1);

-- ----------------------------
-- Table structure for fs_menus_groups
-- ----------------------------
DROP TABLE IF EXISTS `fs_menus_groups`;
CREATE TABLE `fs_menus_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published` tinyint NULL DEFAULT NULL,
  `ordering` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 28 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_menus_groups
-- ----------------------------

-- ----------------------------
-- Table structure for fs_menus_items
-- ----------------------------
DROP TABLE IF EXISTS `fs_menus_items`;
CREATE TABLE `fs_menus_items`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `show_admin` tinyint NOT NULL DEFAULT 1,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT 0,
  `target` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `group_id` int NULL DEFAULT NULL,
  `ordering` int NOT NULL DEFAULT 1,
  `default` tinyint NULL DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT 1,
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  `template` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `condition` int NULL DEFAULT NULL,
  `list_parent` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` int NULL DEFAULT NULL,
  `is_rewrite` tinyint(1) NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_en` tinyint NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `style` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `heigth_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bk_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `width_icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 876 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_menus_items
-- ----------------------------
INSERT INTO `fs_menus_items` VALUES (8, 'Trang tĩnh', 0, '', NULL, NULL, 0, NULL, NULL, 8, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (2, 'Trang chủ tin tức', 0, '', NULL, '', 0, NULL, NULL, 2, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (7, 'Danh mục trang tĩnh', 0, '', NULL, NULL, 0, NULL, NULL, 7, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (1, 'Trang chủ', 0, '', NULL, NULL, 0, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (3, 'Danh mục tin tức', 0, '', NULL, NULL, 0, NULL, NULL, 3, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (4, 'Chi tiết tin', 0, '', NULL, NULL, 0, NULL, NULL, 4, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (9, 'Danh sách sản phẩm', 0, '', NULL, NULL, 0, NULL, NULL, 9, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (12, 'Hệ thống cửa hàng', 0, '', NULL, NULL, 0, NULL, NULL, 12, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (10, 'Chi tiết sản phẩm', 0, '', NULL, NULL, 0, NULL, NULL, 10, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (11, 'Mua hàng thành công', 0, '', '', '', 0, '', NULL, 11, NULL, 1, '2022-02-14 00:00:00', '2022-02-14 00:00:00', '', NULL, '', NULL, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (15, 'Xả hàng', 0, '', '', '', 0, '', NULL, 1, NULL, 1, '2022-02-14 00:00:00', '2022-02-14 00:00:00', '', NULL, '', NULL, 0, NULL, 0, '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (13, 'Liên hệ ', 0, '', NULL, NULL, 0, NULL, NULL, 13, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (16, 'Trả góp', 0, '', NULL, NULL, 0, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `fs_menus_items` VALUES (21, 'Chi tiết video', 0, '', NULL, NULL, 0, NULL, NULL, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fs_modules_admin
-- ----------------------------
DROP TABLE IF EXISTS `fs_modules_admin`;
CREATE TABLE `fs_modules_admin`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `module_type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `module_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_modules_admin
-- ----------------------------
INSERT INTO `fs_modules_admin` VALUES (1, 'User management', 'users', 1);
INSERT INTO `fs_modules_admin` VALUES (9, 'Thành viên ngoài font-end', 'members', 0);
INSERT INTO `fs_modules_admin` VALUES (3, 'News', 'news', 1);
INSERT INTO `fs_modules_admin` VALUES (4, 'Module, activate', 'module', 1);
INSERT INTO `fs_modules_admin` VALUES (5, 'Contact', 'contact', 1);
INSERT INTO `fs_modules_admin` VALUES (6, 'Menu', 'menus', 1);
INSERT INTO `fs_modules_admin` VALUES (7, 'Sản phẩm', 'products', 1);
INSERT INTO `fs_modules_admin` VALUES (8, 'Đơn hàng', 'order', 0);
INSERT INTO `fs_modules_admin` VALUES (10, 'Languages', 'languages', 1);
INSERT INTO `fs_modules_admin` VALUES (11, 'Configuration', 'config', 1);
INSERT INTO `fs_modules_admin` VALUES (12, 'Phần mềm', 'software', 0);
INSERT INTO `fs_modules_admin` VALUES (13, 'Slideshow', 'slideshow', 1);
INSERT INTO `fs_modules_admin` VALUES (14, 'Messages', 'messages', 0);
INSERT INTO `fs_modules_admin` VALUES (15, 'Thăm dò ý kiến', 'poll', 1);
INSERT INTO `fs_modules_admin` VALUES (16, 'Địa chỉ', 'address', 1);
INSERT INTO `fs_modules_admin` VALUES (17, 'Banner', 'banners', 1);
INSERT INTO `fs_modules_admin` VALUES (18, 'Training', 'training', 0);
INSERT INTO `fs_modules_admin` VALUES (19, 'Newsletter', 'newsletter', 0);
INSERT INTO `fs_modules_admin` VALUES (20, 'Update sản phẩm từ phần mềm', 'update', 0);
INSERT INTO `fs_modules_admin` VALUES (21, 'Driver', 'drivers', 1);
INSERT INTO `fs_modules_admin` VALUES (22, 'Serial', 'serial', 1);
INSERT INTO `fs_modules_admin` VALUES (23, 'Tra cứu bảo hành', 'warranties', 1);
INSERT INTO `fs_modules_admin` VALUES (24, 'Tư vấn', 'advices', 1);
INSERT INTO `fs_modules_admin` VALUES (25, 'Review', 'reviews', 1);
INSERT INTO `fs_modules_admin` VALUES (26, 'Tuyển dụng', 'career', 1);
INSERT INTO `fs_modules_admin` VALUES (27, 'Nội dung tĩnh', 'contents', 1);
INSERT INTO `fs_modules_admin` VALUES (28, 'Đối tác', 'partners', 1);
INSERT INTO `fs_modules_admin` VALUES (29, 'Hỗ trợ trực tuyến', 'onlinesupport', 1);
INSERT INTO `fs_modules_admin` VALUES (30, 'Keywords', 'keywords', 1);

-- ----------------------------
-- Table structure for fs_permission_fun
-- ----------------------------
DROP TABLE IF EXISTS `fs_permission_fun`;
CREATE TABLE `fs_permission_fun`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published` tinyint NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_permission_fun
-- ----------------------------
INSERT INTO `fs_permission_fun` VALUES (1, 'Thêm mới', 'add', 1);
INSERT INTO `fs_permission_fun` VALUES (2, 'Xem', 'edit', 1);
INSERT INTO `fs_permission_fun` VALUES (3, 'Xóa', 'remove', 1);
INSERT INTO `fs_permission_fun` VALUES (4, 'Kích hoạt', 'published', 1);
INSERT INTO `fs_permission_fun` VALUES (5, 'Bỏ kích hoạt', 'unpublished', 1);
INSERT INTO `fs_permission_fun` VALUES (6, 'Lưu (trong chi tiết)', 'save', 1);
INSERT INTO `fs_permission_fun` VALUES (7, 'Apply', 'apply', 1);
INSERT INTO `fs_permission_fun` VALUES (8, 'Save and new', 'save_add', 1);
INSERT INTO `fs_permission_fun` VALUES (9, 'Duplicate', 'duplicate', 1);
INSERT INTO `fs_permission_fun` VALUES (10, 'Save all', 'save_all', 1);
INSERT INTO `fs_permission_fun` VALUES (11, 'Phân quyền', 'permission', 1);
INSERT INTO `fs_permission_fun` VALUES (12, 'Login NĐT', 'login', 1);
INSERT INTO `fs_permission_fun` VALUES (13, 'Khóa tài khoản', 'block', 1);
INSERT INTO `fs_permission_fun` VALUES (14, 'Sửa tin đăng', 'log_edit', 1);
INSERT INTO `fs_permission_fun` VALUES (15, 'Thoát', 'back', 1);
INSERT INTO `fs_permission_fun` VALUES (16, 'Active', 'active', 1);

-- ----------------------------
-- Table structure for fs_permission_tasks
-- ----------------------------
DROP TABLE IF EXISTS `fs_permission_tasks`;
CREATE TABLE `fs_permission_tasks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `_task` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1',
  `trigger` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Task này sẽ gọi phân quyền của 1 task tương tự',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ordering` int NULL DEFAULT NULL,
  `published` tinyint NOT NULL DEFAULT 1,
  `list_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `list_function` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_permission_tasks
-- ----------------------------
INSERT INTO `fs_permission_tasks` VALUES (1, 'users', 'users', '1', NULL, 'Thành viên trong back-end', NULL, 1, '', ',add,edit,remove,published,unpublished,apply,save,');
INSERT INTO `fs_permission_tasks` VALUES (2, 'users', 'groups', '1', NULL, 'Nhóm thành viên back-end', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (3, 'module', 'module', '1', NULL, 'Quản lý block', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (5, 'banners', 'categories', '1', NULL, 'Danh mục banner', NULL, 1, '', ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (6, 'menus', 'groups', '1', NULL, 'Nhóm menu', NULL, 1, NULL, ',save_add,add,edit,remove,published,unpublished,');
INSERT INTO `fs_permission_tasks` VALUES (7, 'menus', 'items', '1', NULL, 'Danh sách menu', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (8, 'config', 'config', '1', NULL, 'Cấu hình chung', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (9, 'config', 'modules', '1', NULL, 'Cấu hinh module', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (10, 'contents', 'categories', '1', NULL, 'Danh mục tran tĩnh', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (11, 'contents', 'contents', '1', NULL, 'Danh sách trang trĩnh', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (12, 'partners', 'partners', '1', NULL, 'Đối tác', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (13, 'products', 'categories', '1', NULL, 'Danh mục sản phẩm', NULL, 1, ',status,published,', ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (14, 'products', 'products', '1', NULL, 'Danh sách sản phẩm', NULL, 1, ',status,published,', ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (15, 'products', 'comments', '1', NULL, 'Comment sản phẩm', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (16, 'products', 'manufactories', '1', NULL, 'Hãng sản xuất', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (17, 'products', 'types', '1', NULL, 'Loại sản phẩm', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (19, 'slideshow', 'slideshow', '1', NULL, 'Danh sách slideshow', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (20, 'slideshow', 'categories', '1', NULL, 'Danh mục slideshow', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (21, 'order', 'order', '1', NULL, 'Đơn hàng', 2, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (22, 'news', 'news', '1', NULL, 'Danh sách tin tức', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (23, 'news', 'categories', '1', NULL, 'Danh  mục tin tức', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (24, 'news', 'comments', '1', NULL, 'Commen tin tức', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (25, 'address', 'address', '1', NULL, 'Địa chỉ liên hệ', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (26, 'contact', 'contact', '1', NULL, 'Danh sách liên hệ', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (31, 'phone', 'phone', '1', NULL, 'Gọi lại cho tôi', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (45, 'banners', 'banners', '1', NULL, 'Danh sách banners', NULL, 1, ',status,published,', ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (44, 'tags', 'tags', '1', NULL, 'Danh sách tag', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (46, 'products', 'trash', '1', NULL, 'Thùng rác', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (47, 'products', 'origin', '1', NULL, 'Tình trạng', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (48, 'video', 'video', '1', NULL, 'Video', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (49, 'tags', 'categories', '1', NULL, 'Danh mục tag', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (50, 'products', 'tables', '1', NULL, 'Định nghĩa thuộc tính, bộ lọc', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (51, 'products', 'field_group', '1', NULL, 'Nhóm trường mở rộng', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (52, 'products', 'import', '1', NULL, 'Cập nhật sản phẩm', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (53, 'products', 'colors', '1', NULL, 'Màu sắc', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (54, 'products', 'warranty', '1', NULL, 'Bảo hành', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (55, 'products', 'memory', '1', NULL, 'Bộ nhớ trong', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (56, 'products', 'species', '1', NULL, 'Ram', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (57, 'products', 'origin', '1', NULL, 'Tình trạng', NULL, 0, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (58, 'news', 'tags', '1', NULL, 'Tag chủ đề', NULL, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (59, 'extends', 'groups', '1', NULL, 'Danh mục mở rộng', 1, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (60, 'extends', 'data', '1', NULL, 'Danh sách mở rộng', 1, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');
INSERT INTO `fs_permission_tasks` VALUES (61, 'installment', 'installment', '1', NULL, 'Đơn hàng trả góp', 2, 1, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n,add,edit,remove,published,unpublished,apply,save_add,duplicate,back,\r\n');

-- ----------------------------
-- Table structure for fs_translate_content
-- ----------------------------
DROP TABLE IF EXISTS `fs_translate_content`;
CREATE TABLE `fs_translate_content`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `etemplate_id` int NULL DEFAULT NULL,
  `published` tinyint NULL DEFAULT NULL,
  `ordering` int NULL DEFAULT NULL,
  `created_time` datetime NULL DEFAULT NULL,
  `template` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seo_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `seo_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_translate_content
-- ----------------------------
INSERT INTO `fs_translate_content` VALUES (8, 'Information', 'information', 0, 0, NULL, '2014-05-05 11:27:00', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<title></title>\r\n<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\r\n<meta content=\"Giới thiệu,Thế giới số, máy tính, the gioi so, thegioiso, laptop, máy tính xách tay, may tinh xach tay, mua laptop, thị trường laptop, thi truong laptop, thi truong may tinh xach tay, thị trường máy tính xách tay, phân phối, siêu thị laptop, siêu thị máy tính xách tay, sieu thi laptop, sieu thi may tinh xach tay, mua máy tính xách tay, mua may tinh xach tay, bán laptop, bán máy tính xách tay, ban may tinh xach tay, phụ kiện laptop, phu kien laptop, phu kien may tinh xach tay, phụ kiện máy tính xách tay, Acer, Toshiba, HP, Compaq, Logitech, Fujitsu, Dell, Lexmark, Infocus, Máy chiếu, may chieu, máy in, may in, Printer, Projector, Mouse, Digicare, Digiworld, võ văn tần, vo van tan, sai gon, ho chi minh, sài gòn, hồ chí minh, tin tức, khuyến mãi, phân phối\" name=\"keywords\" />\r\n<meta content=\"Công ty Cổ phần Thế Giới Số Digiworld Corporation (Digiworld) – Công ty phân phối sản phẩm CNTT và kỹ thuật số, thuộc Top 500 doanh nghiệp lớn nhất Việt Nam (VNR500), liên tục trong 7 năm liền từ 2007 đến 2013.,Giới...\" name=\"description\" />\r\n<meta content=\"Designed by Finalstyle - Phạm Văn Huy,phamhuy@finalstyle.com,robocon20062007@gmail.com\" name=\"AUTHOR\" />\r\n<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<link href=\"http://demo31.phongcachso.com//images/favicon.ico\" rel=\"icon\" type=\"image/x-icon\" />\r\n<meta content=\"vi\" http-equiv=\"content-language\" />\r\n<meta content=\"INDEX,FOLLOW\" name=\"robots\" />\r\n<meta content=\"IE=7\" http-equiv=\"X-UA-Compatible\" />\r\n<meta content=\"PHP\" name=\"CODE_LANGUAGE\" />\r\n<meta content=\"3600\" http-equiv=\"REFRESH\" />\r\n<link href=\"http://demo31.phongcachso.com/templates/digiworld/css/template.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/modules/contents/assets/css/content_detail.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/css/onlinesupport.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/banners/assets/css/banners_wrapper.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/breadcrumbs/assets/css/breadcrumbs_simple.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/newslist/assets/css/newslist_hot_viewest.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/partners/assets/css/responsive_carousel.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/bottommenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/rss.xml\" rel=\"alternate\" title=\"Digi World Feed\" type=\"application/rss+xml\" />\r\n<meta content=\"VietNam\" name=\"geo.placename\" />\r\n<meta content=\"21.01976825893963;105.84968183034061\" name=\"geo.position\" />\r\n<meta content=\"vi\" name=\"geo.region\" />\r\n<meta content=\"21.01976825893963,105.84968183034061\" name=\"ICBM\" /><script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-45951056-1\', \'koreancosmetic.vn\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>\r\n<div class=\"image_template\"><img alt=\"\" src=\"http://demo31.phongcachso.com/images/sanpham.png\" /></div>\r\n\r\n<div class=\"wrapper\" style=\"background: url(\'http://demo31.phongcachso.com/images/config/background_innner.png\') repeat scroll center 28px #FFFFFF\"><!--	 ONLINESUPPORT -->\r\n<div class=\"header\">\r\n<div class=\"header_wrapper\">\r\n<div class=\"header_right\">\r\n<div class=\"onlinesupport_content\">&nbsp;</div>\r\n\r\n<div class=\"hotline\">098-887-889</div>\r\n\r\n<div class=\"email\">info@dgw.com</div>\r\n\r\n<div class=\"share\"><a class=\"share-facebook\" href=\"\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"rss\" href=\"/rss.xml\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"lang-vi\" href=\"http://demo31.phongcachso.com/trang-tinh/gioi-thieu/gioi-thieu.html\" target=\"_blink\" title=\"\">&nbsp;</a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n<!--	 End HEADER-->\r\n\r\n<div class=\"content\">\r\n<div class=\"container\"><!-- navigation 1-->\r\n<div class=\"main_menu\">\r\n<div class=\"responsive-mobile-menu\">\r\n<div class=\"home \"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com/\" title=\"Digi World\">Trang chủ</a></div>\r\n\r\n<div class=\"rmm\" data-menu-style=\"minimal\">\r\n<ul>\r\n	<li class=\"level_0 item_home sort\"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com/\" title=\"Digi World\">Trang chủ</a></li>\r\n	<li class=\"level_0 sort activated \"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com/trang-tinh/gioi-thieu/gioi-thieu.html\" id=\"menu_item_434\" title=\"Giới thiệu\">Giới thiệu </a> <!--	LEVEL 1			--> <!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort activated \">&nbsp;<!--	LEVEL 1			-->\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort activated  activated  sub-menu-item\" href=\"http://demo31.phongcachso.com/trang-tinh/gioi-thieu/gioi-thieu.html\" id=\"menu_item_488\" title=\"Giới thiệu\">Giới thiệu </a> <!--	LEVEL 2			--> <!--	end LEVEL 2			-->&nbsp;</div>\r\n	</div>\r\n	</li>\r\n	<li class=\"level_0 sort\"><!--	LEVEL 1			--><!--	end LEVEL 1			--></li>\r\n	<!--	CHILDREN				-->\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n<!-- promotion-->\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n<!-- end promotion-->\r\n\r\n<div class=\"wapper_pos1\">\r\n<div class=\"banners  banners-default block_inner block_banner_banner\"><a href=\"\" id=\"banner_item_41\" title=\"Quảng cáo dưới menu\"> <img alt=\"Quảng cáo dưới menu\" class=\"img-old img-responsive\" height=\"127\" src=\"http://demo31.phongcachso.com/images/banners/original/quang_cao_top_ds_sp_1394615387.png\" width=\"1136\" /> </a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"jumbotron\">\r\n<div class=\"breadcrumbs\">\r\n<div class=\"breadcrumb\">\r\n<div class=\"breadcumbs-first\"><a href=\"http://demo31.phongcachso.com/\" rel=\"nofollow\" title=\"Digi World\"><span>Trang chủ</span></a></div>\r\n\r\n<div class=\"breadcrumbs_sepa\">&gt;</div>\r\n\r\n<h2>Giới thiệu</h2>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"main-area-full\">\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"content_detail\">\r\n<h1 class=\"title\">Giới thiệu</h1>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n<!-- SUMMARY -->\r\n\r\n<h2 class=\"summary\">C&ocirc;ng ty Cổ phần Thế Giới Số - Digiworld Corporation (Digiworld) &ndash; C&ocirc;ng ty ph&acirc;n phối sản phẩm CNTT v&agrave; kỹ thuật số, thuộc Top 500 doanh nghiệp lớn nhất Việt Nam (VNR500), li&ecirc;n tục trong 7 năm liền từ 2007 đến 2013.</h2>\r\n\r\n<div class=\"description\">\r\n<p>&nbsp;</p>\r\n\r\n<p><i>Năm 2013, Digiworld đạt 3060 tỷ đồng doanh thu (145 triệu USD). Tăng 36% so với năm 2012.<br />\r\n<br />\r\nTh&agrave;nh lập năm 1997, hiện Digiworld l&agrave; nh&agrave; ph&acirc;n phối ch&iacute;nh thức của c&aacute;c thương hiệu sản phẩm CNTT nổi tiếng tr&ecirc;n Thế giới như: Acer, Asus, HP, Dell, Toshiba, Samsung, Gateway, Genius, Logitech, Belkin, APC&hellip; Năm 2013, Digiworld trở th&agrave;nh nh&agrave; ph&acirc;n phối ch&iacute;nh thức của Nokia, Alcatel v&agrave; Lenovo, đ&aacute;nh dấu việc mở rộng thị trường kinh doanh ở mảng thiết bị di động. Với hệ thống k&ecirc;nh ph&acirc;n phối rộng lớn 1200 đại l&yacute; tr&ecirc;n cả nước, hệ thống cung ứng h&agrave;ng h&oacute;a DGSupply Chain với tổng diện t&iacute;ch hơn 8.000m2 được quản l&yacute; bằng phần mềm ERP SAP ti&ecirc;n tiến, Digiworld cam kết mang đến cho người d&acirc;n Việt Nam những sản phẩm c&ocirc;ng nghệ ti&ecirc;n tiến một c&aacute;ch nhanh ch&oacute;ng với chi ph&iacute; tiết kiệm nhất.<br />\r\n<br />\r\nTập thể Digiworld t&iacute;ch cực đ&oacute;ng g&oacute;p t&acirc;m sức v&agrave;o sự ph&aacute;t triển gi&aacute;o dục Thế hệ trẻ Việt Nam th&ocirc;ng qua hai nguồn quỹ DGSmart &ndash; kết nối tri thức v&agrave; quỹ DGHeart &ndash; v&igrave; cộng đồng. </i><br />\r\n<br />\r\nChi tiết tham khảo <a href=\"http://www.digiworld.com.vn/\" style=\"color: rgb(238, 150, 0); text-decoration: none; font-size: 12px;\">www.digiworld.com.vn</a><br />\r\n&nbsp;</p>\r\n\r\n<div align=\"center\"><img src=\"http://www.digiworld.com.vn/images/stories/tintuc/dgw/20091211_dgw.jpg\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- .wrapper_main -->\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"partners\">\r\n<div class=\"partners_wrapper\">\r\n<div class=\"block-partners\">\r\n<div id=\"wrapper\">\r\n<div id=\"carousel\"><img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/acer_1397555694.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/dell_1397556767.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/hp_1397555903.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/htc_1397556941.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/lenovo_1397555983.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/nokia_1397556811.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/samsung_1397555811.png\" /></div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"footer\">\r\n<div class=\"footer_wrapper\">\r\n<div class=\"footer_content\">\r\n<div class=\"col-lg-12\">\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><i>Digiworld Corporation</i></p>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><strong>Head office:</strong> 7th Fl, Viettower<br />\r\nNo. 01, Thai Ha Str, Dong Da Dist, Ha Noi, Vietnam&nbsp;<br />\r\nTel: 04. 3537 6888&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 04. 3537 6889<br />\r\nEmail: service@digiworld.vn</p>\r\n</div>\r\n\r\n<p>Designed by : <strong>Finalstyle</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div>0.66739 sec| 1195.082 kb</div>\r\n<script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/jquery/jquery-1.9.0.min.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/templates/digiworld/js/main.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/modules/content/assets/js/content_detail.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/js/onlinesupport.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-js/responsivemobilemenu.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/search/assets/js/search.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/newslist/assets/js/hot_viewest.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/coolcarousel/jquery.carouFredSel-6.0.4-packed.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/partners/assets/js/responsive_carousel.js\"></script></div>', NULL, NULL, NULL, NULL);
INSERT INTO `fs_translate_content` VALUES (12, 'Vision and Mission', 'vision-and-mission', 0, 1, NULL, '2014-05-14 16:46:54', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<title></title>\r\n<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\r\n<meta content=\"Giới thiệu,Thế giới số, máy tính, the gioi so, thegioiso, laptop, máy tính xách tay, may tinh xach tay, mua laptop, thị trường laptop, thi truong laptop, thi truong may tinh xach tay, thị trường máy tính xách tay, phân phối, siêu thị laptop, siêu thị máy tính xách tay, sieu thi laptop, sieu thi may tinh xach tay, mua máy tính xách tay, mua may tinh xach tay, bán laptop, bán máy tính xách tay, ban may tinh xach tay, phụ kiện laptop, phu kien laptop, phu kien may tinh xach tay, phụ kiện máy tính xách tay, Acer, Toshiba, HP, Compaq, Logitech, Fujitsu, Dell, Lexmark, Infocus, Máy chiếu, may chieu, máy in, may in, Printer, Projector, Mouse, Digicare, Digiworld, võ văn tần, vo van tan, sai gon, ho chi minh, sài gòn, hồ chí minh, tin tức, khuyến mãi, phân phối\" name=\"keywords\" />\r\n<meta content=\"Công ty Cổ phần Thế Giới Số Digiworld Corporation (Digiworld) – Công ty phân phối sản phẩm CNTT và kỹ thuật số, thuộc Top 500 doanh nghiệp lớn nhất Việt Nam (VNR500), liên tục trong 7 năm liền từ 2007 đến 2013.,Giới...\" name=\"description\" />\r\n<meta content=\"Designed by Finalstyle - Phạm Văn Huy,phamhuy@finalstyle.com,robocon20062007@gmail.com\" name=\"AUTHOR\" />\r\n<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<link href=\"/favicon.ico\" rel=\"icon\" type=\"image/x-icon\" />\r\n<meta content=\"vi\" http-equiv=\"content-language\" />\r\n<meta content=\"INDEX,FOLLOW\" name=\"robots\" />\r\n<meta content=\"IE=7\" http-equiv=\"X-UA-Compatible\" />\r\n<meta content=\"PHP\" name=\"CODE_LANGUAGE\" />\r\n<meta content=\"3600\" http-equiv=\"REFRESH\" />\r\n<link href=\"http://demo31.phongcachso.com/templates/digiworld/css/template.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/modules/contents/assets/css/content_detail.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/css/onlinesupport.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/banners/assets/css/banners_wrapper.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/breadcrumbs/assets/css/breadcrumbs_simple.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/newslist/assets/css/newslist_hot_viewest.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/partners/assets/css/responsive_carousel.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/bottommenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/rss.xml\" rel=\"alternate\" title=\"Digi World Feed\" type=\"application/rss+xml\" />\r\n<meta content=\"VietNam\" name=\"geo.placename\" />\r\n<meta content=\"21.01976825893963;105.84968183034061\" name=\"geo.position\" />\r\n<meta content=\"vi\" name=\"geo.region\" />\r\n<meta content=\"21.01976825893963,105.84968183034061\" name=\"ICBM\" /><script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-45951056-1\', \'koreancosmetic.vn\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>\r\n<div class=\"wrapper\" style=\"background: url(\'http://demo31.phongcachso.com/images/config/background_innner.png\') repeat scroll center 28px #FFFFFF\">\r\n<div class=\"header\">\r\n<div class=\"header_wrapper\">\r\n<div class=\"header_right\">\r\n<div class=\"onlinesupport_content\">&nbsp;</div>\r\n\r\n<div class=\"hotline\">098-887-889</div>\r\n\r\n<div class=\"email\">info@dgw.com</div>\r\n\r\n<div class=\"share\"><a class=\"share-facebook\" href=\"\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"rss\" href=\"/rss.xml\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"lang-vi\" href=\"http://demo31.phongcachso.com/\" target=\"_blink\" title=\"\">&nbsp;</a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<!--	 End HEADER-->\r\n\r\n<div class=\"content\">\r\n<div class=\"container\"><!-- navigation 1--><!-- main_menu-->\r\n<div class=\"main_menu\">\r\n<div class=\"responsive-mobile-menu\">\r\n<div class=\"home \"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com/\" title=\"Digi World\">Home</a></div>\r\n\r\n<div class=\"rmm\" data-menu-style=\"minimal\">\r\n<ul>\r\n	<li class=\"level_0 item_home sort\"><a class=\"menu_item_a\" href=\"\" title=\"Digi World\">Home</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/trang-tinh/gioi-thieu/information.html\" id=\"menu_item_434\" title=\"Information\">Introduction</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/gioi-thieu.html\" id=\"menu_item_497\" title=\"Giới thiệu\">About Digiworld</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"trang-tinh/gioi-thieu/ton-chi-dinh-huong.html\" id=\"menu_item_498\" title=\"Tôn chỉ định hương\">Vision and Mission</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/thanh-tuu.html\" id=\"menu_item_499\" title=\"Achievements\">Achievement</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/doi-tac.html\" id=\"menu_item_500\" title=\"Partner\">Partners</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/huong-toi-cong-dong.html\" id=\"menu_item_501\" title=\"Hướng tới cộng đồng\">Towards community</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/goc-cat.html\" id=\"menu_item_502\" title=\"Góc cắt\">A part of</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com//\" id=\"menu_item_435\" title=\"Tra cứu  thông tin\">Searching</a> <!--	LEVEL 1			-->\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gd-care/bao-hanh-sieu-toc-trong-24h.html\" id=\"menu_item_484\" title=\"Điều khoản bảo hành\">Điều khoản bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-bao-hanh.html\" id=\"menu_item_485\" title=\"Tra cứu  bảo hành\">Tra cứu bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tai-driver.html\" id=\"menu_item_486\" title=\"Dowload Driver\">Dowload Driver</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-han-bao-hanh.html\" id=\"menu_item_487\" title=\"Tra cứu  hạn bảo hành\">Tra cứu hạn bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tu-van.html\" id=\"menu_item_480\" title=\"Advice\">Advice</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tin-tuc.html\" id=\"menu_item_436\" title=\"News\">News</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"\" id=\"menu_item_490\" title=\"Tin công nghệ\">Tin c&ocirc;ng nghệ</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/reviews.html\" id=\"menu_item_437\" title=\"Review\">Review</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/lien-he.html\" id=\"menu_item_438\" title=\"Contacts\">Contact us</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tuyen-dung.html\" id=\"menu_item_496\" title=\"Carrer\">Career</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"wapper_pos1\">\r\n<div class=\"banners  banners-default block_inner block_banner_banner\"><a href=\"\" id=\"banner_item_41\" title=\"Quảng cáo dưới menu\"> <img alt=\"Quảng cáo dưới menu\" class=\"img-old img-responsive\" height=\"127\" src=\"http://demo31.phongcachso.com/images/banners/original/quang_cao_top_ds_sp_1394615387.png\" width=\"1136\" /> </a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"jumbotron\">\r\n<div class=\"breadcrumbs\">\r\n<div class=\"breadcrumb\">\r\n<div class=\"breadcumbs-first\"><a href=\"http://demo31.phongcachso.com/\" rel=\"nofollow\" title=\"Digi World\"><span>Home</span></a></div>\r\n\r\n<div class=\"breadcrumbs_sepa\">&gt;</div>\r\n\r\n<h2>Title</h2>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"main-area-full\">\r\n<div class=\"content_detail\">\r\n<h1 class=\"title\">Vision and Mission</h1>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n<!-- SUMMARY -->\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\">OUR MISSION<br />\r\n1. For Vendors:<br />\r\nBest choice of vendors, most consistently deliver our commitments:<br />\r\n&nbsp;Retailers chain continuity development<br />\r\n&nbsp;Solid financial foundation<br />\r\n&nbsp;Growing market share</div>\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\">2. For Customer:<br />\r\nBest choice of resellers:<br />\r\n&nbsp;&bull; Devoted service<br />\r\n&nbsp;&bull; Optimal profit<br />\r\nMaking a wide range of high-quality advanced 3Cs products accessible to consumers at most reasonable cost with excellent after-sales service</div>\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\">3. For Investors:<br />\r\nBest-in-class investment returns</div>\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\">4. For Organization:<br />\r\nDigiworld is an alignment-based organization of talented, full-self expressed and well-rewarded people</div>\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\">\r\n<p>CORE VALUES</p>\r\n\r\n<p>1. Alignment</p>\r\n\r\n<p>2. Dedication</p>\r\n\r\n<p>3. Ownership</p>\r\n\r\n<p>4. Integrity</p>\r\n\r\n<p>5. Responsibility</p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- .wrapper_main -->\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"partners\">\r\n<div class=\"partners_wrapper\">\r\n<div class=\"block-partners\">\r\n<div id=\"wrapper\">\r\n<div id=\"carousel\"><img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/acer_1397555694.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/dell_1397556767.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/hp_1397555903.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/htc_1397556941.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/lenovo_1397555983.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/nokia_1397556811.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/samsung_1397555811.png\" /></div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"footer\">\r\n<div class=\"footer_wrapper\">\r\n<div class=\"footer_content\">\r\n<div class=\"col-lg-12\">\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><i>Digiworld Corporation</i></p>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><strong>Head office:</strong> 7th Fl, Viettower<br />\r\nNo. 01, Thai Ha Str, Dong Da Dist, Ha Noi, Vietnam&nbsp;<br />\r\nTel: 04. 3537 6888&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 04. 3537 6889<br />\r\nEmail: service@digiworld.vn</p>\r\n</div>\r\n\r\n<p>Designed by : <strong>Finalstyle</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/jquery/jquery-1.9.0.min.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/templates/digiworld/js/main.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/modules/content/assets/js/content_detail.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/js/onlinesupport.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-js/responsivemobilemenu.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/search/assets/js/search.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/newslist/assets/js/hot_viewest.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/coolcarousel/jquery.carouFredSel-6.0.4-packed.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/partners/assets/js/responsive_carousel.js\"></script>', NULL, NULL, NULL, NULL);
INSERT INTO `fs_translate_content` VALUES (11, 'About Digiworld', 'about-digiworld', 0, 1, NULL, '2014-05-14 15:25:48', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<title></title>\r\n<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\r\n<meta content=\"Giới thiệu,Thế giới số, máy tính, the gioi so, thegioiso, laptop, máy tính xách tay, may tinh xach tay, mua laptop, thị trường laptop, thi truong laptop, thi truong may tinh xach tay, thị trường máy tính xách tay, phân phối, siêu thị laptop, siêu thị máy tính xách tay, sieu thi laptop, sieu thi may tinh xach tay, mua máy tính xách tay, mua may tinh xach tay, bán laptop, bán máy tính xách tay, ban may tinh xach tay, phụ kiện laptop, phu kien laptop, phu kien may tinh xach tay, phụ kiện máy tính xách tay, Acer, Toshiba, HP, Compaq, Logitech, Fujitsu, Dell, Lexmark, Infocus, Máy chiếu, may chieu, máy in, may in, Printer, Projector, Mouse, Digicare, Digiworld, võ văn tần, vo van tan, sai gon, ho chi minh, sài gòn, hồ chí minh, tin tức, khuyến mãi, phân phối\" name=\"keywords\" />\r\n<meta content=\"Công ty Cổ phần Thế Giới Số Digiworld Corporation (Digiworld) – Công ty phân phối sản phẩm CNTT và kỹ thuật số, thuộc Top 500 doanh nghiệp lớn nhất Việt Nam (VNR500), liên tục trong 7 năm liền từ 2007 đến 2013.,Giới...\" name=\"description\" />\r\n<meta content=\"Designed by Finalstyle - Phạm Văn Huy,phamhuy@finalstyle.com,robocon20062007@gmail.com\" name=\"AUTHOR\" />\r\n<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<link href=\"/favicon.ico\" rel=\"icon\" type=\"image/x-icon\" />\r\n<meta content=\"vi\" http-equiv=\"content-language\" />\r\n<meta content=\"INDEX,FOLLOW\" name=\"robots\" />\r\n<meta content=\"IE=7\" http-equiv=\"X-UA-Compatible\" />\r\n<meta content=\"PHP\" name=\"CODE_LANGUAGE\" />\r\n<meta content=\"3600\" http-equiv=\"REFRESH\" />\r\n<link href=\"http://demo31.phongcachso.com/templates/digiworld/css/template.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/modules/contents/assets/css/content_detail.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/css/onlinesupport.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/banners/assets/css/banners_wrapper.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/breadcrumbs/assets/css/breadcrumbs_simple.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/newslist/assets/css/newslist_hot_viewest.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/partners/assets/css/responsive_carousel.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/bottommenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/rss.xml\" rel=\"alternate\" title=\"Digi World Feed\" type=\"application/rss+xml\" />\r\n<meta content=\"VietNam\" name=\"geo.placename\" />\r\n<meta content=\"21.01976825893963;105.84968183034061\" name=\"geo.position\" />\r\n<meta content=\"vi\" name=\"geo.region\" />\r\n<meta content=\"21.01976825893963,105.84968183034061\" name=\"ICBM\" /><script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-45951056-1\', \'koreancosmetic.vn\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>\r\n<div class=\"wrapper\" style=\"background: url(\'http://demo31.phongcachso.com/images/config/background_innner.png\') repeat scroll center 28px #FFFFFF\">\r\n<div class=\"header\">\r\n<div class=\"header_wrapper\">\r\n<div class=\"header_right\">\r\n<div class=\"onlinesupport_content\">&nbsp;</div>\r\n\r\n<div class=\"hotline\">098-887-889</div>\r\n\r\n<div class=\"email\">info@dgw.com</div>\r\n\r\n<div class=\"share\"><a class=\"share-facebook\" href=\"\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"rss\" href=\"/rss.xml\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"lang-vi\" href=\"http://demo31.phongcachso.com/\" target=\"_blink\" title=\"\">&nbsp;</a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<!--	 End HEADER-->\r\n\r\n<div class=\"content\">\r\n<div class=\"container\"><!-- navigation 1--><!-- main_menu-->\r\n<div class=\"main_menu\">\r\n<div class=\"responsive-mobile-menu\">\r\n<div class=\"home \"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com/\" title=\"Digi World\">Home</a></div>\r\n\r\n<div class=\"rmm\" data-menu-style=\"minimal\">\r\n<ul>\r\n	<li class=\"level_0 item_home sort\"><a class=\"menu_item_a\" href=\"\" title=\"Digi World\">Home</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/trang-tinh/gioi-thieu/information.html\" id=\"menu_item_434\" title=\"Information\">Introduction</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/gioi-thieu.html\" id=\"menu_item_497\" title=\"Giới thiệu\">About Digiworld</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"trang-tinh/gioi-thieu/ton-chi-dinh-huong.html\" id=\"menu_item_498\" title=\"Tôn chỉ định hương\">Vision and Mission</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/thanh-tuu.html\" id=\"menu_item_499\" title=\"Achievements\">Achievement</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/doi-tac.html\" id=\"menu_item_500\" title=\"Partner\">Partners</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/huong-toi-cong-dong.html\" id=\"menu_item_501\" title=\"Hướng tới cộng đồng\">Towards community</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/goc-cat.html\" id=\"menu_item_502\" title=\"Góc cắt\">A part of</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com//\" id=\"menu_item_435\" title=\"Tra cứu  thông tin\">Searching</a> <!--	LEVEL 1			-->\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gd-care/bao-hanh-sieu-toc-trong-24h.html\" id=\"menu_item_484\" title=\"Điều khoản bảo hành\">Điều khoản bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-bao-hanh.html\" id=\"menu_item_485\" title=\"Tra cứu  bảo hành\">Tra cứu bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tai-driver.html\" id=\"menu_item_486\" title=\"Dowload Driver\">Dowload Driver</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-han-bao-hanh.html\" id=\"menu_item_487\" title=\"Tra cứu  hạn bảo hành\">Tra cứu hạn bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tu-van.html\" id=\"menu_item_480\" title=\"Advice\">Advice</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tin-tuc.html\" id=\"menu_item_436\" title=\"News\">News</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"\" id=\"menu_item_490\" title=\"Tin công nghệ\">Tin c&ocirc;ng nghệ</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/reviews.html\" id=\"menu_item_437\" title=\"Review\">Review</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/lien-he.html\" id=\"menu_item_438\" title=\"Contacts\">Contact us</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tuyen-dung.html\" id=\"menu_item_496\" title=\"Carrer\">Career</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"wapper_pos1\">\r\n<div class=\"banners  banners-default block_inner block_banner_banner\"><a href=\"\" id=\"banner_item_41\" title=\"Quảng cáo dưới menu\"> <img alt=\"Quảng cáo dưới menu\" class=\"img-old img-responsive\" height=\"127\" src=\"http://demo31.phongcachso.com/images/banners/original/quang_cao_top_ds_sp_1394615387.png\" width=\"1136\" /> </a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"jumbotron\">\r\n<div class=\"breadcrumbs\">\r\n<div class=\"breadcrumb\">\r\n<div class=\"breadcumbs-first\"><a href=\"http://demo31.phongcachso.com/\" rel=\"nofollow\" title=\"Digi World\"><span>Home</span></a></div>\r\n\r\n<div class=\"breadcrumbs_sepa\">&gt;</div>\r\n\r\n<h2>Title</h2>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"main-area-full\">\r\n<div class=\"content_detail\">\r\n<h1 class=\"title\">About Digiworld</h1>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n<!-- SUMMARY -->\r\n\r\n<div class=\"description\">\r\n<p>&nbsp;</p>\r\n\r\n<p>Digiworld Corporation (Digiworld) is a leading Distributor for high quality IT and advanced 3C products in Vietnam, listed in VNR500 (Top 500 biggest companies based on the revenue in Vietnam) continuously from 2007 to 2013.</p>\r\n\r\n<p>In 2013, Digiworld has achieved USD 145 millions, increased 45% to 2012.</p>\r\n\r\n<p>Established in 1997, Digiworld is now the Authorized Distributor of IT and digital products for the world famous brands such as: Acer, Asus, HP, Dell, Toshiba, Samsung, Gateway, Genius, Logitech, Belkin, APC &hellip;&nbsp; In 2013, Digiworld becomes the Distributor for Nokia, Alcatel and Lenovo, marking its business extension to mobile devices market .&nbsp; With a nationwide distribution channel of 1,200 Resellers, Supply Chain system with 8.000 m2 area managed by SAP&nbsp; ERP , Digiworld is proud to bring to the Vietnamese consumers the advanced technologies and products in the cost effective way.</p>\r\n\r\n<p>Digiworld is actively contributing to the education of Vietnamese young generation through DGSmart fund and DGHeart fund.</p>\r\n\r\n<p><img alt=\"\" src=\"/upload_images/images/20091211_dgw.jpg\" style=\"width: 650px; height: 315px;\" /></p>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- .wrapper_main -->\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"partners\">\r\n<div class=\"partners_wrapper\">\r\n<div class=\"block-partners\">\r\n<div id=\"wrapper\">\r\n<div id=\"carousel\"><img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/acer_1397555694.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/dell_1397556767.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/hp_1397555903.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/htc_1397556941.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/lenovo_1397555983.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/nokia_1397556811.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/samsung_1397555811.png\" /></div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"footer\">\r\n<div class=\"footer_wrapper\">\r\n<div class=\"footer_content\">\r\n<div class=\"col-lg-12\">\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><i>Digiworld Corporation</i></p>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><strong>Head office:</strong> 7th Fl, Viettower<br />\r\nNo. 01, Thai Ha Str, Dong Da Dist, Ha Noi, Vietnam&nbsp;<br />\r\nTel: 04. 3537 6888&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 04. 3537 6889<br />\r\nEmail: service@digiworld.vn</p>\r\n</div>\r\n\r\n<p>Designed by : <strong>Finalstyle</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/jquery/jquery-1.9.0.min.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/templates/digiworld/js/main.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/modules/content/assets/js/content_detail.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/js/onlinesupport.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-js/responsivemobilemenu.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/search/assets/js/search.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/newslist/assets/js/hot_viewest.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/coolcarousel/jquery.carouFredSel-6.0.4-packed.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/partners/assets/js/responsive_carousel.js\"></script>', NULL, NULL, NULL, NULL);
INSERT INTO `fs_translate_content` VALUES (13, 'Achievement', 'achievement', 0, 1, NULL, '2014-05-14 17:22:33', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<title></title>\r\n<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\r\n<meta content=\"Giới thiệu,Thế giới số, máy tính, the gioi so, thegioiso, laptop, máy tính xách tay, may tinh xach tay, mua laptop, thị trường laptop, thi truong laptop, thi truong may tinh xach tay, thị trường máy tính xách tay, phân phối, siêu thị laptop, siêu thị máy tính xách tay, sieu thi laptop, sieu thi may tinh xach tay, mua máy tính xách tay, mua may tinh xach tay, bán laptop, bán máy tính xách tay, ban may tinh xach tay, phụ kiện laptop, phu kien laptop, phu kien may tinh xach tay, phụ kiện máy tính xách tay, Acer, Toshiba, HP, Compaq, Logitech, Fujitsu, Dell, Lexmark, Infocus, Máy chiếu, may chieu, máy in, may in, Printer, Projector, Mouse, Digicare, Digiworld, võ văn tần, vo van tan, sai gon, ho chi minh, sài gòn, hồ chí minh, tin tức, khuyến mãi, phân phối\" name=\"keywords\" />\r\n<meta content=\"Công ty Cổ phần Thế Giới Số Digiworld Corporation (Digiworld) – Công ty phân phối sản phẩm CNTT và kỹ thuật số, thuộc Top 500 doanh nghiệp lớn nhất Việt Nam (VNR500), liên tục trong 7 năm liền từ 2007 đến 2013.,Giới...\" name=\"description\" />\r\n<meta content=\"Designed by Finalstyle - Phạm Văn Huy,phamhuy@finalstyle.com,robocon20062007@gmail.com\" name=\"AUTHOR\" />\r\n<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<link href=\"/favicon.ico\" rel=\"icon\" type=\"image/x-icon\" />\r\n<meta content=\"vi\" http-equiv=\"content-language\" />\r\n<meta content=\"INDEX,FOLLOW\" name=\"robots\" />\r\n<meta content=\"IE=7\" http-equiv=\"X-UA-Compatible\" />\r\n<meta content=\"PHP\" name=\"CODE_LANGUAGE\" />\r\n<meta content=\"3600\" http-equiv=\"REFRESH\" />\r\n<link href=\"http://demo31.phongcachso.com/templates/digiworld/css/template.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/modules/contents/assets/css/content_detail.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/css/onlinesupport.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/banners/assets/css/banners_wrapper.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/breadcrumbs/assets/css/breadcrumbs_simple.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/newslist/assets/css/newslist_hot_viewest.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/partners/assets/css/responsive_carousel.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/bottommenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/rss.xml\" rel=\"alternate\" title=\"Digi World Feed\" type=\"application/rss+xml\" />\r\n<meta content=\"VietNam\" name=\"geo.placename\" />\r\n<meta content=\"21.01976825893963;105.84968183034061\" name=\"geo.position\" />\r\n<meta content=\"vi\" name=\"geo.region\" />\r\n<meta content=\"21.01976825893963,105.84968183034061\" name=\"ICBM\" /><script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-45951056-1\', \'koreancosmetic.vn\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>\r\n<div class=\"wrapper\" style=\"background: url(\'http://demo31.phongcachso.com/images/config/background_innner.png\') repeat scroll center 28px #FFFFFF\">\r\n<div class=\"header\">\r\n<div class=\"header_wrapper\">\r\n<div class=\"header_right\">\r\n<div class=\"onlinesupport_content\">&nbsp;</div>\r\n\r\n<div class=\"hotline\">098-887-889</div>\r\n\r\n<div class=\"email\">info@dgw.com</div>\r\n\r\n<div class=\"share\"><a class=\"share-facebook\" href=\"\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"rss\" href=\"/rss.xml\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"lang-vi\" href=\"http://demo31.phongcachso.com/\" target=\"_blink\" title=\"\">&nbsp;</a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<!--	 End HEADER-->\r\n\r\n<div class=\"content\">\r\n<div class=\"container\"><!-- navigation 1--><!-- main_menu-->\r\n<div class=\"main_menu\">\r\n<div class=\"responsive-mobile-menu\">\r\n<div class=\"home \"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com/\" title=\"Digi World\">Home</a></div>\r\n\r\n<div class=\"rmm\" data-menu-style=\"minimal\">\r\n<ul>\r\n	<li class=\"level_0 item_home sort\"><a class=\"menu_item_a\" href=\"\" title=\"Digi World\">Home</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/trang-tinh/gioi-thieu/information.html\" id=\"menu_item_434\" title=\"Information\">Introduction</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/gioi-thieu.html\" id=\"menu_item_497\" title=\"Giới thiệu\">About Digiworld</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"trang-tinh/gioi-thieu/ton-chi-dinh-huong.html\" id=\"menu_item_498\" title=\"Tôn chỉ định hương\">Vision and Mission</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/thanh-tuu.html\" id=\"menu_item_499\" title=\"Achievements\">Achievement</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/doi-tac.html\" id=\"menu_item_500\" title=\"Partner\">Partners</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/huong-toi-cong-dong.html\" id=\"menu_item_501\" title=\"Hướng tới cộng đồng\">Towards community</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/goc-cat.html\" id=\"menu_item_502\" title=\"Góc cắt\">A part of</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com//\" id=\"menu_item_435\" title=\"Tra cứu  thông tin\">Searching</a> <!--	LEVEL 1			-->\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gd-care/bao-hanh-sieu-toc-trong-24h.html\" id=\"menu_item_484\" title=\"Điều khoản bảo hành\">Điều khoản bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-bao-hanh.html\" id=\"menu_item_485\" title=\"Tra cứu  bảo hành\">Tra cứu bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tai-driver.html\" id=\"menu_item_486\" title=\"Dowload Driver\">Dowload Driver</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-han-bao-hanh.html\" id=\"menu_item_487\" title=\"Tra cứu  hạn bảo hành\">Tra cứu hạn bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tu-van.html\" id=\"menu_item_480\" title=\"Advice\">Advice</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tin-tuc.html\" id=\"menu_item_436\" title=\"News\">News</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"\" id=\"menu_item_490\" title=\"Tin công nghệ\">Tin c&ocirc;ng nghệ</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/reviews.html\" id=\"menu_item_437\" title=\"Review\">Review</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/lien-he.html\" id=\"menu_item_438\" title=\"Contacts\">Contact us</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tuyen-dung.html\" id=\"menu_item_496\" title=\"Carrer\">Career</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"wapper_pos1\">\r\n<div class=\"banners  banners-default block_inner block_banner_banner\"><a href=\"\" id=\"banner_item_41\" title=\"Quảng cáo dưới menu\"> <img alt=\"Quảng cáo dưới menu\" class=\"img-old img-responsive\" height=\"127\" src=\"http://demo31.phongcachso.com/images/banners/original/quang_cao_top_ds_sp_1394615387.png\" width=\"1136\" /> </a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"jumbotron\">\r\n<div class=\"breadcrumbs\">\r\n<div class=\"breadcrumb\">\r\n<div class=\"breadcumbs-first\"><a href=\"http://demo31.phongcachso.com/\" rel=\"nofollow\" title=\"Digi World\"><span>Home</span></a></div>\r\n\r\n<div class=\"breadcrumbs_sepa\">&gt;</div>\r\n\r\n<h2>Title</h2>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"main-area-full\">\r\n<div class=\"content_detail\">\r\n<h1 class=\"title\">Achievement</h1>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n<!-- SUMMARY -->\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\">Development history</div>\r\n\r\n<div class=\"description\">Revenue</div>\r\n\r\n<div class=\"description\">Channel</div>\r\n\r\n<div class=\"description\">Awards</div>\r\n</div>\r\n</div>\r\n<!-- .wrapper_main -->\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"partners\">\r\n<div class=\"partners_wrapper\">\r\n<div class=\"block-partners\">\r\n<div id=\"wrapper\">\r\n<div id=\"carousel\"><img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/acer_1397555694.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/dell_1397556767.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/hp_1397555903.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/htc_1397556941.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/lenovo_1397555983.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/nokia_1397556811.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/samsung_1397555811.png\" /></div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"footer\">\r\n<div class=\"footer_wrapper\">\r\n<div class=\"footer_content\">\r\n<div class=\"col-lg-12\">\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><i>Digiworld Corporation</i></p>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><strong>Head office:</strong> 7th Fl, Viettower<br />\r\nNo. 01, Thai Ha Str, Dong Da Dist, Ha Noi, Vietnam&nbsp;<br />\r\nTel: 04. 3537 6888&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 04. 3537 6889<br />\r\nEmail: service@digiworld.vn</p>\r\n</div>\r\n\r\n<p>Designed by : <strong>Finalstyle</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/jquery/jquery-1.9.0.min.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/templates/digiworld/js/main.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/modules/content/assets/js/content_detail.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/js/onlinesupport.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-js/responsivemobilemenu.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/search/assets/js/search.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/newslist/assets/js/hot_viewest.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/coolcarousel/jquery.carouFredSel-6.0.4-packed.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/partners/assets/js/responsive_carousel.js\"></script>', NULL, NULL, NULL, NULL);
INSERT INTO `fs_translate_content` VALUES (14, 'Partners', 'partners', 0, 1, NULL, '2014-05-14 17:24:00', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<title></title>\r\n<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\r\n<meta content=\"Giới thiệu,Thế giới số, máy tính, the gioi so, thegioiso, laptop, máy tính xách tay, may tinh xach tay, mua laptop, thị trường laptop, thi truong laptop, thi truong may tinh xach tay, thị trường máy tính xách tay, phân phối, siêu thị laptop, siêu thị máy tính xách tay, sieu thi laptop, sieu thi may tinh xach tay, mua máy tính xách tay, mua may tinh xach tay, bán laptop, bán máy tính xách tay, ban may tinh xach tay, phụ kiện laptop, phu kien laptop, phu kien may tinh xach tay, phụ kiện máy tính xách tay, Acer, Toshiba, HP, Compaq, Logitech, Fujitsu, Dell, Lexmark, Infocus, Máy chiếu, may chieu, máy in, may in, Printer, Projector, Mouse, Digicare, Digiworld, võ văn tần, vo van tan, sai gon, ho chi minh, sài gòn, hồ chí minh, tin tức, khuyến mãi, phân phối\" name=\"keywords\" />\r\n<meta content=\"Công ty Cổ phần Thế Giới Số Digiworld Corporation (Digiworld) – Công ty phân phối sản phẩm CNTT và kỹ thuật số, thuộc Top 500 doanh nghiệp lớn nhất Việt Nam (VNR500), liên tục trong 7 năm liền từ 2007 đến 2013.,Giới...\" name=\"description\" />\r\n<meta content=\"Designed by Finalstyle - Phạm Văn Huy,phamhuy@finalstyle.com,robocon20062007@gmail.com\" name=\"AUTHOR\" />\r\n<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<link href=\"/favicon.ico\" rel=\"icon\" type=\"image/x-icon\" />\r\n<meta content=\"vi\" http-equiv=\"content-language\" />\r\n<meta content=\"INDEX,FOLLOW\" name=\"robots\" />\r\n<meta content=\"IE=7\" http-equiv=\"X-UA-Compatible\" />\r\n<meta content=\"PHP\" name=\"CODE_LANGUAGE\" />\r\n<meta content=\"3600\" http-equiv=\"REFRESH\" />\r\n<link href=\"http://demo31.phongcachso.com/templates/digiworld/css/template.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/modules/contents/assets/css/content_detail.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/css/onlinesupport.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/banners/assets/css/banners_wrapper.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/breadcrumbs/assets/css/breadcrumbs_simple.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/newslist/assets/css/newslist_hot_viewest.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/partners/assets/css/responsive_carousel.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/bottommenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/rss.xml\" rel=\"alternate\" title=\"Digi World Feed\" type=\"application/rss+xml\" />\r\n<meta content=\"VietNam\" name=\"geo.placename\" />\r\n<meta content=\"21.01976825893963;105.84968183034061\" name=\"geo.position\" />\r\n<meta content=\"vi\" name=\"geo.region\" />\r\n<meta content=\"21.01976825893963,105.84968183034061\" name=\"ICBM\" /><script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-45951056-1\', \'koreancosmetic.vn\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>\r\n<div class=\"wrapper\" style=\"background: url(\'http://demo31.phongcachso.com/images/config/background_innner.png\') repeat scroll center 28px #FFFFFF\">\r\n<div class=\"header\">\r\n<div class=\"header_wrapper\">\r\n<div class=\"header_right\">\r\n<div class=\"onlinesupport_content\">&nbsp;</div>\r\n\r\n<div class=\"hotline\">098-887-889</div>\r\n\r\n<div class=\"email\">info@dgw.com</div>\r\n\r\n<div class=\"share\"><a class=\"share-facebook\" href=\"\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"rss\" href=\"/rss.xml\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"lang-vi\" href=\"http://demo31.phongcachso.com/\" target=\"_blink\" title=\"\">&nbsp;</a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<!--	 End HEADER-->\r\n\r\n<div class=\"content\">\r\n<div class=\"container\"><!-- navigation 1--><!-- main_menu-->\r\n<div class=\"main_menu\">\r\n<div class=\"responsive-mobile-menu\">\r\n<div class=\"home \"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com/\" title=\"Digi World\">Home</a></div>\r\n\r\n<div class=\"rmm\" data-menu-style=\"minimal\">\r\n<ul>\r\n	<li class=\"level_0 item_home sort\"><a class=\"menu_item_a\" href=\"\" title=\"Digi World\">Home</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/trang-tinh/gioi-thieu/information.html\" id=\"menu_item_434\" title=\"Information\">Introduction</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/gioi-thieu.html\" id=\"menu_item_497\" title=\"Giới thiệu\">About Digiworld</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"trang-tinh/gioi-thieu/ton-chi-dinh-huong.html\" id=\"menu_item_498\" title=\"Tôn chỉ định hương\">Vision and Mission</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/thanh-tuu.html\" id=\"menu_item_499\" title=\"Achievements\">Achievement</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/doi-tac.html\" id=\"menu_item_500\" title=\"Partner\">Partners</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/huong-toi-cong-dong.html\" id=\"menu_item_501\" title=\"Hướng tới cộng đồng\">Towards community</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/goc-cat.html\" id=\"menu_item_502\" title=\"Góc cắt\">A part of</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com//\" id=\"menu_item_435\" title=\"Tra cứu  thông tin\">Searching</a> <!--	LEVEL 1			-->\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gd-care/bao-hanh-sieu-toc-trong-24h.html\" id=\"menu_item_484\" title=\"Điều khoản bảo hành\">Điều khoản bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-bao-hanh.html\" id=\"menu_item_485\" title=\"Tra cứu  bảo hành\">Tra cứu bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tai-driver.html\" id=\"menu_item_486\" title=\"Dowload Driver\">Dowload Driver</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-han-bao-hanh.html\" id=\"menu_item_487\" title=\"Tra cứu  hạn bảo hành\">Tra cứu hạn bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tu-van.html\" id=\"menu_item_480\" title=\"Advice\">Advice</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tin-tuc.html\" id=\"menu_item_436\" title=\"News\">News</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"\" id=\"menu_item_490\" title=\"Tin công nghệ\">Tin c&ocirc;ng nghệ</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/reviews.html\" id=\"menu_item_437\" title=\"Review\">Review</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/lien-he.html\" id=\"menu_item_438\" title=\"Contacts\">Contact us</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tuyen-dung.html\" id=\"menu_item_496\" title=\"Carrer\">Career</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"wapper_pos1\">\r\n<div class=\"banners  banners-default block_inner block_banner_banner\"><a href=\"\" id=\"banner_item_41\" title=\"Quảng cáo dưới menu\"> <img alt=\"Quảng cáo dưới menu\" class=\"img-old img-responsive\" height=\"127\" src=\"http://demo31.phongcachso.com/images/banners/original/quang_cao_top_ds_sp_1394615387.png\" width=\"1136\" /> </a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"jumbotron\">\r\n<div class=\"breadcrumbs\">\r\n<div class=\"breadcrumb\">\r\n<div class=\"breadcumbs-first\"><a href=\"http://demo31.phongcachso.com/\" rel=\"nofollow\" title=\"Digi World\"><span>Home</span></a></div>\r\n\r\n<div class=\"breadcrumbs_sepa\">&gt;</div>\r\n\r\n<h2>Title</h2>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"main-area-full\">\r\n<div class=\"content_detail\">\r\n<h1 class=\"title\">Partners</h1>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n<!-- SUMMARY -->\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\">Vendors</div>\r\n\r\n<div class=\"description\">Customers</div>\r\n\r\n<div class=\"description\">Partners</div>\r\n</div>\r\n</div>\r\n<!-- .wrapper_main -->\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"partners\">\r\n<div class=\"partners_wrapper\">\r\n<div class=\"block-partners\">\r\n<div id=\"wrapper\">\r\n<div id=\"carousel\"><img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/acer_1397555694.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/dell_1397556767.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/hp_1397555903.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/htc_1397556941.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/lenovo_1397555983.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/nokia_1397556811.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/samsung_1397555811.png\" /></div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"footer\">\r\n<div class=\"footer_wrapper\">\r\n<div class=\"footer_content\">\r\n<div class=\"col-lg-12\">\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><i>Digiworld Corporation</i></p>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><strong>Head office:</strong> 7th Fl, Viettower<br />\r\nNo. 01, Thai Ha Str, Dong Da Dist, Ha Noi, Vietnam&nbsp;<br />\r\nTel: 04. 3537 6888&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 04. 3537 6889<br />\r\nEmail: service@digiworld.vn</p>\r\n</div>\r\n\r\n<p>Designed by : <strong>Finalstyle</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/jquery/jquery-1.9.0.min.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/templates/digiworld/js/main.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/modules/content/assets/js/content_detail.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/js/onlinesupport.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-js/responsivemobilemenu.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/search/assets/js/search.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/newslist/assets/js/hot_viewest.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/coolcarousel/jquery.carouFredSel-6.0.4-packed.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/partners/assets/js/responsive_carousel.js\"></script>', NULL, NULL, NULL, NULL);
INSERT INTO `fs_translate_content` VALUES (15, 'Toward teammates', 'toward-teammates', 0, 1, NULL, '2014-05-14 17:27:32', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<title></title>\r\n<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\r\n<meta content=\"Giới thiệu,Thế giới số, máy tính, the gioi so, thegioiso, laptop, máy tính xách tay, may tinh xach tay, mua laptop, thị trường laptop, thi truong laptop, thi truong may tinh xach tay, thị trường máy tính xách tay, phân phối, siêu thị laptop, siêu thị máy tính xách tay, sieu thi laptop, sieu thi may tinh xach tay, mua máy tính xách tay, mua may tinh xach tay, bán laptop, bán máy tính xách tay, ban may tinh xach tay, phụ kiện laptop, phu kien laptop, phu kien may tinh xach tay, phụ kiện máy tính xách tay, Acer, Toshiba, HP, Compaq, Logitech, Fujitsu, Dell, Lexmark, Infocus, Máy chiếu, may chieu, máy in, may in, Printer, Projector, Mouse, Digicare, Digiworld, võ văn tần, vo van tan, sai gon, ho chi minh, sài gòn, hồ chí minh, tin tức, khuyến mãi, phân phối\" name=\"keywords\" />\r\n<meta content=\"Công ty Cổ phần Thế Giới Số Digiworld Corporation (Digiworld) – Công ty phân phối sản phẩm CNTT và kỹ thuật số, thuộc Top 500 doanh nghiệp lớn nhất Việt Nam (VNR500), liên tục trong 7 năm liền từ 2007 đến 2013.,Giới...\" name=\"description\" />\r\n<meta content=\"Designed by Finalstyle - Phạm Văn Huy,phamhuy@finalstyle.com,robocon20062007@gmail.com\" name=\"AUTHOR\" />\r\n<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<link href=\"/favicon.ico\" rel=\"icon\" type=\"image/x-icon\" />\r\n<meta content=\"vi\" http-equiv=\"content-language\" />\r\n<meta content=\"INDEX,FOLLOW\" name=\"robots\" />\r\n<meta content=\"IE=7\" http-equiv=\"X-UA-Compatible\" />\r\n<meta content=\"PHP\" name=\"CODE_LANGUAGE\" />\r\n<meta content=\"3600\" http-equiv=\"REFRESH\" />\r\n<link href=\"http://demo31.phongcachso.com/templates/digiworld/css/template.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/modules/contents/assets/css/content_detail.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/css/onlinesupport.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/banners/assets/css/banners_wrapper.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/breadcrumbs/assets/css/breadcrumbs_simple.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/newslist/assets/css/newslist_hot_viewest.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/partners/assets/css/responsive_carousel.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/bottommenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/rss.xml\" rel=\"alternate\" title=\"Digi World Feed\" type=\"application/rss+xml\" />\r\n<meta content=\"VietNam\" name=\"geo.placename\" />\r\n<meta content=\"21.01976825893963;105.84968183034061\" name=\"geo.position\" />\r\n<meta content=\"vi\" name=\"geo.region\" />\r\n<meta content=\"21.01976825893963,105.84968183034061\" name=\"ICBM\" /><script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-45951056-1\', \'koreancosmetic.vn\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>\r\n<div class=\"wrapper\" style=\"background: url(\'http://demo31.phongcachso.com/images/config/background_innner.png\') repeat scroll center 28px #FFFFFF\">\r\n<div class=\"header\">\r\n<div class=\"header_wrapper\">\r\n<div class=\"header_right\">\r\n<div class=\"onlinesupport_content\">&nbsp;</div>\r\n\r\n<div class=\"hotline\">098-887-889</div>\r\n\r\n<div class=\"email\">info@dgw.com</div>\r\n\r\n<div class=\"share\"><a class=\"share-facebook\" href=\"\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"rss\" href=\"/rss.xml\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"lang-vi\" href=\"http://demo31.phongcachso.com/\" target=\"_blink\" title=\"\">&nbsp;</a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<!--	 End HEADER-->\r\n\r\n<div class=\"content\">\r\n<div class=\"container\"><!-- navigation 1--><!-- main_menu-->\r\n<div class=\"main_menu\">\r\n<div class=\"responsive-mobile-menu\">\r\n<div class=\"home \"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com/\" title=\"Digi World\">Home</a></div>\r\n\r\n<div class=\"rmm\" data-menu-style=\"minimal\">\r\n<ul>\r\n	<li class=\"level_0 item_home sort\"><a class=\"menu_item_a\" href=\"\" title=\"Digi World\">Home</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/trang-tinh/gioi-thieu/information.html\" id=\"menu_item_434\" title=\"Information\">Introduction</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/gioi-thieu.html\" id=\"menu_item_497\" title=\"Giới thiệu\">About Digiworld</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"trang-tinh/gioi-thieu/ton-chi-dinh-huong.html\" id=\"menu_item_498\" title=\"Tôn chỉ định hương\">Vision and Mission</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/thanh-tuu.html\" id=\"menu_item_499\" title=\"Achievements\">Achievement</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/doi-tac.html\" id=\"menu_item_500\" title=\"Partner\">Partners</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/huong-toi-cong-dong.html\" id=\"menu_item_501\" title=\"Hướng tới cộng đồng\">Towards community</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/goc-cat.html\" id=\"menu_item_502\" title=\"Góc cắt\">A part of</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com//\" id=\"menu_item_435\" title=\"Tra cứu  thông tin\">Searching</a> <!--	LEVEL 1			-->\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gd-care/bao-hanh-sieu-toc-trong-24h.html\" id=\"menu_item_484\" title=\"Điều khoản bảo hành\">Điều khoản bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-bao-hanh.html\" id=\"menu_item_485\" title=\"Tra cứu  bảo hành\">Tra cứu bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tai-driver.html\" id=\"menu_item_486\" title=\"Dowload Driver\">Dowload Driver</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-han-bao-hanh.html\" id=\"menu_item_487\" title=\"Tra cứu  hạn bảo hành\">Tra cứu hạn bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tu-van.html\" id=\"menu_item_480\" title=\"Advice\">Advice</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tin-tuc.html\" id=\"menu_item_436\" title=\"News\">News</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"\" id=\"menu_item_490\" title=\"Tin công nghệ\">Tin c&ocirc;ng nghệ</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/reviews.html\" id=\"menu_item_437\" title=\"Review\">Review</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/lien-he.html\" id=\"menu_item_438\" title=\"Contacts\">Contact us</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tuyen-dung.html\" id=\"menu_item_496\" title=\"Carrer\">Career</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"wapper_pos1\">\r\n<div class=\"banners  banners-default block_inner block_banner_banner\"><a href=\"\" id=\"banner_item_41\" title=\"Quảng cáo dưới menu\"> <img alt=\"Quảng cáo dưới menu\" class=\"img-old img-responsive\" height=\"127\" src=\"http://demo31.phongcachso.com/images/banners/original/quang_cao_top_ds_sp_1394615387.png\" width=\"1136\" /> </a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"jumbotron\">\r\n<div class=\"breadcrumbs\">\r\n<div class=\"breadcrumb\">\r\n<div class=\"breadcumbs-first\"><a href=\"http://demo31.phongcachso.com/\" rel=\"nofollow\" title=\"Digi World\"><span>Home</span></a></div>\r\n\r\n<div class=\"breadcrumbs_sepa\">&gt;</div>\r\n\r\n<h2>Title</h2>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"main-area-full\">\r\n<div class=\"content_detail\">\r\n<h1 class=\"title\">Toward teammates</h1>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n<!-- SUMMARY -->\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\"><strong><span class=\"short_text\" id=\"result_box\" lang=\"en\"><span class=\"hps\">Activities</span></span></strong></div>\r\n\r\n<div class=\"description\">Digiworld people have paid the responsible to the sociaty through activities of intellectural development, eviromental protection</div>\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\"><strong>DGHeart</strong></div>\r\n\r\n<div class=\"description\">&quot;DGHeart-Social responsibilities&quot; was opened in December 2007 - the fund has raised through a part of the annual profits of the company and the contribution from a part of the income of Digiworld&#39;s people. We want to give our hands to contribute to build a developing sociaty where the children go to school every day, the poor people have foods and closes for their daily needs, the elderly people have place to live... With alot of activities, DGHeart and Digiworld&#39;s people will continue to pay the social responsibilities to our sociaty.</div>\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\"><strong>DGSmart</strong></div>\r\n\r\n<div class=\"description\">DGSmart - intellectural connection of Digiworld has been raised from September 2009. The purpose of the fund is to facilitating the development of young generation of Vietnam. DigiworldSmart has not just fund in term of money, books or other needs of students which could help of their study purposes, it also gives them window opportunities to future direction in their career opportunities.</div>\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<!-- .wrapper_main -->\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"partners\">\r\n<div class=\"partners_wrapper\">\r\n<div class=\"block-partners\">\r\n<div id=\"wrapper\">\r\n<div id=\"carousel\"><img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/acer_1397555694.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/dell_1397556767.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/hp_1397555903.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/htc_1397556941.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/lenovo_1397555983.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/nokia_1397556811.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/samsung_1397555811.png\" /></div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"footer\">\r\n<div class=\"footer_wrapper\">\r\n<div class=\"footer_content\">\r\n<div class=\"col-lg-12\">\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><i>Digiworld Corporation</i></p>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><strong>Head office:</strong> 7th Fl, Viettower<br />\r\nNo. 01, Thai Ha Str, Dong Da Dist, Ha Noi, Vietnam&nbsp;<br />\r\nTel: 04. 3537 6888&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 04. 3537 6889<br />\r\nEmail: service@digiworld.vn</p>\r\n</div>\r\n\r\n<p>Designed by : <strong>Finalstyle</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/jquery/jquery-1.9.0.min.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/templates/digiworld/js/main.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/modules/content/assets/js/content_detail.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/js/onlinesupport.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-js/responsivemobilemenu.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/search/assets/js/search.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/newslist/assets/js/hot_viewest.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/coolcarousel/jquery.carouFredSel-6.0.4-packed.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/partners/assets/js/responsive_carousel.js\"></script>', NULL, NULL, NULL, NULL);
INSERT INTO `fs_translate_content` VALUES (16, 'A part of', 'a-part-of', 0, 1, NULL, '2014-05-14 17:28:28', '<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<title></title>\r\n<meta content=\"width=device-width, initial-scale=1.0\" name=\"viewport\" />\r\n<meta content=\"Giới thiệu,Thế giới số, máy tính, the gioi so, thegioiso, laptop, máy tính xách tay, may tinh xach tay, mua laptop, thị trường laptop, thi truong laptop, thi truong may tinh xach tay, thị trường máy tính xách tay, phân phối, siêu thị laptop, siêu thị máy tính xách tay, sieu thi laptop, sieu thi may tinh xach tay, mua máy tính xách tay, mua may tinh xach tay, bán laptop, bán máy tính xách tay, ban may tinh xach tay, phụ kiện laptop, phu kien laptop, phu kien may tinh xach tay, phụ kiện máy tính xách tay, Acer, Toshiba, HP, Compaq, Logitech, Fujitsu, Dell, Lexmark, Infocus, Máy chiếu, may chieu, máy in, may in, Printer, Projector, Mouse, Digicare, Digiworld, võ văn tần, vo van tan, sai gon, ho chi minh, sài gòn, hồ chí minh, tin tức, khuyến mãi, phân phối\" name=\"keywords\" />\r\n<meta content=\"Công ty Cổ phần Thế Giới Số Digiworld Corporation (Digiworld) – Công ty phân phối sản phẩm CNTT và kỹ thuật số, thuộc Top 500 doanh nghiệp lớn nhất Việt Nam (VNR500), liên tục trong 7 năm liền từ 2007 đến 2013.,Giới...\" name=\"description\" />\r\n<meta content=\"Designed by Finalstyle - Phạm Văn Huy,phamhuy@finalstyle.com,robocon20062007@gmail.com\" name=\"AUTHOR\" />\r\n<meta content=\"text/html; charset=utf-8\" http-equiv=\"Content-Type\" />\r\n<link href=\"/favicon.ico\" rel=\"icon\" type=\"image/x-icon\" />\r\n<meta content=\"vi\" http-equiv=\"content-language\" />\r\n<meta content=\"INDEX,FOLLOW\" name=\"robots\" />\r\n<meta content=\"IE=7\" http-equiv=\"X-UA-Compatible\" />\r\n<meta content=\"PHP\" name=\"CODE_LANGUAGE\" />\r\n<meta content=\"3600\" http-equiv=\"REFRESH\" />\r\n<link href=\"http://demo31.phongcachso.com/templates/digiworld/css/template.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/modules/contents/assets/css/content_detail.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/css/onlinesupport.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/responsivemobilemenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/banners/assets/css/banners_wrapper.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/breadcrumbs/assets/css/breadcrumbs_simple.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/newslist/assets/css/newslist_hot_viewest.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/partners/assets/css/responsive_carousel.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/blocks/mainmenu/assets/css/bottommenu.css\" media=\"screen\" rel=\"stylesheet\" type=\"text/css\" />\r\n<link href=\"http://demo31.phongcachso.com/rss.xml\" rel=\"alternate\" title=\"Digi World Feed\" type=\"application/rss+xml\" />\r\n<meta content=\"VietNam\" name=\"geo.placename\" />\r\n<meta content=\"21.01976825893963;105.84968183034061\" name=\"geo.position\" />\r\n<meta content=\"vi\" name=\"geo.region\" />\r\n<meta content=\"21.01976825893963,105.84968183034061\" name=\"ICBM\" /><script>\r\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,\'script\',\'//www.google-analytics.com/analytics.js\',\'ga\');\r\n\r\n  ga(\'create\', \'UA-45951056-1\', \'koreancosmetic.vn\');\r\n  ga(\'send\', \'pageview\');\r\n\r\n</script>\r\n<div class=\"wrapper\" style=\"background: url(\'http://demo31.phongcachso.com/images/config/background_innner.png\') repeat scroll center 28px #FFFFFF\">\r\n<div class=\"header\">\r\n<div class=\"header_wrapper\">\r\n<div class=\"header_right\">\r\n<div class=\"onlinesupport_content\">&nbsp;</div>\r\n\r\n<div class=\"hotline\">098-887-889</div>\r\n\r\n<div class=\"email\">info@dgw.com</div>\r\n\r\n<div class=\"share\"><a class=\"share-facebook\" href=\"\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"rss\" href=\"/rss.xml\" target=\"_blink\" title=\"facebook-share\">&nbsp;</a> <a class=\"lang-vi\" href=\"http://demo31.phongcachso.com/\" target=\"_blink\" title=\"\">&nbsp;</a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n<!--	 End HEADER-->\r\n\r\n<div class=\"content\">\r\n<div class=\"container\"><!-- navigation 1--><!-- main_menu-->\r\n<div class=\"main_menu\">\r\n<div class=\"responsive-mobile-menu\">\r\n<div class=\"home \"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com/\" title=\"Digi World\">Home</a></div>\r\n\r\n<div class=\"rmm\" data-menu-style=\"minimal\">\r\n<ul>\r\n	<li class=\"level_0 item_home sort\"><a class=\"menu_item_a\" href=\"\" title=\"Digi World\">Home</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/trang-tinh/gioi-thieu/information.html\" id=\"menu_item_434\" title=\"Information\">Introduction</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/gioi-thieu.html\" id=\"menu_item_497\" title=\"Giới thiệu\">About Digiworld</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"trang-tinh/gioi-thieu/ton-chi-dinh-huong.html\" id=\"menu_item_498\" title=\"Tôn chỉ định hương\">Vision and Mission</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/thanh-tuu.html\" id=\"menu_item_499\" title=\"Achievements\">Achievement</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/doi-tac.html\" id=\"menu_item_500\" title=\"Partner\">Partners</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/huong-toi-cong-dong.html\" id=\"menu_item_501\" title=\"Hướng tới cộng đồng\">Towards community</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gioi-thieu/goc-cat.html\" id=\"menu_item_502\" title=\"Góc cắt\">A part of</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"http://demo31.phongcachso.com//\" id=\"menu_item_435\" title=\"Tra cứu  thông tin\">Searching</a> <!--	LEVEL 1			-->\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/trang-tinh/gd-care/bao-hanh-sieu-toc-trong-24h.html\" id=\"menu_item_484\" title=\"Điều khoản bảo hành\">Điều khoản bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-bao-hanh.html\" id=\"menu_item_485\" title=\"Tra cứu  bảo hành\">Tra cứu bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tai-driver.html\" id=\"menu_item_486\" title=\"Dowload Driver\">Dowload Driver</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tra-cuu-han-bao-hanh.html\" id=\"menu_item_487\" title=\"Tra cứu  hạn bảo hành\">Tra cứu hạn bảo h&agrave;nh</a></div>\r\n\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"/tu-van.html\" id=\"menu_item_480\" title=\"Advice\">Advice</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tin-tuc.html\" id=\"menu_item_436\" title=\"News\">News</a>\r\n	<div class=\"highlight\">\r\n	<div class=\"sub-menu sub-menu-level1  \"><a class=\"level_0 sort sub-menu-item\" href=\"\" id=\"menu_item_490\" title=\"Tin công nghệ\">Tin c&ocirc;ng nghệ</a></div>\r\n	</div>\r\n	<!--	end LEVEL 1			--></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/reviews.html\" id=\"menu_item_437\" title=\"Review\">Review</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/lien-he.html\" id=\"menu_item_438\" title=\"Contacts\">Contact us</a></li>\r\n	<li class=\"level_0 sort\"><a class=\"menu_item_a\" href=\"/tuyen-dung.html\" id=\"menu_item_496\" title=\"Carrer\">Career</a></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"wapper_pos1\">\r\n<div class=\"banners  banners-default block_inner block_banner_banner\"><a href=\"\" id=\"banner_item_41\" title=\"Quảng cáo dưới menu\"> <img alt=\"Quảng cáo dưới menu\" class=\"img-old img-responsive\" height=\"127\" src=\"http://demo31.phongcachso.com/images/banners/original/quang_cao_top_ds_sp_1394615387.png\" width=\"1136\" /> </a>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"jumbotron\">\r\n<div class=\"breadcrumbs\">\r\n<div class=\"breadcrumb\">\r\n<div class=\"breadcumbs-first\"><a href=\"http://demo31.phongcachso.com/\" rel=\"nofollow\" title=\"Digi World\"><span>Home</span></a></div>\r\n\r\n<div class=\"breadcrumbs_sepa\">&gt;</div>\r\n\r\n<h2>Title</h2>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n\r\n<div class=\"main-area-full\">\r\n<div class=\"content_detail\">\r\n<h1 class=\"title\">A part of</h1>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n<!-- SUMMARY -->\r\n\r\n<div class=\"description\">&nbsp;</div>\r\n\r\n<div class=\"description\">Leadership Teambuilding</div>\r\n</div>\r\n</div>\r\n<!-- .wrapper_main -->\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"partners\">\r\n<div class=\"partners_wrapper\">\r\n<div class=\"block-partners\">\r\n<div id=\"wrapper\">\r\n<div id=\"carousel\"><img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/acer_1397555694.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/dell_1397556767.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/hp_1397555903.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/htc_1397556941.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/lenovo_1397555983.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/nokia_1397556811.png\" /> <img alt=\" \" id=\"myimg\" onclick=\"location.href=\'http://google.com.vn\'\" src=\"http://demo31.phongcachso.com/images/partners/2014/04/15/resized/samsung_1397555811.png\" /></div>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div class=\"footer\">\r\n<div class=\"footer_wrapper\">\r\n<div class=\"footer_content\">\r\n<div class=\"col-lg-12\">\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><i>Digiworld Corporation</i></p>\r\n</div>\r\n\r\n<div style=\"margin-bottom: 5px;\">\r\n<p><strong>Head office:</strong> 7th Fl, Viettower<br />\r\nNo. 01, Thai Ha Str, Dong Da Dist, Ha Noi, Vietnam&nbsp;<br />\r\nTel: 04. 3537 6888&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fax: 04. 3537 6889<br />\r\nEmail: service@digiworld.vn</p>\r\n</div>\r\n\r\n<p>Designed by : <strong>Finalstyle</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"clear\">&nbsp;</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/jquery/jquery-1.9.0.min.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/templates/digiworld/js/main.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/modules/content/assets/js/content_detail.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/onlinesupport/assets/js/onlinesupport.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/responsivemobilemenu/rmm-js/responsivemobilemenu.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/search/assets/js/search.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/newslist/assets/js/hot_viewest.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/libraries/responsive/coolcarousel/jquery.carouFredSel-6.0.4-packed.js\"></script><script language=\"javascript\" type=\"text/javascript\" src=\"http://demo31.phongcachso.com/blocks/partners/assets/js/responsive_carousel.js\"></script>', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for fs_users
-- ----------------------------
DROP TABLE IF EXISTS `fs_users`;
CREATE TABLE `fs_users`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lname` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `published` tinyint NULL DEFAULT NULL,
  `ordering` int NULL DEFAULT NULL,
  `created_time` datetime NULL DEFAULT NULL,
  `updated_time` datetime NULL DEFAULT NULL,
  `last_visit_time` datetime NULL DEFAULT NULL,
  `nums_visit` int NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Mặc định nếu group_id=2',
  `group_company` int NOT NULL DEFAULT 0 COMMENT '0: Admin; 1: Tập đoàn; 2: Đơn vị',
  `position_group` int NULL DEFAULT NULL,
  `position_group_name` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 91 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_users
-- ----------------------------
INSERT INTO `fs_users` VALUES (9, 'admin', '5fec4ba8376f207d1ff2f0cac0882b01', '', '', 'manhlinh@finalstyle.com', '0383760076', 'Tan trieu, thanh tri', 'Viet Nam', 1, 1, '2022-05-08 03:33:51', '2021-12-22 19:48:56', NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for fs_users_groups
-- ----------------------------
DROP TABLE IF EXISTS `fs_users_groups`;
CREATE TABLE `fs_users_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` int NULL DEFAULT NULL,
  `groupid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 63 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of fs_users_groups
-- ----------------------------
INSERT INTO `fs_users_groups` VALUES (40, 4, 2);
INSERT INTO `fs_users_groups` VALUES (31, 30, 2);
INSERT INTO `fs_users_groups` VALUES (39, 4, 1);
INSERT INTO `fs_users_groups` VALUES (41, 8, 1);
INSERT INTO `fs_users_groups` VALUES (53, 9, 1);
INSERT INTO `fs_users_groups` VALUES (44, 10, 2);
INSERT INTO `fs_users_groups` VALUES (48, 11, 2);
INSERT INTO `fs_users_groups` VALUES (51, 12, 1);
INSERT INTO `fs_users_groups` VALUES (61, 13, 51);
INSERT INTO `fs_users_groups` VALUES (60, 13, 50);
INSERT INTO `fs_users_groups` VALUES (62, 14, 51);

-- ----------------------------
-- Table structure for fs_users_permission
-- ----------------------------
DROP TABLE IF EXISTS `fs_users_permission`;
CREATE TABLE `fs_users_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `task_id` int NULL DEFAULT NULL COMMENT 'Lấy id của permission_task',
  `permission` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2559 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of fs_users_permission
-- ----------------------------
INSERT INTO `fs_users_permission` VALUES (382, 18, 1, 0);
INSERT INTO `fs_users_permission` VALUES (383, 18, 3, 0);
INSERT INTO `fs_users_permission` VALUES (384, 18, 5, 0);
INSERT INTO `fs_users_permission` VALUES (385, 18, 6, 0);
INSERT INTO `fs_users_permission` VALUES (386, 18, 7, 0);
INSERT INTO `fs_users_permission` VALUES (387, 18, 8, 0);
INSERT INTO `fs_users_permission` VALUES (388, 18, 9, 0);
INSERT INTO `fs_users_permission` VALUES (389, 18, 10, 0);
INSERT INTO `fs_users_permission` VALUES (390, 18, 11, 0);
INSERT INTO `fs_users_permission` VALUES (391, 18, 12, 0);
INSERT INTO `fs_users_permission` VALUES (392, 18, 13, 0);
INSERT INTO `fs_users_permission` VALUES (393, 18, 14, 0);
INSERT INTO `fs_users_permission` VALUES (394, 18, 15, 0);
INSERT INTO `fs_users_permission` VALUES (395, 18, 16, 0);
INSERT INTO `fs_users_permission` VALUES (396, 18, 17, 0);
INSERT INTO `fs_users_permission` VALUES (397, 18, 18, 0);
INSERT INTO `fs_users_permission` VALUES (398, 18, 19, 0);
INSERT INTO `fs_users_permission` VALUES (399, 18, 20, 0);
INSERT INTO `fs_users_permission` VALUES (400, 18, 21, 0);
INSERT INTO `fs_users_permission` VALUES (401, 18, 22, 5);
INSERT INTO `fs_users_permission` VALUES (402, 18, 23, 5);
INSERT INTO `fs_users_permission` VALUES (403, 18, 24, 0);
INSERT INTO `fs_users_permission` VALUES (404, 18, 25, 0);
INSERT INTO `fs_users_permission` VALUES (405, 18, 26, 0);
INSERT INTO `fs_users_permission` VALUES (406, 18, 31, 0);
INSERT INTO `fs_users_permission` VALUES (407, 18, 45, 0);
INSERT INTO `fs_users_permission` VALUES (408, 18, 44, 0);
INSERT INTO `fs_users_permission` VALUES (409, 18, 46, 0);
INSERT INTO `fs_users_permission` VALUES (410, 18, 47, 0);
INSERT INTO `fs_users_permission` VALUES (411, 18, 48, 0);
INSERT INTO `fs_users_permission` VALUES (412, 18, 49, 0);
INSERT INTO `fs_users_permission` VALUES (413, 18, 50, 0);
INSERT INTO `fs_users_permission` VALUES (414, 18, 51, 0);
INSERT INTO `fs_users_permission` VALUES (415, 18, 52, 0);
INSERT INTO `fs_users_permission` VALUES (416, 18, 53, 0);
INSERT INTO `fs_users_permission` VALUES (417, 18, 54, 0);
INSERT INTO `fs_users_permission` VALUES (418, 18, 55, 0);
INSERT INTO `fs_users_permission` VALUES (419, 18, 56, 0);
INSERT INTO `fs_users_permission` VALUES (420, 18, 57, 0);
INSERT INTO `fs_users_permission` VALUES (421, 19, 1, 0);
INSERT INTO `fs_users_permission` VALUES (422, 19, 3, 0);
INSERT INTO `fs_users_permission` VALUES (423, 19, 5, 0);
INSERT INTO `fs_users_permission` VALUES (424, 19, 6, 0);
INSERT INTO `fs_users_permission` VALUES (425, 19, 7, 0);
INSERT INTO `fs_users_permission` VALUES (426, 19, 8, 0);
INSERT INTO `fs_users_permission` VALUES (427, 19, 9, 0);
INSERT INTO `fs_users_permission` VALUES (428, 19, 10, 0);
INSERT INTO `fs_users_permission` VALUES (429, 19, 11, 0);
INSERT INTO `fs_users_permission` VALUES (430, 19, 12, 0);
INSERT INTO `fs_users_permission` VALUES (431, 19, 13, 0);
INSERT INTO `fs_users_permission` VALUES (432, 19, 14, 0);
INSERT INTO `fs_users_permission` VALUES (433, 19, 15, 0);
INSERT INTO `fs_users_permission` VALUES (434, 19, 16, 0);
INSERT INTO `fs_users_permission` VALUES (435, 19, 17, 0);
INSERT INTO `fs_users_permission` VALUES (436, 19, 18, 0);
INSERT INTO `fs_users_permission` VALUES (437, 19, 19, 0);
INSERT INTO `fs_users_permission` VALUES (438, 19, 20, 0);
INSERT INTO `fs_users_permission` VALUES (439, 19, 21, 0);
INSERT INTO `fs_users_permission` VALUES (440, 19, 22, 5);
INSERT INTO `fs_users_permission` VALUES (441, 19, 23, 5);
INSERT INTO `fs_users_permission` VALUES (442, 19, 24, 5);
INSERT INTO `fs_users_permission` VALUES (443, 19, 25, 0);
INSERT INTO `fs_users_permission` VALUES (444, 19, 26, 0);
INSERT INTO `fs_users_permission` VALUES (445, 19, 31, 0);
INSERT INTO `fs_users_permission` VALUES (446, 19, 45, 0);
INSERT INTO `fs_users_permission` VALUES (447, 19, 44, 0);
INSERT INTO `fs_users_permission` VALUES (448, 19, 46, 0);
INSERT INTO `fs_users_permission` VALUES (449, 19, 47, 0);
INSERT INTO `fs_users_permission` VALUES (450, 19, 48, 0);
INSERT INTO `fs_users_permission` VALUES (451, 19, 49, 0);
INSERT INTO `fs_users_permission` VALUES (452, 19, 50, 0);
INSERT INTO `fs_users_permission` VALUES (453, 19, 51, 0);
INSERT INTO `fs_users_permission` VALUES (454, 19, 52, 0);
INSERT INTO `fs_users_permission` VALUES (455, 19, 53, 0);
INSERT INTO `fs_users_permission` VALUES (456, 19, 54, 0);
INSERT INTO `fs_users_permission` VALUES (457, 19, 55, 0);
INSERT INTO `fs_users_permission` VALUES (458, 19, 56, 0);
INSERT INTO `fs_users_permission` VALUES (459, 19, 57, 0);
INSERT INTO `fs_users_permission` VALUES (460, 20, 1, 0);
INSERT INTO `fs_users_permission` VALUES (461, 20, 3, 0);
INSERT INTO `fs_users_permission` VALUES (462, 20, 5, 0);
INSERT INTO `fs_users_permission` VALUES (463, 20, 6, 0);
INSERT INTO `fs_users_permission` VALUES (464, 20, 7, 0);
INSERT INTO `fs_users_permission` VALUES (465, 20, 8, 0);
INSERT INTO `fs_users_permission` VALUES (466, 20, 9, 0);
INSERT INTO `fs_users_permission` VALUES (467, 20, 10, 0);
INSERT INTO `fs_users_permission` VALUES (468, 20, 11, 0);
INSERT INTO `fs_users_permission` VALUES (469, 20, 12, 0);
INSERT INTO `fs_users_permission` VALUES (470, 20, 13, 0);
INSERT INTO `fs_users_permission` VALUES (471, 20, 14, 0);
INSERT INTO `fs_users_permission` VALUES (472, 20, 15, 0);
INSERT INTO `fs_users_permission` VALUES (473, 20, 16, 0);
INSERT INTO `fs_users_permission` VALUES (474, 20, 17, 0);
INSERT INTO `fs_users_permission` VALUES (475, 20, 18, 0);
INSERT INTO `fs_users_permission` VALUES (476, 20, 19, 0);
INSERT INTO `fs_users_permission` VALUES (477, 20, 20, 0);
INSERT INTO `fs_users_permission` VALUES (478, 20, 21, 0);
INSERT INTO `fs_users_permission` VALUES (479, 20, 22, 5);
INSERT INTO `fs_users_permission` VALUES (480, 20, 23, 5);
INSERT INTO `fs_users_permission` VALUES (481, 20, 24, 5);
INSERT INTO `fs_users_permission` VALUES (482, 20, 25, 0);
INSERT INTO `fs_users_permission` VALUES (483, 20, 26, 0);
INSERT INTO `fs_users_permission` VALUES (484, 20, 31, 0);
INSERT INTO `fs_users_permission` VALUES (485, 20, 45, 0);
INSERT INTO `fs_users_permission` VALUES (486, 20, 44, 0);
INSERT INTO `fs_users_permission` VALUES (487, 20, 46, 0);
INSERT INTO `fs_users_permission` VALUES (488, 20, 47, 0);
INSERT INTO `fs_users_permission` VALUES (489, 20, 48, 0);
INSERT INTO `fs_users_permission` VALUES (490, 20, 49, 0);
INSERT INTO `fs_users_permission` VALUES (491, 20, 50, 0);
INSERT INTO `fs_users_permission` VALUES (492, 20, 51, 0);
INSERT INTO `fs_users_permission` VALUES (493, 20, 52, 0);
INSERT INTO `fs_users_permission` VALUES (494, 20, 53, 0);
INSERT INTO `fs_users_permission` VALUES (495, 20, 54, 0);
INSERT INTO `fs_users_permission` VALUES (496, 20, 55, 0);
INSERT INTO `fs_users_permission` VALUES (497, 20, 56, 0);
INSERT INTO `fs_users_permission` VALUES (498, 20, 57, 0);
INSERT INTO `fs_users_permission` VALUES (499, 22, 1, 7);
INSERT INTO `fs_users_permission` VALUES (500, 22, 3, 7);
INSERT INTO `fs_users_permission` VALUES (501, 22, 5, 7);
INSERT INTO `fs_users_permission` VALUES (502, 22, 6, 7);
INSERT INTO `fs_users_permission` VALUES (503, 22, 7, 7);
INSERT INTO `fs_users_permission` VALUES (504, 22, 8, 7);
INSERT INTO `fs_users_permission` VALUES (505, 22, 9, 7);
INSERT INTO `fs_users_permission` VALUES (506, 22, 10, 7);
INSERT INTO `fs_users_permission` VALUES (507, 22, 11, 7);
INSERT INTO `fs_users_permission` VALUES (508, 22, 12, 7);
INSERT INTO `fs_users_permission` VALUES (509, 22, 13, 7);
INSERT INTO `fs_users_permission` VALUES (510, 22, 14, 7);
INSERT INTO `fs_users_permission` VALUES (511, 22, 15, 7);
INSERT INTO `fs_users_permission` VALUES (512, 22, 16, 7);
INSERT INTO `fs_users_permission` VALUES (513, 22, 17, 7);
INSERT INTO `fs_users_permission` VALUES (514, 22, 18, 7);
INSERT INTO `fs_users_permission` VALUES (515, 22, 19, 7);
INSERT INTO `fs_users_permission` VALUES (516, 22, 20, 7);
INSERT INTO `fs_users_permission` VALUES (517, 22, 21, 7);
INSERT INTO `fs_users_permission` VALUES (518, 22, 22, 7);
INSERT INTO `fs_users_permission` VALUES (519, 22, 23, 7);
INSERT INTO `fs_users_permission` VALUES (520, 22, 24, 7);
INSERT INTO `fs_users_permission` VALUES (521, 22, 25, 7);
INSERT INTO `fs_users_permission` VALUES (522, 22, 26, 7);
INSERT INTO `fs_users_permission` VALUES (523, 22, 31, 7);
INSERT INTO `fs_users_permission` VALUES (524, 22, 45, 7);
INSERT INTO `fs_users_permission` VALUES (525, 22, 44, 7);
INSERT INTO `fs_users_permission` VALUES (526, 22, 46, 7);
INSERT INTO `fs_users_permission` VALUES (527, 22, 47, 0);
INSERT INTO `fs_users_permission` VALUES (528, 22, 48, 7);
INSERT INTO `fs_users_permission` VALUES (529, 22, 49, 7);
INSERT INTO `fs_users_permission` VALUES (530, 22, 50, 7);
INSERT INTO `fs_users_permission` VALUES (531, 22, 51, 7);
INSERT INTO `fs_users_permission` VALUES (532, 22, 52, 7);
INSERT INTO `fs_users_permission` VALUES (533, 22, 53, 7);
INSERT INTO `fs_users_permission` VALUES (534, 22, 54, 7);
INSERT INTO `fs_users_permission` VALUES (535, 22, 55, 7);
INSERT INTO `fs_users_permission` VALUES (536, 22, 56, 7);
INSERT INTO `fs_users_permission` VALUES (537, 22, 57, 7);
INSERT INTO `fs_users_permission` VALUES (538, 23, 1, 7);
INSERT INTO `fs_users_permission` VALUES (539, 23, 3, 7);
INSERT INTO `fs_users_permission` VALUES (540, 23, 5, 7);
INSERT INTO `fs_users_permission` VALUES (541, 23, 6, 7);
INSERT INTO `fs_users_permission` VALUES (542, 23, 7, 7);
INSERT INTO `fs_users_permission` VALUES (543, 23, 8, 7);
INSERT INTO `fs_users_permission` VALUES (544, 23, 9, 7);
INSERT INTO `fs_users_permission` VALUES (545, 23, 10, 7);
INSERT INTO `fs_users_permission` VALUES (546, 23, 11, 7);
INSERT INTO `fs_users_permission` VALUES (547, 23, 12, 7);
INSERT INTO `fs_users_permission` VALUES (548, 23, 13, 7);
INSERT INTO `fs_users_permission` VALUES (549, 23, 14, 7);
INSERT INTO `fs_users_permission` VALUES (550, 23, 15, 7);
INSERT INTO `fs_users_permission` VALUES (551, 23, 16, 7);
INSERT INTO `fs_users_permission` VALUES (552, 23, 17, 7);
INSERT INTO `fs_users_permission` VALUES (553, 23, 18, 7);
INSERT INTO `fs_users_permission` VALUES (554, 23, 19, 7);
INSERT INTO `fs_users_permission` VALUES (555, 23, 20, 7);
INSERT INTO `fs_users_permission` VALUES (556, 23, 21, 7);
INSERT INTO `fs_users_permission` VALUES (557, 23, 22, 7);
INSERT INTO `fs_users_permission` VALUES (558, 23, 23, 7);
INSERT INTO `fs_users_permission` VALUES (559, 23, 24, 7);
INSERT INTO `fs_users_permission` VALUES (560, 23, 25, 7);
INSERT INTO `fs_users_permission` VALUES (561, 23, 26, 7);
INSERT INTO `fs_users_permission` VALUES (562, 23, 31, 7);
INSERT INTO `fs_users_permission` VALUES (563, 23, 45, 7);
INSERT INTO `fs_users_permission` VALUES (564, 23, 44, 7);
INSERT INTO `fs_users_permission` VALUES (565, 23, 46, 7);
INSERT INTO `fs_users_permission` VALUES (566, 23, 47, 0);
INSERT INTO `fs_users_permission` VALUES (567, 23, 48, 7);
INSERT INTO `fs_users_permission` VALUES (568, 23, 49, 7);
INSERT INTO `fs_users_permission` VALUES (569, 23, 50, 7);
INSERT INTO `fs_users_permission` VALUES (570, 23, 51, 7);
INSERT INTO `fs_users_permission` VALUES (571, 23, 52, 7);
INSERT INTO `fs_users_permission` VALUES (572, 23, 53, 7);
INSERT INTO `fs_users_permission` VALUES (573, 23, 54, 7);
INSERT INTO `fs_users_permission` VALUES (574, 23, 55, 7);
INSERT INTO `fs_users_permission` VALUES (575, 23, 56, 7);
INSERT INTO `fs_users_permission` VALUES (576, 23, 57, 7);
INSERT INTO `fs_users_permission` VALUES (577, 24, 1, 0);
INSERT INTO `fs_users_permission` VALUES (578, 24, 3, 7);
INSERT INTO `fs_users_permission` VALUES (579, 24, 5, 7);
INSERT INTO `fs_users_permission` VALUES (580, 24, 6, 7);
INSERT INTO `fs_users_permission` VALUES (581, 24, 7, 7);
INSERT INTO `fs_users_permission` VALUES (582, 24, 8, 7);
INSERT INTO `fs_users_permission` VALUES (583, 24, 9, 7);
INSERT INTO `fs_users_permission` VALUES (584, 24, 10, 7);
INSERT INTO `fs_users_permission` VALUES (585, 24, 11, 7);
INSERT INTO `fs_users_permission` VALUES (586, 24, 12, 0);
INSERT INTO `fs_users_permission` VALUES (587, 24, 13, 7);
INSERT INTO `fs_users_permission` VALUES (588, 24, 14, 7);
INSERT INTO `fs_users_permission` VALUES (589, 24, 15, 7);
INSERT INTO `fs_users_permission` VALUES (590, 24, 16, 7);
INSERT INTO `fs_users_permission` VALUES (591, 24, 17, 7);
INSERT INTO `fs_users_permission` VALUES (592, 24, 18, 7);
INSERT INTO `fs_users_permission` VALUES (593, 24, 19, 7);
INSERT INTO `fs_users_permission` VALUES (594, 24, 20, 7);
INSERT INTO `fs_users_permission` VALUES (595, 24, 21, 7);
INSERT INTO `fs_users_permission` VALUES (596, 24, 22, 7);
INSERT INTO `fs_users_permission` VALUES (597, 24, 23, 7);
INSERT INTO `fs_users_permission` VALUES (598, 24, 24, 7);
INSERT INTO `fs_users_permission` VALUES (599, 24, 25, 7);
INSERT INTO `fs_users_permission` VALUES (600, 24, 26, 7);
INSERT INTO `fs_users_permission` VALUES (601, 24, 31, 7);
INSERT INTO `fs_users_permission` VALUES (602, 24, 45, 7);
INSERT INTO `fs_users_permission` VALUES (603, 24, 44, 7);
INSERT INTO `fs_users_permission` VALUES (604, 24, 46, 7);
INSERT INTO `fs_users_permission` VALUES (605, 24, 47, 0);
INSERT INTO `fs_users_permission` VALUES (606, 24, 48, 7);
INSERT INTO `fs_users_permission` VALUES (607, 24, 49, 7);
INSERT INTO `fs_users_permission` VALUES (608, 24, 50, 7);
INSERT INTO `fs_users_permission` VALUES (609, 24, 51, 7);
INSERT INTO `fs_users_permission` VALUES (610, 24, 52, 7);
INSERT INTO `fs_users_permission` VALUES (611, 24, 53, 7);
INSERT INTO `fs_users_permission` VALUES (612, 24, 54, 7);
INSERT INTO `fs_users_permission` VALUES (613, 24, 55, 7);
INSERT INTO `fs_users_permission` VALUES (614, 24, 56, 7);
INSERT INTO `fs_users_permission` VALUES (615, 24, 57, 7);
INSERT INTO `fs_users_permission` VALUES (616, 25, 1, 0);
INSERT INTO `fs_users_permission` VALUES (617, 25, 3, 0);
INSERT INTO `fs_users_permission` VALUES (618, 25, 5, 0);
INSERT INTO `fs_users_permission` VALUES (619, 25, 6, 0);
INSERT INTO `fs_users_permission` VALUES (620, 25, 7, 0);
INSERT INTO `fs_users_permission` VALUES (621, 25, 8, 0);
INSERT INTO `fs_users_permission` VALUES (622, 25, 9, 0);
INSERT INTO `fs_users_permission` VALUES (623, 25, 10, 0);
INSERT INTO `fs_users_permission` VALUES (624, 25, 11, 0);
INSERT INTO `fs_users_permission` VALUES (625, 25, 12, 0);
INSERT INTO `fs_users_permission` VALUES (626, 25, 13, 7);
INSERT INTO `fs_users_permission` VALUES (627, 25, 14, 7);
INSERT INTO `fs_users_permission` VALUES (628, 25, 15, 7);
INSERT INTO `fs_users_permission` VALUES (629, 25, 16, 7);
INSERT INTO `fs_users_permission` VALUES (630, 25, 17, 7);
INSERT INTO `fs_users_permission` VALUES (631, 25, 18, 0);
INSERT INTO `fs_users_permission` VALUES (632, 25, 19, 0);
INSERT INTO `fs_users_permission` VALUES (633, 25, 20, 0);
INSERT INTO `fs_users_permission` VALUES (634, 25, 21, 0);
INSERT INTO `fs_users_permission` VALUES (635, 25, 22, 7);
INSERT INTO `fs_users_permission` VALUES (636, 25, 23, 7);
INSERT INTO `fs_users_permission` VALUES (637, 25, 24, 7);
INSERT INTO `fs_users_permission` VALUES (638, 25, 25, 0);
INSERT INTO `fs_users_permission` VALUES (639, 25, 26, 0);
INSERT INTO `fs_users_permission` VALUES (640, 25, 31, 0);
INSERT INTO `fs_users_permission` VALUES (641, 25, 45, 0);
INSERT INTO `fs_users_permission` VALUES (642, 25, 44, 0);
INSERT INTO `fs_users_permission` VALUES (643, 25, 46, 7);
INSERT INTO `fs_users_permission` VALUES (644, 25, 47, 0);
INSERT INTO `fs_users_permission` VALUES (645, 25, 48, 0);
INSERT INTO `fs_users_permission` VALUES (646, 25, 49, 0);
INSERT INTO `fs_users_permission` VALUES (647, 25, 50, 7);
INSERT INTO `fs_users_permission` VALUES (648, 25, 51, 7);
INSERT INTO `fs_users_permission` VALUES (649, 25, 52, 7);
INSERT INTO `fs_users_permission` VALUES (650, 25, 53, 7);
INSERT INTO `fs_users_permission` VALUES (651, 25, 54, 7);
INSERT INTO `fs_users_permission` VALUES (652, 25, 55, 7);
INSERT INTO `fs_users_permission` VALUES (653, 25, 56, 7);
INSERT INTO `fs_users_permission` VALUES (654, 25, 57, 7);
INSERT INTO `fs_users_permission` VALUES (655, 26, 1, 0);
INSERT INTO `fs_users_permission` VALUES (656, 26, 3, 0);
INSERT INTO `fs_users_permission` VALUES (657, 26, 5, 0);
INSERT INTO `fs_users_permission` VALUES (658, 26, 6, 0);
INSERT INTO `fs_users_permission` VALUES (659, 26, 7, 0);
INSERT INTO `fs_users_permission` VALUES (660, 26, 8, 0);
INSERT INTO `fs_users_permission` VALUES (661, 26, 9, 0);
INSERT INTO `fs_users_permission` VALUES (662, 26, 10, 0);
INSERT INTO `fs_users_permission` VALUES (663, 26, 11, 0);
INSERT INTO `fs_users_permission` VALUES (664, 26, 12, 0);
INSERT INTO `fs_users_permission` VALUES (665, 26, 13, 0);
INSERT INTO `fs_users_permission` VALUES (666, 26, 14, 0);
INSERT INTO `fs_users_permission` VALUES (667, 26, 15, 7);
INSERT INTO `fs_users_permission` VALUES (668, 26, 16, 0);
INSERT INTO `fs_users_permission` VALUES (669, 26, 17, 0);
INSERT INTO `fs_users_permission` VALUES (670, 26, 18, 7);
INSERT INTO `fs_users_permission` VALUES (671, 26, 19, 0);
INSERT INTO `fs_users_permission` VALUES (672, 26, 20, 0);
INSERT INTO `fs_users_permission` VALUES (673, 26, 21, 7);
INSERT INTO `fs_users_permission` VALUES (674, 26, 22, 0);
INSERT INTO `fs_users_permission` VALUES (675, 26, 23, 0);
INSERT INTO `fs_users_permission` VALUES (676, 26, 24, 7);
INSERT INTO `fs_users_permission` VALUES (677, 26, 25, 0);
INSERT INTO `fs_users_permission` VALUES (678, 26, 26, 7);
INSERT INTO `fs_users_permission` VALUES (679, 26, 31, 7);
INSERT INTO `fs_users_permission` VALUES (680, 26, 45, 0);
INSERT INTO `fs_users_permission` VALUES (681, 26, 44, 0);
INSERT INTO `fs_users_permission` VALUES (682, 26, 46, 0);
INSERT INTO `fs_users_permission` VALUES (683, 26, 47, 0);
INSERT INTO `fs_users_permission` VALUES (684, 26, 48, 0);
INSERT INTO `fs_users_permission` VALUES (685, 26, 49, 0);
INSERT INTO `fs_users_permission` VALUES (686, 26, 50, 0);
INSERT INTO `fs_users_permission` VALUES (687, 26, 51, 0);
INSERT INTO `fs_users_permission` VALUES (688, 26, 52, 0);
INSERT INTO `fs_users_permission` VALUES (689, 26, 53, 0);
INSERT INTO `fs_users_permission` VALUES (690, 26, 54, 0);
INSERT INTO `fs_users_permission` VALUES (691, 26, 55, 0);
INSERT INTO `fs_users_permission` VALUES (692, 26, 56, 0);
INSERT INTO `fs_users_permission` VALUES (693, 26, 57, 0);
INSERT INTO `fs_users_permission` VALUES (694, 27, 1, 0);
INSERT INTO `fs_users_permission` VALUES (695, 27, 3, 0);
INSERT INTO `fs_users_permission` VALUES (696, 27, 5, 0);
INSERT INTO `fs_users_permission` VALUES (697, 27, 6, 0);
INSERT INTO `fs_users_permission` VALUES (698, 27, 7, 0);
INSERT INTO `fs_users_permission` VALUES (699, 27, 8, 0);
INSERT INTO `fs_users_permission` VALUES (700, 27, 9, 0);
INSERT INTO `fs_users_permission` VALUES (701, 27, 10, 0);
INSERT INTO `fs_users_permission` VALUES (702, 27, 11, 0);
INSERT INTO `fs_users_permission` VALUES (703, 27, 12, 0);
INSERT INTO `fs_users_permission` VALUES (704, 27, 13, 5);
INSERT INTO `fs_users_permission` VALUES (705, 27, 14, 5);
INSERT INTO `fs_users_permission` VALUES (706, 27, 15, 5);
INSERT INTO `fs_users_permission` VALUES (707, 27, 16, 0);
INSERT INTO `fs_users_permission` VALUES (708, 27, 17, 0);
INSERT INTO `fs_users_permission` VALUES (709, 27, 18, 0);
INSERT INTO `fs_users_permission` VALUES (710, 27, 19, 0);
INSERT INTO `fs_users_permission` VALUES (711, 27, 20, 0);
INSERT INTO `fs_users_permission` VALUES (712, 27, 21, 0);
INSERT INTO `fs_users_permission` VALUES (713, 27, 22, 5);
INSERT INTO `fs_users_permission` VALUES (714, 27, 23, 5);
INSERT INTO `fs_users_permission` VALUES (715, 27, 24, 5);
INSERT INTO `fs_users_permission` VALUES (716, 27, 25, 0);
INSERT INTO `fs_users_permission` VALUES (717, 27, 26, 0);
INSERT INTO `fs_users_permission` VALUES (718, 27, 31, 0);
INSERT INTO `fs_users_permission` VALUES (719, 27, 45, 0);
INSERT INTO `fs_users_permission` VALUES (720, 27, 44, 0);
INSERT INTO `fs_users_permission` VALUES (721, 27, 46, 0);
INSERT INTO `fs_users_permission` VALUES (722, 27, 47, 0);
INSERT INTO `fs_users_permission` VALUES (723, 27, 48, 0);
INSERT INTO `fs_users_permission` VALUES (724, 27, 49, 0);
INSERT INTO `fs_users_permission` VALUES (725, 27, 50, 7);
INSERT INTO `fs_users_permission` VALUES (726, 27, 51, 7);
INSERT INTO `fs_users_permission` VALUES (727, 27, 52, 7);
INSERT INTO `fs_users_permission` VALUES (728, 27, 53, 7);
INSERT INTO `fs_users_permission` VALUES (729, 27, 54, 7);
INSERT INTO `fs_users_permission` VALUES (730, 27, 55, 7);
INSERT INTO `fs_users_permission` VALUES (731, 27, 56, 7);
INSERT INTO `fs_users_permission` VALUES (732, 27, 57, 0);
INSERT INTO `fs_users_permission` VALUES (733, 17, 1, 0);
INSERT INTO `fs_users_permission` VALUES (734, 17, 3, 0);
INSERT INTO `fs_users_permission` VALUES (735, 17, 5, 0);
INSERT INTO `fs_users_permission` VALUES (736, 17, 6, 0);
INSERT INTO `fs_users_permission` VALUES (737, 17, 7, 0);
INSERT INTO `fs_users_permission` VALUES (738, 17, 8, 0);
INSERT INTO `fs_users_permission` VALUES (739, 17, 9, 0);
INSERT INTO `fs_users_permission` VALUES (740, 17, 10, 0);
INSERT INTO `fs_users_permission` VALUES (741, 17, 11, 0);
INSERT INTO `fs_users_permission` VALUES (742, 17, 12, 0);
INSERT INTO `fs_users_permission` VALUES (743, 17, 13, 0);
INSERT INTO `fs_users_permission` VALUES (744, 17, 14, 0);
INSERT INTO `fs_users_permission` VALUES (745, 17, 15, 0);
INSERT INTO `fs_users_permission` VALUES (746, 17, 16, 0);
INSERT INTO `fs_users_permission` VALUES (747, 17, 17, 0);
INSERT INTO `fs_users_permission` VALUES (748, 17, 18, 0);
INSERT INTO `fs_users_permission` VALUES (749, 17, 19, 0);
INSERT INTO `fs_users_permission` VALUES (750, 17, 20, 0);
INSERT INTO `fs_users_permission` VALUES (751, 17, 21, 0);
INSERT INTO `fs_users_permission` VALUES (752, 17, 22, 7);
INSERT INTO `fs_users_permission` VALUES (753, 17, 23, 7);
INSERT INTO `fs_users_permission` VALUES (754, 17, 24, 7);
INSERT INTO `fs_users_permission` VALUES (755, 17, 25, 0);
INSERT INTO `fs_users_permission` VALUES (756, 17, 26, 0);
INSERT INTO `fs_users_permission` VALUES (757, 17, 31, 0);
INSERT INTO `fs_users_permission` VALUES (758, 17, 45, 0);
INSERT INTO `fs_users_permission` VALUES (759, 17, 44, 0);
INSERT INTO `fs_users_permission` VALUES (760, 17, 46, 0);
INSERT INTO `fs_users_permission` VALUES (761, 17, 47, 0);
INSERT INTO `fs_users_permission` VALUES (762, 17, 48, 0);
INSERT INTO `fs_users_permission` VALUES (763, 17, 49, 0);
INSERT INTO `fs_users_permission` VALUES (764, 17, 50, 0);
INSERT INTO `fs_users_permission` VALUES (765, 17, 51, 0);
INSERT INTO `fs_users_permission` VALUES (766, 17, 52, 0);
INSERT INTO `fs_users_permission` VALUES (767, 17, 53, 0);
INSERT INTO `fs_users_permission` VALUES (768, 17, 54, 0);
INSERT INTO `fs_users_permission` VALUES (769, 17, 55, 0);
INSERT INTO `fs_users_permission` VALUES (770, 17, 56, 0);
INSERT INTO `fs_users_permission` VALUES (771, 17, 57, 0);
INSERT INTO `fs_users_permission` VALUES (772, 28, 1, 0);
INSERT INTO `fs_users_permission` VALUES (773, 28, 3, 0);
INSERT INTO `fs_users_permission` VALUES (774, 28, 5, 0);
INSERT INTO `fs_users_permission` VALUES (775, 28, 6, 0);
INSERT INTO `fs_users_permission` VALUES (776, 28, 7, 0);
INSERT INTO `fs_users_permission` VALUES (777, 28, 8, 0);
INSERT INTO `fs_users_permission` VALUES (778, 28, 9, 0);
INSERT INTO `fs_users_permission` VALUES (779, 28, 10, 0);
INSERT INTO `fs_users_permission` VALUES (780, 28, 11, 0);
INSERT INTO `fs_users_permission` VALUES (781, 28, 12, 0);
INSERT INTO `fs_users_permission` VALUES (782, 28, 13, 7);
INSERT INTO `fs_users_permission` VALUES (783, 28, 14, 7);
INSERT INTO `fs_users_permission` VALUES (784, 28, 15, 0);
INSERT INTO `fs_users_permission` VALUES (785, 28, 16, 0);
INSERT INTO `fs_users_permission` VALUES (786, 28, 17, 0);
INSERT INTO `fs_users_permission` VALUES (787, 28, 18, 0);
INSERT INTO `fs_users_permission` VALUES (788, 28, 19, 0);
INSERT INTO `fs_users_permission` VALUES (789, 28, 20, 0);
INSERT INTO `fs_users_permission` VALUES (790, 28, 21, 0);
INSERT INTO `fs_users_permission` VALUES (791, 28, 22, 7);
INSERT INTO `fs_users_permission` VALUES (792, 28, 23, 7);
INSERT INTO `fs_users_permission` VALUES (793, 28, 24, 7);
INSERT INTO `fs_users_permission` VALUES (794, 28, 25, 0);
INSERT INTO `fs_users_permission` VALUES (795, 28, 26, 0);
INSERT INTO `fs_users_permission` VALUES (796, 28, 31, 0);
INSERT INTO `fs_users_permission` VALUES (797, 28, 45, 0);
INSERT INTO `fs_users_permission` VALUES (798, 28, 44, 0);
INSERT INTO `fs_users_permission` VALUES (799, 28, 46, 0);
INSERT INTO `fs_users_permission` VALUES (800, 28, 47, 0);
INSERT INTO `fs_users_permission` VALUES (801, 28, 48, 0);
INSERT INTO `fs_users_permission` VALUES (802, 28, 49, 0);
INSERT INTO `fs_users_permission` VALUES (803, 28, 50, 0);
INSERT INTO `fs_users_permission` VALUES (804, 28, 51, 0);
INSERT INTO `fs_users_permission` VALUES (805, 28, 52, 0);
INSERT INTO `fs_users_permission` VALUES (806, 28, 53, 0);
INSERT INTO `fs_users_permission` VALUES (807, 28, 54, 0);
INSERT INTO `fs_users_permission` VALUES (808, 28, 55, 0);
INSERT INTO `fs_users_permission` VALUES (809, 28, 56, 0);
INSERT INTO `fs_users_permission` VALUES (810, 28, 57, 0);
INSERT INTO `fs_users_permission` VALUES (811, 29, 1, 0);
INSERT INTO `fs_users_permission` VALUES (812, 29, 3, 0);
INSERT INTO `fs_users_permission` VALUES (813, 29, 5, 0);
INSERT INTO `fs_users_permission` VALUES (814, 29, 6, 0);
INSERT INTO `fs_users_permission` VALUES (815, 29, 7, 0);
INSERT INTO `fs_users_permission` VALUES (816, 29, 8, 0);
INSERT INTO `fs_users_permission` VALUES (817, 29, 9, 0);
INSERT INTO `fs_users_permission` VALUES (818, 29, 10, 0);
INSERT INTO `fs_users_permission` VALUES (819, 29, 11, 0);
INSERT INTO `fs_users_permission` VALUES (820, 29, 12, 0);
INSERT INTO `fs_users_permission` VALUES (821, 29, 13, 0);
INSERT INTO `fs_users_permission` VALUES (822, 29, 14, 0);
INSERT INTO `fs_users_permission` VALUES (823, 29, 15, 0);
INSERT INTO `fs_users_permission` VALUES (824, 29, 16, 0);
INSERT INTO `fs_users_permission` VALUES (825, 29, 17, 0);
INSERT INTO `fs_users_permission` VALUES (826, 29, 18, 0);
INSERT INTO `fs_users_permission` VALUES (827, 29, 19, 0);
INSERT INTO `fs_users_permission` VALUES (828, 29, 20, 0);
INSERT INTO `fs_users_permission` VALUES (829, 29, 21, 0);
INSERT INTO `fs_users_permission` VALUES (830, 29, 22, 7);
INSERT INTO `fs_users_permission` VALUES (831, 29, 23, 7);
INSERT INTO `fs_users_permission` VALUES (832, 29, 24, 7);
INSERT INTO `fs_users_permission` VALUES (833, 29, 25, 0);
INSERT INTO `fs_users_permission` VALUES (834, 29, 26, 0);
INSERT INTO `fs_users_permission` VALUES (835, 29, 31, 0);
INSERT INTO `fs_users_permission` VALUES (836, 29, 45, 0);
INSERT INTO `fs_users_permission` VALUES (837, 29, 44, 0);
INSERT INTO `fs_users_permission` VALUES (838, 29, 46, 0);
INSERT INTO `fs_users_permission` VALUES (839, 29, 47, 0);
INSERT INTO `fs_users_permission` VALUES (840, 29, 48, 0);
INSERT INTO `fs_users_permission` VALUES (841, 29, 49, 0);
INSERT INTO `fs_users_permission` VALUES (842, 29, 50, 0);
INSERT INTO `fs_users_permission` VALUES (843, 29, 51, 0);
INSERT INTO `fs_users_permission` VALUES (844, 29, 52, 0);
INSERT INTO `fs_users_permission` VALUES (845, 29, 53, 0);
INSERT INTO `fs_users_permission` VALUES (846, 29, 54, 0);
INSERT INTO `fs_users_permission` VALUES (847, 29, 55, 0);
INSERT INTO `fs_users_permission` VALUES (848, 29, 56, 0);
INSERT INTO `fs_users_permission` VALUES (849, 29, 57, 0);
INSERT INTO `fs_users_permission` VALUES (850, 30, 1, 0);
INSERT INTO `fs_users_permission` VALUES (851, 30, 3, 0);
INSERT INTO `fs_users_permission` VALUES (852, 30, 5, 0);
INSERT INTO `fs_users_permission` VALUES (853, 30, 6, 0);
INSERT INTO `fs_users_permission` VALUES (854, 30, 7, 0);
INSERT INTO `fs_users_permission` VALUES (855, 30, 8, 0);
INSERT INTO `fs_users_permission` VALUES (856, 30, 9, 0);
INSERT INTO `fs_users_permission` VALUES (857, 30, 10, 0);
INSERT INTO `fs_users_permission` VALUES (858, 30, 11, 0);
INSERT INTO `fs_users_permission` VALUES (859, 30, 12, 0);
INSERT INTO `fs_users_permission` VALUES (860, 30, 13, 5);
INSERT INTO `fs_users_permission` VALUES (861, 30, 14, 5);
INSERT INTO `fs_users_permission` VALUES (862, 30, 15, 0);
INSERT INTO `fs_users_permission` VALUES (863, 30, 16, 0);
INSERT INTO `fs_users_permission` VALUES (864, 30, 17, 0);
INSERT INTO `fs_users_permission` VALUES (865, 30, 18, 0);
INSERT INTO `fs_users_permission` VALUES (866, 30, 19, 0);
INSERT INTO `fs_users_permission` VALUES (867, 30, 20, 0);
INSERT INTO `fs_users_permission` VALUES (868, 30, 21, 0);
INSERT INTO `fs_users_permission` VALUES (869, 30, 22, 5);
INSERT INTO `fs_users_permission` VALUES (870, 30, 23, 5);
INSERT INTO `fs_users_permission` VALUES (871, 30, 24, 5);
INSERT INTO `fs_users_permission` VALUES (872, 30, 25, 0);
INSERT INTO `fs_users_permission` VALUES (873, 30, 26, 0);
INSERT INTO `fs_users_permission` VALUES (874, 30, 31, 0);
INSERT INTO `fs_users_permission` VALUES (875, 30, 45, 0);
INSERT INTO `fs_users_permission` VALUES (876, 30, 44, 0);
INSERT INTO `fs_users_permission` VALUES (877, 30, 46, 0);
INSERT INTO `fs_users_permission` VALUES (878, 30, 47, 0);
INSERT INTO `fs_users_permission` VALUES (879, 30, 48, 0);
INSERT INTO `fs_users_permission` VALUES (880, 30, 49, 0);
INSERT INTO `fs_users_permission` VALUES (881, 30, 50, 7);
INSERT INTO `fs_users_permission` VALUES (882, 30, 51, 7);
INSERT INTO `fs_users_permission` VALUES (883, 30, 52, 7);
INSERT INTO `fs_users_permission` VALUES (884, 30, 53, 7);
INSERT INTO `fs_users_permission` VALUES (885, 30, 54, 7);
INSERT INTO `fs_users_permission` VALUES (886, 30, 55, 7);
INSERT INTO `fs_users_permission` VALUES (887, 30, 56, 7);
INSERT INTO `fs_users_permission` VALUES (888, 30, 57, 0);
INSERT INTO `fs_users_permission` VALUES (889, 31, 1, 0);
INSERT INTO `fs_users_permission` VALUES (890, 31, 3, 0);
INSERT INTO `fs_users_permission` VALUES (891, 31, 5, 0);
INSERT INTO `fs_users_permission` VALUES (892, 31, 6, 0);
INSERT INTO `fs_users_permission` VALUES (893, 31, 7, 0);
INSERT INTO `fs_users_permission` VALUES (894, 31, 8, 0);
INSERT INTO `fs_users_permission` VALUES (895, 31, 9, 0);
INSERT INTO `fs_users_permission` VALUES (896, 31, 10, 0);
INSERT INTO `fs_users_permission` VALUES (897, 31, 11, 0);
INSERT INTO `fs_users_permission` VALUES (898, 31, 12, 0);
INSERT INTO `fs_users_permission` VALUES (899, 31, 13, 5);
INSERT INTO `fs_users_permission` VALUES (900, 31, 14, 5);
INSERT INTO `fs_users_permission` VALUES (901, 31, 15, 0);
INSERT INTO `fs_users_permission` VALUES (902, 31, 16, 0);
INSERT INTO `fs_users_permission` VALUES (903, 31, 17, 0);
INSERT INTO `fs_users_permission` VALUES (904, 31, 18, 0);
INSERT INTO `fs_users_permission` VALUES (905, 31, 19, 0);
INSERT INTO `fs_users_permission` VALUES (906, 31, 20, 0);
INSERT INTO `fs_users_permission` VALUES (907, 31, 21, 0);
INSERT INTO `fs_users_permission` VALUES (908, 31, 22, 5);
INSERT INTO `fs_users_permission` VALUES (909, 31, 23, 5);
INSERT INTO `fs_users_permission` VALUES (910, 31, 24, 0);
INSERT INTO `fs_users_permission` VALUES (911, 31, 25, 0);
INSERT INTO `fs_users_permission` VALUES (912, 31, 26, 0);
INSERT INTO `fs_users_permission` VALUES (913, 31, 31, 0);
INSERT INTO `fs_users_permission` VALUES (914, 31, 45, 0);
INSERT INTO `fs_users_permission` VALUES (915, 31, 44, 0);
INSERT INTO `fs_users_permission` VALUES (916, 31, 46, 0);
INSERT INTO `fs_users_permission` VALUES (917, 31, 47, 0);
INSERT INTO `fs_users_permission` VALUES (918, 31, 48, 0);
INSERT INTO `fs_users_permission` VALUES (919, 31, 49, 0);
INSERT INTO `fs_users_permission` VALUES (920, 31, 50, 0);
INSERT INTO `fs_users_permission` VALUES (921, 31, 51, 0);
INSERT INTO `fs_users_permission` VALUES (922, 31, 52, 0);
INSERT INTO `fs_users_permission` VALUES (923, 31, 53, 0);
INSERT INTO `fs_users_permission` VALUES (924, 31, 54, 0);
INSERT INTO `fs_users_permission` VALUES (925, 31, 55, 0);
INSERT INTO `fs_users_permission` VALUES (926, 31, 56, 0);
INSERT INTO `fs_users_permission` VALUES (927, 31, 57, 0);
INSERT INTO `fs_users_permission` VALUES (928, 32, 1, 0);
INSERT INTO `fs_users_permission` VALUES (929, 32, 3, 0);
INSERT INTO `fs_users_permission` VALUES (930, 32, 5, 0);
INSERT INTO `fs_users_permission` VALUES (931, 32, 6, 0);
INSERT INTO `fs_users_permission` VALUES (932, 32, 7, 0);
INSERT INTO `fs_users_permission` VALUES (933, 32, 8, 0);
INSERT INTO `fs_users_permission` VALUES (934, 32, 9, 0);
INSERT INTO `fs_users_permission` VALUES (935, 32, 10, 0);
INSERT INTO `fs_users_permission` VALUES (936, 32, 11, 0);
INSERT INTO `fs_users_permission` VALUES (937, 32, 12, 0);
INSERT INTO `fs_users_permission` VALUES (938, 32, 13, 0);
INSERT INTO `fs_users_permission` VALUES (939, 32, 14, 0);
INSERT INTO `fs_users_permission` VALUES (940, 32, 15, 0);
INSERT INTO `fs_users_permission` VALUES (941, 32, 16, 0);
INSERT INTO `fs_users_permission` VALUES (942, 32, 17, 0);
INSERT INTO `fs_users_permission` VALUES (943, 32, 18, 0);
INSERT INTO `fs_users_permission` VALUES (944, 32, 19, 0);
INSERT INTO `fs_users_permission` VALUES (945, 32, 20, 0);
INSERT INTO `fs_users_permission` VALUES (946, 32, 21, 0);
INSERT INTO `fs_users_permission` VALUES (947, 32, 22, 5);
INSERT INTO `fs_users_permission` VALUES (948, 32, 23, 5);
INSERT INTO `fs_users_permission` VALUES (949, 32, 24, 0);
INSERT INTO `fs_users_permission` VALUES (950, 32, 25, 0);
INSERT INTO `fs_users_permission` VALUES (951, 32, 26, 0);
INSERT INTO `fs_users_permission` VALUES (952, 32, 31, 0);
INSERT INTO `fs_users_permission` VALUES (953, 32, 45, 0);
INSERT INTO `fs_users_permission` VALUES (954, 32, 44, 0);
INSERT INTO `fs_users_permission` VALUES (955, 32, 46, 0);
INSERT INTO `fs_users_permission` VALUES (956, 32, 47, 0);
INSERT INTO `fs_users_permission` VALUES (957, 32, 48, 0);
INSERT INTO `fs_users_permission` VALUES (958, 32, 49, 0);
INSERT INTO `fs_users_permission` VALUES (959, 32, 50, 0);
INSERT INTO `fs_users_permission` VALUES (960, 32, 51, 0);
INSERT INTO `fs_users_permission` VALUES (961, 32, 52, 0);
INSERT INTO `fs_users_permission` VALUES (962, 32, 53, 0);
INSERT INTO `fs_users_permission` VALUES (963, 32, 54, 0);
INSERT INTO `fs_users_permission` VALUES (964, 32, 55, 0);
INSERT INTO `fs_users_permission` VALUES (965, 32, 56, 0);
INSERT INTO `fs_users_permission` VALUES (966, 32, 57, 0);
INSERT INTO `fs_users_permission` VALUES (967, 33, 1, 0);
INSERT INTO `fs_users_permission` VALUES (968, 33, 3, 0);
INSERT INTO `fs_users_permission` VALUES (969, 33, 5, 0);
INSERT INTO `fs_users_permission` VALUES (970, 33, 6, 0);
INSERT INTO `fs_users_permission` VALUES (971, 33, 7, 0);
INSERT INTO `fs_users_permission` VALUES (972, 33, 8, 0);
INSERT INTO `fs_users_permission` VALUES (973, 33, 9, 0);
INSERT INTO `fs_users_permission` VALUES (974, 33, 10, 7);
INSERT INTO `fs_users_permission` VALUES (975, 33, 11, 5);
INSERT INTO `fs_users_permission` VALUES (976, 33, 12, 0);
INSERT INTO `fs_users_permission` VALUES (977, 33, 13, 7);
INSERT INTO `fs_users_permission` VALUES (978, 33, 14, 7);
INSERT INTO `fs_users_permission` VALUES (979, 33, 15, 0);
INSERT INTO `fs_users_permission` VALUES (980, 33, 16, 0);
INSERT INTO `fs_users_permission` VALUES (981, 33, 17, 0);
INSERT INTO `fs_users_permission` VALUES (982, 33, 18, 0);
INSERT INTO `fs_users_permission` VALUES (983, 33, 19, 0);
INSERT INTO `fs_users_permission` VALUES (984, 33, 20, 0);
INSERT INTO `fs_users_permission` VALUES (985, 33, 21, 0);
INSERT INTO `fs_users_permission` VALUES (986, 33, 22, 5);
INSERT INTO `fs_users_permission` VALUES (987, 33, 23, 5);
INSERT INTO `fs_users_permission` VALUES (988, 33, 24, 0);
INSERT INTO `fs_users_permission` VALUES (989, 33, 25, 0);
INSERT INTO `fs_users_permission` VALUES (990, 33, 26, 0);
INSERT INTO `fs_users_permission` VALUES (991, 33, 31, 0);
INSERT INTO `fs_users_permission` VALUES (992, 33, 45, 0);
INSERT INTO `fs_users_permission` VALUES (993, 33, 44, 0);
INSERT INTO `fs_users_permission` VALUES (994, 33, 46, 0);
INSERT INTO `fs_users_permission` VALUES (995, 33, 47, 0);
INSERT INTO `fs_users_permission` VALUES (996, 33, 48, 0);
INSERT INTO `fs_users_permission` VALUES (997, 33, 49, 0);
INSERT INTO `fs_users_permission` VALUES (998, 33, 50, 7);
INSERT INTO `fs_users_permission` VALUES (999, 33, 51, 7);
INSERT INTO `fs_users_permission` VALUES (1000, 33, 52, 7);
INSERT INTO `fs_users_permission` VALUES (1001, 33, 53, 7);
INSERT INTO `fs_users_permission` VALUES (1002, 33, 54, 7);
INSERT INTO `fs_users_permission` VALUES (1003, 33, 55, 7);
INSERT INTO `fs_users_permission` VALUES (1004, 33, 56, 7);
INSERT INTO `fs_users_permission` VALUES (1005, 33, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1006, 34, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1007, 34, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1008, 34, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1009, 34, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1010, 34, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1011, 34, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1012, 34, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1013, 34, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1014, 34, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1015, 34, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1016, 34, 13, 0);
INSERT INTO `fs_users_permission` VALUES (1017, 34, 14, 0);
INSERT INTO `fs_users_permission` VALUES (1018, 34, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1019, 34, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1020, 34, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1021, 34, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1022, 34, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1023, 34, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1024, 34, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1025, 34, 22, 5);
INSERT INTO `fs_users_permission` VALUES (1026, 34, 23, 5);
INSERT INTO `fs_users_permission` VALUES (1027, 34, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1028, 34, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1029, 34, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1030, 34, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1031, 34, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1032, 34, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1033, 34, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1034, 34, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1035, 34, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1036, 34, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1037, 34, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1038, 34, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1039, 34, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1040, 34, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1041, 34, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1042, 34, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1043, 34, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1044, 34, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1045, 35, 1, 7);
INSERT INTO `fs_users_permission` VALUES (1046, 35, 3, 7);
INSERT INTO `fs_users_permission` VALUES (1047, 35, 5, 7);
INSERT INTO `fs_users_permission` VALUES (1048, 35, 6, 7);
INSERT INTO `fs_users_permission` VALUES (1049, 35, 7, 7);
INSERT INTO `fs_users_permission` VALUES (1050, 35, 8, 7);
INSERT INTO `fs_users_permission` VALUES (1051, 35, 9, 7);
INSERT INTO `fs_users_permission` VALUES (1052, 35, 10, 7);
INSERT INTO `fs_users_permission` VALUES (1053, 35, 11, 7);
INSERT INTO `fs_users_permission` VALUES (1054, 35, 12, 7);
INSERT INTO `fs_users_permission` VALUES (1055, 35, 13, 7);
INSERT INTO `fs_users_permission` VALUES (1056, 35, 14, 7);
INSERT INTO `fs_users_permission` VALUES (1057, 35, 15, 7);
INSERT INTO `fs_users_permission` VALUES (1058, 35, 16, 7);
INSERT INTO `fs_users_permission` VALUES (1059, 35, 17, 7);
INSERT INTO `fs_users_permission` VALUES (1060, 35, 18, 7);
INSERT INTO `fs_users_permission` VALUES (1061, 35, 19, 7);
INSERT INTO `fs_users_permission` VALUES (1062, 35, 20, 7);
INSERT INTO `fs_users_permission` VALUES (1063, 35, 21, 7);
INSERT INTO `fs_users_permission` VALUES (1064, 35, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1065, 35, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1066, 35, 24, 7);
INSERT INTO `fs_users_permission` VALUES (1067, 35, 25, 7);
INSERT INTO `fs_users_permission` VALUES (1068, 35, 26, 7);
INSERT INTO `fs_users_permission` VALUES (1069, 35, 31, 7);
INSERT INTO `fs_users_permission` VALUES (1070, 35, 45, 7);
INSERT INTO `fs_users_permission` VALUES (1071, 35, 44, 7);
INSERT INTO `fs_users_permission` VALUES (1072, 35, 46, 7);
INSERT INTO `fs_users_permission` VALUES (1073, 35, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1074, 35, 48, 7);
INSERT INTO `fs_users_permission` VALUES (1075, 35, 49, 7);
INSERT INTO `fs_users_permission` VALUES (1076, 35, 50, 7);
INSERT INTO `fs_users_permission` VALUES (1077, 35, 51, 7);
INSERT INTO `fs_users_permission` VALUES (1078, 35, 52, 7);
INSERT INTO `fs_users_permission` VALUES (1079, 35, 53, 7);
INSERT INTO `fs_users_permission` VALUES (1080, 35, 54, 7);
INSERT INTO `fs_users_permission` VALUES (1081, 35, 55, 7);
INSERT INTO `fs_users_permission` VALUES (1082, 35, 56, 7);
INSERT INTO `fs_users_permission` VALUES (1083, 35, 57, 7);
INSERT INTO `fs_users_permission` VALUES (1084, 36, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1085, 36, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1086, 36, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1087, 36, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1088, 36, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1089, 36, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1090, 36, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1091, 36, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1092, 36, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1093, 36, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1094, 36, 13, 5);
INSERT INTO `fs_users_permission` VALUES (1095, 36, 14, 5);
INSERT INTO `fs_users_permission` VALUES (1096, 36, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1097, 36, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1098, 36, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1099, 36, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1100, 36, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1101, 36, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1102, 36, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1103, 36, 22, 0);
INSERT INTO `fs_users_permission` VALUES (1104, 36, 23, 0);
INSERT INTO `fs_users_permission` VALUES (1105, 36, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1106, 36, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1107, 36, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1108, 36, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1109, 36, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1110, 36, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1111, 36, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1112, 36, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1113, 36, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1114, 36, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1115, 36, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1116, 36, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1117, 36, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1118, 36, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1119, 36, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1120, 36, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1121, 36, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1122, 36, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1123, 37, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1124, 37, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1125, 37, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1126, 37, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1127, 37, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1128, 37, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1129, 37, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1130, 37, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1131, 37, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1132, 37, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1133, 37, 13, 7);
INSERT INTO `fs_users_permission` VALUES (1134, 37, 14, 7);
INSERT INTO `fs_users_permission` VALUES (1135, 37, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1136, 37, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1137, 37, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1138, 37, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1139, 37, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1140, 37, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1141, 37, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1142, 37, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1143, 37, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1144, 37, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1145, 37, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1146, 37, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1147, 37, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1148, 37, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1149, 37, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1150, 37, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1151, 37, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1152, 37, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1153, 37, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1154, 37, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1155, 37, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1156, 37, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1157, 37, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1158, 37, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1159, 37, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1160, 37, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1161, 37, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1162, 38, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1163, 38, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1164, 38, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1165, 38, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1166, 38, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1167, 38, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1168, 38, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1169, 38, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1170, 38, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1171, 38, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1172, 38, 13, 7);
INSERT INTO `fs_users_permission` VALUES (1173, 38, 14, 7);
INSERT INTO `fs_users_permission` VALUES (1174, 38, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1175, 38, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1176, 38, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1177, 38, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1178, 38, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1179, 38, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1180, 38, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1181, 38, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1182, 38, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1183, 38, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1184, 38, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1185, 38, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1186, 38, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1187, 38, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1188, 38, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1189, 38, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1190, 38, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1191, 38, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1192, 38, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1193, 38, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1194, 38, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1195, 38, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1196, 38, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1197, 38, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1198, 38, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1199, 38, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1200, 38, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1201, 40, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1202, 40, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1203, 40, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1204, 40, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1205, 40, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1206, 40, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1207, 40, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1208, 40, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1209, 40, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1210, 40, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1211, 40, 13, 0);
INSERT INTO `fs_users_permission` VALUES (1212, 40, 14, 0);
INSERT INTO `fs_users_permission` VALUES (1213, 40, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1214, 40, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1215, 40, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1216, 40, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1217, 40, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1218, 40, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1219, 40, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1220, 40, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1221, 40, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1222, 40, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1223, 40, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1224, 40, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1225, 40, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1226, 40, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1227, 40, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1228, 40, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1229, 40, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1230, 40, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1231, 40, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1232, 40, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1233, 40, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1234, 40, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1235, 40, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1236, 40, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1237, 40, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1238, 40, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1239, 40, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1240, 41, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1241, 41, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1242, 41, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1243, 41, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1244, 41, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1245, 41, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1246, 41, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1247, 41, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1248, 41, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1249, 41, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1250, 41, 13, 0);
INSERT INTO `fs_users_permission` VALUES (1251, 41, 14, 0);
INSERT INTO `fs_users_permission` VALUES (1252, 41, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1253, 41, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1254, 41, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1255, 41, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1256, 41, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1257, 41, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1258, 41, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1259, 41, 22, 5);
INSERT INTO `fs_users_permission` VALUES (1260, 41, 23, 5);
INSERT INTO `fs_users_permission` VALUES (1261, 41, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1262, 41, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1263, 41, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1264, 41, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1265, 41, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1266, 41, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1267, 41, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1268, 41, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1269, 41, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1270, 41, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1271, 41, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1272, 41, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1273, 41, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1274, 41, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1275, 41, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1276, 41, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1277, 41, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1278, 41, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1279, 42, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1280, 42, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1281, 42, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1282, 42, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1283, 42, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1284, 42, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1285, 42, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1286, 42, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1287, 42, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1288, 42, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1289, 42, 13, 5);
INSERT INTO `fs_users_permission` VALUES (1290, 42, 14, 5);
INSERT INTO `fs_users_permission` VALUES (1291, 42, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1292, 42, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1293, 42, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1294, 42, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1295, 42, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1296, 42, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1297, 42, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1298, 42, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1299, 42, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1300, 42, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1301, 42, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1302, 42, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1303, 42, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1304, 42, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1305, 42, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1306, 42, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1307, 42, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1308, 42, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1309, 42, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1310, 42, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1311, 42, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1312, 42, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1313, 42, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1314, 42, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1315, 42, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1316, 42, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1317, 42, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1318, 44, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1319, 44, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1320, 44, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1321, 44, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1322, 44, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1323, 44, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1324, 44, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1325, 44, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1326, 44, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1327, 44, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1328, 44, 13, 0);
INSERT INTO `fs_users_permission` VALUES (1329, 44, 14, 0);
INSERT INTO `fs_users_permission` VALUES (1330, 44, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1331, 44, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1332, 44, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1333, 44, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1334, 44, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1335, 44, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1336, 44, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1337, 44, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1338, 44, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1339, 44, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1340, 44, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1341, 44, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1342, 44, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1343, 44, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1344, 44, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1345, 44, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1346, 44, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1347, 44, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1348, 44, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1349, 44, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1350, 44, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1351, 44, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1352, 44, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1353, 44, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1354, 44, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1355, 44, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1356, 44, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1357, 45, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1358, 45, 3, 7);
INSERT INTO `fs_users_permission` VALUES (1359, 45, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1360, 45, 6, 7);
INSERT INTO `fs_users_permission` VALUES (1361, 45, 7, 7);
INSERT INTO `fs_users_permission` VALUES (1362, 45, 8, 7);
INSERT INTO `fs_users_permission` VALUES (1363, 45, 9, 7);
INSERT INTO `fs_users_permission` VALUES (1364, 45, 10, 7);
INSERT INTO `fs_users_permission` VALUES (1365, 45, 11, 7);
INSERT INTO `fs_users_permission` VALUES (1366, 45, 12, 7);
INSERT INTO `fs_users_permission` VALUES (1367, 45, 13, 7);
INSERT INTO `fs_users_permission` VALUES (1368, 45, 14, 7);
INSERT INTO `fs_users_permission` VALUES (1369, 45, 15, 7);
INSERT INTO `fs_users_permission` VALUES (1370, 45, 16, 7);
INSERT INTO `fs_users_permission` VALUES (1371, 45, 17, 7);
INSERT INTO `fs_users_permission` VALUES (1372, 45, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1373, 45, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1374, 45, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1375, 45, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1376, 45, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1377, 45, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1378, 45, 24, 7);
INSERT INTO `fs_users_permission` VALUES (1379, 45, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1380, 45, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1381, 45, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1382, 45, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1383, 45, 44, 7);
INSERT INTO `fs_users_permission` VALUES (1384, 45, 46, 7);
INSERT INTO `fs_users_permission` VALUES (1385, 45, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1386, 45, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1387, 45, 49, 7);
INSERT INTO `fs_users_permission` VALUES (1388, 45, 50, 7);
INSERT INTO `fs_users_permission` VALUES (1389, 45, 51, 7);
INSERT INTO `fs_users_permission` VALUES (1390, 45, 52, 7);
INSERT INTO `fs_users_permission` VALUES (1391, 45, 53, 7);
INSERT INTO `fs_users_permission` VALUES (1392, 45, 54, 7);
INSERT INTO `fs_users_permission` VALUES (1393, 45, 55, 7);
INSERT INTO `fs_users_permission` VALUES (1394, 45, 56, 7);
INSERT INTO `fs_users_permission` VALUES (1395, 45, 57, 7);
INSERT INTO `fs_users_permission` VALUES (1396, 47, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1397, 47, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1398, 47, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1399, 47, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1400, 47, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1401, 47, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1402, 47, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1403, 47, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1404, 47, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1405, 47, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1406, 47, 13, 7);
INSERT INTO `fs_users_permission` VALUES (1407, 47, 14, 7);
INSERT INTO `fs_users_permission` VALUES (1408, 47, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1409, 47, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1410, 47, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1411, 47, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1412, 47, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1413, 47, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1414, 47, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1415, 47, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1416, 47, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1417, 47, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1418, 47, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1419, 47, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1420, 47, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1421, 47, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1422, 47, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1423, 47, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1424, 47, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1425, 47, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1426, 47, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1427, 47, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1428, 47, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1429, 47, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1430, 47, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1431, 47, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1432, 47, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1433, 47, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1434, 47, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1435, 48, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1436, 48, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1437, 48, 5, 7);
INSERT INTO `fs_users_permission` VALUES (1438, 48, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1439, 48, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1440, 48, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1441, 48, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1442, 48, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1443, 48, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1444, 48, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1445, 48, 13, 7);
INSERT INTO `fs_users_permission` VALUES (1446, 48, 14, 7);
INSERT INTO `fs_users_permission` VALUES (1447, 48, 15, 7);
INSERT INTO `fs_users_permission` VALUES (1448, 48, 16, 7);
INSERT INTO `fs_users_permission` VALUES (1449, 48, 17, 7);
INSERT INTO `fs_users_permission` VALUES (1450, 48, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1451, 48, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1452, 48, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1453, 48, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1454, 48, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1455, 48, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1456, 48, 24, 7);
INSERT INTO `fs_users_permission` VALUES (1457, 48, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1458, 48, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1459, 48, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1460, 48, 45, 7);
INSERT INTO `fs_users_permission` VALUES (1461, 48, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1462, 48, 46, 7);
INSERT INTO `fs_users_permission` VALUES (1463, 48, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1464, 48, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1465, 48, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1466, 48, 50, 7);
INSERT INTO `fs_users_permission` VALUES (1467, 48, 51, 7);
INSERT INTO `fs_users_permission` VALUES (1468, 48, 52, 7);
INSERT INTO `fs_users_permission` VALUES (1469, 48, 53, 7);
INSERT INTO `fs_users_permission` VALUES (1470, 48, 54, 7);
INSERT INTO `fs_users_permission` VALUES (1471, 48, 55, 7);
INSERT INTO `fs_users_permission` VALUES (1472, 48, 56, 7);
INSERT INTO `fs_users_permission` VALUES (1473, 48, 57, 7);
INSERT INTO `fs_users_permission` VALUES (1474, 49, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1475, 49, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1476, 49, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1477, 49, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1478, 49, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1479, 49, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1480, 49, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1481, 49, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1482, 49, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1483, 49, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1484, 49, 13, 5);
INSERT INTO `fs_users_permission` VALUES (1485, 49, 14, 5);
INSERT INTO `fs_users_permission` VALUES (1486, 49, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1487, 49, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1488, 49, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1489, 49, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1490, 49, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1491, 49, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1492, 49, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1493, 49, 22, 5);
INSERT INTO `fs_users_permission` VALUES (1494, 49, 23, 5);
INSERT INTO `fs_users_permission` VALUES (1495, 49, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1496, 49, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1497, 49, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1498, 49, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1499, 49, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1500, 49, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1501, 49, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1502, 49, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1503, 49, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1504, 49, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1505, 49, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1506, 49, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1507, 49, 52, 5);
INSERT INTO `fs_users_permission` VALUES (1508, 49, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1509, 49, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1510, 49, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1511, 49, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1512, 49, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1513, 50, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1514, 50, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1515, 50, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1516, 50, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1517, 50, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1518, 50, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1519, 50, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1520, 50, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1521, 50, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1522, 50, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1523, 50, 13, 0);
INSERT INTO `fs_users_permission` VALUES (1524, 50, 14, 0);
INSERT INTO `fs_users_permission` VALUES (1525, 50, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1526, 50, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1527, 50, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1528, 50, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1529, 50, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1530, 50, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1531, 50, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1532, 50, 22, 5);
INSERT INTO `fs_users_permission` VALUES (1533, 50, 23, 0);
INSERT INTO `fs_users_permission` VALUES (1534, 50, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1535, 50, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1536, 50, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1537, 50, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1538, 50, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1539, 50, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1540, 50, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1541, 50, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1542, 50, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1543, 50, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1544, 50, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1545, 50, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1546, 50, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1547, 50, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1548, 50, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1549, 50, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1550, 50, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1551, 50, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1552, 55, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1553, 55, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1554, 55, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1555, 55, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1556, 55, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1557, 55, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1558, 55, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1559, 55, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1560, 55, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1561, 55, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1562, 55, 13, 7);
INSERT INTO `fs_users_permission` VALUES (1563, 55, 14, 7);
INSERT INTO `fs_users_permission` VALUES (1564, 55, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1565, 55, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1566, 55, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1567, 55, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1568, 55, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1569, 55, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1570, 55, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1571, 55, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1572, 55, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1573, 55, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1574, 55, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1575, 55, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1576, 55, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1577, 55, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1578, 55, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1579, 55, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1580, 55, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1581, 55, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1582, 55, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1583, 55, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1584, 55, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1585, 55, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1586, 55, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1587, 55, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1588, 55, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1589, 55, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1590, 55, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1591, 57, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1592, 57, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1593, 57, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1594, 57, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1595, 57, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1596, 57, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1597, 57, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1598, 57, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1599, 57, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1600, 57, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1601, 57, 13, 7);
INSERT INTO `fs_users_permission` VALUES (1602, 57, 14, 7);
INSERT INTO `fs_users_permission` VALUES (1603, 57, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1604, 57, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1605, 57, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1606, 57, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1607, 57, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1608, 57, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1609, 57, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1610, 57, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1611, 57, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1612, 57, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1613, 57, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1614, 57, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1615, 57, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1616, 57, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1617, 57, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1618, 57, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1619, 57, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1620, 57, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1621, 57, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1622, 57, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1623, 57, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1624, 57, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1625, 57, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1626, 57, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1627, 57, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1628, 57, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1629, 57, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1630, 58, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1631, 58, 3, 0);
INSERT INTO `fs_users_permission` VALUES (1632, 58, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1633, 58, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1634, 58, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1635, 58, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1636, 58, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1637, 58, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1638, 58, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1639, 58, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1640, 58, 13, 7);
INSERT INTO `fs_users_permission` VALUES (1641, 58, 14, 7);
INSERT INTO `fs_users_permission` VALUES (1642, 58, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1643, 58, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1644, 58, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1645, 58, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1646, 58, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1647, 58, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1648, 58, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1649, 58, 22, 7);
INSERT INTO `fs_users_permission` VALUES (1650, 58, 23, 7);
INSERT INTO `fs_users_permission` VALUES (1651, 58, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1652, 58, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1653, 58, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1654, 58, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1655, 58, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1656, 58, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1657, 58, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1658, 58, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1659, 58, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1660, 58, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1661, 58, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1662, 58, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1663, 58, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1664, 58, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1665, 58, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1666, 58, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1667, 58, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1668, 58, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1669, 61, 1, 3);
INSERT INTO `fs_users_permission` VALUES (1670, 61, 3, 3);
INSERT INTO `fs_users_permission` VALUES (1671, 61, 5, 3);
INSERT INTO `fs_users_permission` VALUES (1672, 61, 6, 3);
INSERT INTO `fs_users_permission` VALUES (1673, 61, 7, 3);
INSERT INTO `fs_users_permission` VALUES (1674, 61, 8, 3);
INSERT INTO `fs_users_permission` VALUES (1675, 61, 9, 3);
INSERT INTO `fs_users_permission` VALUES (1676, 61, 10, 3);
INSERT INTO `fs_users_permission` VALUES (1677, 61, 11, 3);
INSERT INTO `fs_users_permission` VALUES (1678, 61, 12, 3);
INSERT INTO `fs_users_permission` VALUES (1679, 61, 13, 3);
INSERT INTO `fs_users_permission` VALUES (1680, 61, 14, 3);
INSERT INTO `fs_users_permission` VALUES (1681, 61, 15, 3);
INSERT INTO `fs_users_permission` VALUES (1682, 61, 16, 3);
INSERT INTO `fs_users_permission` VALUES (1683, 61, 17, 3);
INSERT INTO `fs_users_permission` VALUES (1684, 61, 18, 3);
INSERT INTO `fs_users_permission` VALUES (1685, 61, 19, 3);
INSERT INTO `fs_users_permission` VALUES (1686, 61, 20, 3);
INSERT INTO `fs_users_permission` VALUES (1687, 61, 21, 3);
INSERT INTO `fs_users_permission` VALUES (1688, 61, 22, 3);
INSERT INTO `fs_users_permission` VALUES (1689, 61, 23, 3);
INSERT INTO `fs_users_permission` VALUES (1690, 61, 24, 3);
INSERT INTO `fs_users_permission` VALUES (1691, 61, 25, 3);
INSERT INTO `fs_users_permission` VALUES (1692, 61, 26, 3);
INSERT INTO `fs_users_permission` VALUES (1693, 61, 31, 3);
INSERT INTO `fs_users_permission` VALUES (1694, 61, 45, 3);
INSERT INTO `fs_users_permission` VALUES (1695, 61, 44, 3);
INSERT INTO `fs_users_permission` VALUES (1696, 61, 46, 3);
INSERT INTO `fs_users_permission` VALUES (1697, 61, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1698, 61, 48, 3);
INSERT INTO `fs_users_permission` VALUES (1699, 61, 49, 3);
INSERT INTO `fs_users_permission` VALUES (1700, 61, 50, 3);
INSERT INTO `fs_users_permission` VALUES (1701, 61, 51, 3);
INSERT INTO `fs_users_permission` VALUES (1702, 61, 52, 3);
INSERT INTO `fs_users_permission` VALUES (1703, 61, 53, 3);
INSERT INTO `fs_users_permission` VALUES (1704, 61, 54, 3);
INSERT INTO `fs_users_permission` VALUES (1705, 61, 55, 3);
INSERT INTO `fs_users_permission` VALUES (1706, 61, 56, 3);
INSERT INTO `fs_users_permission` VALUES (1707, 61, 57, 3);
INSERT INTO `fs_users_permission` VALUES (1708, 62, 1, 3);
INSERT INTO `fs_users_permission` VALUES (1709, 62, 3, 3);
INSERT INTO `fs_users_permission` VALUES (1710, 62, 5, 3);
INSERT INTO `fs_users_permission` VALUES (1711, 62, 6, 3);
INSERT INTO `fs_users_permission` VALUES (1712, 62, 7, 3);
INSERT INTO `fs_users_permission` VALUES (1713, 62, 8, 3);
INSERT INTO `fs_users_permission` VALUES (1714, 62, 9, 3);
INSERT INTO `fs_users_permission` VALUES (1715, 62, 10, 3);
INSERT INTO `fs_users_permission` VALUES (1716, 62, 11, 3);
INSERT INTO `fs_users_permission` VALUES (1717, 62, 12, 3);
INSERT INTO `fs_users_permission` VALUES (1718, 62, 13, 3);
INSERT INTO `fs_users_permission` VALUES (1719, 62, 14, 3);
INSERT INTO `fs_users_permission` VALUES (1720, 62, 15, 3);
INSERT INTO `fs_users_permission` VALUES (1721, 62, 16, 3);
INSERT INTO `fs_users_permission` VALUES (1722, 62, 17, 3);
INSERT INTO `fs_users_permission` VALUES (1723, 62, 18, 3);
INSERT INTO `fs_users_permission` VALUES (1724, 62, 19, 3);
INSERT INTO `fs_users_permission` VALUES (1725, 62, 20, 3);
INSERT INTO `fs_users_permission` VALUES (1726, 62, 21, 3);
INSERT INTO `fs_users_permission` VALUES (1727, 62, 22, 3);
INSERT INTO `fs_users_permission` VALUES (1728, 62, 23, 3);
INSERT INTO `fs_users_permission` VALUES (1729, 62, 24, 3);
INSERT INTO `fs_users_permission` VALUES (1730, 62, 25, 3);
INSERT INTO `fs_users_permission` VALUES (1731, 62, 26, 3);
INSERT INTO `fs_users_permission` VALUES (1732, 62, 31, 3);
INSERT INTO `fs_users_permission` VALUES (1733, 62, 45, 3);
INSERT INTO `fs_users_permission` VALUES (1734, 62, 44, 3);
INSERT INTO `fs_users_permission` VALUES (1735, 62, 46, 3);
INSERT INTO `fs_users_permission` VALUES (1736, 62, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1737, 62, 48, 3);
INSERT INTO `fs_users_permission` VALUES (1738, 62, 49, 3);
INSERT INTO `fs_users_permission` VALUES (1739, 62, 50, 3);
INSERT INTO `fs_users_permission` VALUES (1740, 62, 51, 3);
INSERT INTO `fs_users_permission` VALUES (1741, 62, 52, 3);
INSERT INTO `fs_users_permission` VALUES (1742, 62, 53, 3);
INSERT INTO `fs_users_permission` VALUES (1743, 62, 54, 3);
INSERT INTO `fs_users_permission` VALUES (1744, 62, 55, 3);
INSERT INTO `fs_users_permission` VALUES (1745, 62, 56, 3);
INSERT INTO `fs_users_permission` VALUES (1746, 62, 57, 3);
INSERT INTO `fs_users_permission` VALUES (1747, 63, 1, 3);
INSERT INTO `fs_users_permission` VALUES (1748, 63, 3, 3);
INSERT INTO `fs_users_permission` VALUES (1749, 63, 5, 3);
INSERT INTO `fs_users_permission` VALUES (1750, 63, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1751, 63, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1752, 63, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1753, 63, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1754, 63, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1755, 63, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1756, 63, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1757, 63, 13, 0);
INSERT INTO `fs_users_permission` VALUES (1758, 63, 14, 0);
INSERT INTO `fs_users_permission` VALUES (1759, 63, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1760, 63, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1761, 63, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1762, 63, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1763, 63, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1764, 63, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1765, 63, 21, 0);
INSERT INTO `fs_users_permission` VALUES (1766, 63, 22, 0);
INSERT INTO `fs_users_permission` VALUES (1767, 63, 23, 0);
INSERT INTO `fs_users_permission` VALUES (1768, 63, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1769, 63, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1770, 63, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1771, 63, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1772, 63, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1773, 63, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1774, 63, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1775, 63, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1776, 63, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1777, 63, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1778, 63, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1779, 63, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1780, 63, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1781, 63, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1782, 63, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1783, 63, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1784, 63, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1785, 63, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1786, 64, 1, 3);
INSERT INTO `fs_users_permission` VALUES (1787, 64, 3, 3);
INSERT INTO `fs_users_permission` VALUES (1788, 64, 5, 3);
INSERT INTO `fs_users_permission` VALUES (1789, 64, 6, 3);
INSERT INTO `fs_users_permission` VALUES (1790, 64, 7, 3);
INSERT INTO `fs_users_permission` VALUES (1791, 64, 8, 3);
INSERT INTO `fs_users_permission` VALUES (1792, 64, 9, 3);
INSERT INTO `fs_users_permission` VALUES (1793, 64, 10, 3);
INSERT INTO `fs_users_permission` VALUES (1794, 64, 11, 3);
INSERT INTO `fs_users_permission` VALUES (1795, 64, 12, 0);
INSERT INTO `fs_users_permission` VALUES (1796, 64, 13, 3);
INSERT INTO `fs_users_permission` VALUES (1797, 64, 14, 3);
INSERT INTO `fs_users_permission` VALUES (1798, 64, 15, 3);
INSERT INTO `fs_users_permission` VALUES (1799, 64, 16, 0);
INSERT INTO `fs_users_permission` VALUES (1800, 64, 17, 0);
INSERT INTO `fs_users_permission` VALUES (1801, 64, 18, 0);
INSERT INTO `fs_users_permission` VALUES (1802, 64, 19, 3);
INSERT INTO `fs_users_permission` VALUES (1803, 64, 20, 3);
INSERT INTO `fs_users_permission` VALUES (1804, 64, 21, 3);
INSERT INTO `fs_users_permission` VALUES (1805, 64, 22, 3);
INSERT INTO `fs_users_permission` VALUES (1806, 64, 23, 3);
INSERT INTO `fs_users_permission` VALUES (1807, 64, 24, 3);
INSERT INTO `fs_users_permission` VALUES (1808, 64, 25, 3);
INSERT INTO `fs_users_permission` VALUES (1809, 64, 26, 3);
INSERT INTO `fs_users_permission` VALUES (1810, 64, 31, 0);
INSERT INTO `fs_users_permission` VALUES (1811, 64, 45, 3);
INSERT INTO `fs_users_permission` VALUES (1812, 64, 44, 0);
INSERT INTO `fs_users_permission` VALUES (1813, 64, 46, 0);
INSERT INTO `fs_users_permission` VALUES (1814, 64, 47, 0);
INSERT INTO `fs_users_permission` VALUES (1815, 64, 48, 3);
INSERT INTO `fs_users_permission` VALUES (1816, 64, 49, 0);
INSERT INTO `fs_users_permission` VALUES (1817, 64, 50, 3);
INSERT INTO `fs_users_permission` VALUES (1818, 64, 51, 3);
INSERT INTO `fs_users_permission` VALUES (1819, 64, 52, 0);
INSERT INTO `fs_users_permission` VALUES (1820, 64, 53, 0);
INSERT INTO `fs_users_permission` VALUES (1821, 64, 54, 3);
INSERT INTO `fs_users_permission` VALUES (1822, 64, 55, 0);
INSERT INTO `fs_users_permission` VALUES (1823, 64, 56, 0);
INSERT INTO `fs_users_permission` VALUES (1824, 64, 57, 0);
INSERT INTO `fs_users_permission` VALUES (1825, 64, 58, 3);
INSERT INTO `fs_users_permission` VALUES (1826, 64, 59, 3);
INSERT INTO `fs_users_permission` VALUES (1827, 64, 60, 3);
INSERT INTO `fs_users_permission` VALUES (1828, 67, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1829, 67, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1830, 67, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1831, 67, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1832, 67, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1833, 67, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1834, 67, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1835, 67, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1836, 67, 13, 0);
INSERT INTO `fs_users_permission` VALUES (1837, 67, 14, 0);
INSERT INTO `fs_users_permission` VALUES (1838, 67, 15, 3);
INSERT INTO `fs_users_permission` VALUES (1839, 67, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1840, 67, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1841, 67, 21, 3);
INSERT INTO `fs_users_permission` VALUES (1842, 67, 22, 0);
INSERT INTO `fs_users_permission` VALUES (1843, 67, 23, 0);
INSERT INTO `fs_users_permission` VALUES (1844, 67, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1845, 67, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1846, 67, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1847, 67, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1848, 67, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1849, 67, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1850, 67, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1851, 67, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1852, 67, 58, 0);
INSERT INTO `fs_users_permission` VALUES (1853, 67, 59, 0);
INSERT INTO `fs_users_permission` VALUES (1854, 67, 60, 0);
INSERT INTO `fs_users_permission` VALUES (1855, 68, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1856, 68, 5, 3);
INSERT INTO `fs_users_permission` VALUES (1857, 68, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1858, 68, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1859, 68, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1860, 68, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1861, 68, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1862, 68, 11, 3);
INSERT INTO `fs_users_permission` VALUES (1863, 68, 13, 3);
INSERT INTO `fs_users_permission` VALUES (1864, 68, 14, 3);
INSERT INTO `fs_users_permission` VALUES (1865, 68, 15, 3);
INSERT INTO `fs_users_permission` VALUES (1866, 68, 19, 3);
INSERT INTO `fs_users_permission` VALUES (1867, 68, 20, 3);
INSERT INTO `fs_users_permission` VALUES (1868, 68, 21, 3);
INSERT INTO `fs_users_permission` VALUES (1869, 68, 22, 3);
INSERT INTO `fs_users_permission` VALUES (1870, 68, 23, 3);
INSERT INTO `fs_users_permission` VALUES (1871, 68, 24, 3);
INSERT INTO `fs_users_permission` VALUES (1872, 68, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1873, 68, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1874, 68, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1875, 68, 48, 3);
INSERT INTO `fs_users_permission` VALUES (1876, 68, 50, 3);
INSERT INTO `fs_users_permission` VALUES (1877, 68, 51, 3);
INSERT INTO `fs_users_permission` VALUES (1878, 68, 54, 3);
INSERT INTO `fs_users_permission` VALUES (1879, 68, 58, 3);
INSERT INTO `fs_users_permission` VALUES (1880, 68, 59, 0);
INSERT INTO `fs_users_permission` VALUES (1881, 68, 60, 0);
INSERT INTO `fs_users_permission` VALUES (1882, 69, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1883, 69, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1884, 69, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1885, 69, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1886, 69, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1887, 69, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1888, 69, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1889, 69, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1890, 69, 13, 0);
INSERT INTO `fs_users_permission` VALUES (1891, 69, 14, 0);
INSERT INTO `fs_users_permission` VALUES (1892, 69, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1893, 69, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1894, 69, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1895, 69, 21, 3);
INSERT INTO `fs_users_permission` VALUES (1896, 69, 22, 0);
INSERT INTO `fs_users_permission` VALUES (1897, 69, 23, 0);
INSERT INTO `fs_users_permission` VALUES (1898, 69, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1899, 69, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1900, 69, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1901, 69, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1902, 69, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1903, 69, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1904, 69, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1905, 69, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1906, 69, 58, 0);
INSERT INTO `fs_users_permission` VALUES (1907, 69, 59, 0);
INSERT INTO `fs_users_permission` VALUES (1908, 69, 60, 0);
INSERT INTO `fs_users_permission` VALUES (1909, 62, 58, 3);
INSERT INTO `fs_users_permission` VALUES (1910, 62, 59, 3);
INSERT INTO `fs_users_permission` VALUES (1911, 62, 60, 3);
INSERT INTO `fs_users_permission` VALUES (1912, 66, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1913, 66, 5, 3);
INSERT INTO `fs_users_permission` VALUES (1914, 66, 6, 3);
INSERT INTO `fs_users_permission` VALUES (1915, 66, 7, 3);
INSERT INTO `fs_users_permission` VALUES (1916, 66, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1917, 66, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1918, 66, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1919, 66, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1920, 66, 13, 3);
INSERT INTO `fs_users_permission` VALUES (1921, 66, 14, 3);
INSERT INTO `fs_users_permission` VALUES (1922, 66, 15, 3);
INSERT INTO `fs_users_permission` VALUES (1923, 66, 19, 3);
INSERT INTO `fs_users_permission` VALUES (1924, 66, 20, 3);
INSERT INTO `fs_users_permission` VALUES (1925, 66, 21, 3);
INSERT INTO `fs_users_permission` VALUES (1926, 66, 22, 3);
INSERT INTO `fs_users_permission` VALUES (1927, 66, 23, 3);
INSERT INTO `fs_users_permission` VALUES (1928, 66, 24, 3);
INSERT INTO `fs_users_permission` VALUES (1929, 66, 25, 3);
INSERT INTO `fs_users_permission` VALUES (1930, 66, 26, 3);
INSERT INTO `fs_users_permission` VALUES (1931, 66, 45, 3);
INSERT INTO `fs_users_permission` VALUES (1932, 66, 48, 3);
INSERT INTO `fs_users_permission` VALUES (1933, 66, 50, 3);
INSERT INTO `fs_users_permission` VALUES (1934, 66, 51, 3);
INSERT INTO `fs_users_permission` VALUES (1935, 66, 54, 3);
INSERT INTO `fs_users_permission` VALUES (1936, 66, 58, 3);
INSERT INTO `fs_users_permission` VALUES (1937, 66, 59, 3);
INSERT INTO `fs_users_permission` VALUES (1938, 66, 60, 3);
INSERT INTO `fs_users_permission` VALUES (1939, 65, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1940, 65, 5, 3);
INSERT INTO `fs_users_permission` VALUES (1941, 65, 6, 3);
INSERT INTO `fs_users_permission` VALUES (1942, 65, 7, 3);
INSERT INTO `fs_users_permission` VALUES (1943, 65, 8, 3);
INSERT INTO `fs_users_permission` VALUES (1944, 65, 9, 3);
INSERT INTO `fs_users_permission` VALUES (1945, 65, 10, 3);
INSERT INTO `fs_users_permission` VALUES (1946, 65, 11, 3);
INSERT INTO `fs_users_permission` VALUES (1947, 65, 13, 3);
INSERT INTO `fs_users_permission` VALUES (1948, 65, 14, 3);
INSERT INTO `fs_users_permission` VALUES (1949, 65, 15, 3);
INSERT INTO `fs_users_permission` VALUES (1950, 65, 19, 3);
INSERT INTO `fs_users_permission` VALUES (1951, 65, 20, 3);
INSERT INTO `fs_users_permission` VALUES (1952, 65, 21, 3);
INSERT INTO `fs_users_permission` VALUES (1953, 65, 22, 3);
INSERT INTO `fs_users_permission` VALUES (1954, 65, 23, 3);
INSERT INTO `fs_users_permission` VALUES (1955, 65, 24, 3);
INSERT INTO `fs_users_permission` VALUES (1956, 65, 25, 3);
INSERT INTO `fs_users_permission` VALUES (1957, 65, 26, 3);
INSERT INTO `fs_users_permission` VALUES (1958, 65, 45, 3);
INSERT INTO `fs_users_permission` VALUES (1959, 65, 48, 3);
INSERT INTO `fs_users_permission` VALUES (1960, 65, 50, 3);
INSERT INTO `fs_users_permission` VALUES (1961, 65, 51, 3);
INSERT INTO `fs_users_permission` VALUES (1962, 65, 54, 3);
INSERT INTO `fs_users_permission` VALUES (1963, 65, 58, 3);
INSERT INTO `fs_users_permission` VALUES (1964, 65, 59, 3);
INSERT INTO `fs_users_permission` VALUES (1965, 65, 60, 3);
INSERT INTO `fs_users_permission` VALUES (1966, 70, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1967, 70, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1968, 70, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1969, 70, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1970, 70, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1971, 70, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1972, 70, 10, 0);
INSERT INTO `fs_users_permission` VALUES (1973, 70, 11, 0);
INSERT INTO `fs_users_permission` VALUES (1974, 70, 13, 0);
INSERT INTO `fs_users_permission` VALUES (1975, 70, 14, 0);
INSERT INTO `fs_users_permission` VALUES (1976, 70, 15, 0);
INSERT INTO `fs_users_permission` VALUES (1977, 70, 19, 0);
INSERT INTO `fs_users_permission` VALUES (1978, 70, 20, 0);
INSERT INTO `fs_users_permission` VALUES (1979, 70, 21, 3);
INSERT INTO `fs_users_permission` VALUES (1980, 70, 22, 0);
INSERT INTO `fs_users_permission` VALUES (1981, 70, 23, 0);
INSERT INTO `fs_users_permission` VALUES (1982, 70, 24, 0);
INSERT INTO `fs_users_permission` VALUES (1983, 70, 25, 0);
INSERT INTO `fs_users_permission` VALUES (1984, 70, 26, 0);
INSERT INTO `fs_users_permission` VALUES (1985, 70, 45, 0);
INSERT INTO `fs_users_permission` VALUES (1986, 70, 48, 0);
INSERT INTO `fs_users_permission` VALUES (1987, 70, 50, 0);
INSERT INTO `fs_users_permission` VALUES (1988, 70, 51, 0);
INSERT INTO `fs_users_permission` VALUES (1989, 70, 54, 0);
INSERT INTO `fs_users_permission` VALUES (1990, 70, 58, 0);
INSERT INTO `fs_users_permission` VALUES (1991, 70, 59, 0);
INSERT INTO `fs_users_permission` VALUES (1992, 70, 60, 0);
INSERT INTO `fs_users_permission` VALUES (1993, 72, 1, 0);
INSERT INTO `fs_users_permission` VALUES (1994, 72, 5, 0);
INSERT INTO `fs_users_permission` VALUES (1995, 72, 6, 0);
INSERT INTO `fs_users_permission` VALUES (1996, 72, 7, 0);
INSERT INTO `fs_users_permission` VALUES (1997, 72, 8, 0);
INSERT INTO `fs_users_permission` VALUES (1998, 72, 9, 0);
INSERT INTO `fs_users_permission` VALUES (1999, 72, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2000, 72, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2001, 72, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2002, 72, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2003, 72, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2004, 72, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2005, 72, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2006, 72, 21, 3);
INSERT INTO `fs_users_permission` VALUES (2007, 72, 22, 0);
INSERT INTO `fs_users_permission` VALUES (2008, 72, 23, 0);
INSERT INTO `fs_users_permission` VALUES (2009, 72, 24, 0);
INSERT INTO `fs_users_permission` VALUES (2010, 72, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2011, 72, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2012, 72, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2013, 72, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2014, 72, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2015, 72, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2016, 72, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2017, 72, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2018, 72, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2019, 72, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2020, 73, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2021, 73, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2022, 73, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2023, 73, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2024, 73, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2025, 73, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2026, 73, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2027, 73, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2028, 73, 13, 3);
INSERT INTO `fs_users_permission` VALUES (2029, 73, 14, 3);
INSERT INTO `fs_users_permission` VALUES (2030, 73, 15, 3);
INSERT INTO `fs_users_permission` VALUES (2031, 73, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2032, 73, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2033, 73, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2034, 73, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2035, 73, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2036, 73, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2037, 73, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2038, 73, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2039, 73, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2040, 73, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2041, 73, 50, 3);
INSERT INTO `fs_users_permission` VALUES (2042, 73, 51, 3);
INSERT INTO `fs_users_permission` VALUES (2043, 73, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2044, 73, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2045, 73, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2046, 73, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2047, 74, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2048, 74, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2049, 74, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2050, 74, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2051, 74, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2052, 74, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2053, 74, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2054, 74, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2055, 74, 13, 3);
INSERT INTO `fs_users_permission` VALUES (2056, 74, 14, 3);
INSERT INTO `fs_users_permission` VALUES (2057, 74, 15, 3);
INSERT INTO `fs_users_permission` VALUES (2058, 74, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2059, 74, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2060, 74, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2061, 74, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2062, 74, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2063, 74, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2064, 74, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2065, 74, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2066, 74, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2067, 74, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2068, 74, 50, 3);
INSERT INTO `fs_users_permission` VALUES (2069, 74, 51, 3);
INSERT INTO `fs_users_permission` VALUES (2070, 74, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2071, 74, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2072, 74, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2073, 74, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2074, 67, 61, 3);
INSERT INTO `fs_users_permission` VALUES (2075, 75, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2076, 75, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2077, 75, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2078, 75, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2079, 75, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2080, 75, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2081, 75, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2082, 75, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2083, 75, 13, 3);
INSERT INTO `fs_users_permission` VALUES (2084, 75, 14, 3);
INSERT INTO `fs_users_permission` VALUES (2085, 75, 15, 3);
INSERT INTO `fs_users_permission` VALUES (2086, 75, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2087, 75, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2088, 75, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2089, 75, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2090, 75, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2091, 75, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2092, 75, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2093, 75, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2094, 75, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2095, 75, 48, 3);
INSERT INTO `fs_users_permission` VALUES (2096, 75, 50, 3);
INSERT INTO `fs_users_permission` VALUES (2097, 75, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2098, 75, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2099, 75, 58, 3);
INSERT INTO `fs_users_permission` VALUES (2100, 75, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2101, 75, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2102, 75, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2103, 64, 61, 3);
INSERT INTO `fs_users_permission` VALUES (2104, 71, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2105, 71, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2106, 71, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2107, 71, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2108, 71, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2109, 71, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2110, 71, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2111, 71, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2112, 71, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2113, 71, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2114, 71, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2115, 71, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2116, 71, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2117, 71, 21, 3);
INSERT INTO `fs_users_permission` VALUES (2118, 71, 22, 0);
INSERT INTO `fs_users_permission` VALUES (2119, 71, 23, 0);
INSERT INTO `fs_users_permission` VALUES (2120, 71, 24, 0);
INSERT INTO `fs_users_permission` VALUES (2121, 71, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2122, 71, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2123, 71, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2124, 71, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2125, 71, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2126, 71, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2127, 71, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2128, 71, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2129, 71, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2130, 71, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2131, 71, 61, 3);
INSERT INTO `fs_users_permission` VALUES (2132, 72, 61, 3);
INSERT INTO `fs_users_permission` VALUES (2133, 69, 61, 3);
INSERT INTO `fs_users_permission` VALUES (2134, 65, 61, 3);
INSERT INTO `fs_users_permission` VALUES (2135, 68, 61, 3);
INSERT INTO `fs_users_permission` VALUES (2136, 76, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2137, 76, 5, 3);
INSERT INTO `fs_users_permission` VALUES (2138, 76, 6, 3);
INSERT INTO `fs_users_permission` VALUES (2139, 76, 7, 3);
INSERT INTO `fs_users_permission` VALUES (2140, 76, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2141, 76, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2142, 76, 10, 3);
INSERT INTO `fs_users_permission` VALUES (2143, 76, 11, 3);
INSERT INTO `fs_users_permission` VALUES (2144, 76, 13, 3);
INSERT INTO `fs_users_permission` VALUES (2145, 76, 14, 3);
INSERT INTO `fs_users_permission` VALUES (2146, 76, 15, 3);
INSERT INTO `fs_users_permission` VALUES (2147, 76, 19, 3);
INSERT INTO `fs_users_permission` VALUES (2148, 76, 20, 3);
INSERT INTO `fs_users_permission` VALUES (2149, 76, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2150, 76, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2151, 76, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2152, 76, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2153, 76, 25, 3);
INSERT INTO `fs_users_permission` VALUES (2154, 76, 26, 3);
INSERT INTO `fs_users_permission` VALUES (2155, 76, 45, 3);
INSERT INTO `fs_users_permission` VALUES (2156, 76, 48, 3);
INSERT INTO `fs_users_permission` VALUES (2157, 76, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2158, 76, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2159, 76, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2160, 76, 58, 3);
INSERT INTO `fs_users_permission` VALUES (2161, 76, 59, 3);
INSERT INTO `fs_users_permission` VALUES (2162, 76, 60, 3);
INSERT INTO `fs_users_permission` VALUES (2163, 76, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2164, 77, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2165, 77, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2166, 77, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2167, 77, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2168, 77, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2169, 77, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2170, 77, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2171, 77, 11, 3);
INSERT INTO `fs_users_permission` VALUES (2172, 77, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2173, 77, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2174, 77, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2175, 77, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2176, 77, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2177, 77, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2178, 77, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2179, 77, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2180, 77, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2181, 77, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2182, 77, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2183, 77, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2184, 77, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2185, 77, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2186, 77, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2187, 77, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2188, 77, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2189, 77, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2190, 77, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2191, 77, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2192, 73, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2193, 78, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2194, 78, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2195, 78, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2196, 78, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2197, 78, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2198, 78, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2199, 78, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2200, 78, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2201, 78, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2202, 78, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2203, 78, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2204, 78, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2205, 78, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2206, 78, 21, 3);
INSERT INTO `fs_users_permission` VALUES (2207, 78, 22, 0);
INSERT INTO `fs_users_permission` VALUES (2208, 78, 23, 0);
INSERT INTO `fs_users_permission` VALUES (2209, 78, 24, 0);
INSERT INTO `fs_users_permission` VALUES (2210, 78, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2211, 78, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2212, 78, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2213, 78, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2214, 78, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2215, 78, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2216, 78, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2217, 78, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2218, 78, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2219, 78, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2220, 78, 61, 3);
INSERT INTO `fs_users_permission` VALUES (2221, 74, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2222, 79, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2223, 79, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2224, 79, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2225, 79, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2226, 79, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2227, 79, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2228, 79, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2229, 79, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2230, 79, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2231, 79, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2232, 79, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2233, 79, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2234, 79, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2235, 79, 21, 3);
INSERT INTO `fs_users_permission` VALUES (2236, 79, 22, 0);
INSERT INTO `fs_users_permission` VALUES (2237, 79, 23, 0);
INSERT INTO `fs_users_permission` VALUES (2238, 79, 24, 0);
INSERT INTO `fs_users_permission` VALUES (2239, 79, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2240, 79, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2241, 79, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2242, 79, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2243, 79, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2244, 79, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2245, 79, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2246, 79, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2247, 79, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2248, 79, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2249, 79, 61, 3);
INSERT INTO `fs_users_permission` VALUES (2250, 66, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2251, 80, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2252, 80, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2253, 80, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2254, 80, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2255, 80, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2256, 80, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2257, 80, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2258, 80, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2259, 80, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2260, 80, 14, 3);
INSERT INTO `fs_users_permission` VALUES (2261, 80, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2262, 80, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2263, 80, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2264, 80, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2265, 80, 22, 0);
INSERT INTO `fs_users_permission` VALUES (2266, 80, 23, 0);
INSERT INTO `fs_users_permission` VALUES (2267, 80, 24, 0);
INSERT INTO `fs_users_permission` VALUES (2268, 80, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2269, 80, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2270, 80, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2271, 80, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2272, 80, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2273, 80, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2274, 80, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2275, 80, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2276, 80, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2277, 80, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2278, 80, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2279, 81, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2280, 81, 5, 3);
INSERT INTO `fs_users_permission` VALUES (2281, 81, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2282, 81, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2283, 81, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2284, 81, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2285, 81, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2286, 81, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2287, 81, 13, 3);
INSERT INTO `fs_users_permission` VALUES (2288, 81, 14, 3);
INSERT INTO `fs_users_permission` VALUES (2289, 81, 15, 3);
INSERT INTO `fs_users_permission` VALUES (2290, 81, 19, 3);
INSERT INTO `fs_users_permission` VALUES (2291, 81, 20, 3);
INSERT INTO `fs_users_permission` VALUES (2292, 81, 21, 3);
INSERT INTO `fs_users_permission` VALUES (2293, 81, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2294, 81, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2295, 81, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2296, 81, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2297, 81, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2298, 81, 45, 3);
INSERT INTO `fs_users_permission` VALUES (2299, 81, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2300, 81, 50, 3);
INSERT INTO `fs_users_permission` VALUES (2301, 81, 51, 3);
INSERT INTO `fs_users_permission` VALUES (2302, 81, 54, 3);
INSERT INTO `fs_users_permission` VALUES (2303, 81, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2304, 81, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2305, 81, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2306, 81, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2307, 82, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2308, 82, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2309, 82, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2310, 82, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2311, 82, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2312, 82, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2313, 82, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2314, 82, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2315, 82, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2316, 82, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2317, 82, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2318, 82, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2319, 82, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2320, 82, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2321, 82, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2322, 82, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2323, 82, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2324, 82, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2325, 82, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2326, 82, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2327, 82, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2328, 82, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2329, 82, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2330, 82, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2331, 82, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2332, 82, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2333, 82, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2334, 82, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2335, 83, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2336, 83, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2337, 83, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2338, 83, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2339, 83, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2340, 83, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2341, 83, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2342, 83, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2343, 83, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2344, 83, 14, 3);
INSERT INTO `fs_users_permission` VALUES (2345, 83, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2346, 83, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2347, 83, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2348, 83, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2349, 83, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2350, 83, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2351, 83, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2352, 83, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2353, 83, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2354, 83, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2355, 83, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2356, 83, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2357, 83, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2358, 83, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2359, 83, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2360, 83, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2361, 83, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2362, 83, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2363, 84, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2364, 84, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2365, 84, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2366, 84, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2367, 84, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2368, 84, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2369, 84, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2370, 84, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2371, 84, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2372, 84, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2373, 84, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2374, 84, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2375, 84, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2376, 84, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2377, 84, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2378, 84, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2379, 84, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2380, 84, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2381, 84, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2382, 84, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2383, 84, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2384, 84, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2385, 84, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2386, 84, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2387, 84, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2388, 84, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2389, 84, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2390, 84, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2391, 85, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2392, 85, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2393, 85, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2394, 85, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2395, 85, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2396, 85, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2397, 85, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2398, 85, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2399, 85, 13, 3);
INSERT INTO `fs_users_permission` VALUES (2400, 85, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2401, 85, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2402, 85, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2403, 85, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2404, 85, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2405, 85, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2406, 85, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2407, 85, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2408, 85, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2409, 85, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2410, 85, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2411, 85, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2412, 85, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2413, 85, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2414, 85, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2415, 85, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2416, 85, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2417, 85, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2418, 85, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2419, 86, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2420, 86, 5, 3);
INSERT INTO `fs_users_permission` VALUES (2421, 86, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2422, 86, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2423, 86, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2424, 86, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2425, 86, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2426, 86, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2427, 86, 13, 3);
INSERT INTO `fs_users_permission` VALUES (2428, 86, 14, 3);
INSERT INTO `fs_users_permission` VALUES (2429, 86, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2430, 86, 19, 3);
INSERT INTO `fs_users_permission` VALUES (2431, 86, 20, 3);
INSERT INTO `fs_users_permission` VALUES (2432, 86, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2433, 86, 22, 0);
INSERT INTO `fs_users_permission` VALUES (2434, 86, 23, 0);
INSERT INTO `fs_users_permission` VALUES (2435, 86, 24, 0);
INSERT INTO `fs_users_permission` VALUES (2436, 86, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2437, 86, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2438, 86, 45, 3);
INSERT INTO `fs_users_permission` VALUES (2439, 86, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2440, 86, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2441, 86, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2442, 86, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2443, 86, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2444, 86, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2445, 86, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2446, 86, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2447, 87, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2448, 87, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2449, 87, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2450, 87, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2451, 87, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2452, 87, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2453, 87, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2454, 87, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2455, 87, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2456, 87, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2457, 87, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2458, 87, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2459, 87, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2460, 87, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2461, 87, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2462, 87, 23, 0);
INSERT INTO `fs_users_permission` VALUES (2463, 87, 24, 0);
INSERT INTO `fs_users_permission` VALUES (2464, 87, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2465, 87, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2466, 87, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2467, 87, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2468, 87, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2469, 87, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2470, 87, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2471, 87, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2472, 87, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2473, 87, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2474, 87, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2475, 88, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2476, 88, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2477, 88, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2478, 88, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2479, 88, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2480, 88, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2481, 88, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2482, 88, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2483, 88, 13, 3);
INSERT INTO `fs_users_permission` VALUES (2484, 88, 14, 3);
INSERT INTO `fs_users_permission` VALUES (2485, 88, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2486, 88, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2487, 88, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2488, 88, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2489, 88, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2490, 88, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2491, 88, 24, 3);
INSERT INTO `fs_users_permission` VALUES (2492, 88, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2493, 88, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2494, 88, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2495, 88, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2496, 88, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2497, 88, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2498, 88, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2499, 88, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2500, 88, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2501, 88, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2502, 88, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2503, 89, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2504, 89, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2505, 89, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2506, 89, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2507, 89, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2508, 89, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2509, 89, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2510, 89, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2511, 89, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2512, 89, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2513, 89, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2514, 89, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2515, 89, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2516, 89, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2517, 89, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2518, 89, 23, 0);
INSERT INTO `fs_users_permission` VALUES (2519, 89, 24, 0);
INSERT INTO `fs_users_permission` VALUES (2520, 89, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2521, 89, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2522, 89, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2523, 89, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2524, 89, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2525, 89, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2526, 89, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2527, 89, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2528, 89, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2529, 89, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2530, 89, 61, 0);
INSERT INTO `fs_users_permission` VALUES (2531, 90, 1, 0);
INSERT INTO `fs_users_permission` VALUES (2532, 90, 5, 0);
INSERT INTO `fs_users_permission` VALUES (2533, 90, 6, 0);
INSERT INTO `fs_users_permission` VALUES (2534, 90, 7, 0);
INSERT INTO `fs_users_permission` VALUES (2535, 90, 8, 0);
INSERT INTO `fs_users_permission` VALUES (2536, 90, 9, 0);
INSERT INTO `fs_users_permission` VALUES (2537, 90, 10, 0);
INSERT INTO `fs_users_permission` VALUES (2538, 90, 11, 0);
INSERT INTO `fs_users_permission` VALUES (2539, 90, 13, 0);
INSERT INTO `fs_users_permission` VALUES (2540, 90, 14, 0);
INSERT INTO `fs_users_permission` VALUES (2541, 90, 15, 0);
INSERT INTO `fs_users_permission` VALUES (2542, 90, 19, 0);
INSERT INTO `fs_users_permission` VALUES (2543, 90, 20, 0);
INSERT INTO `fs_users_permission` VALUES (2544, 90, 21, 0);
INSERT INTO `fs_users_permission` VALUES (2545, 90, 22, 3);
INSERT INTO `fs_users_permission` VALUES (2546, 90, 23, 3);
INSERT INTO `fs_users_permission` VALUES (2547, 90, 24, 0);
INSERT INTO `fs_users_permission` VALUES (2548, 90, 25, 0);
INSERT INTO `fs_users_permission` VALUES (2549, 90, 26, 0);
INSERT INTO `fs_users_permission` VALUES (2550, 90, 45, 0);
INSERT INTO `fs_users_permission` VALUES (2551, 90, 48, 0);
INSERT INTO `fs_users_permission` VALUES (2552, 90, 50, 0);
INSERT INTO `fs_users_permission` VALUES (2553, 90, 51, 0);
INSERT INTO `fs_users_permission` VALUES (2554, 90, 54, 0);
INSERT INTO `fs_users_permission` VALUES (2555, 90, 58, 0);
INSERT INTO `fs_users_permission` VALUES (2556, 90, 59, 0);
INSERT INTO `fs_users_permission` VALUES (2557, 90, 60, 0);
INSERT INTO `fs_users_permission` VALUES (2558, 90, 61, 0);

-- ----------------------------
-- Table structure for fs_users_permission_fun
-- ----------------------------
DROP TABLE IF EXISTS `fs_users_permission_fun`;
CREATE TABLE `fs_users_permission_fun`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `task_id` int NULL DEFAULT NULL COMMENT 'Lấy id của permission_task',
  `permission` int NULL DEFAULT NULL,
  `list_field` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `module` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `view` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 166 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fs_users_permission_fun
-- ----------------------------
INSERT INTO `fs_users_permission_fun` VALUES (1, 24, NULL, NULL, ',edit,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (2, 24, NULL, NULL, ',edit,', 'members', 'employer');
INSERT INTO `fs_users_permission_fun` VALUES (3, 41, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (4, 41, NULL, NULL, '', 'training', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (5, 41, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'question', 'question');
INSERT INTO `fs_users_permission_fun` VALUES (6, 41, NULL, NULL, ',add,edit,remove,published,unpublished,save,apply,', 'users', 'users');
INSERT INTO `fs_users_permission_fun` VALUES (7, 51, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'thuonghieu');
INSERT INTO `fs_users_permission_fun` VALUES (8, 51, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (9, 51, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (10, 64, NULL, NULL, ',add,edit,remove,published,unpublished,save,apply,', 'users', 'users');
INSERT INTO `fs_users_permission_fun` VALUES (11, 63, NULL, NULL, ',add,', 'users', 'users');
INSERT INTO `fs_users_permission_fun` VALUES (12, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (13, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (14, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'tables');
INSERT INTO `fs_users_permission_fun` VALUES (15, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'field_group');
INSERT INTO `fs_users_permission_fun` VALUES (16, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (17, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (18, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (19, 65, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'contents', 'contents');
INSERT INTO `fs_users_permission_fun` VALUES (20, 65, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (21, 65, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (22, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (23, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (24, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (25, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (26, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'tags');
INSERT INTO `fs_users_permission_fun` VALUES (27, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'video', 'video');
INSERT INTO `fs_users_permission_fun` VALUES (28, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (29, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'banners');
INSERT INTO `fs_users_permission_fun` VALUES (30, 70, NULL, NULL, ',add,edit,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (31, 67, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (32, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (33, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'banners');
INSERT INTO `fs_users_permission_fun` VALUES (34, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (35, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (36, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (37, 68, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (38, 69, NULL, NULL, ',add,edit,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (39, 71, NULL, NULL, ',add,edit,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (40, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'slideshow');
INSERT INTO `fs_users_permission_fun` VALUES (41, 66, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (42, 72, NULL, NULL, ',add,edit,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (43, 73, NULL, NULL, ',add,edit,save_add,duplicate,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (44, 73, NULL, NULL, ',add,edit,save_add,duplicate,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (45, 73, NULL, NULL, ',add,edit,save_add,duplicate,', 'products', 'field_group');
INSERT INTO `fs_users_permission_fun` VALUES (46, 73, NULL, NULL, ',add,edit,save_add,duplicate,', 'products', 'tables');
INSERT INTO `fs_users_permission_fun` VALUES (47, 74, NULL, NULL, ',add,edit,save_add,duplicate,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (48, 74, NULL, NULL, ',add,edit,save_add,duplicate,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (49, 74, NULL, NULL, ',add,edit,save_add,duplicate,', 'products', 'tables');
INSERT INTO `fs_users_permission_fun` VALUES (50, 74, NULL, NULL, ',add,edit,save_add,duplicate,', 'products', 'field_group');
INSERT INTO `fs_users_permission_fun` VALUES (51, 74, NULL, NULL, ',add,edit,save_add,duplicate,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (52, 74, NULL, NULL, ',add,edit,save_add,duplicate,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (53, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (54, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'banners');
INSERT INTO `fs_users_permission_fun` VALUES (55, 64, NULL, NULL, ',add,edit,remove,published,unpublished,save_add,', 'menus', 'groups');
INSERT INTO `fs_users_permission_fun` VALUES (56, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'config', 'config');
INSERT INTO `fs_users_permission_fun` VALUES (57, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'contents', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (58, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'contents', 'contents');
INSERT INTO `fs_users_permission_fun` VALUES (59, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'warranty');
INSERT INTO `fs_users_permission_fun` VALUES (60, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'extends', 'groups');
INSERT INTO `fs_users_permission_fun` VALUES (61, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'extends', 'data');
INSERT INTO `fs_users_permission_fun` VALUES (62, 67, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'installment', 'installment');
INSERT INTO `fs_users_permission_fun` VALUES (63, 75, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (64, 75, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (65, 75, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (66, 75, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'tables');
INSERT INTO `fs_users_permission_fun` VALUES (67, 75, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (68, 75, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (69, 75, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (70, 75, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'tags');
INSERT INTO `fs_users_permission_fun` VALUES (71, 75, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'video', 'video');
INSERT INTO `fs_users_permission_fun` VALUES (72, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'installment', 'installment');
INSERT INTO `fs_users_permission_fun` VALUES (73, 71, NULL, NULL, ',add,edit,', 'installment', 'installment');
INSERT INTO `fs_users_permission_fun` VALUES (74, 72, NULL, NULL, ',add,edit,', 'installment', 'installment');
INSERT INTO `fs_users_permission_fun` VALUES (75, 69, NULL, NULL, ',add,edit,', 'installment', 'installment');
INSERT INTO `fs_users_permission_fun` VALUES (76, 65, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (77, 65, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (78, 65, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'tables');
INSERT INTO `fs_users_permission_fun` VALUES (79, 65, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'field_group');
INSERT INTO `fs_users_permission_fun` VALUES (80, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'tables');
INSERT INTO `fs_users_permission_fun` VALUES (81, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'field_group');
INSERT INTO `fs_users_permission_fun` VALUES (82, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'warranty');
INSERT INTO `fs_users_permission_fun` VALUES (83, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (84, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'banners');
INSERT INTO `fs_users_permission_fun` VALUES (85, 76, NULL, NULL, ',add,edit,remove,published,unpublished,save_add,', 'menus', 'groups');
INSERT INTO `fs_users_permission_fun` VALUES (86, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'menus', 'items');
INSERT INTO `fs_users_permission_fun` VALUES (87, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'contents', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (88, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'contents', 'contents');
INSERT INTO `fs_users_permission_fun` VALUES (89, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (90, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (91, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (92, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'slideshow');
INSERT INTO `fs_users_permission_fun` VALUES (93, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (94, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (95, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (96, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (97, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'address', 'address');
INSERT INTO `fs_users_permission_fun` VALUES (98, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'video', 'video');
INSERT INTO `fs_users_permission_fun` VALUES (99, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'extends', 'groups');
INSERT INTO `fs_users_permission_fun` VALUES (100, 76, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'extends', 'data');
INSERT INTO `fs_users_permission_fun` VALUES (101, 77, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (102, 77, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (103, 77, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (104, 77, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'contents', 'contents');
INSERT INTO `fs_users_permission_fun` VALUES (105, 73, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (106, 73, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (107, 78, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (108, 78, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'installment', 'installment');
INSERT INTO `fs_users_permission_fun` VALUES (109, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'video', 'video');
INSERT INTO `fs_users_permission_fun` VALUES (110, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (111, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'slideshow');
INSERT INTO `fs_users_permission_fun` VALUES (112, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'menus', 'items');
INSERT INTO `fs_users_permission_fun` VALUES (113, 73, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (114, 74, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (115, 79, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (116, 79, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'installment', 'installment');
INSERT INTO `fs_users_permission_fun` VALUES (117, 66, NULL, NULL, ',edit,', 'order', 'order');
INSERT INTO `fs_users_permission_fun` VALUES (118, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'installment', 'installment');
INSERT INTO `fs_users_permission_fun` VALUES (119, 80, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (120, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (121, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (122, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (123, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'slideshow');
INSERT INTO `fs_users_permission_fun` VALUES (124, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (125, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (126, 68, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (127, 64, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'config', 'modules');
INSERT INTO `fs_users_permission_fun` VALUES (128, 82, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (129, 82, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (130, 82, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (131, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (132, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (133, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (134, 83, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (135, 83, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (136, 83, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (137, 84, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (138, 84, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (139, 84, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (140, 73, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (141, 74, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (142, 85, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (143, 85, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (144, 85, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (145, 85, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (146, 86, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (147, 86, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'banners', 'banners');
INSERT INTO `fs_users_permission_fun` VALUES (148, 86, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (149, 86, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (150, 86, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'slideshow');
INSERT INTO `fs_users_permission_fun` VALUES (151, 86, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'slideshow', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (152, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'tables');
INSERT INTO `fs_users_permission_fun` VALUES (153, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'field_group');
INSERT INTO `fs_users_permission_fun` VALUES (154, 81, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'warranty');
INSERT INTO `fs_users_permission_fun` VALUES (155, 83, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (156, 87, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (157, 88, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (158, 88, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (159, 88, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'comments');
INSERT INTO `fs_users_permission_fun` VALUES (160, 88, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'products', 'categories');
INSERT INTO `fs_users_permission_fun` VALUES (161, 89, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (162, 88, NULL, NULL, ',add,edit,published,unpublished,apply,save_add,duplicate,back,', 'products', 'products');
INSERT INTO `fs_users_permission_fun` VALUES (163, 65, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (164, 90, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'news');
INSERT INTO `fs_users_permission_fun` VALUES (165, 90, NULL, NULL, ',add,edit,remove,published,unpublished,apply,save_add,duplicate,back,', 'news', 'categories');

SET FOREIGN_KEY_CHECKS = 1;
