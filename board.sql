-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.20 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- board 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `board` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `board`;

-- 테이블 board.gbook 구조 내보내기
CREATE TABLE IF NOT EXISTS `gbook` (
  `id` int NOT NULL AUTO_INCREMENT,
  `writer` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- 테이블 데이터 board.gbook:~33 rows (대략적) 내보내기
/*!40000 ALTER TABLE `gbook` DISABLE KEYS */;
REPLACE INTO `gbook` (`id`, `writer`, `comment`, `createdAt`) VALUES
	(1, '안녕', '배아파', '2020-07-20 11:21:11'),
	(2, '고태윤', '배고파요', '2020-07-20 11:39:02'),
	(3, '랄랄라', '라면먹고싶다', '2020-07-20 11:39:09'),
	(4, '피곤해요', '죽겟네용', '2020-07-20 11:39:14'),
	(5, '포트폴리오 ', '언제 만드누 ㅠㅠ', '2020-07-20 11:39:20'),
	(6, '아', '헤이헤이헤이', '2020-07-20 11:39:31'),
	(7, '졸리다', '8월 17일 공휴일 ㄴㄴ해 ', '2020-07-20 11:39:43'),
	(8, '졸려요', '랄랄랄랄라라라', '2020-07-20 11:39:53'),
	(9, '배고파요', '고기가 떙겨요', '2020-07-20 11:41:04'),
	(10, '포트폴리오', '밥먹을까 오늘', '2020-07-20 11:41:15'),
	(11, '다이어트', '오늘부터 할게여', '2020-07-20 11:41:24'),
	(12, '고기라면', '먹고싶다', '2020-07-20 11:44:33'),
	(13, 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', '2020-07-20 12:17:01'),
	(14, 'asdf', 'asdf', '2020-07-20 12:20:32'),
	(15, 'asdf', 'asdf', '2020-07-20 12:20:55'),
	(16, 'adsf', 'asdf', '2020-07-20 12:23:52'),
	(17, '하이', '하이', '2020-07-20 13:06:00'),
	(18, '배고파용', '라면주세요', '2020-07-20 13:06:14'),
	(19, 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', '2020-07-20 13:06:16'),
	(20, 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', '2020-07-20 13:06:18'),
	(21, 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', '2020-07-20 13:06:21'),
	(22, 'adf', 'asdf', '2020-07-20 14:33:19'),
	(23, 'asdf', 'asdf', '2020-07-20 14:33:21'),
	(24, 'asdfasdf', 'asdfasdf', '2020-07-20 14:33:23'),
	(25, 'asdfasdf', 'adsfasdf', '2020-07-20 14:33:25'),
	(26, 'asdfasdf', 'asdfasdf', '2020-07-20 14:33:28'),
	(27, 'ㅁㄴㅇㄹ', '안녕하세여', '2020-07-20 15:08:16'),
	(28, 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', '2020-07-20 15:09:18'),
	(29, 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', '2020-07-20 16:16:30'),
	(30, 'ㅁㄴㅇㄹ', 'ㅁㄴㅇㄹ', '2020-07-20 16:17:01'),
	(31, 'ㅇㅀㅇㅀ', 'ㅇㅀㅇㅀㅇㅀ', '2020-07-20 16:17:05'),
	(32, 'adf', 'afd', '2020-07-21 10:57:48'),
	(33, 'afd', 'asdf', '2020-07-21 12:47:25');
/*!40000 ALTER TABLE `gbook` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
