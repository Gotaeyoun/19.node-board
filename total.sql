-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.20 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.6061
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 테이블 board.gallery 구조 내보내기
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '고유값',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '제목',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '내용',
  `writer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '작성자',
  `realfile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '원래파일명',
  `savefile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '저장된파일명',
  `realfile2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '원래파일명',
  `savefile2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '저장된파일명',
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '생성일',
  `roundCount` int NOT NULL DEFAULT '0' COMMENT '조회수',
  `uid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gallery_member` (`uid`),
  CONSTRAINT `FK_gallery_member` FOREIGN KEY (`uid`) REFERENCES `member` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 board.gallery:~0 rows (대략적) 내보내기
DELETE FROM `gallery`;
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;

-- 테이블 board.gbook 구조 내보내기
DROP TABLE IF EXISTS `gbook`;
CREATE TABLE IF NOT EXISTS `gbook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `writer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 board.gbook:~0 rows (대략적) 내보내기
DELETE FROM `gbook`;
/*!40000 ALTER TABLE `gbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `gbook` ENABLE KEYS */;

-- 테이블 board.loginlog 구조 내보내기
DROP TABLE IF EXISTS `loginlog`;
CREATE TABLE IF NOT EXISTS `loginlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `loginAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_loginlog_member` (`uid`) USING BTREE,
  CONSTRAINT `FK_loginlog_member` FOREIGN KEY (`uid`) REFERENCES `member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 board.loginlog:~11 rows (대략적) 내보내기
DELETE FROM `loginlog`;
/*!40000 ALTER TABLE `loginlog` DISABLE KEYS */;
INSERT INTO `loginlog` (`id`, `uid`, `loginAt`, `ip`) VALUES
	(1, 13, '2020-08-12 11:24:59', '::ffff:127.0.0.1'),
	(2, 13, '2020-08-12 11:57:16', '::ffff:127.0.0.1'),
	(3, 13, '2020-08-12 11:59:51', '::ffff:127.0.0.1'),
	(4, 13, '2020-08-12 12:04:31', '::ffff:127.0.0.1'),
	(5, 13, '2020-08-12 12:12:22', '::ffff:127.0.0.1'),
	(6, 13, '2020-08-12 12:29:02', '::ffff:127.0.0.1'),
	(7, 13, '2020-08-12 13:00:11', '::ffff:127.0.0.1'),
	(8, 13, '2020-08-12 13:00:20', '::ffff:127.0.0.1'),
	(9, 13, '2020-08-12 13:25:28', '::ffff:127.0.0.1'),
	(10, 14, '2020-08-12 15:11:22', '::ffff:127.0.0.1'),
	(11, 13, '2020-08-12 15:23:22', '::ffff:127.0.0.1'),
	(12, 13, '2020-08-13 09:36:26', '::ffff:127.0.0.1'),
	(13, 13, '2020-08-13 09:41:52', '::ffff:127.0.0.1');
/*!40000 ALTER TABLE `loginlog` ENABLE KEYS */;

-- 테이블 board.member 구조 내보내기
DROP TABLE IF EXISTS `member`;
CREATE TABLE IF NOT EXISTS `member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `api` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userpw` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sleepAt` datetime DEFAULT NULL,
  `grade` tinyint unsigned NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 board.member:~2 rows (대략적) 내보내기
DELETE FROM `member`;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`id`, `userid`, `api`, `userpw`, `username`, `email`, `createdAt`, `sleepAt`, `grade`) VALUES
	(13, 'Gotaeyoun', NULL, '$2b$07$nHWZroKpX2Iq76zhLn360eit47tL5pl3QxfXn9WWy63maIN5fSwoK', '고태윤', 'ohdin486@gmail.com', '2020-08-12 09:43:55', NULL, 9),
	(14, '기요미고태', NULL, '$2b$07$Iv3KarMTf26EaAxmS8F/x.kp7Ey68n/upEwAWaLDme6MTvThjCCre', '고태윤', '', '2020-08-12 15:11:13', NULL, 2);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
