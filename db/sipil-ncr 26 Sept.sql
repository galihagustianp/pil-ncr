/*
Navicat MySQL Data Transfer

Source Server         : sipil_api
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : sipil-ncr

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-09-26 12:46:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for commons
-- ----------------------------
DROP TABLE IF EXISTS `commons`;
CREATE TABLE `commons` (
  `common_id` int(11) NOT NULL AUTO_INCREMENT,
  `common_type` varchar(255) DEFAULT NULL,
  `code` int(11) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `is_default` char(1) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `is_usable` varchar(255) DEFAULT NULL,
  `create_user` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_user` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`common_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of commons
-- ----------------------------
INSERT INTO `commons` VALUES ('1', 'TYPE_NCR', '1', 'NCP', 'Ketidaksesuaian Proses PIL ', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('2', 'TYPE_NCR', '1', 'CMP', 'Komplain Pelanggan', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('3', 'TYPE_NCR', '1', 'IA', 'Internal Audit', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('4', 'TYPE_NCR', '1', 'SM', 'Sasaran Mutu', '1', '', '0', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('5', 'TYPE_NCR', '1', 'BAP', 'Berita Acara Penerimaan', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('6', 'CASE_NCR_NCP', '1', 'NCP', 'Jebol', '1', '', '0', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('7', 'CASE_NCR_NCP', '2', 'NCP', 'Jarum Patah', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('8', 'CASE_NCR_NCP', '3', 'NCP', 'Jarum Rusak', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('9', 'CASE_NCR_NCP', '4', 'NCP', 'Lubang Kecil', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('10', 'CASE_NCR_NCP', '5', 'NCP', 'Spandex Loncat', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('11', 'CASE_NCR_NCP', '6', 'NCP', 'Belang', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('12', 'CASE_NCR_NCP', '7', 'NCP', 'Tetes Minyak', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('13', 'CASE_NCR_NCP', '8', 'NCP', 'BS Trial Run', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('14', 'CASE_NCR_NCP', '9', 'NCP', 'Benang Besar', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('15', 'CASE_NCR_NCP', '10', 'NCP', 'Garis Minyak', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('16', 'CASE_NCR_NCP', '11', 'NCP', 'NEPS', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('17', 'CASE_NCR_NCP', '12', 'NCP', 'Benang Putus', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('18', 'CASE_NCR_NCP', '13', 'NCP', 'Garis Jarum', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('19', 'CASE_NCR_NCP', '14', 'NCP', 'Fly Waste', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('20', 'CASE_NCR_NCP', '15', 'NCP', 'Kontaminasi', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('21', 'CASE_NCR_NCP', '16', 'NCP', 'Benang Kecil', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('22', 'CASE_NCR_NCP', '17', 'NCP', 'Belang MPF', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('23', 'CASE_NCR_NCP', '18', 'NCP', 'Crease Mark', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('24', 'CASE_NCR_CMP', '1', 'CMP', 'Belang', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('25', 'CASE_NCR_CMP', '2', 'CMP', 'Bolong', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('26', 'CASE_NCR_CMP', '3', 'CMP', 'Gramasi Tidak Sesuai', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('27', 'CASE_NCR_CMP', '4', 'CMP', 'Lebar Tidak Sesuai', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('28', 'CASE_NCR_CMP', '5', 'CMP', 'Crease Mark', '1', '', '0', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('29', 'CASE_NCR_CMP', '6', 'CMP', 'Warna Tidak Sesuai', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('31', 'CASE_NCR_CMP', '8', 'CMP', 'Vertical Line', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('32', 'CASE_NCR_CMP', '9', 'CMP', 'Wave', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('33', 'CASE_NCR_CMP', '10', 'CMP', 'Fly Waste', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('34', 'CASE_NCR_CMP', '11', 'CMP', 'Stripe Tidak Sesuai', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('35', 'CASE_NCR_IA', '1', 'IA', 'NCR', '1', '', '0', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('36', 'CASE_NCR_IA', '2', 'IA', 'OB', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('37', 'CASE_NCR_SM', '1', 'SM', 'Tidak Tercapai', '1', '', '0', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('38', 'CASE_NCR_SM', '2', 'SM', 'Report Invalid', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('39', 'CASE_NCR_BAP', '1', 'BAP', 'Kurang Kirim', '1', '', '0', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('40', 'CASE_NCR_BAP', '2', 'BAP', 'Rusak Produk', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('41', 'CASE_NCR_BAP', '3', 'BAP', 'Basah', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('42', 'CASE_NCR_BAP', '4', 'BAP', 'Kontaminasi', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('43', 'DEPT', '1', 'MKS', 'Marketing & Sales', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('44', 'DEPT', '2', 'QC', 'Quality Control', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('45', 'DEPT', '3', 'IT', 'Information Tecnology', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('46', 'DEPT', '4', 'CMP', 'Compliance', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('47', 'DEPT', '5', 'FIN', 'Finance', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('48', 'DEPT', '6', 'PRD', 'Production', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('49', 'DEPT', '7', 'WH', 'Warehouse', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('50', 'DEPT', '8', 'YD', 'Yarn Dye', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('51', 'DEPT', '9', 'PG', 'Subcont Celup', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('52', 'DEPT_MKS', '1', 'MKT', 'Marketing', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('53', 'DEPT_MKS', '2', 'R&D', 'Research & Development', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('54', 'DEPT_QC', '1', 'QC_INC', 'Quality Incoming', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('55', 'DEPT_QC', '2', 'QC_GR', 'Quality Greige', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('56', 'DEPT_CMP', '1', 'HRD', 'Human Resource Development', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('57', 'DEPT_CMP', '2', 'GA', 'General Affair', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('58', 'DEPT_CMP', '3', 'MR', 'Management Representative', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('59', 'DEPT_FIN', '1', 'PUR', 'Purchasing', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('60', 'DEPT_PRD', '1', 'KNIT', 'Knitting', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('61', 'DEPT_PRD', '2', 'FT', 'Flat Knit', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('62', 'DEPT_PRD', '3', 'PPIC', 'Production Planning & Inventory Control', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('63', 'DEPT_WH', '1', 'WHRM', 'Warehouse Raw Material', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('64', 'DEPT_WH', '2', 'WHSP', 'Warehouse Spare Part', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('65', 'DEPT_WH', '3', 'WHGR', 'Warehouse Greige', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('66', 'DEPT_WH', '4', 'WHFG', 'Warehouse Finish Goods', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('67', 'DEPT_IT', '1', 'IMP', 'Implementation', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('68', 'DEPT_IT', '2', 'SUP', 'Support', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('69', 'DEPT_IT', '3', 'DGC', 'Digital Communication', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('70', 'DEPT_YD', '1', 'YD', 'Yarn Dye', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('71', 'DEPT', '10', 'MAN', 'Management', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('72', 'DEPT_MAN', '1', 'MAN', 'Management', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('75', 'SUPPLIER_YARN', '1', 'SUPPLIER YARN', 'AGANSA PRIMATAMA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('76', 'SUPPLIER_YARN', '2', 'SUPPLIER YARN', 'ADETEX SPUN, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('77', 'SUPPLIER_YARN', '3', 'SUPPLIER YARN', 'ANUGERAH JAYA KASIH LESTARI, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('78', 'SUPPLIER_YARN', '4', 'SUPPLIER YARN', 'APAC INTI CORPORA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('79', 'SUPPLIER_YARN', '5', 'SUPPLIER YARN', 'ASIAN PACIFIC FIBER, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('80', 'SUPPLIER_YARN', '6', 'SUPPLIER YARN', 'BENANG CITRA INDONESIA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('81', 'SUPPLIER_YARN', '7', 'SUPPLIER YARN', 'BITRATEX INDUSTRIES, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('82', 'SUPPLIER_YARN', '8', 'SUPPLIER YARN', 'BROS MACAO COMMERCIAL OFFSHORE LTD', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('83', 'SUPPLIER_YARN', '9', 'SUPPLIER YARN', 'BUDI TEXINDO PRAKARSA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('84', 'SUPPLIER_YARN', '10', 'SUPPLIER YARN', 'BAPINTRI, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('85', 'SUPPLIER_YARN', '11', 'SUPPLIER YARN', 'CHORI INDONESIA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('86', 'SUPPLIER_YARN', '12', 'SUPPLIER YARN', 'DELTA DUNIA SANDANG TEKSTIL, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('87', 'SUPPLIER_YARN', '13', 'SUPPLIER YARN', 'DAN LIRIS, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('88', 'SUPPLIER_YARN', '14', 'SUPPLIER YARN', 'ELEGANT TEXTILE INDUSTRY, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('89', 'SUPPLIER_YARN', '15', 'SUPPLIER YARN', 'EMBEE PLUMBON TEKSTIL, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('90', 'SUPPLIER_YARN', '16', 'SUPPLIER YARN', 'FUJIAN BILLION POLYMERIZATION', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('91', 'SUPPLIER_YARN', '17', 'SUPPLIER YARN', 'XIAMEN WEITEX TECHNOLOGY CO., LTD', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('92', 'SUPPLIER_YARN', '18', 'SUPPLIER YARN', 'GOKAK INDONESIA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('93', 'SUPPLIER_YARN', '19', 'SUPPLIER YARN', 'INDONESIA TORAY SYNTHETICS, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('94', 'SUPPLIER_YARN', '20', 'SUPPLIER YARN', 'INDORAMA SYNTHETIC TBK, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('95', 'SUPPLIER_YARN', '21', 'SUPPLIER YARN', 'ILSHIN SPINNING CO., LTD', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('96', 'SUPPLIER_YARN', '22', 'SUPPLIER YARN', 'INSAN SANDANG INTERNUSA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('97', 'SUPPLIER_YARN', '23', 'SUPPLIER YARN', 'JESI JASON SURYA WIBOWO, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('98', 'SUPPLIER_YARN', '24', 'SUPPLIER YARN', 'KEWALRAM INDONESIA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('99', 'SUPPLIER_YARN', '25', 'SUPPLIER YARN', 'LAWE ADYAPRIMA SPINNING MILLS, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('100', 'SUPPLIER_YARN', '26', 'SUPPLIER YARN', 'MAKMUR JAYA SENTOSA,PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('101', 'SUPPLIER_YARN', '27', 'SUPPLIER YARN', 'MAKMUR PRIMA SENTOSA,PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('102', 'SUPPLIER_YARN', '28', 'SUPPLIER YARN', 'MERIDIAN STRIDERS INTERNATIONAL, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('103', 'SUPPLIER_YARN', '29', 'SUPPLIER YARN', 'NIKAWA TEXTILE INDUSTRY, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('104', 'SUPPLIER_YARN', '30', 'SUPPLIER YARN', 'OST FIBRE INDUSTRIES, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('105', 'SUPPLIER_YARN', '31', 'SUPPLIER YARN', 'POLYFIN CANGGIH, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('106', 'SUPPLIER_YARN', '32', 'SUPPLIER YARN', 'PRIMAYUDHA MANDIRIJAYA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('107', 'SUPPLIER_YARN', '33', 'SUPPLIER YARN', 'PREMIUM TEXTILE MILSS LTD', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('108', 'SUPPLIER_YARN', '34', 'SUPPLIER YARN', 'SAMITRA NIAGAPRATAMA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('109', 'SUPPLIER_YARN', '35', 'SUPPLIER YARN', 'SANDANG MAJU LESTARI, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('110', 'SUPPLIER_YARN', '36', 'SUPPLIER YARN', 'SEN LU INDONESIA,PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('111', 'SUPPLIER_YARN', '37', 'SUPPLIER YARN', 'SINAR CENTRAL SANDANG, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('112', 'SUPPLIER_YARN', '38', 'SUPPLIER YARN', 'SPINMILL INDAH INDUSTRY, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('113', 'SUPPLIER_YARN', '39', 'SUPPLIER YARN', 'SULINDAFIN PERMAI SPINNING MILLS , PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('114', 'SUPPLIER_YARN', '40', 'SUPPLIER YARN', 'SUNRISE BUMI TEXTILES, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('115', 'SUPPLIER_YARN', '41', 'SUPPLIER YARN', 'SUPER BTEX, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('116', 'SUPPLIER_YARN', '42', 'SUPPLIER YARN', 'SURYA KARYA SAMPOERNA.PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('117', 'SUPPLIER_YARN', '43', 'SUPPLIER YARN', 'THAI ASAHI KASEI SPANDEX CO. LTD.', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('118', 'SUPPLIER_YARN', '44', 'SUPPLIER YARN', 'WINDU SATRIA SENTOSA, PT', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('119', 'TYPE_YARN', '45', 'TYPE YARN', 'ACRYLIC POLY 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('120', 'TYPE_YARN', '46', 'TYPE YARN', 'ACRYLIC RAYON 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('121', 'TYPE_YARN', '47', 'TYPE YARN', 'ACRYLIC WOOL 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('122', 'TYPE_YARN', '48', 'TYPE YARN', 'BAMBOO 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('123', 'TYPE_YARN', '49', 'TYPE YARN', 'BAMBOO 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('124', 'TYPE_YARN', '50', 'TYPE YARN', 'BAMBOO 32/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('125', 'TYPE_YARN', '51', 'TYPE YARN', 'BCI 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('126', 'TYPE_YARN', '52', 'TYPE YARN', 'BCI 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('127', 'TYPE_YARN', '53', 'TYPE YARN', 'BCI 40/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('128', 'TYPE_YARN', '54', 'TYPE YARN', 'CARDED 10/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('129', 'TYPE_YARN', '55', 'TYPE YARN', 'CARDED 16/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('130', 'TYPE_YARN', '56', 'TYPE YARN', 'CARDED 16/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('131', 'TYPE_YARN', '57', 'TYPE YARN', 'CARDED 18.80/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('132', 'TYPE_YARN', '58', 'TYPE YARN', 'CARDED 19.45/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('133', 'TYPE_YARN', '59', 'TYPE YARN', 'CARDED 19.5/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('134', 'TYPE_YARN', '60', 'TYPE YARN', 'CARDED 19/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('135', 'TYPE_YARN', '61', 'TYPE YARN', 'CARDED 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('136', 'TYPE_YARN', '62', 'TYPE YARN', 'CARDED 20/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('137', 'TYPE_YARN', '63', 'TYPE YARN', 'CARDED 21/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('138', 'TYPE_YARN', '64', 'TYPE YARN', 'CARDED 22/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('139', 'TYPE_YARN', '65', 'TYPE YARN', 'CARDED 23/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('140', 'TYPE_YARN', '66', 'TYPE YARN', 'CARDED 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('141', 'TYPE_YARN', '67', 'TYPE YARN', 'CARDED 26/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('142', 'TYPE_YARN', '68', 'TYPE YARN', 'CARDED 28/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('143', 'TYPE_YARN', '69', 'TYPE YARN', 'CARDED 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('144', 'TYPE_YARN', '70', 'TYPE YARN', 'CARDED 32/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('145', 'TYPE_YARN', '71', 'TYPE YARN', 'CARDED 32/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('146', 'TYPE_YARN', '72', 'TYPE YARN', 'CARDED 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('147', 'TYPE_YARN', '73', 'TYPE YARN', 'CARDED 40/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('148', 'TYPE_YARN', '74', 'TYPE YARN', 'CARDED 7/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('149', 'TYPE_YARN', '75', 'TYPE YARN', 'CARDED 8/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('150', 'TYPE_YARN', '76', 'TYPE YARN', 'CARDED BLACK NEP 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('151', 'TYPE_YARN', '77', 'TYPE YARN', 'CARDED RAINBOW 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('152', 'TYPE_YARN', '78', 'TYPE YARN', 'CARDED SENLU NY MO-01 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('153', 'TYPE_YARN', '79', 'TYPE YARN', 'CARDED SLUB 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('154', 'TYPE_YARN', '80', 'TYPE YARN', 'CARDED SLUB 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('155', 'TYPE_YARN', '81', 'TYPE YARN', 'CARDED WHITE NEP 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('156', 'TYPE_YARN', '82', 'TYPE YARN', 'CDP TX 75/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('157', 'TYPE_YARN', '83', 'TYPE YARN', 'CDP TX 75/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('158', 'TYPE_YARN', '84', 'TYPE YARN', 'CDP TX 75/72/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('159', 'TYPE_YARN', '85', 'TYPE YARN', 'CMP 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('160', 'TYPE_YARN', '86', 'TYPE YARN', 'COMBED (S) 80/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('161', 'TYPE_YARN', '87', 'TYPE YARN', 'COMBED 10/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('162', 'TYPE_YARN', '88', 'TYPE YARN', 'COMBED 12/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('163', 'TYPE_YARN', '89', 'TYPE YARN', 'COMBED 12/1 20D', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('164', 'TYPE_YARN', '90', 'TYPE YARN', 'COMBED 16/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('165', 'TYPE_YARN', '91', 'TYPE YARN', 'COMBED 16/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('166', 'TYPE_YARN', '92', 'TYPE YARN', 'COMBED 17/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('167', 'TYPE_YARN', '93', 'TYPE YARN', 'COMBED 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('168', 'TYPE_YARN', '94', 'TYPE YARN', 'COMBED 20/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('169', 'TYPE_YARN', '95', 'TYPE YARN', 'COMBED 23/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('170', 'TYPE_YARN', '96', 'TYPE YARN', 'COMBED 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('171', 'TYPE_YARN', '97', 'TYPE YARN', 'COMBED 24/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('172', 'TYPE_YARN', '98', 'TYPE YARN', 'COMBED 26/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('173', 'TYPE_YARN', '99', 'TYPE YARN', 'COMBED 26/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('174', 'TYPE_YARN', '100', 'TYPE YARN', 'COMBED 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('175', 'TYPE_YARN', '101', 'TYPE YARN', 'COMBED 30/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('176', 'TYPE_YARN', '102', 'TYPE YARN', 'COMBED 30/3', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('177', 'TYPE_YARN', '103', 'TYPE YARN', 'COMBED 32/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('178', 'TYPE_YARN', '104', 'TYPE YARN', 'COMBED 32/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('179', 'TYPE_YARN', '105', 'TYPE YARN', 'COMBED 38/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('180', 'TYPE_YARN', '106', 'TYPE YARN', 'COMBED 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('181', 'TYPE_YARN', '107', 'TYPE YARN', 'COMBED 40/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('182', 'TYPE_YARN', '108', 'TYPE YARN', 'COMBED 50/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('183', 'TYPE_YARN', '109', 'TYPE YARN', 'COMBED 50/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('184', 'TYPE_YARN', '110', 'TYPE YARN', 'COMBED 60/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('185', 'TYPE_YARN', '111', 'TYPE YARN', 'COMBED 60/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('186', 'TYPE_YARN', '112', 'TYPE YARN', 'COMBED 80/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('187', 'TYPE_YARN', '113', 'TYPE YARN', 'COMBED 80/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('188', 'TYPE_YARN', '114', 'TYPE YARN', 'COMBED COMPACT 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('189', 'TYPE_YARN', '115', 'TYPE YARN', 'COMBED COMPACT 23/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('190', 'TYPE_YARN', '116', 'TYPE YARN', 'COMBED COMPACT 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('191', 'TYPE_YARN', '117', 'TYPE YARN', 'COMBED COMPACT 26/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('192', 'TYPE_YARN', '118', 'TYPE YARN', 'COMBED COMPACT 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('193', 'TYPE_YARN', '119', 'TYPE YARN', 'COMBED COMPACT 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('194', 'TYPE_YARN', '120', 'TYPE YARN', 'COMBED COMPACT 50/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('195', 'TYPE_YARN', '121', 'TYPE YARN', 'COMBED COMPACT 60/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('196', 'TYPE_YARN', '122', 'TYPE YARN', 'COMBED COMPACT 60/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('197', 'TYPE_YARN', '123', 'TYPE YARN', 'COMBED HIGH TWIST (S) 80/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('198', 'TYPE_YARN', '124', 'TYPE YARN', 'COMBED HIGH TWIST (S) 80/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('199', 'TYPE_YARN', '125', 'TYPE YARN', 'COMBED HIGH TWIST 80/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('200', 'TYPE_YARN', '126', 'TYPE YARN', 'COMBED HIGH TWIST 80/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('201', 'TYPE_YARN', '127', 'TYPE YARN', 'COMBED ORGANIC 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('202', 'TYPE_YARN', '128', 'TYPE YARN', 'COMBED ORGANIC 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('203', 'TYPE_YARN', '129', 'TYPE YARN', 'COMBED ORGANIC 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('204', 'TYPE_YARN', '130', 'TYPE YARN', 'COMBED ORGANIC 30/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('205', 'TYPE_YARN', '131', 'TYPE YARN', 'COMBED ORGANIC 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('206', 'TYPE_YARN', '132', 'TYPE YARN', 'COMBED POLY DTY 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('207', 'TYPE_YARN', '133', 'TYPE YARN', 'COMBED POLY SD 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('208', 'TYPE_YARN', '134', 'TYPE YARN', 'COMBED SLUB 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('209', 'TYPE_YARN', '135', 'TYPE YARN', 'COMBED SLUB 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('210', 'TYPE_YARN', '136', 'TYPE YARN', 'COOLMAX TX 75/100', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('211', 'TYPE_YARN', '137', 'TYPE YARN', 'COOLMAX TX 75/34', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('212', 'TYPE_YARN', '138', 'TYPE YARN', 'COTTON MODAL 28/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('213', 'TYPE_YARN', '139', 'TYPE YARN', 'COTTON MODAL 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('214', 'TYPE_YARN', '140', 'TYPE YARN', 'COTTON MODAL 30/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('215', 'TYPE_YARN', '141', 'TYPE YARN', 'COTTON MODAL 30/2 20D', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('216', 'TYPE_YARN', '142', 'TYPE YARN', 'COTTON MODAL 35/65 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('217', 'TYPE_YARN', '143', 'TYPE YARN', 'COTTON MODAL 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('218', 'TYPE_YARN', '144', 'TYPE YARN', 'COTTON MODAL 50/50 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('219', 'TYPE_YARN', '145', 'TYPE YARN', 'COTTON MODAL 50/50 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('220', 'TYPE_YARN', '146', 'TYPE YARN', 'COTTON MODAL 52/48 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('221', 'TYPE_YARN', '147', 'TYPE YARN', 'COTTON MODAL 52/48 32/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('222', 'TYPE_YARN', '148', 'TYPE YARN', 'COTTON MODAL 52/48 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('223', 'TYPE_YARN', '149', 'TYPE YARN', 'COTTON MODAL 60/40 28/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('224', 'TYPE_YARN', '150', 'TYPE YARN', 'COTTON MODAL 60/40 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('225', 'TYPE_YARN', '151', 'TYPE YARN', 'COTTON RAYON 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('226', 'TYPE_YARN', '152', 'TYPE YARN', 'COTTON WOOL 80/20 38/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('227', 'TYPE_YARN', '153', 'TYPE YARN', 'CSY 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('228', 'TYPE_YARN', '154', 'TYPE YARN', 'CVC 16/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('229', 'TYPE_YARN', '155', 'TYPE YARN', 'CVC 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('230', 'TYPE_YARN', '156', 'TYPE YARN', 'CVC 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('231', 'TYPE_YARN', '157', 'TYPE YARN', 'CVC 26/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('232', 'TYPE_YARN', '158', 'TYPE YARN', 'CVC 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('233', 'TYPE_YARN', '159', 'TYPE YARN', 'CVC 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('234', 'TYPE_YARN', '160', 'TYPE YARN', 'CVC 50/50 19/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('235', 'TYPE_YARN', '161', 'TYPE YARN', 'CVC 50/50 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('236', 'TYPE_YARN', '162', 'TYPE YARN', 'CVC 50/50 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('237', 'TYPE_YARN', '163', 'TYPE YARN', 'CVC 50/50 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('238', 'TYPE_YARN', '164', 'TYPE YARN', 'CVC 52/48 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('239', 'TYPE_YARN', '165', 'TYPE YARN', 'CVC 52/48 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('240', 'TYPE_YARN', '166', 'TYPE YARN', 'CVC 55/45 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('241', 'TYPE_YARN', '167', 'TYPE YARN', 'CVC 55/45 45/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('242', 'TYPE_YARN', '168', 'TYPE YARN', 'CVC 60/40 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('243', 'TYPE_YARN', '169', 'TYPE YARN', 'CVC 60/40 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('244', 'TYPE_YARN', '170', 'TYPE YARN', 'CVC 60/40 26/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('245', 'TYPE_YARN', '171', 'TYPE YARN', 'CVC 60/40 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('246', 'TYPE_YARN', '172', 'TYPE YARN', 'CVC 60/40 30/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('247', 'TYPE_YARN', '173', 'TYPE YARN', 'CVC 60/40 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('248', 'TYPE_YARN', '174', 'TYPE YARN', 'CVC 60/40 40/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('249', 'TYPE_YARN', '175', 'TYPE YARN', 'CVC 60/40 45/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('250', 'TYPE_YARN', '176', 'TYPE YARN', 'CVC 60/40 SNOW 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('251', 'TYPE_YARN', '177', 'TYPE YARN', 'CVC 70/30 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('252', 'TYPE_YARN', '178', 'TYPE YARN', 'CVC 70/30 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('253', 'TYPE_YARN', '179', 'TYPE YARN', 'CVC 76/24 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('254', 'TYPE_YARN', '180', 'TYPE YARN', 'CVC 76/24 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('255', 'TYPE_YARN', '181', 'TYPE YARN', 'CVC CO-MI 50/50 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('256', 'TYPE_YARN', '182', 'TYPE YARN', 'CVC COMPACT 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('257', 'TYPE_YARN', '183', 'TYPE YARN', 'CVC MELANGE (BCVC 13) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('258', 'TYPE_YARN', '184', 'TYPE YARN', 'CVC MELANGE 68 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('259', 'TYPE_YARN', '185', 'TYPE YARN', 'CVC MELANGE 70 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('260', 'TYPE_YARN', '186', 'TYPE YARN', 'CVC MELANGE 71 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('261', 'TYPE_YARN', '187', 'TYPE YARN', 'CVC MELANGE 71 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('262', 'TYPE_YARN', '188', 'TYPE YARN', 'CVC MELANGE 71 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('263', 'TYPE_YARN', '189', 'TYPE YARN', 'CVC MELANGE 79 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('264', 'TYPE_YARN', '190', 'TYPE YARN', 'CVC MELANGE 81 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('265', 'TYPE_YARN', '191', 'TYPE YARN', 'CVC MELANGE 81 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('266', 'TYPE_YARN', '192', 'TYPE YARN', 'CVC MVS 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('267', 'TYPE_YARN', '193', 'TYPE YARN', 'CVC MVS 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('268', 'TYPE_YARN', '194', 'TYPE YARN', 'CVC PALPA 60/40 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('269', 'TYPE_YARN', '195', 'TYPE YARN', 'CVC RAINBOW 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('270', 'TYPE_YARN', '196', 'TYPE YARN', 'CVC SIRO 50/50 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('271', 'TYPE_YARN', '197', 'TYPE YARN', 'CVC SIRO 50/50 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('272', 'TYPE_YARN', '198', 'TYPE YARN', 'CVC SIRO 54/46 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('273', 'TYPE_YARN', '199', 'TYPE YARN', 'CVC SIRO 54/46 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('274', 'TYPE_YARN', '200', 'TYPE YARN', 'CVC SIRO SLUB 50/50 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('275', 'TYPE_YARN', '201', 'TYPE YARN', 'CVC SIRO SLUB 54/46 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('276', 'TYPE_YARN', '202', 'TYPE YARN', 'CVC SIRO SLUB 54/46 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('277', 'TYPE_YARN', '203', 'TYPE YARN', 'CVC SIRO SLUB MELANGE 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('278', 'TYPE_YARN', '204', 'TYPE YARN', 'CVC SIRO SLUB SNOW 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('279', 'TYPE_YARN', '205', 'TYPE YARN', 'CVC SLUB 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('280', 'TYPE_YARN', '206', 'TYPE YARN', 'CVC SLUB 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('281', 'TYPE_YARN', '207', 'TYPE YARN', 'CVC SLUB 50/50 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('282', 'TYPE_YARN', '208', 'TYPE YARN', 'CVC SLUB 50/50 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('283', 'TYPE_YARN', '209', 'TYPE YARN', 'CVC SLUB CO-MI 50/50 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('284', 'TYPE_YARN', '210', 'TYPE YARN', 'DTY CATIONIC DYEABLE(50/50) TX 75/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('285', 'TYPE_YARN', '211', 'TYPE YARN', 'FANON 10/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('286', 'TYPE_YARN', '212', 'TYPE YARN', 'FANON 10/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('287', 'TYPE_YARN', '213', 'TYPE YARN', 'FANON 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('288', 'TYPE_YARN', '214', 'TYPE YARN', 'FIL 75/36/S960(BRIGHT)', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('289', 'TYPE_YARN', '215', 'TYPE YARN', 'FNCYAC20Z PK X 10/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('290', 'TYPE_YARN', '216', 'TYPE YARN', 'KNSP PIMA 80/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('291', 'TYPE_YARN', '217', 'TYPE YARN', 'KNSP PIMA(50/50) 60/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('292', 'TYPE_YARN', '218', 'TYPE YARN', 'LOTUS 16/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('293', 'TYPE_YARN', '219', 'TYPE YARN', 'LOTUS 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('294', 'TYPE_YARN', '220', 'TYPE YARN', 'LOTUS 8/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('295', 'TYPE_YARN', '221', 'TYPE YARN', 'LUREX (GOLD) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('296', 'TYPE_YARN', '222', 'TYPE YARN', 'LUREX (SILVER) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('297', 'TYPE_YARN', '223', 'TYPE YARN', 'LUREX(SILVER) 1/2 MXP 75 M-01', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('298', 'TYPE_YARN', '224', 'TYPE YARN', 'LUREX(SILVER) 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('299', 'TYPE_YARN', '225', 'TYPE YARN', 'MAKLON', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('300', 'TYPE_YARN', '226', 'TYPE YARN', 'MELANGE (B1067) 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('301', 'TYPE_YARN', '227', 'TYPE YARN', 'MELANGE (B13) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('302', 'TYPE_YARN', '228', 'TYPE YARN', 'MELANGE (ISM ISPG017) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('303', 'TYPE_YARN', '229', 'TYPE YARN', 'MELANGE (ISM ISPG026) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('304', 'TYPE_YARN', '230', 'TYPE YARN', 'MELANGE (ISM150) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('305', 'TYPE_YARN', '231', 'TYPE YARN', 'MELANGE (ISM2B04) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('306', 'TYPE_YARN', '232', 'TYPE YARN', 'MELANGE (ISMA167) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('307', 'TYPE_YARN', '233', 'TYPE YARN', 'MELANGE (ISMB105) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('308', 'TYPE_YARN', '234', 'TYPE YARN', 'MELANGE (ISMB106) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('309', 'TYPE_YARN', '235', 'TYPE YARN', 'MELANGE (ISMB108) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('310', 'TYPE_YARN', '236', 'TYPE YARN', 'MELANGE (ISMBE04) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('311', 'TYPE_YARN', '237', 'TYPE YARN', 'MELANGE (ISMBE34) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('312', 'TYPE_YARN', '238', 'TYPE YARN', 'MELANGE (ISMGR60) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('313', 'TYPE_YARN', '239', 'TYPE YARN', 'MELANGE (ISMGR83) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('314', 'TYPE_YARN', '240', 'TYPE YARN', 'MELANGE (ISMOR30) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('315', 'TYPE_YARN', '241', 'TYPE YARN', 'MELANGE (ISMP3720) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('316', 'TYPE_YARN', '242', 'TYPE YARN', 'MELANGE (ISMPB54) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('317', 'TYPE_YARN', '243', 'TYPE YARN', 'MELANGE (ISMPP57) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('318', 'TYPE_YARN', '244', 'TYPE YARN', 'MELANGE (ISMS927) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('319', 'TYPE_YARN', '245', 'TYPE YARN', 'MELANGE (ISMYE14) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('320', 'TYPE_YARN', '246', 'TYPE YARN', 'MELANGE 46 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('321', 'TYPE_YARN', '247', 'TYPE YARN', 'MELANGE 61 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('322', 'TYPE_YARN', '248', 'TYPE YARN', 'MELANGE 61 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('323', 'TYPE_YARN', '249', 'TYPE YARN', 'MELANGE 68 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('324', 'TYPE_YARN', '250', 'TYPE YARN', 'MELANGE 68 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('325', 'TYPE_YARN', '251', 'TYPE YARN', 'MELANGE 70 (ISM103) 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('326', 'TYPE_YARN', '252', 'TYPE YARN', 'MELANGE 70 (ISM103) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('327', 'TYPE_YARN', '253', 'TYPE YARN', 'MELANGE 70 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('328', 'TYPE_YARN', '254', 'TYPE YARN', 'MELANGE 70 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('329', 'TYPE_YARN', '255', 'TYPE YARN', 'MELANGE 70 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('330', 'TYPE_YARN', '256', 'TYPE YARN', 'MELANGE 70 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('331', 'TYPE_YARN', '257', 'TYPE YARN', 'MELANGE 71 (ISM108) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('332', 'TYPE_YARN', '258', 'TYPE YARN', 'MELANGE 71 (ISM108) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('333', 'TYPE_YARN', '259', 'TYPE YARN', 'MELANGE 71 (ISM108) 60/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('334', 'TYPE_YARN', '260', 'TYPE YARN', 'MELANGE 71 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('335', 'TYPE_YARN', '261', 'TYPE YARN', 'MELANGE 71 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('336', 'TYPE_YARN', '262', 'TYPE YARN', 'MELANGE 71 26/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('337', 'TYPE_YARN', '263', 'TYPE YARN', 'MELANGE 71 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('338', 'TYPE_YARN', '264', 'TYPE YARN', 'MELANGE 71 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('339', 'TYPE_YARN', '265', 'TYPE YARN', 'MELANGE 74 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('340', 'TYPE_YARN', '266', 'TYPE YARN', 'MELANGE 79 (ISM113) 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('341', 'TYPE_YARN', '267', 'TYPE YARN', 'MELANGE 79 (ISM113) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('342', 'TYPE_YARN', '268', 'TYPE YARN', 'MELANGE 79 (ISM117) 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('343', 'TYPE_YARN', '269', 'TYPE YARN', 'MELANGE 79 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('344', 'TYPE_YARN', '270', 'TYPE YARN', 'MELANGE 79 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('345', 'TYPE_YARN', '271', 'TYPE YARN', 'MELANGE 80 (ISM138) 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('346', 'TYPE_YARN', '272', 'TYPE YARN', 'MELANGE 80 (ISM138) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('347', 'TYPE_YARN', '273', 'TYPE YARN', 'MELANGE 80 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('348', 'TYPE_YARN', '274', 'TYPE YARN', 'MELANGE 80 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('349', 'TYPE_YARN', '275', 'TYPE YARN', 'MELANGE 81 (ISM160) 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('350', 'TYPE_YARN', '276', 'TYPE YARN', 'MELANGE 81 (ISM160) 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('351', 'TYPE_YARN', '277', 'TYPE YARN', 'MELANGE 81 (MS700) 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('352', 'TYPE_YARN', '278', 'TYPE YARN', 'MELANGE 81 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('353', 'TYPE_YARN', '279', 'TYPE YARN', 'MELANGE 81 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('354', 'TYPE_YARN', '280', 'TYPE YARN', 'MELANGE 81 32/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('355', 'TYPE_YARN', '281', 'TYPE YARN', 'MELANGE 81 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('356', 'TYPE_YARN', '282', 'TYPE YARN', 'MICRO MODAL 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('357', 'TYPE_YARN', '283', 'TYPE YARN', 'MICRO MODAL 60/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('358', 'TYPE_YARN', '284', 'TYPE YARN', 'MODAL 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('359', 'TYPE_YARN', '285', 'TYPE YARN', 'MODAL 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('360', 'TYPE_YARN', '286', 'TYPE YARN', 'MODAL MVS 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('361', 'TYPE_YARN', '287', 'TYPE YARN', 'MODAL MVS 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('362', 'TYPE_YARN', '288', 'TYPE YARN', 'NF 210 D/1 X 2BR', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('363', 'TYPE_YARN', '289', 'TYPE YARN', 'NYLON 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('364', 'TYPE_YARN', '290', 'TYPE YARN', 'NYLON 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('365', 'TYPE_YARN', '291', 'TYPE YARN', 'NYLON 50/17', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('366', 'TYPE_YARN', '292', 'TYPE YARN', 'NYLON 70/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('367', 'TYPE_YARN', '293', 'TYPE YARN', 'NYLON FIL BRIGHT 70/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('368', 'TYPE_YARN', '294', 'TYPE YARN', 'NYLON FIL SD 70/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('369', 'TYPE_YARN', '295', 'TYPE YARN', 'NYLON TX 50/17', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('370', 'TYPE_YARN', '296', 'TYPE YARN', 'NYLON TX 70/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('371', 'TYPE_YARN', '297', 'TYPE YARN', 'NYLON TX SD 70/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('372', 'TYPE_YARN', '298', 'TYPE YARN', 'OE CARDED 16/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('373', 'TYPE_YARN', '299', 'TYPE YARN', 'OE CARDED 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('374', 'TYPE_YARN', '300', 'TYPE YARN', 'OE CARDED 7/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('375', 'TYPE_YARN', '301', 'TYPE YARN', 'OE CARDED MELANGE ( B 13 ) 16/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('376', 'TYPE_YARN', '302', 'TYPE YARN', 'OE CARDED MELANGE (B13) 16/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('377', 'TYPE_YARN', '303', 'TYPE YARN', 'PCR 45/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('378', 'TYPE_YARN', '304', 'TYPE YARN', 'PCR MELANGE (ISMNP09) 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('379', 'TYPE_YARN', '305', 'TYPE YARN', 'PE (S) 40/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('380', 'TYPE_YARN', '306', 'TYPE YARN', 'PE 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('381', 'TYPE_YARN', '307', 'TYPE YARN', 'PE 20/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('382', 'TYPE_YARN', '308', 'TYPE YARN', 'PE 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('383', 'TYPE_YARN', '309', 'TYPE YARN', 'PE 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('384', 'TYPE_YARN', '310', 'TYPE YARN', 'PE 40/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('385', 'TYPE_YARN', '311', 'TYPE YARN', 'PE 60/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('386', 'TYPE_YARN', '312', 'TYPE YARN', 'PE COMPACT 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('387', 'TYPE_YARN', '313', 'TYPE YARN', 'PE COMPACT 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('388', 'TYPE_YARN', '314', 'TYPE YARN', 'PE MELANGE 71 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('389', 'TYPE_YARN', '315', 'TYPE YARN', 'PE MELANGE 71 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('390', 'TYPE_YARN', '316', 'TYPE YARN', 'PE MELANGE 81 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('391', 'TYPE_YARN', '317', 'TYPE YARN', 'PE MOUSSE 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('392', 'TYPE_YARN', '318', 'TYPE YARN', 'PE MVS 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('393', 'TYPE_YARN', '319', 'TYPE YARN', 'PE MVS 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('394', 'TYPE_YARN', '320', 'TYPE YARN', 'PE MVS 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('395', 'TYPE_YARN', '321', 'TYPE YARN', 'PE SLUB 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('396', 'TYPE_YARN', '322', 'TYPE YARN', 'PE THERMOLITE 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('397', 'TYPE_YARN', '323', 'TYPE YARN', 'PF 150D/3', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('398', 'TYPE_YARN', '324', 'TYPE YARN', 'PIMA 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('399', 'TYPE_YARN', '325', 'TYPE YARN', 'PIMA 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('400', 'TYPE_YARN', '326', 'TYPE YARN', 'PIMA 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('401', 'TYPE_YARN', '327', 'TYPE YARN', 'PIMA 40/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('402', 'TYPE_YARN', '328', 'TYPE YARN', 'PIMA 50/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('403', 'TYPE_YARN', '329', 'TYPE YARN', 'PIMA 60/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('404', 'TYPE_YARN', '330', 'TYPE YARN', 'PIMA 60/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('405', 'TYPE_YARN', '331', 'TYPE YARN', 'PIMA 80/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('406', 'TYPE_YARN', '332', 'TYPE YARN', 'PIMA 80/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('407', 'TYPE_YARN', '333', 'TYPE YARN', 'POLY DTY (TOP DYED) TX 75/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('408', 'TYPE_YARN', '334', 'TYPE YARN', 'POLY DTY 210/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('409', 'TYPE_YARN', '335', 'TYPE YARN', 'POLY DTY 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('410', 'TYPE_YARN', '336', 'TYPE YARN', 'POLY DTY BL COOL TX 100/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('411', 'TYPE_YARN', '337', 'TYPE YARN', 'POLY DTY BL COOL TX 75/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('412', 'TYPE_YARN', '338', 'TYPE YARN', 'POLY DTY CD/RW 50/50 TX 75/72/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('413', 'TYPE_YARN', '339', 'TYPE YARN', 'POLY DTY CDSD TX 75/72/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('414', 'TYPE_YARN', '340', 'TYPE YARN', 'POLY DTY FD TX 100/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('415', 'TYPE_YARN', '341', 'TYPE YARN', 'POLY DTY FD TX 100/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('416', 'TYPE_YARN', '342', 'TYPE YARN', 'POLY DTY FD TX 100/96', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('417', 'TYPE_YARN', '343', 'TYPE YARN', 'POLY DTY FD TX 150/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('418', 'TYPE_YARN', '344', 'TYPE YARN', 'POLY DTY FD TX 50/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('419', 'TYPE_YARN', '345', 'TYPE YARN', 'POLY DTY FD TX 50/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('420', 'TYPE_YARN', '346', 'TYPE YARN', 'POLY DTY FD TX 75/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('421', 'TYPE_YARN', '347', 'TYPE YARN', 'POLY DTY FD TX 75/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('422', 'TYPE_YARN', '348', 'TYPE YARN', 'POLY DTY FD TX 75/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('423', 'TYPE_YARN', '349', 'TYPE YARN', 'POLY DTY FTY 40/75', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('424', 'TYPE_YARN', '350', 'TYPE YARN', 'POLY DTY FTY TX 20/75', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('425', 'TYPE_YARN', '351', 'TYPE YARN', 'POLY DTY FTY TX 40/75', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('426', 'TYPE_YARN', '352', 'TYPE YARN', 'POLY DTY FTY TX 40/75 40D', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('427', 'TYPE_YARN', '353', 'TYPE YARN', 'POLY DTY FTY TX 75/40', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('428', 'TYPE_YARN', '354', 'TYPE YARN', 'POLY DTY FTY TX 75/72/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('429', 'TYPE_YARN', '355', 'TYPE YARN', 'POLY DTY HBY TX 150/96', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('430', 'TYPE_YARN', '356', 'TYPE YARN', 'POLY DTY HBY TX 165/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('431', 'TYPE_YARN', '357', 'TYPE YARN', 'POLY DTY ITY TX 135/108', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('432', 'TYPE_YARN', '358', 'TYPE YARN', 'POLY DTY SD B/W 50/50 TX 150/144', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('433', 'TYPE_YARN', '359', 'TYPE YARN', 'POLY DTY SILKRA TX 135/108', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('434', 'TYPE_YARN', '360', 'TYPE YARN', 'POLY DTY TX 100/144', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('435', 'TYPE_YARN', '361', 'TYPE YARN', 'POLY DTY TX 100/144/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('436', 'TYPE_YARN', '362', 'TYPE YARN', 'POLY DTY TX 100/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('437', 'TYPE_YARN', '363', 'TYPE YARN', 'POLY DTY TX 100/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('438', 'TYPE_YARN', '364', 'TYPE YARN', 'POLY DTY TX 150/144', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('439', 'TYPE_YARN', '365', 'TYPE YARN', 'POLY DTY TX 150/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('440', 'TYPE_YARN', '366', 'TYPE YARN', 'POLY DTY TX 150/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('441', 'TYPE_YARN', '367', 'TYPE YARN', 'POLY DTY TX 150/96', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('442', 'TYPE_YARN', '368', 'TYPE YARN', 'POLY DTY TX 200/68', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('443', 'TYPE_YARN', '369', 'TYPE YARN', 'POLY DTY TX 200/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('444', 'TYPE_YARN', '370', 'TYPE YARN', 'POLY DTY TX 30/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('445', 'TYPE_YARN', '371', 'TYPE YARN', 'POLY DTY TX 300/96', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('446', 'TYPE_YARN', '372', 'TYPE YARN', 'POLY DTY TX 40/75', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('447', 'TYPE_YARN', '373', 'TYPE YARN', 'POLY DTY TX 50/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('448', 'TYPE_YARN', '374', 'TYPE YARN', 'POLY DTY TX 50/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('449', 'TYPE_YARN', '375', 'TYPE YARN', 'POLY DTY TX 50/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('450', 'TYPE_YARN', '376', 'TYPE YARN', 'POLY DTY TX 50/72/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('451', 'TYPE_YARN', '377', 'TYPE YARN', 'POLY DTY TX 75/100', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('452', 'TYPE_YARN', '378', 'TYPE YARN', 'POLY DTY TX 75/144', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('453', 'TYPE_YARN', '379', 'TYPE YARN', 'POLY DTY TX 75/144/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('454', 'TYPE_YARN', '380', 'TYPE YARN', 'POLY DTY TX 75/34', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('455', 'TYPE_YARN', '381', 'TYPE YARN', 'POLY DTY TX 75/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('456', 'TYPE_YARN', '382', 'TYPE YARN', 'POLY DTY TX 75/36/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('457', 'TYPE_YARN', '383', 'TYPE YARN', 'POLY DTY TX 75/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('458', 'TYPE_YARN', '384', 'TYPE YARN', 'POLY DTY TX 75/72 20D', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('459', 'TYPE_YARN', '385', 'TYPE YARN', 'POLY DTY TX 75/72/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('460', 'TYPE_YARN', '386', 'TYPE YARN', 'POLY DTY TX 80/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('461', 'TYPE_YARN', '387', 'TYPE YARN', 'POLY DTY TX.30/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('462', 'TYPE_YARN', '388', 'TYPE YARN', 'POLY FIL BRIGHT TX 75/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('463', 'TYPE_YARN', '389', 'TYPE YARN', 'POLY FIL MONO 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('464', 'TYPE_YARN', '390', 'TYPE YARN', 'POLY FIL MONO 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('465', 'TYPE_YARN', '391', 'TYPE YARN', 'POLY FIL SD TX 100/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('466', 'TYPE_YARN', '392', 'TYPE YARN', 'POLY FIL SD TX 100/96', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('467', 'TYPE_YARN', '393', 'TYPE YARN', 'POLY FIL SD TX 135/108', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('468', 'TYPE_YARN', '394', 'TYPE YARN', 'POLY FIL SD TX 75/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('469', 'TYPE_YARN', '395', 'TYPE YARN', 'POLY FIL SD TX.30/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('470', 'TYPE_YARN', '396', 'TYPE YARN', 'POLY SD TX 100/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('471', 'TYPE_YARN', '397', 'TYPE YARN', 'POLY SD TX 75/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('472', 'TYPE_YARN', '398', 'TYPE YARN', 'POLY SD TX 75/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('473', 'TYPE_YARN', '399', 'TYPE YARN', 'POLY SD TX 80/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('474', 'TYPE_YARN', '400', 'TYPE YARN', 'POLY TF 10/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('475', 'TYPE_YARN', '401', 'TYPE YARN', 'POLY TF 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('476', 'TYPE_YARN', '402', 'TYPE YARN', 'POLY TF 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('477', 'TYPE_YARN', '403', 'TYPE YARN', 'POLY TF TX 100/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('478', 'TYPE_YARN', '404', 'TYPE YARN', 'POLY TF TX 100/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('479', 'TYPE_YARN', '405', 'TYPE YARN', 'POLY TF TX 100/96', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('480', 'TYPE_YARN', '406', 'TYPE YARN', 'POLY TF TX 150/3', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('481', 'TYPE_YARN', '407', 'TYPE YARN', 'POLY TF TX 150/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('482', 'TYPE_YARN', '408', 'TYPE YARN', 'POLY TF TX 150/96', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('483', 'TYPE_YARN', '409', 'TYPE YARN', 'POLY TF TX 50/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('484', 'TYPE_YARN', '410', 'TYPE YARN', 'POLY TF TX 70/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('485', 'TYPE_YARN', '411', 'TYPE YARN', 'POLY TF TX 75/12', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('486', 'TYPE_YARN', '412', 'TYPE YARN', 'POLY TF TX 75/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('487', 'TYPE_YARN', '413', 'TYPE YARN', 'POLY TFBR TX 100/48', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('488', 'TYPE_YARN', '414', 'TYPE YARN', 'POLY TFBR TX 150/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('489', 'TYPE_YARN', '415', 'TYPE YARN', 'POLY TFBR TX 50/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('490', 'TYPE_YARN', '416', 'TYPE YARN', 'POLY TFBR TX 75/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('491', 'TYPE_YARN', '417', 'TYPE YARN', 'POLY TFFD TX 150/72', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('492', 'TYPE_YARN', '418', 'TYPE YARN', 'POLY TFSD TX 100/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('493', 'TYPE_YARN', '419', 'TYPE YARN', 'POLY TFSD TX 100/96', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('494', 'TYPE_YARN', '420', 'TYPE YARN', 'POLY TFSD TX 150/96', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('495', 'TYPE_YARN', '421', 'TYPE YARN', 'POLY TFSD TX 50/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('496', 'TYPE_YARN', '422', 'TYPE YARN', 'POLY TFSD TX 75/24', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('497', 'TYPE_YARN', '423', 'TYPE YARN', 'POLY TFSD TX 75/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('498', 'TYPE_YARN', '424', 'TYPE YARN', 'PRN 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('499', 'TYPE_YARN', '425', 'TYPE YARN', 'RAYON 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('500', 'TYPE_YARN', '426', 'TYPE YARN', 'RAYON 25/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('501', 'TYPE_YARN', '427', 'TYPE YARN', 'RAYON 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('502', 'TYPE_YARN', '428', 'TYPE YARN', 'RAYON 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('503', 'TYPE_YARN', '429', 'TYPE YARN', 'RAYON 60/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('504', 'TYPE_YARN', '430', 'TYPE YARN', 'RAYON COTTON 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('505', 'TYPE_YARN', '431', 'TYPE YARN', 'RAYON COTTON 35/65 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('506', 'TYPE_YARN', '432', 'TYPE YARN', 'RAYON COTTON 50/50 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('507', 'TYPE_YARN', '433', 'TYPE YARN', 'RAYON COTTON 60/40 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('508', 'TYPE_YARN', '434', 'TYPE YARN', 'RAYON MELANGE H105 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('509', 'TYPE_YARN', '435', 'TYPE YARN', 'RAYON MODAL 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('510', 'TYPE_YARN', '436', 'TYPE YARN', 'RAYON MVS 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('511', 'TYPE_YARN', '437', 'TYPE YARN', 'RAYON MVS 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('512', 'TYPE_YARN', '438', 'TYPE YARN', 'RAYON MVS SLUB 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('513', 'TYPE_YARN', '439', 'TYPE YARN', 'RAYON POLY 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('514', 'TYPE_YARN', '440', 'TYPE YARN', 'RAYON POLY HITAM 50/50 15/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('515', 'TYPE_YARN', '441', 'TYPE YARN', 'RAYON SLUB 25/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('516', 'TYPE_YARN', '442', 'TYPE YARN', 'RAYON SLUB 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('517', 'TYPE_YARN', '443', 'TYPE YARN', 'SPANDEX 20D', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('518', 'TYPE_YARN', '444', 'TYPE YARN', 'SPANDEX 30D', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('519', 'TYPE_YARN', '445', 'TYPE YARN', 'SPANDEX 40D', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('520', 'TYPE_YARN', '446', 'TYPE YARN', 'SPANDEX 70D', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('521', 'TYPE_YARN', '447', 'TYPE YARN', 'SPECIAL 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('522', 'TYPE_YARN', '448', 'TYPE YARN', 'SPECIAL 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('523', 'TYPE_YARN', '449', 'TYPE YARN', 'SPINAIR 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('524', 'TYPE_YARN', '450', 'TYPE YARN', 'TC 50/50 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('525', 'TYPE_YARN', '451', 'TYPE YARN', 'TC 50/50 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('526', 'TYPE_YARN', '452', 'TYPE YARN', 'TC 50/50 45/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('527', 'TYPE_YARN', '453', 'TYPE YARN', 'TC 50/50 SLUB 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('528', 'TYPE_YARN', '454', 'TYPE YARN', 'TC 65/35 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('529', 'TYPE_YARN', '455', 'TYPE YARN', 'TC 65/35 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('530', 'TYPE_YARN', '456', 'TYPE YARN', 'TC 65/35 28/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('531', 'TYPE_YARN', '457', 'TYPE YARN', 'TC 65/35 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('532', 'TYPE_YARN', '458', 'TYPE YARN', 'TC 65/35 30/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('533', 'TYPE_YARN', '459', 'TYPE YARN', 'TC 65/35 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('534', 'TYPE_YARN', '460', 'TYPE YARN', 'TC 65/35 45/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('535', 'TYPE_YARN', '461', 'TYPE YARN', 'TC 65/35 45/2', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('536', 'TYPE_YARN', '462', 'TYPE YARN', 'TC 70/30 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('537', 'TYPE_YARN', '463', 'TYPE YARN', 'TC 80/20 28/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('538', 'TYPE_YARN', '464', 'TYPE YARN', 'TC MELANGE 70 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('539', 'TYPE_YARN', '465', 'TYPE YARN', 'TC MELANGE 71 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('540', 'TYPE_YARN', '466', 'TYPE YARN', 'TC MELANGE 71 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('541', 'TYPE_YARN', '467', 'TYPE YARN', 'TC MELANGE 81 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('542', 'TYPE_YARN', '468', 'TYPE YARN', 'TC MVS 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('543', 'TYPE_YARN', '469', 'TYPE YARN', 'TC MVS 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('544', 'TYPE_YARN', '470', 'TYPE YARN', 'TCR 24/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('545', 'TYPE_YARN', '471', 'TYPE YARN', 'TCR 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('546', 'TYPE_YARN', '472', 'TYPE YARN', 'TCR 32/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('547', 'TYPE_YARN', '473', 'TYPE YARN', 'TCR CHIP 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('548', 'TYPE_YARN', '474', 'TYPE YARN', 'TCR MELANGE 80 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('549', 'TYPE_YARN', '475', 'TYPE YARN', 'TCR MVS 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('550', 'TYPE_YARN', '476', 'TYPE YARN', 'TCR MVS RECYCLE 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('551', 'TYPE_YARN', '477', 'TYPE YARN', 'TCR SC 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('552', 'TYPE_YARN', '478', 'TYPE YARN', 'TCR SPC 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('553', 'TYPE_YARN', '479', 'TYPE YARN', 'TCR SPC 32/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('554', 'TYPE_YARN', '480', 'TYPE YARN', 'TENCEL 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('555', 'TYPE_YARN', '481', 'TYPE YARN', 'TR 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('556', 'TYPE_YARN', '482', 'TYPE YARN', 'TR 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('557', 'TYPE_YARN', '483', 'TYPE YARN', 'TR 50/50 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('558', 'TYPE_YARN', '484', 'TYPE YARN', 'TR 50/50 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('559', 'TYPE_YARN', '485', 'TYPE YARN', 'TR 50/50 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('560', 'TYPE_YARN', '486', 'TYPE YARN', 'TR 50/50 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('561', 'TYPE_YARN', '487', 'TYPE YARN', 'TR 67/33 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('562', 'TYPE_YARN', '488', 'TYPE YARN', 'TR 67/33 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('563', 'TYPE_YARN', '489', 'TYPE YARN', 'TR 67/33 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('564', 'TYPE_YARN', '490', 'TYPE YARN', 'TR 67/33 MVS 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('565', 'TYPE_YARN', '491', 'TYPE YARN', 'TR 67/33 MVS 40/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('566', 'TYPE_YARN', '492', 'TYPE YARN', 'TR MELANGE 71 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('567', 'TYPE_YARN', '493', 'TYPE YARN', 'TR MVS 20/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('568', 'TYPE_YARN', '494', 'TYPE YARN', 'TWIST DTYCM TX 100/144', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('569', 'TYPE_YARN', '495', 'TYPE YARN', 'TWIST DTYCM TX 100/36', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('570', 'TYPE_YARN', '496', 'TYPE YARN', 'TWIST TCRCVC 15/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('571', 'TYPE_YARN', '497', 'TYPE YARN', 'TWIST TCRDTY 30/1', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('572', 'CASE_NCR_CMP', '12', 'CMP', 'Salah Corak/Desain', '0', '', '1', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('573', 'CASE_NCR_CMP', '13', 'CMP', 'Lain-lain', '0', '', '1', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('574', 'DEPT_PG', '1', 'PG', 'Subcont Dyeing', '0', '', '1', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('575', 'CASE_NCR_NCP', '12', 'NCP', 'Lain-lain', '0', null, '1', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00');
INSERT INTO `commons` VALUES ('576', 'DEPT_RM', '1', 'RM', 'Raw Material', '0', null, '1', null, '0000-00-00 00:00:00', null, '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_name` varchar(255) DEFAULT '',
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `div_id` int(11) NOT NULL,
  `div_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT '',
  `email` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT '',
  `is_usable` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) NOT NULL,
  `create_date` varchar(255) DEFAULT '',
  `update_user` bigint(20) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT '',
  PRIMARY KEY (`employee_id`) USING BTREE,
  KEY `employe_id` (`employee_id`) USING BTREE,
  KEY `employe_id_2` (`employee_id`) USING BTREE,
  CONSTRAINT `fk_employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('1', 'David', '10', 'MAN', '1', 'MAN', 'Management', '', 'david@gmail.com', ' ', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('2', 'Novita', '1', 'MKS', '1', 'MKT', 'PA', '', 'novita@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('3', 'Rida', '1', 'MKS', '1', 'MKT', 'SPV', '', 'rida@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('4', 'Elis', '1', 'MKS', '1', 'MKT', 'SPV', '', 'elis@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('5', 'Agat', '1', 'MKS', '2', 'R&D', 'Head', '', 'agat@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('6', 'Topan', '2', 'QC', '1', 'QC_INC', 'QC', '', 'topan@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('7', 'Iyan', '2', 'QC', '2', 'QC_GR', 'Head', '', 'iyan@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('8', 'Susan', '4', 'COMP', '1', 'HRD', 'Head', '', 'susan@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('9', 'Paulus', '4', 'COMP', '2', 'GA', 'Head', '', 'paulus@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('10', 'Ajat', '4', 'COMP', '3', 'MR', 'Head', '', 'ajat@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('11', 'Ros', '4', 'COMP', '1', 'MR', 'Staff', 'Karawang', 'ros@gmail.com', '082929299999', '', '1', '0', '', '5', '');
INSERT INTO `employees` VALUES ('12', 'Nancy', '5', 'FIN', '1', 'PUR', 'Head', '', 'nancy@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('13', 'Apriadi', '6', 'PRD', '1', 'KNIT', 'Head', '', 'apriadi@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('14', 'Mitra', '6', 'PRD', '2', 'FT', 'Head', '', 'mitra@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('15', 'Puji', '6', 'PRD', '3', 'PPIC', 'Staff', '', 'puji@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('16', 'Wakhuli', '7', 'WH', '3', 'WHGR', 'Head', '', 'wakhuli@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('17', 'Afan', '7', 'WH', '2', 'WHSP', 'Head', '', 'afan@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('18', 'Edi', '7', 'WH', '4', 'WHFG', 'Head', '', 'edi@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('19', 'Dini', '7', 'WH', '1', 'WHRM', 'Staff', '', 'dini@gmail.com', '', '', '', '0', '', '0', '');
INSERT INTO `employees` VALUES ('20', 'Wono PG', '9', 'PG', '9', 'Subcont Celup', 'Subcont', '-', 'wono@gmail.com', '-', '-', '1', '0', '-', '0', '-');
INSERT INTO `employees` VALUES ('31', 'Tusi', '4', 'COMP', '1', 'HRD', 'Staff', '', 'tusi@gmail.com', null, '', '1', '0', '', '0', '');
INSERT INTO `employees` VALUES ('32', 'Wahyu', '4', 'COMP', '2', 'GA', 'Staff', '', 'wahyu@gmail.com', null, '', '1', '0', '', '0', '');
INSERT INTO `employees` VALUES ('33', 'Cepi', '6', 'PROD', '1', 'KNIT', 'Staff', '', 'cepi@gmail.com', null, '', '1', '0', '', null, '');
INSERT INTO `employees` VALUES ('34', 'Iis', '6', 'PROD', '1', 'KNIT', 'Staff', '', 'iis@gmail.com', null, '', '1', '0', '', null, '');
INSERT INTO `employees` VALUES ('35', 'Mamay', '7', 'WH', '3', 'WHGR', 'Staff', '', 'mamay@gmail.com', null, '', null, '0', '', null, '');
INSERT INTO `employees` VALUES ('36', 'Risma', '1', 'MKS', '2', 'R&D', 'Staff', '', 'risma@gmail.com', null, '', null, '0', '', null, '');
INSERT INTO `employees` VALUES ('39', 'Jajang', '3', 'RM', '1', 'RM', 'Staff', '', 'jajang@gmail.com', null, '', null, '0', '', null, '');

-- ----------------------------
-- Table structure for moduls
-- ----------------------------
DROP TABLE IF EXISTS `moduls`;
CREATE TABLE `moduls` (
  `modul_id` int(11) NOT NULL AUTO_INCREMENT,
  `modul_name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_usable` varchar(255) DEFAULT '',
  `create_user` bigint(20) NOT NULL,
  `create_date` varchar(255) DEFAULT '',
  `update_user` bigint(20) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT '',
  PRIMARY KEY (`modul_id`) USING BTREE,
  UNIQUE KEY `idx_moduls_modul_id` (`modul_id`),
  KEY `modul_id` (`modul_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of moduls
-- ----------------------------
INSERT INTO `moduls` VALUES ('1', 'Dashboard', '', '', '0', '', '0', '');
INSERT INTO `moduls` VALUES ('2', 'Create', '', '', '0', '', '0', '');
INSERT INTO `moduls` VALUES ('3', 'Out Standing', '', '', '0', '', '0', '');
INSERT INTO `moduls` VALUES ('4', 'CAPA', '', '', '0', '', '0', '');
INSERT INTO `moduls` VALUES ('5', 'Report', '', '', '0', '', '0', '');

-- ----------------------------
-- Table structure for modul_permisions
-- ----------------------------
DROP TABLE IF EXISTS `modul_permisions`;
CREATE TABLE `modul_permisions` (
  `modul_permision_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `user_group` varchar(255) DEFAULT NULL,
  `modul_id` int(11) NOT NULL,
  `modul_name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT '',
  `is_usable` varchar(255) DEFAULT '',
  `create_user` bigint(20) NOT NULL,
  `create_date` varchar(255) DEFAULT '',
  `update_user` bigint(20) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT '',
  `modull_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`modul_permision_id`) USING BTREE,
  KEY `fk_modul_id` (`modul_id`) USING BTREE,
  KEY `idx_modul_permisions_modul_id` (`modul_id`),
  CONSTRAINT `fk_modul_permisions_moduls` FOREIGN KEY (`modul_id`) REFERENCES `moduls` (`modul_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of modul_permisions
-- ----------------------------
INSERT INTO `modul_permisions` VALUES ('1', '1', 'Super User', '1', 'Dashboard', 'Sukses Selalu Ya', '1', '0', '', '6', '', '0');
INSERT INTO `modul_permisions` VALUES ('2', '1', 'Super User', '2', 'Create', '', '', '0', '', '0', '', '0');
INSERT INTO `modul_permisions` VALUES ('3', '1', 'Super User', '3', 'Out Standing', '', '', '0', '', '0', '', '0');
INSERT INTO `modul_permisions` VALUES ('4', '1', 'Super User', '4', 'CAPA', '', '', '0', '', '0', '', '0');
INSERT INTO `modul_permisions` VALUES ('5', '1', 'Super User', '5', 'Report', '', '', '0', '', '0', '', '0');
INSERT INTO `modul_permisions` VALUES ('6', '2', 'Management', '1', 'Dashboard', '', '', '0', '', '0', '', '0');
INSERT INTO `modul_permisions` VALUES ('7', '2', 'Management', '2', 'Create', '', '', '0', '', '0', '', '0');
INSERT INTO `modul_permisions` VALUES ('8', '2', 'Management', '5', 'Report', '', '', '0', '', '0', '', '0');
INSERT INTO `modul_permisions` VALUES ('9', '3', 'Admin User', '2', 'Create', '', '', '0', '', '0', '', '0');
INSERT INTO `modul_permisions` VALUES ('10', '3', 'Admin User', '3', 'Out Standing', '', '', '0', '', '0', '', '0');

-- ----------------------------
-- Table structure for tickets
-- ----------------------------
DROP TABLE IF EXISTS `tickets`;
CREATE TABLE `tickets` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_type` varchar(255) DEFAULT '',
  `no_ticket` bigint(20) DEFAULT NULL,
  `type_ncr` varchar(255) DEFAULT '',
  `case` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  `send_to` varchar(255) DEFAULT '',
  `forward_default` varchar(255) DEFAULT '',
  `send_ncr` varchar(255) DEFAULT '',
  `corrective_action` text CHARACTER SET cp852 DEFAULT NULL,
  `preventive_action` text CHARACTER SET cp852 DEFAULT NULL,
  `capa_user` varchar(255) DEFAULT '',
  `capa_date` varchar(255) DEFAULT '',
  `verification` varchar(255) DEFAULT '',
  `verification_date` varchar(255) DEFAULT '',
  `verification_user` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT '',
  `validation_date` varchar(255) DEFAULT '',
  `comment` text DEFAULT NULL,
  `confirm` varchar(255) DEFAULT '',
  `is_usable` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT '',
  PRIMARY KEY (`ticket_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tickets
-- ----------------------------
INSERT INTO `tickets` VALUES ('122', 'NCR', '1', 'CMP', 'Stripe Tidak Sesuai', '>> Problem, stripe warna true navy terkontaminasi 1ply benang warna white, sudah kerajut 7roll\nsisa roll lain nya sesuai PO\n\nSO#2YG.0045/JSP\nItem : SINGLE LACOSTE 2 X 1 COMBED 24/1 180 70\"\nColor : Pabble 14-1112/Snow White 11-0602/True Navy 19-4030\nQty Or', 'KNIT', 'MR', 'PPIC', 'ya ya gua salah dah', 'udah udah gua ngaku', '', '2021-09-23 17:08:19.962767', 'Laporan diterima, selanjutnya akan di analisa oleh tim terkait', '2021-09-23 17:06:07.738255', 'Ajat', 'Closed', '2021-09-23 17:11:36.553533', 'Case terjadi di internal selanjutnya akan di usahakan agar case tidak terulang kembali ok ok ok ok iya iya iya\n', 'Conform', 'Y', '2', '2021-09-23 17:02:41.289235', '10', '2021-09-23 17:11:36.553605');
INSERT INTO `tickets` VALUES ('123', 'NCR', '1', 'BAP', 'Basah', 'Benang basah pada saat penerimaan di WH RM pada tanggal 12 Agustus 2021, di temupan pada area dekat wing box mobil', 'PUR', '-', 'WHRM', '-', '-', '', '-', 'laporan di tolak karena barang masih dapat diterima', '2021-09-23 17:25:48.708575', 'null', 'Closed', '-', '', 'Reject', 'Y', '19', '2021-09-23 17:24:11.622428', '10', '2021-09-23 17:25:48.708605');
INSERT INTO `tickets` VALUES ('124', 'NCR', '1', 'CMP', 'Vertical Line', 'hababahshsbbsbs', 'PPIC', '-', '-', '-', '-', '', '-', '-', '-', '-', 'Open', '-', '', '-', 'Y', '10', '2021-09-23 18:36:15.965108', '10', '');
INSERT INTO `tickets` VALUES ('128', 'NCR', '1', 'BAP', 'Basah', 'Ditemukan produk basah didekat wing box, kedatangan 13 Sept 21 sebanyak 40 carton box (520 kg)', 'PUR', 'MR', 'PUR', 'Barang akan di retur sebanyak 40 carton box (520 kg)', 'pihak supplier akan melakukan perapihan pada wing box sehingga tidak akan ada lagi kebocoran pada wing box mobil', '', '2021-09-23 19:02:23.602327', 'Benang basah dan kemungkinan jika kering akan rapuh', '2021-09-23 18:59:44.054978', 'Ajat', 'Closed', '2021-09-23 19:05:15.409422', 'Laporan diterima', 'Conform', 'Y', '19', '2021-09-23 18:57:42.645251', '10', '2021-09-23 19:05:15.409453');
INSERT INTO `tickets` VALUES ('130', 'NCR', '1', 'IA', 'NCR', 'bla bla bla', 'GA', 'MR', 'HRD', 'maaf', 'kita benerin', '', '2021-09-24 09:29:28.515030', 'oke verifikasi', '2021-09-24 09:27:50.140015', 'Ajat', 'Closed', '2021-09-24 09:31:04.083562', 'beres', 'Conform', 'Y', '2', '2021-09-24 09:25:40.392090', '10', '2021-09-24 09:31:04.083673');
INSERT INTO `tickets` VALUES ('131', 'NCR', '1', 'NCP', 'Garis Minyak', 'bla bla bla', 'KNIT', 'MR', 'HRD', 'tet', 'tezt', '', '2021-09-24 10:14:17.428376', 'oke', '2021-09-24 10:11:07.771646', 'Ajat', 'Closed', '2021-09-24 10:14:55.924470', 'oke siap', 'Conform', 'Y', '7', '2021-09-24 10:08:44.607235', '10', '2021-09-24 10:14:55.924540');
INSERT INTO `tickets` VALUES ('132', 'NCR', '1', 'NCP', 'Tetes Minyak', 'my 01 banyak tetes munyak di 2 cm dekat finis. ', 'KNIT', 'MR', 'KNIT', 'jjjkkk', 'cgg', '', '2021-09-24 13:56:59.687724', 'Ncr sudah kami terima, akan segera kami proses.', '2021-09-24 13:54:38.338040', 'Ros', 'Closed', '2021-09-24 13:58:35.981667', 'Case ini benar terjadi di internal dan sudaj dilakukan perbaikan.', 'Conform', 'Y', '7', '2021-09-24 13:56:53.249342', '11', '2021-09-24 13:58:35.981700');
INSERT INTO `tickets` VALUES ('133', 'NCR', '1', 'NCP', 'Jarum Rusak', 'Pada saat mesin FU055 sedang produksi terjadi patah jarum, kemudian operator meminta jarum ke bagian sparepart dan mengganti jarum. setelah pergantian jarum dan melanjutkan produksi lagi ada komplain dari qc bahwa kain garis. kemudian setelah di periksa t', 'WHSP', '-', '-', '-', '-', '', '-', '-', '-', '-', 'Open', '-', '', '-', 'Y', '33', '2021-09-24 13:51:43.664840', '33', '');
INSERT INTO `tickets` VALUES ('134', 'NCR', '1', 'NCP', 'Belang MPF', 'saat produksi terdapat komplainan dari QC bahwa terjadi belang MPF di MC FU126 sbnyak 5roll, setelah di cek ternyata operator sebelumnya ada perbaikan jebol dan di perbaiki tapi benang tidak di lilit kembali jadi menyebabkan belang MPF.', 'KNIT', 'MR', 'KNIT', 'melilit benang ke mpf yang sebelumnya tidak di lilit ke mpf, lilitan ke mpf minimal 15 lilitan', 'di ingatkan kembali kepada operator agar selalu manjalankan pekerjaan sesuai SOP dan lebih teliti lagi dalam pengecekan mesin sebelum menjalankan mesin.', '', '2021-09-24 14:07:45.447313', 'Ncr sudah kami terima. akan segera di proses', '2021-09-24 14:00:26.721232', 'Ros', 'Closed', '2021-09-24 14:09:32.449380', 'Tolong diupload dokumen analisanya ', 'Conform', 'Y', '34', '2021-09-24 13:53:19.750513', '11', '2021-09-24 14:09:32.449413');
INSERT INTO `tickets` VALUES ('140', 'NCR', '1', 'NCP', 'Jarum Patah', 'Adanya patah jarum pada SO 2YI.0123 pdo 211005666 dengan quantity 20kg pada hari Senin 24 Agustus 2021 ditemukan oleh kepala gudang greige dan ditujukkan untuk QC. ', 'QC_GR', 'MR', 'QC_GR', 'jjjj', 'Hhh', '', '2021-09-24 14:48:47.827240', 'NCR sudah kami terima. Akan segera kami proses.', '2021-09-24 14:46:39.775611', 'Ros', 'Closed', '2021-09-24 14:50:12.105238', 'Case tetjadi di internal', 'Conform', 'Y', '35', '2021-09-24 14:40:00.235081', '11', '2021-09-24 14:50:12.105272');
INSERT INTO `tickets` VALUES ('143', 'NCR', '1', 'NCP', 'Lain-lain', 'di mesin jl 52 ditemukan sparepart yang tidak lengkap..(simbal magnet mpf ada yang hilang)', 'KNIT', '-', 'PUR', '-', '-', '', '-', 'NCR sudah kami terima. Namun gambar belum jelas. Mohon dilengkapi lagi', '2021-09-24 14:44:09.002889', 'null', 'Closed', '-', '', 'Reject', 'Y', '17', '2021-09-24 14:40:41.837706', '11', '2021-09-24 14:44:09.002928');
INSERT INTO `tickets` VALUES ('144', 'NCR', '1', 'BAP', 'Kurang Kirim', 'Tanggal 18-09-21 cm 40 Kondobo lot 09A 180 dus 8164.8kg selisih 75,65kg dari hasil test timbang.  Hasil dari Qty timbang menjadi 8089.15kg 1.2% persentase yang melebihi 0.5%', 'PUR', '-', '-', '-', '-', '', '-', '-', '-', '-', 'Open', '-', '', '-', 'Y', '19', '2021-09-24 14:41:44.601860', '19', '');
INSERT INTO `tickets` VALUES ('145', 'NCR', '1', 'IA', 'NCR', 'pemenuhan pembelian terutama untuk cetakan form baru terlalu lama. menunggu penawaran harga sampai 1 bulan. ', 'PUR', 'MR', 'PUR', 'aaa', 'bbbb', '', '2021-09-24 15:34:41.917228', 'sss', '2021-09-24 15:33:24.857441', 'Ros', 'Closed', '2021-09-24 15:35:24.185257', 'nnnj', 'Non Conform', 'Y', '8', '2021-09-24 15:31:10.202138', '11', '2021-09-24 15:35:24.185292');
INSERT INTO `tickets` VALUES ('146', 'NCR', '1', 'SM', 'Tidak Tercapai', 'Sasaran mutu tidak tercapai bulan januari 2021. target 100% namun tercapai 90%. tolong dijelaskan ada problem apa?', 'GA', 'MR', 'MR', '-', '-', 'null', '2021-09-24 16:31:51.497051', '-', '2021-09-24 16:04:34.565156', '', 'CAPA', '-', '', '-', 'Y', '11', '2021-09-24 15:31:49.511190', '10', '2021-09-24 16:31:51.497107');
INSERT INTO `tickets` VALUES ('147', 'NCR', '1', 'IA', 'NCR', 'penomoran Iso masih yang lama, belum terupdate', 'KNIT', '-', '-', '-', '-', '', '-', '-', '-', '-', 'Open', '-', '', '-', 'Y', '31', '2021-09-24 15:32:03.628473', '31', '');
INSERT INTO `tickets` VALUES ('148', 'NCR', '1', 'SM', 'Tidak Tercapai', 'sasaran mutu januari 2021', 'HRD', '-', '-', '-', '-', '', '-', '-', '-', '-', 'Open', '-', '', '-', 'Y', '11', '2021-09-24 15:37:41.080862', '11', '');
INSERT INTO `tickets` VALUES ('149', 'NCR', '1', 'SM', 'Tidak Tercapai', 'sasaran mutu tidak tercapai', 'HRD', '-', '-', '-', '-', '', '-', '-', '-', '-', 'Open', '-', '', '-', 'Y', '11', '2021-09-24 15:43:17.345508', '11', '');
INSERT INTO `tickets` VALUES ('150', 'NCR', '1', 'IA', 'OB', 'intwrnal audit', 'HRD', '-', '-', '-', '-', '', '-', '-', '-', '-', 'Open', '-', '', '-', 'Y', '11', '2021-09-24 15:44:30.656140', '11', '');
INSERT INTO `tickets` VALUES ('151', 'NCR', '1', 'SM', 'Tidak Tercapai', '0', 'HRD', '-', '-', '-', '-', '', '-', '-', '-', '-', 'Open', '-', '', '-', 'Y', '11', '2021-09-24 15:46:16.797994', '11', '');
INSERT INTO `tickets` VALUES ('152', 'NCR', '1', 'SM', 'Report Invalid', '-', 'PUR', '-', 'HRD', '-', '-', '', '-', 'hhhh', '2021-09-24 16:39:51.199566', 'null', 'Outstanding', '-', '', '-', 'Y', '31', '2021-09-24 15:55:23.500478', '10', '2021-09-24 16:39:51.199605');
INSERT INTO `tickets` VALUES ('153', 'NCR', '1', 'CMP', 'Belang', '-', 'GA', '-', '-', '-', '-', '', '-', '-', '-', '-', 'Open', '-', '', '-', 'Y', '9', '2021-09-24 16:11:20.603229', '9', '');
INSERT INTO `tickets` VALUES ('154', 'NCR', '1', 'SM', 'Tidak Tercapai', 'jshdgehsh', 'MR', 'MR', 'MR', 'bububububu', 'bububububu', '', '2021-09-24 16:46:01.832105', 'ok bu kita ngaku salah', '2021-09-24 16:45:33.807135', 'Ajat', 'Closed', '2021-09-24 16:46:16.475004', 'ok', 'Non Conform', 'Y', '8', '2021-09-24 16:43:51.397702', '10', '2021-09-24 16:46:16.475042');

-- ----------------------------
-- Table structure for ticket_details
-- ----------------------------
DROP TABLE IF EXISTS `ticket_details`;
CREATE TABLE `ticket_details` (
  `ticket_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `no_ticket` bigint(20) DEFAULT NULL,
  `item_ticket` varchar(255) DEFAULT NULL,
  `lot_yarn` varchar(255) DEFAULT NULL,
  `color_yarn` varchar(255) DEFAULT '',
  `type_yarn` varchar(255) DEFAULT NULL,
  `supplier_yarn` varchar(255) DEFAULT NULL,
  `so_sap` varchar(255) DEFAULT NULL,
  `so_line` varchar(255) DEFAULT '',
  `so_pil` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `process` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `roll` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `is_usable` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) NOT NULL,
  `create_date` varchar(255) DEFAULT '',
  `update_user` bigint(20) NOT NULL,
  `update_date` varchar(255) DEFAULT '',
  PRIMARY KEY (`ticket_detail_id`) USING BTREE,
  KEY `fk_ticket_id` (`ticket_id`) USING BTREE,
  CONSTRAINT `fk_ticket_details_tickets` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_ticket_id` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`ticket_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of ticket_details
-- ----------------------------
INSERT INTO `ticket_details` VALUES ('90', '122', '1', 'Fabric', '-', '-', '-', '-', '0', '0', '2YG.0045', 'SINGLE LACOSTE 2 X 1 COMBED 24/1  180 70\" STRIPE\n', '-', 'SNOW WHITE JSP 11-06\nSNOW WHITE JSP 11-06\n', '1', '7 roll', '345', '', 'Y', '2', '2021-09-23 17:02:42.538943', '0', '');
INSERT INTO `ticket_details` VALUES ('91', '123', '1', 'Yarn', '5282', 'Greige', 'CARDED 10/1', 'EMBEE PLUMBON TEKSTIL, PT', '-', '-', '-', '-', '-', '-', '-', '-', '260', '', 'Y', '19', '2021-09-23 17:24:13.114797', '0', '');
INSERT INTO `ticket_details` VALUES ('92', '124', '1', 'Yarn', '60', 'Black', 'ACRYLIC WOOL 30/1', 'ADETEX SPUN, PT', '-', '-', '-', '-', '-', '-', '-', '-', '5000', '', 'Y', '10', '2021-09-23 18:36:17.188461', '0', '');
INSERT INTO `ticket_details` VALUES ('93', '128', '1', 'Yarn', '3WS100', 'Greige', 'COMBED 10/1', 'EMBEE PLUMBON TEKSTIL, PT', '-', '-', '-', '-', '-', '-', '-', '-', '520', '', 'Y', '19', '2021-09-23 18:57:43.735031', '0', '');
INSERT INTO `ticket_details` VALUES ('94', '130', '1', 'Greige', '-', '-', '-', '-', '0', '1', '2YB.0073', 'BABY TERRY CVC 60/40 20/1  250 72\"\n', '-', 'HITAM\n', '7', '7 Roll', '5480', '', 'Y', '2', '2021-09-24 09:25:41.469830', '0', '');
INSERT INTO `ticket_details` VALUES ('95', '131', '1', 'Yarn', '-', 'black', 'BAMBOO 20/1', 'ANUGERAH JAYA KASIH LESTARI, PT', '-', '-', '-', '-', '-', '-', '-', '-', '5000', '', 'Y', '7', '2021-09-24 10:08:46.101403', '0', '');
INSERT INTO `ticket_details` VALUES ('96', '132', '1', 'Greige', '-', '-', '-', '-', '211002424', '5', '2yi. 0081', 'single jersey cm 30 idr', '-', 'black', '-', '2', '22', '', 'Y', '7', '2021-09-24 13:56:54.567133', '0', '');
INSERT INTO `ticket_details` VALUES ('97', '133', '1', 'Greige', '-', '-', '-', '-', '211000320', '1', '2YH.0033', 'SINGLE JERSEY COMBED 40/1 20D 170 62\"\n', '-', 'OFF WHITE PCM 201\n', '-', '3', '76.3', '', 'Y', '33', '2021-09-24 13:51:45.149570', '0', '');
INSERT INTO `ticket_details` VALUES ('98', '134', '1', 'Greige', '-', '-', '-', '-', '211001941', '3', '2YI.0244', 'SINGLE JERSEY COTTON 24/1  170 19\"\n', '-', 'WHITE\n', '-', '5', '125,5', '', 'Y', '34', '2021-09-24 13:53:20.794339', '0', '');
INSERT INTO `ticket_details` VALUES ('99', '140', '1', 'Greige', '-', '-', '-', '-', '0', '0', '2YI.0123', 'SINGLE JERSEY COTTON 20/1  185 36\"', '-', 'PUTIH\n', '0', '1', '20', '', 'Y', '35', '2021-09-24 14:40:01.933686', '0', '');
INSERT INTO `ticket_details` VALUES ('100', '143', '1', 'Greige', '-', '-', '-', '-', '0', '0', '0', 'simbal mpf', '-', '0', '0', '0', '0', '', 'Y', '17', '2021-09-24 14:40:42.916369', '0', '');
INSERT INTO `ticket_details` VALUES ('101', '144', '1', 'Yarn', '09A', 'Greige', 'COMBED 40/1', 'MERIAN STRIDERS INTERNATIONAL, PT', '-', '-', '-', '-', '-', '-', '-', '-', '8164.8', '', 'Y', '19', '2021-09-24 14:41:45.798593', '0', '');
INSERT INTO `ticket_details` VALUES ('102', '145', '1', 'Fabric', '-', '-', '-', '-', '0', '0', '0', '0', '-', '0', '0', '0', '0', '', 'Y', '8', '2021-09-24 15:31:11.750839', '0', '');
INSERT INTO `ticket_details` VALUES ('103', '146', '1', 'Yarn', '0', '0', 'ACRYLIC POLY 30/1', 'AGANSA PRIMATAMA, PT', '-', '-', '-', '-', '-', '-', '-', '-', '0', '', 'Y', '11', '2021-09-24 15:31:50.568088', '0', '');
INSERT INTO `ticket_details` VALUES ('104', '147', '1', 'Greige', '-', '-', '-', '-', '0', '0', '0', '0', '-', '0', '0', '0', '0', '', 'Y', '31', '2021-09-24 15:32:04.916745', '0', '');
INSERT INTO `ticket_details` VALUES ('105', '148', '1', 'Yarn', '0', '0', 'ACRYLIC POLY 30/1', 'AGANSA PRIMATAMA, PT', '-', '-', '-', '-', '-', '-', '-', '-', '0', '', 'Y', '11', '2021-09-24 15:37:42.145756', '0', '');
INSERT INTO `ticket_details` VALUES ('106', '149', '1', 'Yarn', '0', '0', 'ACRYLIC POLY 30/1', 'AGANSA PRIMATAMA, PT', '-', '-', '-', '-', '-', '-', '-', '-', '0', '', 'Y', '11', '2021-09-24 15:43:18.664490', '0', '');
INSERT INTO `ticket_details` VALUES ('107', '150', '1', 'Yarn', '0', '0', 'ACRYLIC POLY 30/1', 'AGANSA PRIMATAMA, PT', '-', '-', '-', '-', '-', '-', '-', '-', '0', '', 'Y', '11', '2021-09-24 15:44:32.188210', '0', '');
INSERT INTO `ticket_details` VALUES ('108', '151', '1', 'Fabric', '-', '-', '-', '-', '0', '0', ' 0', '0', '-', '0', '0', '0', '0', '', 'Y', '11', '2021-09-24 15:46:18.446499', '0', '');
INSERT INTO `ticket_details` VALUES ('109', '152', '1', 'Greige', '-', '-', '-', '-', '0', '0', '-', '-', '-', '-', '-', '-', '-', '', 'Y', '31', '2021-09-24 15:55:24.699834', '0', '');
INSERT INTO `ticket_details` VALUES ('110', '154', '1', 'Greige', '-', '-', '-', '-', '0', '0', ' 0', '0', '-', '0', '0', '0', ',0', '', 'Y', '8', '2021-09-24 16:43:52.677941', '0', '');

-- ----------------------------
-- Table structure for ticket_media
-- ----------------------------
DROP TABLE IF EXISTS `ticket_media`;
CREATE TABLE `ticket_media` (
  `media_id` int(11) NOT NULL AUTO_INCREMENT,
  `media_name` varchar(255) DEFAULT NULL,
  `media_file` varchar(255) DEFAULT NULL,
  `media_size` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT '',
  `is_usable` varchar(255) DEFAULT '',
  `create_user` varchar(255) DEFAULT '',
  `create_date` varchar(255) DEFAULT '',
  `update_user` varchar(255) DEFAULT '',
  `update_date` varchar(255) DEFAULT '',
  `ticket_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ticket_media
-- ----------------------------
INSERT INTO `ticket_media` VALUES ('86', '3f6b43d0-8a1b-4cf1-a9e2-5826b56726c57675043309603438188.jpg', '.jpg', '8255300', '', 'Y', '2', '', '0', '', '122');
INSERT INTO `ticket_media` VALUES ('87', '169c37ba-8dd8-4479-8cb2-044925f562c51258158517553532125.jpg', '.jpg', '7037971', '', 'Y', '2', '', '0', '', '122');
INSERT INTO `ticket_media` VALUES ('88', '7dcd92ee-1956-42aa-8157-ffc0c2cbc8c56384976668590128180.jpg', '.jpg', '8814051', '', 'Y', '2', '', '0', '', '122');
INSERT INTO `ticket_media` VALUES ('89', 'Report-NCR-2021-09-23 09_23_01.xlsx', '.xlsx', '7132', 'CAPA', 'C', '15', '2021-09-23 17:08:20.062689', '0', '', '122');
INSERT INTO `ticket_media` VALUES ('90', '3eb44768-a552-4567-be30-f286114679d43136968795202162286.jpg', '.jpg', '8501501', '', 'Y', '19', '2021-09-23 17:24:18.141878', '0', '', '123');
INSERT INTO `ticket_media` VALUES ('91', '9a4cbe06-1833-4bf2-9910-3325e1bb8be85430589465410119051.jpg', '.jpg', '3867214', '', 'Y', '19', '2021-09-23 17:24:18.393647', '0', '', '123');
INSERT INTO `ticket_media` VALUES ('92', 'e792c788-0650-45a7-9df4-864507df29397533366020500182034.jpg', '.jpg', '1639437', '', 'Y', '10', '2021-09-23 18:36:21.944052', '0', '', '124');
INSERT INTO `ticket_media` VALUES ('93', 'adac9a4a-af77-4b5d-a454-869adf9ad20b8074815188552974628.jpg', '.jpg', '1701508', '', 'Y', '10', '2021-09-23 18:36:22.879070', '0', '', '124');
INSERT INTO `ticket_media` VALUES ('94', '52c9ba4c-7ee1-4c69-88a9-a3ff4d5a100c7907456470083687936.jpg', '.jpg', '1351099', '', 'Y', '10', '2021-09-23 18:36:22.969463', '0', '', '124');
INSERT INTO `ticket_media` VALUES ('104', 'a58e93dd-a0fb-4b09-8200-03b612f148ee4282377824426742158.jpg', '.jpg', '8739792', '', 'Y', '19', '2021-09-23 18:57:53.637116', '0', '', '128');
INSERT INTO `ticket_media` VALUES ('105', '1efe9f8e-45a3-4520-9227-741b5d99f7437894662674051594966.jpg', '.jpg', '8116203', '', 'Y', '19', '2021-09-23 18:57:56.031179', '0', '', '128');
INSERT INTO `ticket_media` VALUES ('106', 'Report-NCR-2021-09-23 09_23_01.xlsx', '.xlsx', '7132', 'CAPA', 'C', '12', '2021-09-23 19:02:23.743407', '0', '', '128');
INSERT INTO `ticket_media` VALUES ('107', 'image_picker4806956221138923465.jpg', '.jpg', '121305', '', 'Y', '2', '', '0', '', '129');
INSERT INTO `ticket_media` VALUES ('108', 'image_picker3448588959004031672.jpg', '.jpg', '165594', '', 'Y', '2', '', '0', '', '129');
INSERT INTO `ticket_media` VALUES ('109', 'c2cf2d2f-53d1-49a8-b8e7-09d2f3fc865b8625091560694940712.jpg', '.jpg', '1881570', '', 'Y', '2', '', '0', '', '129');
INSERT INTO `ticket_media` VALUES ('110', 'image_picker4806956221138923465.jpg', '.jpg', '121305', '', 'Y', '2', '', '0', '', '130');
INSERT INTO `ticket_media` VALUES ('111', 'image_picker3448588959004031672.jpg', '.jpg', '165594', '', 'Y', '2', '', '0', '', '130');
INSERT INTO `ticket_media` VALUES ('112', 'c2cf2d2f-53d1-49a8-b8e7-09d2f3fc865b8625091560694940712.jpg', '.jpg', '1881570', '', 'Y', '2', '', '0', '', '130');
INSERT INTO `ticket_media` VALUES ('113', 'INDISCH_UserManualV1_0.pdf', '.pdf', '7131837', 'CAPA', 'C', '8', '2021-09-24 09:29:28.305520', '0', '', '130');
INSERT INTO `ticket_media` VALUES ('114', 'INDISCH_UserManualV1_0.pdf', '.pdf', '7131837', 'CAPA', 'C', '8', '2021-09-24 09:29:32.537416', '0', '', '130');
INSERT INTO `ticket_media` VALUES ('115', 'image_picker4748337707087942514.jpg', '.jpg', '167965', '', 'Y', '7', '2021-09-24 10:08:46.242278', '0', '', '131');
INSERT INTO `ticket_media` VALUES ('116', 'Report-NCR-2021-09-23 09_23_01.xlsx', '.xlsx', '7132', 'CAPA', 'C', '8', '2021-09-24 10:14:18.120653', '0', '', '131');
INSERT INTO `ticket_media` VALUES ('117', '738e567c-2dcd-47e5-bde1-cf48c91f4281-1955772243.jpg', '.jpg', '3287840', '', 'Y', '7', '', '0', '', '132');
INSERT INTO `ticket_media` VALUES ('118', 'image_picker560071303952614448.jpg', '.jpg', '76114', '', 'Y', '33', '', '0', '', '133');
INSERT INTO `ticket_media` VALUES ('119', '534e0199-b44c-4a7b-9beb-60be51af9a4c2212444231729402803.jpg', '.jpg', '3862551', '', 'Y', '34', '', '0', '', '134');
INSERT INTO `ticket_media` VALUES ('120', 'invoice pelunasan box ros.pdf', '.pdf', '51447', 'CAPA', 'C', '13', '2021-09-24 13:56:59.750590', '0', '', '132');
INSERT INTO `ticket_media` VALUES ('121', '1c36c792-ccd0-4b09-9b75-7d9c5c15e0693367983848035748321.jpg', '.jpg', '9083464', '', 'Y', '17', '', '0', '', '136');
INSERT INTO `ticket_media` VALUES ('122', '455cc0ec-83c1-492f-b274-05b5f6e91dc21656354857960356334.jpg', '.jpg', '437372', '', 'Y', '35', '', '0', '', '137');
INSERT INTO `ticket_media` VALUES ('123', '1c36c792-ccd0-4b09-9b75-7d9c5c15e0693367983848035748321.jpg', '.jpg', '9083464', '', 'Y', '17', '', '0', '', '135');
INSERT INTO `ticket_media` VALUES ('124', '455cc0ec-83c1-492f-b274-05b5f6e91dc21656354857960356334.jpg', '.jpg', '437372', '', 'Y', '35', '', '0', '', '138');
INSERT INTO `ticket_media` VALUES ('125', '455cc0ec-83c1-492f-b274-05b5f6e91dc21656354857960356334.jpg', '.jpg', '437372', '', 'Y', '35', '', '0', '', '140');
INSERT INTO `ticket_media` VALUES ('126', '1c36c792-ccd0-4b09-9b75-7d9c5c15e0693367983848035748321.jpg', '.jpg', '9083464', '', 'Y', '17', '', '0', '', '139');
INSERT INTO `ticket_media` VALUES ('127', '1c36c792-ccd0-4b09-9b75-7d9c5c15e0693367983848035748321.jpg', '.jpg', '9083464', '', 'Y', '17', '', '0', '', '141');
INSERT INTO `ticket_media` VALUES ('128', '1c36c792-ccd0-4b09-9b75-7d9c5c15e0693367983848035748321.jpg', '.jpg', '9083464', '', 'Y', '17', '', '0', '', '142');
INSERT INTO `ticket_media` VALUES ('129', '1c36c792-ccd0-4b09-9b75-7d9c5c15e0693367983848035748321.jpg', '.jpg', '9083464', '', 'Y', '17', '', '0', '', '143');
INSERT INTO `ticket_media` VALUES ('130', 'image_picker1746112679049708482.jpg', '.jpg', '1770199', '', 'Y', '19', '2021-09-24 14:41:50.631017', '0', '', '144');
INSERT INTO `ticket_media` VALUES ('131', 'Report-NCR-2021-09-23 09_23_01.xlsx', '.xlsx', '7132', 'CAPA', 'C', '7', '2021-09-24 14:48:44.114892', '0', '', '140');
INSERT INTO `ticket_media` VALUES ('132', 'Report-NCR-2021-09-23 09_23_01.xlsx', '.xlsx', '7132', 'CAPA', 'C', '7', '2021-09-24 14:48:47.863994', '0', '', '140');
INSERT INTO `ticket_media` VALUES ('133', '86d0d93b-8e96-4987-af1e-123e7e71b2ad7315117448135318497.jpg', '.jpg', '3155536', '', 'Y', '8', '', '0', '', '145');
INSERT INTO `ticket_media` VALUES ('134', 'b99b6a0c-3aa2-416b-a9a7-38af0e1525ec2762439428783571034.jpg', '.jpg', '7964832', '', 'Y', '11', '2021-09-24 15:31:55.611760', '0', '', '146');
INSERT INTO `ticket_media` VALUES ('135', 'f28258d0-dde8-49b7-9ee5-6bf3cf811a865889618475317831068.jpg', '.jpg', '2495127', '', 'Y', '31', '', '0', '', '147');
INSERT INTO `ticket_media` VALUES ('136', 'Report-NCR-2021-09-23 09_23_01.xlsx', '.xlsx', '7132', 'CAPA', 'C', '12', '2021-09-24 15:34:42.506967', '0', '', '145');
INSERT INTO `ticket_media` VALUES ('137', 'image_picker4847599691385675231.jpg', '.jpg', '47331', '', 'Y', '11', '2021-09-24 15:37:42.216192', '0', '', '148');
INSERT INTO `ticket_media` VALUES ('138', 'c71d4361-0e6b-47f6-8f3d-c7dfdad66b5c3404266244412755476.jpg', '.jpg', '7594294', '', 'Y', '11', '2021-09-24 15:43:25.778548', '0', '', '149');
INSERT INTO `ticket_media` VALUES ('139', '8c1b0525-a6e1-4201-9c77-ec9761baeaa94838606238507929809.jpg', '.jpg', '7939492', '', 'Y', '11', '2021-09-24 15:44:39.911237', '0', '', '150');
INSERT INTO `ticket_media` VALUES ('140', 'db6d4d18-5dee-406b-8e3c-815f0fd0df295578500360728756349.jpg', '.jpg', '8317967', '', 'Y', '11', '', '0', '', '151');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` longtext NOT NULL,
  `comment` text DEFAULT NULL,
  `is_usable` varchar(255) DEFAULT NULL,
  `create_user` bigint(20) DEFAULT NULL,
  `create_date` varchar(0) DEFAULT NULL,
  `update_user` bigint(20) DEFAULT NULL,
  `user_date` varchar(0) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT NULL,
  `dept_id` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `div_id` varchar(255) DEFAULT NULL,
  `div_name` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE KEY `idx_users_user_name` (`user_name`),
  KEY `fk_employes_id` (`employee_id`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', 'David', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('2', '2', 'Novita', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('3', '3', 'Rida', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('4', '4', 'Elis', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('5', '5', 'Agat', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('6', '6', 'Topan', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('7', '7', 'Iyan', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('8', '8', 'Susan', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('9', '9', 'Paulus', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('10', '10', 'Ajat', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('11', '11', 'Ros', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('12', '12', 'Nancy', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('13', '13', 'Apriadi', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('14', '14', 'Mitra', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('15', '15', 'Puji', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('16', '16', 'Wakhuli', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('17', '17', 'Afan', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('18', '18', 'Edi', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('19', '19', 'Dini', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', '', '0', '', null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('20', '20', 'WonoPG', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', '', '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('31', '31', 'Tusi', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', null, '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('32', '32', 'Wahyu', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', null, '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('33', '33', 'Cepi', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', null, '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('34', '34', 'Iis', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', null, '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('35', '35', 'Mamay', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', null, '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('36', '36', 'Risma', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', null, '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null);
INSERT INTO `users` VALUES ('39', '39', 'Jajang', '$2b$08$spxp74LAvsJ2noHzxjq4d.ZP1V09DBsICrpV.YOhpRy99vfVeOxgq', null, '1', '0', null, '0', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for user_employees
-- ----------------------------
DROP TABLE IF EXISTS `user_employees`;
CREATE TABLE `user_employees` (
  `user_employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) DEFAULT NULL,
  `employee_name` varchar(255) DEFAULT '',
  `user_group` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `is_usable` varchar(255) DEFAULT '',
  `create_user` bigint(20) NOT NULL,
  `create_date` varchar(255) DEFAULT '',
  `update_user` bigint(20) DEFAULT NULL,
  `update_date` varchar(255) DEFAULT '',
  PRIMARY KEY (`user_employee_id`) USING BTREE,
  KEY `fk_user_group_id` (`user_group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user_employees
-- ----------------------------
INSERT INTO `user_employees` VALUES ('1', '2', 'David', 'Management', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('2', '3', 'Novita', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('3', '3', 'Rida', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('4', '3', 'Elis', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('5', '3', 'Agat', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('6', '3', 'Topan', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('7', '3', 'Iyan', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('8', '3', 'Susan', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('9', '3', 'Paulus', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('10', '1', 'Ajat', 'Super User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('11', '1', 'Ros', 'Super User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('12', '3', 'Nancy', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('13', '3', 'Apriadi', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('14', '3', 'Mitra', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('15', '3', 'Puji', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('16', '3', 'Wakhuli', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('17', '3', 'Afan', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('18', '3', 'Wakhuli', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('19', '3', 'Edi', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('20', '1', 'Yandi', 'Super User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('21', '3', 'Reni', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('22', '3', 'Aang', 'Admin User', null, '', '0', '', '0', '');
INSERT INTO `user_employees` VALUES ('23', '3', 'Wahyudi', 'Admin User', null, '', '0', '', '0', '');
