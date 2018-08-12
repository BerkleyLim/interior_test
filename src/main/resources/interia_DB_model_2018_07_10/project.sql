-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 18-08-09 10:00
-- 서버 버전: 5.6.40
-- PHP 버전: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `project`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_ACRGTT`
--

CREATE TABLE `INTR_ACRGTT` (
  `MEMNO` int(11) NOT NULL COMMENT '회원번호',
  `WSANO` int(11) NOT NULL COMMENT '공방체험번호',
  `ACPT` int(11) NOT NULL COMMENT '인원',
  `ACRDT` date DEFAULT NULL COMMENT '등록일자'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='공방체험등록';

--
-- 테이블의 덤프 데이터 `INTR_ACRGTT`
--

INSERT INTO `INTR_ACRGTT` (`MEMNO`, `WSANO`, `ACPT`, `ACRDT`) VALUES
(1, 1, 2, '2018-07-18'),
(1, 2, 5, '2018-07-26'),
(2, 1, 3, '2018-07-16'),
(2, 2, 2, '2018-07-26'),
(3, 1, 1, '2018-07-18'),
(3, 2, 5, '2018-07-23'),
(3, 3, 10, '2018-07-26');

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_BCMMT`
--

CREATE TABLE `INTR_BCMMT` (
  `CNO` int(11) NOT NULL COMMENT '댓글번호',
  `BNO` int(11) NOT NULL COMMENT '게시물번호',
  `CMCTT` date DEFAULT NULL COMMENT '댓글게시일자',
  `CRTDT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '댓글내용',
  `MEMNO` int(11) NOT NULL COMMENT '회원번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='댓글';

--
-- 테이블의 덤프 데이터 `INTR_BCMMT`
--

INSERT INTO `INTR_BCMMT` (`CNO`, `BNO`, `CMCTT`, `CRTDT`, `MEMNO`) VALUES
(1, 101, '2018-08-07', '너무 아름다운거 같아요. 딱 제 스타일이에요!', 18),
(2, 101, '2018-08-07', '\"깔끔하니 좋은데요!\"', 17),
(3, 101, '2018-08-07', '정말 오늘하루 보내고 싶은 곳이네요!', 18),
(4, 101, '2018-08-07', '너무 비어보인다는 것과 심플하다고 하는건 보는 사람의 시각차이일뿐이에요.', 14),
(5, 101, '2018-08-07', '정말 만들기 힘드셨을것 같아요! 정말 멋지네요!', 13),
(6, 101, '2018-08-07', 'wow!! so beautiful place!!', 12),
(7, 101, '2018-08-07', '하루를 마무리하고 쉬기 좋은 집 같아요~!', 9),
(8, 101, '2018-08-07', '고마워요. 위로가 되는것 같네요.', 8),
(9, 101, '2018-08-07', '문득 문득 잊고 사는것 같아요.', 4),
(10, 100, '2018-08-07', '너무 아름다운거 같아요. 딱 제 스타일이에요!', 18),
(11, 100, '2018-08-07', '\"깔끔하니 좋은데요!\"', 17),
(12, 100, '2018-08-07', '정말 오늘하루 보내고 싶은 곳이네요!', 18),
(13, 100, '2018-08-07', '너무 비어보인다는 것과 심플하다고 하는건 보는 사람의 시각차이일뿐이에요.', 14),
(14, 100, '2018-08-07', '정말 만들기 힘드셨을것 같아요! 정말 멋지네요!', 13),
(15, 100, '2018-08-07', 'wow!! so beautiful place!!', 12),
(16, 100, '2018-08-07', '하루를 마무리하고 쉬기 좋은 집 같아요~!', 9),
(17, 100, '2018-08-07', '고마워요. 위로가 되는것 같네요.', 8),
(18, 100, '2018-08-07', '문득 문득 잊고 사는것 같아요.', 4);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_BOARD`
--

CREATE TABLE `INTR_BOARD` (
  `BNO` int(11) NOT NULL COMMENT '게시물번호',
  `MEMNO` int(11) NOT NULL COMMENT '회원번호',
  `BRTDT` date NOT NULL COMMENT '작성일자',
  `BOCTT` text COLLATE utf8_unicode_ci NOT NULL COMMENT '게시물 내용',
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '사진'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='게시물';

--
-- 테이블의 덤프 데이터 `INTR_BOARD`
--

INSERT INTO `INTR_BOARD` (`BNO`, `MEMNO`, `BRTDT`, `BOCTT`, `PATH`) VALUES
(1, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns01.PNG'),
(2, 19, '2018-08-07', '우리,\r\n모두에게 착하지 말고\r\n모든 순간 척하지 말자\r\n내 인생이잖아', 'sns02.PNG'),
(3, 19, '2018-08-07', '그저\r\n평범한 일상을 원했다\r\n평범한 사랑을 원했고\r\n평범한 사람을 원했고\r\n평범한 행복을 원했다\r\n\r\n- g.w\r\n', 'sns03.PNG'),
(4, 19, '2018-08-07', '우리는 시간을 공유하는 사람하고만\r\n의미 있는 관계를 맺을 수 있다.\r\n특히 사랑은, 내 시간을 상대방에게\r\n기꺼이 건내주는 일이다.\r\n\r\n- 한때 소중했던 것들 -', 'sns04.PNG'),
(5, 19, '2018-08-07', '\r\n나를 가장 사랑해야 하는 사람은\r\n바로 나 자신이더라.\r\n\r\n', 'sns05.PNG'),
(6, 19, '2018-08-07', '내가 좋은사람이 되어\r\n내게 좋은 사람이 오도록', 'sns06.PNG'),
(7, 19, '2018-08-07', '인맥보다 중요한 건 자신이다.', 'sns07.PNG'),
(8, 19, '2018-08-07', '나는 신발이 없음을 한탄했는데,\r\n길에서 발이 없는 사람을 만났다.\r\n\r\n- 데일 카네기 -\r\n', 'sns08.PNG'),
(9, 19, '2018-08-07', '\r\n걱정하지마\r\n잘 될거야\r\n\r\n', 'sns09.PNG'),
(10, 19, '2018-08-07', '눈을 감지 말고 똑바로 봐.\r\n두려움의 실체는 생각과 다를 수 있어.\r\n\r\n- 애니메이션<니모를 찾아서> 중 -', 'sns10.PNG'),
(11, 19, '2018-08-07', '인생은 애니메이션 뮤지컬 하곤 달라.\r\n노래 좀 부른다고 꿈이 이뤄지진 않지', 'sns11.jpg'),
(12, 19, '2018-08-07', '스스로 알을 깨면 병아리가 되지만\r\n남이 깨주면 계랑 후라이가 된다.', 'sns12.jpg'),
(13, 19, '2018-08-07', '변했다는 증거\r\n\r\n\r\n   \'말투\'', 'sns13.jpg'),
(14, 19, '2018-08-07', '당신의 실수를\r\n이해해주고 곁에\r\n있어줬다고, \"얘는\r\n내가 이래도 좋구나\" \r\n하는 건방 떨지 말고\r\n더 잘해주세요.', 'sns14.jpg'),
(15, 19, '2018-08-07', '네가 항상 열 걸음 안에 있었으면 좋겠다.', 'sns15.jpg'),
(16, 19, '2018-08-07', '나무는 꽃을 버려야\r\n열매를 맺고\r\n강물은 강을 버려야\r\n바다에 이른다.', 'sns16.jpg'),
(17, 19, '2018-08-07', '좋다고 해서 금방 달려들지 말고\r\n싫다고 해서 금방 달아나지 말라.\r\n멀리 있다 해서 잊어버리지 말고\r\n가까이 있다 해서 소홀하지 말라.', 'sns17.jpg'),
(18, 19, '2018-08-07', '처음에는 내가 너를\r\n배려하는 줄 알았어', 'sns18.jpg'),
(19, 19, '2018-08-07', '근데 있잖아.\r\n너 잘하고 있어. 진짜로.\r\n이렇게 힘들어도 이겨내고. 너답게\r\n다시 일어나서 또 화이팅해야지!', 'sns19.jpg'),
(20, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns20.jpg'),
(102, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns01.PNG'),
(103, 19, '2018-08-07', '우리,\r\n모두에게 착하지 말고\r\n모든 순간 척하지 말자\r\n내 인생이잖아', 'sns02.PNG'),
(104, 19, '2018-08-07', '그저\r\n평범한 일상을 원했다\r\n평범한 사랑을 원했고\r\n평범한 사람을 원했고\r\n평범한 행복을 원했다\r\n\r\n- g.w\r\n', 'sns03.PNG'),
(105, 19, '2018-08-07', '우리는 시간을 공유하는 사람하고만\r\n의미 있는 관계를 맺을 수 있다.\r\n특히 사랑은, 내 시간을 상대방에게\r\n기꺼이 건내주는 일이다.\r\n\r\n- 한때 소중했던 것들 -', 'sns04.PNG'),
(106, 19, '2018-08-07', '\r\n나를 가장 사랑해야 하는 사람은\r\n바로 나 자신이더라.\r\n\r\n', 'sns05.PNG'),
(107, 19, '2018-08-07', '내가 좋은사람이 되어\r\n내게 좋은 사람이 오도록', 'sns06.PNG'),
(108, 19, '2018-08-07', '인맥보다 중요한 건 자신이다.', 'sns07.PNG'),
(109, 19, '2018-08-07', '나는 신발이 없음을 한탄했는데,\r\n길에서 발이 없는 사람을 만났다.\r\n\r\n- 데일 카네기 -\r\n', 'sns08.PNG'),
(110, 19, '2018-08-07', '\r\n걱정하지마\r\n잘 될거야\r\n\r\n', 'sns09.PNG'),
(111, 19, '2018-08-07', '눈을 감지 말고 똑바로 봐.\r\n두려움의 실체는 생각과 다를 수 있어.\r\n\r\n- 애니메이션<니모를 찾아서> 중 -', 'sns10.PNG'),
(112, 19, '2018-08-07', '인생은 애니메이션 뮤지컬 하곤 달라.\r\n노래 좀 부른다고 꿈이 이뤄지진 않지', 'sns11.jpg'),
(113, 19, '2018-08-07', '스스로 알을 깨면 병아리가 되지만\r\n남이 깨주면 계랑 후라이가 된다.', 'sns12.jpg'),
(114, 19, '2018-08-07', '변했다는 증거\r\n\r\n\r\n   \'말투\'', 'sns13.jpg'),
(115, 19, '2018-08-07', '당신의 실수를\r\n이해해주고 곁에\r\n있어줬다고, \"얘는\r\n내가 이래도 좋구나\" \r\n하는 건방 떨지 말고\r\n더 잘해주세요.', 'sns14.jpg'),
(116, 19, '2018-08-07', '네가 항상 열 걸음 안에 있었으면 좋겠다.', 'sns15.jpg'),
(117, 19, '2018-08-07', '나무는 꽃을 버려야\r\n열매를 맺고\r\n강물은 강을 버려야\r\n바다에 이른다.', 'sns16.jpg'),
(118, 19, '2018-08-07', '좋다고 해서 금방 달려들지 말고\r\n싫다고 해서 금방 달아나지 말라.\r\n멀리 있다 해서 잊어버리지 말고\r\n가까이 있다 해서 소홀하지 말라.', 'sns17.jpg'),
(119, 19, '2018-08-07', '처음에는 내가 너를\r\n배려하는 줄 알았어', 'sns18.jpg'),
(120, 19, '2018-08-07', '근데 있잖아.\r\n너 잘하고 있어. 진짜로.\r\n이렇게 힘들어도 이겨내고. 너답게\r\n다시 일어나서 또 화이팅해야지!', 'sns19.jpg'),
(121, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns20.jpg'),
(122, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns01.PNG'),
(123, 19, '2018-08-07', '우리,\r\n모두에게 착하지 말고\r\n모든 순간 척하지 말자\r\n내 인생이잖아', 'sns02.PNG'),
(124, 19, '2018-08-07', '그저\r\n평범한 일상을 원했다\r\n평범한 사랑을 원했고\r\n평범한 사람을 원했고\r\n평범한 행복을 원했다\r\n\r\n- g.w\r\n', 'sns03.PNG'),
(125, 19, '2018-08-07', '우리는 시간을 공유하는 사람하고만\r\n의미 있는 관계를 맺을 수 있다.\r\n특히 사랑은, 내 시간을 상대방에게\r\n기꺼이 건내주는 일이다.\r\n\r\n- 한때 소중했던 것들 -', 'sns04.PNG'),
(126, 19, '2018-08-07', '\r\n나를 가장 사랑해야 하는 사람은\r\n바로 나 자신이더라.\r\n\r\n', 'sns05.PNG'),
(127, 19, '2018-08-07', '내가 좋은사람이 되어\r\n내게 좋은 사람이 오도록', 'sns06.PNG'),
(128, 19, '2018-08-07', '인맥보다 중요한 건 자신이다.', 'sns07.PNG'),
(129, 19, '2018-08-07', '나는 신발이 없음을 한탄했는데,\r\n길에서 발이 없는 사람을 만났다.\r\n\r\n- 데일 카네기 -\r\n', 'sns08.PNG'),
(130, 19, '2018-08-07', '\r\n걱정하지마\r\n잘 될거야\r\n\r\n', 'sns09.PNG'),
(131, 19, '2018-08-07', '눈을 감지 말고 똑바로 봐.\r\n두려움의 실체는 생각과 다를 수 있어.\r\n\r\n- 애니메이션<니모를 찾아서> 중 -', 'sns10.PNG'),
(132, 19, '2018-08-07', '인생은 애니메이션 뮤지컬 하곤 달라.\r\n노래 좀 부른다고 꿈이 이뤄지진 않지', 'sns11.jpg'),
(133, 19, '2018-08-07', '스스로 알을 깨면 병아리가 되지만\r\n남이 깨주면 계랑 후라이가 된다.', 'sns12.jpg'),
(134, 19, '2018-08-07', '변했다는 증거\r\n\r\n\r\n   \'말투\'', 'sns13.jpg'),
(135, 19, '2018-08-07', '당신의 실수를\r\n이해해주고 곁에\r\n있어줬다고, \"얘는\r\n내가 이래도 좋구나\" \r\n하는 건방 떨지 말고\r\n더 잘해주세요.', 'sns14.jpg'),
(136, 19, '2018-08-07', '네가 항상 열 걸음 안에 있었으면 좋겠다.', 'sns15.jpg'),
(137, 19, '2018-08-07', '나무는 꽃을 버려야\r\n열매를 맺고\r\n강물은 강을 버려야\r\n바다에 이른다.', 'sns16.jpg'),
(138, 19, '2018-08-07', '좋다고 해서 금방 달려들지 말고\r\n싫다고 해서 금방 달아나지 말라.\r\n멀리 있다 해서 잊어버리지 말고\r\n가까이 있다 해서 소홀하지 말라.', 'sns17.jpg'),
(139, 19, '2018-08-07', '처음에는 내가 너를\r\n배려하는 줄 알았어', 'sns18.jpg'),
(140, 19, '2018-08-07', '근데 있잖아.\r\n너 잘하고 있어. 진짜로.\r\n이렇게 힘들어도 이겨내고. 너답게\r\n다시 일어나서 또 화이팅해야지!', 'sns19.jpg'),
(141, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns20.jpg'),
(142, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns01.PNG'),
(143, 19, '2018-08-07', '우리,\r\n모두에게 착하지 말고\r\n모든 순간 척하지 말자\r\n내 인생이잖아', 'sns02.PNG'),
(144, 19, '2018-08-07', '그저\r\n평범한 일상을 원했다\r\n평범한 사랑을 원했고\r\n평범한 사람을 원했고\r\n평범한 행복을 원했다\r\n\r\n- g.w\r\n', 'sns03.PNG'),
(145, 19, '2018-08-07', '우리는 시간을 공유하는 사람하고만\r\n의미 있는 관계를 맺을 수 있다.\r\n특히 사랑은, 내 시간을 상대방에게\r\n기꺼이 건내주는 일이다.\r\n\r\n- 한때 소중했던 것들 -', 'sns04.PNG'),
(146, 19, '2018-08-07', '\r\n나를 가장 사랑해야 하는 사람은\r\n바로 나 자신이더라.\r\n\r\n', 'sns05.PNG'),
(147, 19, '2018-08-07', '내가 좋은사람이 되어\r\n내게 좋은 사람이 오도록', 'sns06.PNG'),
(148, 19, '2018-08-07', '인맥보다 중요한 건 자신이다.', 'sns07.PNG'),
(149, 19, '2018-08-07', '나는 신발이 없음을 한탄했는데,\r\n길에서 발이 없는 사람을 만났다.\r\n\r\n- 데일 카네기 -\r\n', 'sns08.PNG'),
(150, 19, '2018-08-07', '\r\n걱정하지마\r\n잘 될거야\r\n\r\n', 'sns09.PNG'),
(151, 19, '2018-08-07', '눈을 감지 말고 똑바로 봐.\r\n두려움의 실체는 생각과 다를 수 있어.\r\n\r\n- 애니메이션<니모를 찾아서> 중 -', 'sns10.PNG'),
(152, 19, '2018-08-07', '인생은 애니메이션 뮤지컬 하곤 달라.\r\n노래 좀 부른다고 꿈이 이뤄지진 않지', 'sns11.jpg'),
(153, 19, '2018-08-07', '스스로 알을 깨면 병아리가 되지만\r\n남이 깨주면 계랑 후라이가 된다.', 'sns12.jpg'),
(154, 19, '2018-08-07', '변했다는 증거\r\n\r\n\r\n   \'말투\'', 'sns13.jpg'),
(155, 19, '2018-08-07', '당신의 실수를\r\n이해해주고 곁에\r\n있어줬다고, \"얘는\r\n내가 이래도 좋구나\" \r\n하는 건방 떨지 말고\r\n더 잘해주세요.', 'sns14.jpg'),
(156, 19, '2018-08-07', '네가 항상 열 걸음 안에 있었으면 좋겠다.', 'sns15.jpg'),
(157, 19, '2018-08-07', '나무는 꽃을 버려야\r\n열매를 맺고\r\n강물은 강을 버려야\r\n바다에 이른다.', 'sns16.jpg'),
(158, 19, '2018-08-07', '좋다고 해서 금방 달려들지 말고\r\n싫다고 해서 금방 달아나지 말라.\r\n멀리 있다 해서 잊어버리지 말고\r\n가까이 있다 해서 소홀하지 말라.', 'sns17.jpg'),
(159, 19, '2018-08-07', '처음에는 내가 너를\r\n배려하는 줄 알았어', 'sns18.jpg'),
(160, 19, '2018-08-07', '근데 있잖아.\r\n너 잘하고 있어. 진짜로.\r\n이렇게 힘들어도 이겨내고. 너답게\r\n다시 일어나서 또 화이팅해야지!', 'sns19.jpg'),
(161, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns20.jpg'),
(162, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns01.PNG'),
(163, 19, '2018-08-07', '우리,\r\n모두에게 착하지 말고\r\n모든 순간 척하지 말자\r\n내 인생이잖아', 'sns02.PNG'),
(164, 19, '2018-08-07', '그저\r\n평범한 일상을 원했다\r\n평범한 사랑을 원했고\r\n평범한 사람을 원했고\r\n평범한 행복을 원했다\r\n\r\n- g.w\r\n', 'sns03.PNG'),
(165, 19, '2018-08-07', '우리는 시간을 공유하는 사람하고만\r\n의미 있는 관계를 맺을 수 있다.\r\n특히 사랑은, 내 시간을 상대방에게\r\n기꺼이 건내주는 일이다.\r\n\r\n- 한때 소중했던 것들 -', 'sns04.PNG'),
(166, 19, '2018-08-07', '\r\n나를 가장 사랑해야 하는 사람은\r\n바로 나 자신이더라.\r\n\r\n', 'sns05.PNG'),
(167, 19, '2018-08-07', '내가 좋은사람이 되어\r\n내게 좋은 사람이 오도록', 'sns06.PNG'),
(168, 19, '2018-08-07', '인맥보다 중요한 건 자신이다.', 'sns07.PNG'),
(169, 19, '2018-08-07', '나는 신발이 없음을 한탄했는데,\r\n길에서 발이 없는 사람을 만났다.\r\n\r\n- 데일 카네기 -\r\n', 'sns08.PNG'),
(170, 19, '2018-08-07', '\r\n걱정하지마\r\n잘 될거야\r\n\r\n', 'sns09.PNG'),
(171, 19, '2018-08-07', '눈을 감지 말고 똑바로 봐.\r\n두려움의 실체는 생각과 다를 수 있어.\r\n\r\n- 애니메이션<니모를 찾아서> 중 -', 'sns10.PNG'),
(172, 19, '2018-08-07', '인생은 애니메이션 뮤지컬 하곤 달라.\r\n노래 좀 부른다고 꿈이 이뤄지진 않지', 'sns11.jpg'),
(173, 19, '2018-08-07', '스스로 알을 깨면 병아리가 되지만\r\n남이 깨주면 계랑 후라이가 된다.', 'sns12.jpg'),
(174, 19, '2018-08-07', '변했다는 증거\r\n\r\n\r\n   \'말투\'', 'sns13.jpg'),
(175, 19, '2018-08-07', '당신의 실수를\r\n이해해주고 곁에\r\n있어줬다고, \"얘는\r\n내가 이래도 좋구나\" \r\n하는 건방 떨지 말고\r\n더 잘해주세요.', 'sns14.jpg'),
(176, 19, '2018-08-07', '네가 항상 열 걸음 안에 있었으면 좋겠다.', 'sns15.jpg'),
(177, 19, '2018-08-07', '나무는 꽃을 버려야\r\n열매를 맺고\r\n강물은 강을 버려야\r\n바다에 이른다.', 'sns16.jpg'),
(178, 19, '2018-08-07', '좋다고 해서 금방 달려들지 말고\r\n싫다고 해서 금방 달아나지 말라.\r\n멀리 있다 해서 잊어버리지 말고\r\n가까이 있다 해서 소홀하지 말라.', 'sns17.jpg'),
(179, 19, '2018-08-07', '처음에는 내가 너를\r\n배려하는 줄 알았어', 'sns18.jpg'),
(180, 19, '2018-08-07', '근데 있잖아.\r\n너 잘하고 있어. 진짜로.\r\n이렇게 힘들어도 이겨내고. 너답게\r\n다시 일어나서 또 화이팅해야지!', 'sns19.jpg'),
(181, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns20.jpg'),
(182, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns01.PNG'),
(183, 19, '2018-08-07', '우리,\r\n모두에게 착하지 말고\r\n모든 순간 척하지 말자\r\n내 인생이잖아', 'sns02.PNG'),
(184, 19, '2018-08-07', '그저\r\n평범한 일상을 원했다\r\n평범한 사랑을 원했고\r\n평범한 사람을 원했고\r\n평범한 행복을 원했다\r\n\r\n- g.w\r\n', 'sns03.PNG'),
(185, 19, '2018-08-07', '우리는 시간을 공유하는 사람하고만\r\n의미 있는 관계를 맺을 수 있다.\r\n특히 사랑은, 내 시간을 상대방에게\r\n기꺼이 건내주는 일이다.\r\n\r\n- 한때 소중했던 것들 -', 'sns04.PNG'),
(186, 19, '2018-08-07', '\r\n나를 가장 사랑해야 하는 사람은\r\n바로 나 자신이더라.\r\n\r\n', 'sns05.PNG'),
(187, 19, '2018-08-07', '내가 좋은사람이 되어\r\n내게 좋은 사람이 오도록', 'sns06.PNG'),
(188, 19, '2018-08-07', '인맥보다 중요한 건 자신이다.', 'sns07.PNG'),
(189, 19, '2018-08-07', '나는 신발이 없음을 한탄했는데,\r\n길에서 발이 없는 사람을 만났다.\r\n\r\n- 데일 카네기 -\r\n', 'sns08.PNG'),
(190, 19, '2018-08-07', '\r\n걱정하지마\r\n잘 될거야\r\n\r\n', 'sns09.PNG'),
(191, 19, '2018-08-07', '눈을 감지 말고 똑바로 봐.\r\n두려움의 실체는 생각과 다를 수 있어.\r\n\r\n- 애니메이션<니모를 찾아서> 중 -', 'sns10.PNG'),
(192, 19, '2018-08-07', '인생은 애니메이션 뮤지컬 하곤 달라.\r\n노래 좀 부른다고 꿈이 이뤄지진 않지', 'sns11.jpg'),
(193, 19, '2018-08-07', '스스로 알을 깨면 병아리가 되지만\r\n남이 깨주면 계랑 후라이가 된다.', 'sns12.jpg'),
(194, 19, '2018-08-07', '변했다는 증거\r\n\r\n\r\n   \'말투\'', 'sns13.jpg'),
(195, 19, '2018-08-07', '당신의 실수를\r\n이해해주고 곁에\r\n있어줬다고, \"얘는\r\n내가 이래도 좋구나\" \r\n하는 건방 떨지 말고\r\n더 잘해주세요.', 'sns14.jpg'),
(196, 19, '2018-08-07', '네가 항상 열 걸음 안에 있었으면 좋겠다.', 'sns15.jpg'),
(197, 19, '2018-08-07', '나무는 꽃을 버려야\r\n열매를 맺고\r\n강물은 강을 버려야\r\n바다에 이른다.', 'sns16.jpg'),
(198, 19, '2018-08-07', '좋다고 해서 금방 달려들지 말고\r\n싫다고 해서 금방 달아나지 말라.\r\n멀리 있다 해서 잊어버리지 말고\r\n가까이 있다 해서 소홀하지 말라.', 'sns17.jpg'),
(199, 19, '2018-08-07', '처음에는 내가 너를\r\n배려하는 줄 알았어', 'sns18.jpg'),
(200, 19, '2018-08-07', '근데 있잖아.\r\n너 잘하고 있어. 진짜로.\r\n이렇게 힘들어도 이겨내고. 너답게\r\n다시 일어나서 또 화이팅해야지!', 'sns19.jpg'),
(201, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns20.jpg'),
(202, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns01.PNG'),
(203, 19, '2018-08-07', '우리,\r\n모두에게 착하지 말고\r\n모든 순간 척하지 말자\r\n내 인생이잖아', 'sns02.PNG'),
(204, 19, '2018-08-07', '그저\r\n평범한 일상을 원했다\r\n평범한 사랑을 원했고\r\n평범한 사람을 원했고\r\n평범한 행복을 원했다\r\n\r\n- g.w\r\n', 'sns03.PNG'),
(205, 19, '2018-08-07', '우리는 시간을 공유하는 사람하고만\r\n의미 있는 관계를 맺을 수 있다.\r\n특히 사랑은, 내 시간을 상대방에게\r\n기꺼이 건내주는 일이다.\r\n\r\n- 한때 소중했던 것들 -', 'sns04.PNG'),
(206, 19, '2018-08-07', '\r\n나를 가장 사랑해야 하는 사람은\r\n바로 나 자신이더라.\r\n\r\n', 'sns05.PNG'),
(207, 19, '2018-08-07', '내가 좋은사람이 되어\r\n내게 좋은 사람이 오도록', 'sns06.PNG'),
(208, 19, '2018-08-07', '인맥보다 중요한 건 자신이다.', 'sns07.PNG'),
(209, 19, '2018-08-07', '나는 신발이 없음을 한탄했는데,\r\n길에서 발이 없는 사람을 만났다.\r\n\r\n- 데일 카네기 -\r\n', 'sns08.PNG'),
(210, 19, '2018-08-07', '\r\n걱정하지마\r\n잘 될거야\r\n\r\n', 'sns09.PNG'),
(211, 19, '2018-08-07', '눈을 감지 말고 똑바로 봐.\r\n두려움의 실체는 생각과 다를 수 있어.\r\n\r\n- 애니메이션<니모를 찾아서> 중 -', 'sns10.PNG'),
(212, 19, '2018-08-07', '인생은 애니메이션 뮤지컬 하곤 달라.\r\n노래 좀 부른다고 꿈이 이뤄지진 않지', 'sns11.jpg'),
(213, 19, '2018-08-07', '스스로 알을 깨면 병아리가 되지만\r\n남이 깨주면 계랑 후라이가 된다.', 'sns12.jpg'),
(214, 19, '2018-08-07', '변했다는 증거\r\n\r\n\r\n   \'말투\'', 'sns13.jpg'),
(215, 19, '2018-08-07', '당신의 실수를\r\n이해해주고 곁에\r\n있어줬다고, \"얘는\r\n내가 이래도 좋구나\" \r\n하는 건방 떨지 말고\r\n더 잘해주세요.', 'sns14.jpg'),
(216, 19, '2018-08-07', '네가 항상 열 걸음 안에 있었으면 좋겠다.', 'sns15.jpg'),
(217, 19, '2018-08-07', '나무는 꽃을 버려야\r\n열매를 맺고\r\n강물은 강을 버려야\r\n바다에 이른다.', 'sns16.jpg'),
(218, 19, '2018-08-07', '좋다고 해서 금방 달려들지 말고\r\n싫다고 해서 금방 달아나지 말라.\r\n멀리 있다 해서 잊어버리지 말고\r\n가까이 있다 해서 소홀하지 말라.', 'sns17.jpg'),
(219, 19, '2018-08-07', '처음에는 내가 너를\r\n배려하는 줄 알았어', 'sns18.jpg'),
(220, 19, '2018-08-07', '근데 있잖아.\r\n너 잘하고 있어. 진짜로.\r\n이렇게 힘들어도 이겨내고. 너답게\r\n다시 일어나서 또 화이팅해야지!', 'sns19.jpg'),
(221, 19, '2018-08-07', '당신의 오늘 하루는\r\n당신 예상보다 훨씬 더 잘 풀립니다.\r\n당신은 잘 될 것이며,\r\n잘 할 것이며,\r\n잘 해낼 것입니다.\r\n모든 긍정은 당신을 위한 말이에요.\r\n당신은 충분한 사람입니다.', 'sns20.jpg');

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_BTMACH`
--

CREATE TABLE `INTR_BTMACH` (
  `HTNO` int(11) NOT NULL COMMENT '해시태그번호',
  `BNO` int(11) NOT NULL COMMENT '게시물번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='게시물태그매칭';

--
-- 테이블의 덤프 데이터 `INTR_BTMACH`
--

INSERT INTO `INTR_BTMACH` (`HTNO`, `BNO`) VALUES
(2, 99),
(4, 99),
(1, 100),
(2, 100),
(1, 101),
(2, 101),
(3, 101),
(4, 101);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_HASHTAG`
--

CREATE TABLE `INTR_HASHTAG` (
  `HTNO` int(11) NOT NULL COMMENT '해시태그번호',
  `TNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '태그명'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='해시태그';

--
-- 테이블의 덤프 데이터 `INTR_HASHTAG`
--

INSERT INTO `INTR_HASHTAG` (`HTNO`, `TNAME`) VALUES
(4, 'ALONSO'),
(39, 'DIY'),
(2, 'GERRARD'),
(3, 'MANE'),
(1, 'YNWA'),
(10, '가구'),
(13, '가구'),
(19, '가드닝'),
(20, '가전'),
(11, '공방'),
(12, '공방'),
(26, '기타'),
(17, '매트리스'),
(5, '모던한'),
(38, '반려동물'),
(28, '방석'),
(6, '북유럽'),
(21, '수납'),
(16, '수납/생활'),
(34, '수납장'),
(31, '시계'),
(7, '심플한'),
(8, '여름침구'),
(29, '유아'),
(25, '의자'),
(33, '장식'),
(22, '정리'),
(18, '주방'),
(35, '진열장'),
(24, '책상'),
(27, '침구'),
(23, '침대'),
(32, '캔들/디퓨저'),
(30, '커튼'),
(14, '패브릭'),
(37, '학생'),
(36, '행거/옷걸이'),
(15, '홈데코/조명'),
(9, '화분');

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_LKMB`
--

CREATE TABLE `INTR_LKMB` (
  `LNO` int(11) NOT NULL COMMENT '좋아요번호',
  `BNO` int(11) NOT NULL COMMENT '게시물번호',
  `MEMNO` int(11) NOT NULL COMMENT '회원번호(클릭한사람)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='좋아요';

--
-- 테이블의 덤프 데이터 `INTR_LKMB`
--

INSERT INTO `INTR_LKMB` (`LNO`, `BNO`, `MEMNO`) VALUES
(22, 221, 18),
(23, 220, 18),
(24, 219, 18),
(25, 218, 18),
(26, 217, 18),
(27, 216, 18),
(28, 215, 18),
(29, 214, 18),
(30, 213, 18),
(31, 212, 18),
(32, 211, 18),
(33, 210, 18),
(34, 209, 19),
(35, 210, 19),
(36, 209, 19),
(37, 208, 19),
(38, 207, 19),
(39, 206, 19),
(40, 205, 19),
(41, 220, 13),
(42, 221, 17);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_MEMBER`
--

CREATE TABLE `INTR_MEMBER` (
  `MEMNO` int(11) NOT NULL COMMENT '회원번호',
  `ID` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '아이디(이메일)',
  `PWD` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT '비밀번호',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '이름',
  `NKNM` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '닉네임',
  `PHNO` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT '전화번호',
  `ZCODE` char(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '우편번호',
  `BADDR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '기본주소',
  `DADDR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '상세주소',
  `MEMPH` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '회원사진',
  `BCKPH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '배경사진'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='회원';

--
-- 테이블의 덤프 데이터 `INTR_MEMBER`
--

INSERT INTO `INTR_MEMBER` (`MEMNO`, `ID`, `PWD`, `NAME`, `NKNM`, `PHNO`, `ZCODE`, `BADDR`, `DADDR`, `MEMPH`, `BCKPH`) VALUES
(1, 'user01@test.com', '1234', 'user01', 'user01', '010-1234-1234', NULL, NULL, NULL, NULL, NULL),
(2, 'user02@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user02', 'user02', '01011112222', NULL, NULL, NULL, NULL, NULL),
(3, 'user03@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user03', 'user03', '01022223333', NULL, NULL, NULL, NULL, NULL),
(4, 'user04@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user04', 'user04', '01022222222', NULL, NULL, NULL, NULL, NULL),
(8, 'user011@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', '홍길동', '1111', '01011111111', NULL, NULL, NULL, NULL, NULL),
(9, 'user12@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user12', 'user12', '01011111111', NULL, NULL, NULL, NULL, NULL),
(12, 'user16@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user16', 'user16', '01011111111', NULL, NULL, NULL, NULL, NULL),
(13, 'user001@test.com', '1111', 'user001', 'user001', '010-1234-1324', NULL, NULL, NULL, NULL, NULL),
(14, 'user14@test.com', '1111', 'user14', 'user14', '010-4397-8374', NULL, NULL, NULL, NULL, NULL),
(17, 'user20@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user20', 'user20', '01021112222', NULL, NULL, NULL, NULL, NULL),
(18, 'janny0410@naver.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', '강동현(ryan)', '강동현(ryan)', '-', NULL, NULL, NULL, NULL, NULL),
(19, 'kop@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'kop', 'kop', '01011111111', NULL, NULL, NULL, NULL, NULL),
(20, 'goguma@test.com', '1111', '고구마', '고구마', '01011111111', NULL, NULL, NULL, NULL, NULL),
(21, 'podo@test.com', '1111', '포도', '포도', '01011111111', NULL, NULL, NULL, NULL, NULL),
(22, 'dongdong@test.com', '1111', '동동', '동동', '01011111111', NULL, NULL, NULL, NULL, NULL),
(23, 'gguggu@test.com', '1111', '꾸꾸', '꾸꾸', '01011111111', NULL, NULL, NULL, NULL, NULL),
(24, 'gerrard@test.com', '1111', '제라드', '제라드', '01011111111', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_ODNWK`
--

CREATE TABLE `INTR_ODNWK` (
  `WONO` int(11) NOT NULL COMMENT '작품주문번호',
  `ODNO` int(11) NOT NULL COMMENT '주문번호',
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `OSTOR` int(11) DEFAULT NULL COMMENT '수량',
  `QCTT` text COLLATE utf8_unicode_ci COMMENT '구매후기',
  `OWOPT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='주문/작품';

--
-- 테이블의 덤프 데이터 `INTR_ODNWK`
--

INSERT INTO `INTR_ODNWK` (`WONO`, `ODNO`, `WNO`, `OSTOR`, `QCTT`, `OWOPT`) VALUES
(1, 123456, 4, 2, 'ㅎㅇ', NULL),
(2, 654321, 3, 1, 'ㅋㅋ', NULL),
(3, 789456, 4, 2, 'ㄴㄴ', NULL),
(4, 10001001, 13, NULL, NULL, NULL),
(5, 10001001, 14, NULL, NULL, NULL),
(6, 10001001, 15, NULL, NULL, NULL),
(7, 10001001, 16, NULL, NULL, NULL),
(8, 10001001, 17, NULL, NULL, NULL),
(9, 10001001, 18, NULL, NULL, NULL),
(10, 10001001, 19, NULL, NULL, NULL),
(11, 10001001, 20, NULL, NULL, NULL),
(12, 10001001, 21, NULL, NULL, NULL),
(13, 10001001, 22, NULL, NULL, NULL),
(14, 10001001, 23, NULL, NULL, NULL),
(15, 10001001, 24, NULL, NULL, NULL),
(16, 10001001, 39, NULL, NULL, NULL),
(17, 10001001, 40, NULL, NULL, NULL),
(18, 10001001, 41, NULL, NULL, NULL),
(19, 10001001, 42, NULL, NULL, NULL),
(20, 10001001, 43, NULL, NULL, NULL),
(21, 10001001, 44, NULL, NULL, NULL),
(22, 10001001, 45, NULL, NULL, NULL),
(23, 10001001, 46, NULL, NULL, NULL),
(24, 10001002, 47, NULL, NULL, NULL),
(25, 10001002, 48, NULL, NULL, NULL),
(26, 10001002, 49, NULL, NULL, NULL),
(27, 10001002, 50, NULL, NULL, NULL),
(28, 10001002, 51, NULL, NULL, NULL),
(29, 10001002, 52, NULL, NULL, NULL),
(30, 10001002, 53, NULL, NULL, NULL),
(31, 10001002, 54, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_ORDER`
--

CREATE TABLE `INTR_ORDER` (
  `ODNO` int(11) NOT NULL COMMENT '주문번호',
  `MEMNO` int(11) NOT NULL COMMENT '회원번호',
  `MOPAY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '결제수단',
  `DCOST` int(11) NOT NULL COMMENT '배송비',
  `TAMNT` int(11) NOT NULL COMMENT '총금액',
  `ODATE` date NOT NULL COMMENT '주문일',
  `ODSTT` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '주문상태',
  `DLMEMO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '배송메모',
  `CURIR` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '택배사',
  `ZCODE` char(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '우편번호',
  `BADDR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '기본주소',
  `DADDR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '상세주소',
  `IVNO` int(11) DEFAULT NULL COMMENT '송장번호',
  `CLDTE` date DEFAULT NULL COMMENT '클레임요청일',
  `CRQST` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '환불및교환요청',
  `CNDTL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '환불및교환사유',
  `PRSTT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '처리상태(교환/환불)',
  `PRDTL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '처리사유(교환/환불)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='주문';

--
-- 테이블의 덤프 데이터 `INTR_ORDER`
--

INSERT INTO `INTR_ORDER` (`ODNO`, `MEMNO`, `MOPAY`, `DCOST`, `TAMNT`, `ODATE`, `ODSTT`, `DLMEMO`, `CURIR`, `ZCODE`, `BADDR`, `DADDR`, `IVNO`, `CLDTE`, `CRQST`, `CNDTL`, `PRSTT`, `PRDTL`) VALUES
(123456, 3, '카드', 3000, 10000, '2018-07-24', '배송중', '부재시 전화주세요', '비트택배', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654321, 3, '카드', 2000, 20000, '2018-07-26', '배송준비', '전화주세요', '비트비트택배', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789456, 2, '카드', 1500, 30000, '2018-07-25', '배송준비중', '전화주시면 감사하겠습니다.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10001001, 24, '카드', 0, 11000, '2018-08-07', '배송준비중', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10001002, 23, '카드', 0, 11000, '2018-08-07', '배송준비중', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_QNA`
--

CREATE TABLE `INTR_QNA` (
  `QNO` int(11) NOT NULL COMMENT '문의번호',
  `QRTDT` date NOT NULL COMMENT '문의일자',
  `TOIQ` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '문의유형',
  `IQCT` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '문의내용',
  `ARTDT` date DEFAULT NULL COMMENT '문의답변일자',
  `AWQT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '문의답변내용',
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `MEMNO` int(11) NOT NULL COMMENT '회원번호',
  `MEMNO2` int(11) NOT NULL COMMENT '공방번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='문의';

--
-- 테이블의 덤프 데이터 `INTR_QNA`
--

INSERT INTO `INTR_QNA` (`QNO`, `QRTDT`, `TOIQ`, `IQCT`, `ARTDT`, `AWQT`, `WNO`, `MEMNO`, `MEMNO2`) VALUES
(1, '2018-07-24', '배송1', '배송이 너무 느려요1', NULL, NULL, 4, 3, 1),
(2, '2018-07-25', '배송2', '배송이 너무느려요2', NULL, NULL, 3, 3, 1),
(3, '2018-07-26', '반품', '반품하고싶어요', NULL, NULL, 4, 2, 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_RLTSP`
--

CREATE TABLE `INTR_RLTSP` (
  `MEMNO` int(11) NOT NULL COMMENT '회원번호',
  `MEMNO2` int(11) NOT NULL COMMENT '회원번호2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='관계(팔로워 팔로잉)';

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_RVPHO`
--

CREATE TABLE `INTR_RVPHO` (
  `RVPNO` int(11) NOT NULL COMMENT '사진번호',
  `WONO` int(11) DEFAULT NULL COMMENT '작품주문번호',
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '리뷰사진'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='리뷰사진';

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_SPBK`
--

CREATE TABLE `INTR_SPBK` (
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `MEMNO` int(11) NOT NULL COMMENT '회원번호',
  `BKOPT` text COLLATE utf8_unicode_ci COMMENT '옵션내용'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='장바구니';

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_STMACH`
--

CREATE TABLE `INTR_STMACH` (
  `MEMNO` int(11) NOT NULL COMMENT '공방번호',
  `HTNO` int(11) NOT NULL COMMENT '해시태그번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='공방태그매칭';

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WKACP`
--

CREATE TABLE `INTR_WKACP` (
  `ACPNO` int(11) NOT NULL COMMENT '사진번호',
  `WSANO` int(11) DEFAULT NULL COMMENT '공방체험번호',
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '사진'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='공방체험사진';

--
-- 테이블의 덤프 데이터 `INTR_WKACP`
--

INSERT INTO `INTR_WKACP` (`ACPNO`, `WSANO`, `PATH`) VALUES
(1, 1, 'img2.PNG'),
(2, 2, 'img2.PNG'),
(18, 12, '537ff7ab-df8a-40cb-b89c-df55a5ebea35'),
(19, 13, '630dbb0a-b7f0-4396-a70d-895bd7c5f9ab'),
(48, 10, '2394a10a-e2eb-474d-b0d7-8197fc6f55ea'),
(56, 16, 'ec0dd3c0-df04-44fc-b062-cec79059dac9'),
(57, 16, '3a75e6f6-240d-4558-be24-a96fb96b73da'),
(58, 16, '93c95232-0cd1-4415-8505-622b555c2737'),
(77, 8, 'c2c223a4-92af-4381-97c3-96dc848e6569'),
(78, 8, '37c16a71-1313-4999-8948-5e7a1a3d2ca5');

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WKOT`
--

CREATE TABLE `INTR_WKOT` (
  `OPNO` int(11) NOT NULL COMMENT '옵션번호',
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `ABVL` text COLLATE utf8_unicode_ci COMMENT '속성값'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='작품옵션';

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WORKS`
--

CREATE TABLE `INTR_WORKS` (
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `MEMNO` int(11) NOT NULL COMMENT '공방번호',
  `WTITL` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '작품명',
  `PRICE` int(11) NOT NULL COMMENT '판매가',
  `WRTDT` date NOT NULL COMMENT '등록일',
  `WRMDT` date DEFAULT NULL COMMENT '수정일',
  `ALSTK` int(11) DEFAULT NULL COMMENT '재고수량',
  `SLST` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '판매상태',
  `PDDT` text COLLATE utf8_unicode_ci NOT NULL COMMENT '제품상세',
  `SPCS` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT '배송비여부'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='작품';

--
-- 테이블의 덤프 데이터 `INTR_WORKS`
--

INSERT INTO `INTR_WORKS` (`WNO`, `MEMNO`, `WTITL`, `PRICE`, `WRTDT`, `WRMDT`, `ALSTK`, `SLST`, `PDDT`, `SPCS`) VALUES
(1, 1, '좌식의자', 25000, '2018-07-10', NULL, NULL, '판매중', '오동나무를 이용한 좌식의자', 'Y'),
(2, 1, '좌식의자1', 25000, '2018-07-10', NULL, 12, '판매중', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N'),
(3, 1, '좌식의자2', 35000, '2018-07-10', NULL, 12, '판매중', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N'),
(4, 1, '좌식의자3', 45000, '2018-07-10', NULL, 12, '판매중', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N'),
(5, 1, '좌식의자4', 55000, '2018-07-10', NULL, 12, '판매대기', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N'),
(6, 1, '좌식의자5', 65000, '2018-07-10', NULL, 12, '판매중', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N'),
(7, 2, 'test01', 25000, '2018-07-10', NULL, 0, '품절', 'test', 'Y'),
(8, 2, 'test02', 25000, '2018-07-10', NULL, 12, '판매대기', 'test', 'N'),
(9, 2, 'test03', 35000, '2018-07-10', NULL, 12, '판매중', 'test', 'N'),
(10, 2, 'test04', 45000, '2018-07-10', NULL, 0, '품절', 'test', 'N'),
(11, 2, 'test05', 55000, '2018-07-10', NULL, 12, '판매중', 'test.', 'N'),
(12, 2, 'test06', 65000, '2018-07-10', NULL, 12, '판매중', 'test', 'N'),
(13, 17, '호베르투 피르미누', 32000, '2018-08-01', NULL, 1, '판매중', '현대 축구의 펄스나인의 대표적인 선수\r\n리버풀의 스트라이커이자 팀의 핵심선수\r\n전체적인 팀의 퀄리티를 높여줄 수 있는 대체불가능의 선수이다.', 'N'),
(14, 17, '모하메드 살라', 99000, '2018-08-01', NULL, 1, '판매중', '이집트 태생의 EPL 프리미어리그 최다골의 기록을 보유한 리버풀 선수. 파라오, 갓라오 등의 별명을 가지고 있으며 명실상부 세계 정상급 레벨의 선수 중 한명.', 'N'),
(15, 17, '사디오 마네', 55000, '2018-08-01', NULL, 1, '판매중', '세네갈 태생의 흑표범이라는 별명이 어울리는 리버풀 선수. 엄청난 스피드와 탄력적인 움직임으로 상대방을 괴롭히며, 리버풀의 전방 3TOP중 한명. 1:1로 이선수를 막는것은 매우 어렵다.', 'N'),
(16, 17, '조던 헨더슨', 22000, '2018-08-01', NULL, 1, '판매중', '잉글랜드 국가대표이자 현리버풀의 캡틴. 모범적인 행동과 헌신적인 행동으로 팀내 선수들의 듬직한 주장이다. 잦은 부상으로 고생을 하지만 경기장 외적으로 주장역할을 매우 잘 수행하는 것으로 보인다.', 'N'),
(17, 17, '나비 케이타', 77000, '2018-08-01', NULL, 1, '판매중', '분데스리가 베스트에 뽑히기도 했으며 돌풍팀인 라이프치히의 핵심멤버. 이번 여름 리버풀로 합류했으며, 프리시즌에 가장 뛰어난 폼을 보여주고 있는 선수', 'N'),
(18, 17, '파비뉴', 52000, '2018-08-01', NULL, 1, '판매중', '리그앙의 모나코에서 활약하던 선수,', 'N'),
(19, 17, '알리송 베이커', 98000, '2018-08-01', NULL, 1, '판매중', '브라질 국가대표 주전 골키퍼이며 세리에A에서 최정상 키퍼로 인정받은 선수. ', 'N'),
(20, 17, '반 다이크', 98000, '2018-08-01', NULL, 1, '판매중', '수비수 최고 이적료를 갈아치운 괴물같은 선수! 리버풀이 영입하고 리버풀의 수비진이 달라졌다.', 'N'),
(21, 17, '몽키D루피', 30000, '2018-08-01', NULL, 1, '판매중', '원피스 주인공', 'N'),
(22, 17, '롤로노아 조로', 27000, '2018-08-01', NULL, 1, '판매중', '원피스 주인공 베프', 'N'),
(23, 17, '배틀그라운드', 27000, '2018-08-01', NULL, 1, '판매중', '배틀로얄 계열의 게임', 'N'),
(24, 17, '리그오브레전드', 101000, '2018-08-01', NULL, 1, '판매중', '세계에서 가장 인기 있는 게임', 'N'),
(25, 17, '히어로즈오브더스톰', 101000, '2018-08-01', NULL, 1, '판매중', '세계에서 가장 인기 있는 게임', 'N'),
(26, 17, '포트나이트', 101000, '2018-08-01', NULL, 1, '판매중', '세계에서 가장 인기 있는 게임', 'N'),
(27, 17, '스타크래프트', 101000, '2018-08-01', NULL, 1, '판매중', '세계에서 가장 인기 있는 게임', 'N'),
(28, 17, '워크래프트', 101000, '2018-08-01', NULL, 1, '판매중', '세계에서 가장 인기 있는 게임', 'N'),
(29, 17, '디아블로', 101000, '2018-08-01', NULL, 1, '판매중', '세계에서 가장 인기 있는 게임', 'N'),
(30, 17, '오버워치', 30000, '2018-08-01', NULL, 1, '판매중', '한때 세계에서 잘나가던 게임', 'N'),
(31, 17, '모찌모찌 치즈스틱', 30000, '2018-08-01', NULL, 1, '판매중', '모찌모찌', 'N'),
(32, 17, '옥수수크림번', 30000, '2018-08-01', NULL, 1, '판매중', '옥수수', 'N'),
(33, 17, '구운부추만두빵', 30000, '2018-08-01', NULL, 1, '판매중', '부추부추', 'N'),
(34, 17, '단팥빵플러스', 30000, '2018-08-01', NULL, 1, '판매중', '팥팥팥팥', 'N'),
(35, 17, '불란셔호떡', 30000, '2018-08-01', NULL, 1, '판매중', '호떡호떡', 'N'),
(36, 17, '쿨티라미수', 30000, '2018-08-01', NULL, 1, '판매중', '티라미수', 'N'),
(37, 17, '쿨바나나', 30000, '2018-08-01', NULL, 1, '판매중', '바나나나나', 'N'),
(38, 17, '몬스터치즈번', 25000, '2018-08-01', NULL, 1, '판매중', '치즈치즈', 'N'),
(39, 19, '샤코', 30000, '2018-08-01', NULL, 1, '판매중', '와이 쏘 씨리어스', 'N'),
(40, 19, '애쉬', 30000, '2018-08-01', NULL, 1, '판매중', '애쉬애쉬애쉬', 'N'),
(41, 19, '세주아니', 30000, '2018-08-01', NULL, 1, '판매중', '세주세주', 'N'),
(42, 19, '라이즈', 30000, '2018-08-01', NULL, 1, '판매중', '라이즈라이즈', 'N'),
(43, 19, '갈리오', 30000, '2018-08-01', NULL, 1, '판매중', '갈리오갈리오', 'N'),
(44, 19, '트린다미어', 30000, '2018-08-01', NULL, 1, '판매중', '트린다미어', 'N'),
(45, 19, '레오나', 30000, '2018-08-01', NULL, 1, '판매중', '레오나', 'N'),
(46, 19, '조이', 30000, '2018-08-01', NULL, 1, '판매중', '조이조이조이', 'N'),
(47, 18, 'M4A1', 30000, '2018-08-01', NULL, 1, '판매중', 'M4', 'N'),
(48, 18, 'SCAR', 21000, '2018-08-01', NULL, 1, '판매중', 'SCAR', 'N'),
(49, 18, 'M16', 23000, '2018-08-01', NULL, 1, '판매중', 'M16', 'N'),
(50, 18, 'AKM', 30000, '2018-08-01', NULL, 1, '판매중', 'AKM', 'N'),
(51, 18, 'UMP', 30000, '2018-08-01', NULL, 1, '판매중', 'UMP', 'N'),
(52, 18, 'VECTOR', 30000, '2018-08-01', NULL, 1, '판매중', 'VECTOR', 'N'),
(53, 18, 'KAR98k', 30000, '2018-08-01', NULL, 1, '판매중', 'KAR98', 'N'),
(54, 18, 'SKS', 30000, '2018-08-01', NULL, 1, '판매중', 'SKS', 'N'),
(55, 2, 'test07', 25000, '2018-08-09', NULL, 12, '판매중', '06fd556f-ee97-4ca3-b57b-f1a4a9ee4b73', 'Y'),
(56, 2, 'test07', 25000, '2018-08-09', NULL, 12, '판매중', '06fd556f-ee97-4ca3-b57b-f1a4a9ee4b73', 'Y'),
(57, 2, 'test07', 25000, '2018-08-09', NULL, 12, '판매중', '06fd556f-ee97-4ca3-b57b-f1a4a9ee4b73', 'Y');

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WPHO`
--

CREATE TABLE `INTR_WPHO` (
  `WPNO` int(11) NOT NULL COMMENT '사진번호',
  `WNO` int(11) DEFAULT NULL COMMENT '작품번호',
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '사진',
  `MIPT` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '메인사진여부'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='작품사진';

--
-- 테이블의 덤프 데이터 `INTR_WPHO`
--

INSERT INTO `INTR_WPHO` (`WPNO`, `WNO`, `PATH`, `MIPT`) VALUES
(1, 1, 'img01.jpg', 'y'),
(2, 2, 'img02.png', 'y'),
(3, 3, 'img03.png', 'y'),
(4, 4, 'img04.png', 'y'),
(5, 5, 'img05.png', 'y'),
(6, 6, 'img06.png', 'y'),
(7, 13, 'euro01.jpg', NULL),
(8, 14, 'euro02.jpg', NULL),
(9, 15, 'euro03.jpg', NULL),
(10, 16, 'euro04.jpg', NULL),
(11, 17, 'euro05.jpg', NULL),
(12, 18, 'euro06.jpg', NULL),
(13, 19, 'euro07.jpg', NULL),
(14, 20, 'euro08.jpg', NULL),
(15, 21, '루피01.jpg', NULL),
(16, 22, '조로02.jpg', NULL),
(17, 23, 'summer01.jpg', NULL),
(18, 24, 'summer02.jpg', NULL),
(19, 25, 'summer03.jpg', NULL),
(20, 26, 'summer04.jpg', NULL),
(21, 27, 'summer05.jpg', NULL),
(22, 28, 'summer06.jpg', NULL),
(23, 29, 'summer07.jpg', NULL),
(24, 30, 'summer08.jpg', NULL),
(25, 31, 'modern01.jpg', NULL),
(26, 32, 'modern02.jpg', NULL),
(27, 33, 'modern03.jpg', NULL),
(28, 34, 'modern04.jpg', NULL),
(29, 35, 'modern05.jpg', NULL),
(30, 36, 'modern06.jpg', NULL),
(31, 37, 'modern07.jpg', NULL),
(32, 38, 'modern08.jpg', NULL),
(33, 39, 'pot01.jpg', NULL),
(34, 40, 'pot02.jpg', NULL),
(35, 41, 'pot03.jpg', NULL),
(36, 42, 'pot04.jpg', NULL),
(37, 43, 'pot05.jpg', NULL),
(38, 44, 'pot06.jpg', NULL),
(39, 45, 'pot07.jpg', NULL),
(40, 46, 'pot08.jpg', NULL),
(41, 47, 'simple01.jpg', NULL),
(42, 48, 'simple02.jpg', NULL),
(43, 49, 'simple03.jpg', NULL),
(44, 50, 'simple04.jpg', NULL),
(45, 51, 'simple05.jpg', NULL),
(46, 52, 'simple06.jpg', NULL),
(47, 53, 'simple07.jpg', NULL),
(48, 54, 'simple08.jpg', NULL),
(49, 55, 'afa4c4d6-8281-409e-9787-b3c9010bc754', NULL),
(50, 55, '829d595b-c6e3-4c37-a3f2-9ae3de00aa76', NULL),
(51, 55, '47586ee1-b214-4f96-9fbd-387564555c6d', NULL),
(52, 56, '46dcd722-7d33-4e0d-babb-496988863505', NULL),
(53, 56, '1edf7acc-4bc7-4e8d-8a7e-2ae929becfc8', NULL),
(54, 56, '2c8d49e7-7904-4a25-94d9-cbca09b2eb6f', NULL),
(55, 57, '391536db-acf5-404e-ace9-b7f2f275a24e', NULL),
(56, 57, '9dc12876-a801-4293-ac61-4e5b63815ed7', NULL),
(57, 57, '4291c669-d606-4ca9-9e4d-0a94548f1b76', NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WRKSHP`
--

CREATE TABLE `INTR_WRKSHP` (
  `MEMNO` int(11) NOT NULL COMMENT '공방번호',
  `BSNO` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '사업자번호',
  `MUTUA` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '상호',
  `RNAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '대표자명',
  `INDST` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '업태',
  `ITEMS` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '종목',
  `ZCODE` char(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '우편주소',
  `BADDR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '기본주소',
  `DADDR` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '상세주소',
  `WSNM` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '공방명',
  `ITROD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '소개글',
  `WSCTT` text COLLATE utf8_unicode_ci COMMENT '공방소개 내용',
  `FCBK` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '페이스북',
  `TWIT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '트위터',
  `ISTAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '인스타'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='공방';

--
-- 테이블의 덤프 데이터 `INTR_WRKSHP`
--

INSERT INTO `INTR_WRKSHP` (`MEMNO`, `BSNO`, `MUTUA`, `RNAME`, `INDST`, `ITEMS`, `ZCODE`, `BADDR`, `DADDR`, `WSNM`, `ITROD`, `WSCTT`, `FCBK`, `TWIT`, `ISTAG`) VALUES
(1, '1231111111', '비트공방', '홍길동', '제작업', '목공', NULL, NULL, NULL, '비트공방', NULL, NULL, NULL, NULL, NULL),
(2, '1211111111', 'test공방', 'user02', '목공업', '가구', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '111111', 'interiaaa', '성현동3', 'test', 'test', NULL, NULL, NULL, '인테리어', '인테리어 소개글입니다.', NULL, NULL, NULL, NULL),
(4, '1', '1', '1', 'q', 'q', NULL, NULL, NULL, '4444', 'test', NULL, NULL, NULL, NULL),
(5, '12', 'q', 'q', 'q', 'q', NULL, NULL, NULL, '5555', 'test', NULL, NULL, NULL, NULL),
(6, '13', 'q', 'q', 'q', 'q', NULL, NULL, NULL, '6666', 'test', NULL, NULL, NULL, NULL),
(7, '14', 'q', 'q', 'q', 'q', NULL, NULL, NULL, '7777', 'test', NULL, NULL, NULL, NULL),
(8, '15', 'q', 'q', 'q', 'q', NULL, NULL, NULL, '8888', 'test', NULL, NULL, NULL, NULL),
(9, '16', 'q', 'q', 'q', 'q', NULL, NULL, NULL, '9999', 'test', NULL, NULL, NULL, NULL),
(10, '17', 'q', 'q', 'q', 'q', NULL, NULL, NULL, '10101010', 'test', NULL, NULL, NULL, NULL),
(11, '18', 'q', 'q', 'q', 'q', NULL, NULL, NULL, '11111111', NULL, NULL, NULL, NULL, NULL),
(12, '19', 'q', 'q', 'q', 'q', NULL, NULL, NULL, '12121212', 'test', NULL, NULL, NULL, NULL),
(13, '20', 'q', 'q', 'q', 'q', NULL, NULL, NULL, '13131313', 'test', NULL, NULL, NULL, NULL),
(14, '348745', 'hd', 'hdhdhd', 'q', 'q', '', '', '', NULL, NULL, 'wqewqewqewqewqe', NULL, NULL, NULL),
(17, '963852741', 'Chelsea Football Club', 'Sari', '핸드메이드', '종합', NULL, NULL, NULL, 'Chelsea Football Club', NULL, NULL, NULL, NULL, NULL),
(18, '987321654', 'Real Madrid C.F', 'Zidane', '핸드메이드', '종합', NULL, NULL, NULL, 'Real Madrid C.F', NULL, NULL, NULL, NULL, NULL),
(19, '1593578264', 'FC Barcelona', 'Messi', '핸드메이드', '종합', NULL, NULL, NULL, 'FC Barcelona', NULL, NULL, NULL, NULL, NULL),
(20, '741852963', 'Arsenal', 'Arsenal', '핸드메이드', '종합', NULL, NULL, NULL, 'Arsenal', NULL, NULL, NULL, NULL, NULL),
(21, '852963741', 'Paris Saint-Germain', 'Paris Saint-Germain', '핸드메이드', '종합', NULL, NULL, NULL, 'Paris Saint-Germain', NULL, NULL, NULL, NULL, NULL),
(22, '20808120', 'Borussia Dortmund', 'Borussia Dortmund', '핸드메이드', '종합', NULL, NULL, NULL, 'Borussia Dortmund', NULL, NULL, NULL, NULL, NULL),
(23, '959303122028', 'LIVERPOOL', 'Jurgen Klopp', '핸드메이드', '종합', NULL, NULL, NULL, 'LIVERPOOL', NULL, NULL, NULL, NULL, NULL),
(24, '745698412365', 'Rangers Football Club', 'Steven Gerrard', '핸드메이드', '종합', NULL, NULL, NULL, 'Rangers Football Club', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WSAV`
--

CREATE TABLE `INTR_WSAV` (
  `WSANO` int(11) NOT NULL COMMENT '공방체험번호',
  `MEMNO` int(11) NOT NULL COMMENT '공방번호',
  `ACNM` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '체험명',
  `MINNO` int(11) NOT NULL COMMENT '최소인원',
  `MAXNO` int(11) NOT NULL COMMENT '최대인원',
  `ACTDT` date NOT NULL COMMENT '체험일자',
  `AVST` time DEFAULT NULL COMMENT '시작시간',
  `AVET` time DEFAULT NULL COMMENT '종료시간',
  `MTRLS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '준비물내용',
  `APRIC` int(11) NOT NULL COMMENT '체험료',
  `ACCNT` text COLLATE utf8_unicode_ci NOT NULL COMMENT '체험소개'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='공방-공방체험';

--
-- 테이블의 덤프 데이터 `INTR_WSAV`
--

INSERT INTO `INTR_WSAV` (`WSANO`, `MEMNO`, `ACNM`, `MINNO`, `MAXNO`, `ACTDT`, `AVST`, `AVET`, `MTRLS`, `APRIC`, `ACCNT`) VALUES
(1, 1, '나무의자만들기', 2, 5, '2018-07-17', '10:20:00', '12:30:00', NULL, 30000, '의자를 만들수 있는 다양한 경험을 할수 있다.'),
(2, 1, '나무의자만들기2', 1, 3, '2018-07-18', '11:30:00', '14:30:00', '사포', 50000, '의자만들기 2번째작업'),
(3, 1, '나무의자만들기3', 2, 5, '2018-07-30', '14:00:00', '16:00:00', NULL, 40000, '의자만들기3번째시간'),
(8, 2, '체험 test1 수정 1차 2ck 3ck', 1, 5, '2018-07-27', '13:00:00', '15:00:00', 'Test', 50000, 'Testasdf'),
(10, 2, '체험 Test3 수정 2차', 1, 6, '2018-08-21', '09:00:00', '13:30:00', '', 50000, 'Test3'),
(12, 2, '체험 Test5', 1, 5, '2018-01-01', '02:01:00', '04:00:00', '', 50000, 'Test'),
(13, 2, '체험 Test6', 1, 6, '2018-03-05', '14:00:00', '16:00:00', '', 70000, 'test6'),
(16, 2, '체험 Test 8', 1, 4, '2018-12-01', '16:00:00', '20:00:00', '', 30000, 'asdf');

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WSPHO`
--

CREATE TABLE `INTR_WSPHO` (
  `WSPNO` int(11) NOT NULL COMMENT '공방사진번호',
  `MEMNO` int(11) DEFAULT NULL COMMENT '공방번호',
  `PCLSF` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '사진구분(커버/소개/main/홍보이미지)',
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '사진',
  `LPATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '로고사진'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='공방사진';

--
-- 테이블의 덤프 데이터 `INTR_WSPHO`
--

INSERT INTO `INTR_WSPHO` (`WSPNO`, `MEMNO`, `PCLSF`, `PATH`, `LPATH`) VALUES
(1, 1, 'main', 'storeListBanner.png', 'storeMain_logo00.png'),
(2, 2, 'main', 'storeListBanner01.png', 'storeMain_logo01.png'),
(3, 3, 'main', 'storeListBanner02.png', 'storeMain_logo02.png'),
(4, 4, 'main', 'storeListBanner03.png', 'storeMain_logo03.png'),
(5, 5, 'main', 'storeListBanner04.png', 'storeMain_logo04.png'),
(6, 6, 'main', 'storeListBanner05.png', 'storeMain_logo05.png'),
(7, 7, 'main', 'storeListBanner06.png', 'storeMain_logo06.png'),
(8, 8, 'main', 'storeListBanner07.png', 'storeMain_logo00.png'),
(9, 9, 'main', 'storeListBanner.png', 'storeMain_logo00.png'),
(10, 10, 'main', 'storeListBanner01.png', 'storeMain_logo01.png'),
(11, 11, 'main', 'storeListBanner02.png', 'storeMain_logo02.png'),
(12, 12, 'main', 'storeListBanner03.png', 'storeMain_logo03.png'),
(13, 17, '홍보이미지', 'gb01.jpg', NULL),
(14, 18, '홍보이미지', 'gb02.jpg', NULL),
(15, 19, '홍보이미지', 'gb03.jpg', NULL),
(16, 20, '홍보이미지', 'gb04.jpg', NULL),
(17, 21, '홍보이미지', 'gb05.jpg', NULL),
(18, 22, '홍보이미지', 'gb06.jpg', NULL),
(19, 23, '홍보이미지', 'gb07.jpg', NULL),
(20, 24, '홍보이미지', 'gb08.jpg', NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WTMACH`
--

CREATE TABLE `INTR_WTMACH` (
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `HTNO` int(11) NOT NULL COMMENT '해시태그번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='작품태그매칭';

--
-- 테이블의 덤프 데이터 `INTR_WTMACH`
--

INSERT INTO `INTR_WTMACH` (`WNO`, `HTNO`) VALUES
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(36, 5),
(37, 5),
(38, 5),
(13, 6),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 6),
(20, 6),
(47, 7),
(48, 7),
(49, 7),
(50, 7),
(51, 7),
(52, 7),
(53, 7),
(54, 7),
(23, 8),
(24, 8),
(25, 8),
(26, 8),
(27, 8),
(28, 8),
(29, 8),
(30, 8),
(39, 9),
(40, 9),
(41, 9),
(42, 9),
(43, 9),
(44, 9),
(45, 9),
(46, 9);

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `INTR_ACRGTT`
--
ALTER TABLE `INTR_ACRGTT`
  ADD PRIMARY KEY (`MEMNO`,`WSANO`),
  ADD KEY `FK_INTR_WSAV_TO_INTR_ACRGTT` (`WSANO`);

--
-- 테이블의 인덱스 `INTR_BCMMT`
--
ALTER TABLE `INTR_BCMMT`
  ADD PRIMARY KEY (`CNO`),
  ADD KEY `FK_INTR_BOARD_TO_INTR_BCMMT` (`BNO`),
  ADD KEY `FK_INTR_MEMBER_TO_INTR_BCMMT` (`MEMNO`);

--
-- 테이블의 인덱스 `INTR_BOARD`
--
ALTER TABLE `INTR_BOARD`
  ADD PRIMARY KEY (`BNO`),
  ADD KEY `FK_INTR_MEMBER_TO_INTR_BOARD` (`MEMNO`);

--
-- 테이블의 인덱스 `INTR_BTMACH`
--
ALTER TABLE `INTR_BTMACH`
  ADD PRIMARY KEY (`HTNO`,`BNO`),
  ADD KEY `FK_INTR_BOARD_TO_INTR_BTMACH` (`BNO`);

--
-- 테이블의 인덱스 `INTR_HASHTAG`
--
ALTER TABLE `INTR_HASHTAG`
  ADD PRIMARY KEY (`HTNO`),
  ADD KEY `IX_INTR_HASHTAG` (`TNAME`);

--
-- 테이블의 인덱스 `INTR_LKMB`
--
ALTER TABLE `INTR_LKMB`
  ADD PRIMARY KEY (`LNO`),
  ADD KEY `FK_INTR_BOARD_TO_INTR_LKMB` (`BNO`),
  ADD KEY `FK_INTR_MEMBER_TO_INTR_LKMB` (`MEMNO`);

--
-- 테이블의 인덱스 `INTR_MEMBER`
--
ALTER TABLE `INTR_MEMBER`
  ADD PRIMARY KEY (`MEMNO`),
  ADD UNIQUE KEY `UIX_INTR_MEMBER` (`ID`),
  ADD KEY `IX_INTR_MEMBER` (`NKNM`);

--
-- 테이블의 인덱스 `INTR_ODNWK`
--
ALTER TABLE `INTR_ODNWK`
  ADD PRIMARY KEY (`WONO`),
  ADD KEY `IX_INTR_ODNWK` (`WONO`,`ODNO`,`WNO`),
  ADD KEY `FK_INTR_ORDER_TO_INTR_ODNWK` (`ODNO`),
  ADD KEY `FK_INTR_WORKS_TO_INTR_ODNWK` (`WNO`);

--
-- 테이블의 인덱스 `INTR_ORDER`
--
ALTER TABLE `INTR_ORDER`
  ADD PRIMARY KEY (`ODNO`),
  ADD KEY `IX_INTR_ORDER` (`ODSTT`,`CLDTE`,`PRSTT`,`CRQST`),
  ADD KEY `FK_INTR_MEMBER_TO_INTR_ORDER` (`MEMNO`);

--
-- 테이블의 인덱스 `INTR_QNA`
--
ALTER TABLE `INTR_QNA`
  ADD PRIMARY KEY (`QNO`),
  ADD KEY `FK_INTR_MEMBER_TO_INTR_QNA` (`MEMNO`),
  ADD KEY `FK_INTR_WORKS_TO_INTR_QNA` (`WNO`),
  ADD KEY `FK_INTR_WRKSHP_TO_INTR_QNA` (`MEMNO2`);

--
-- 테이블의 인덱스 `INTR_RLTSP`
--
ALTER TABLE `INTR_RLTSP`
  ADD PRIMARY KEY (`MEMNO`,`MEMNO2`),
  ADD KEY `FK_INTR_MEMBER_TO_INTR_RLTSP` (`MEMNO2`);

--
-- 테이블의 인덱스 `INTR_RVPHO`
--
ALTER TABLE `INTR_RVPHO`
  ADD PRIMARY KEY (`RVPNO`),
  ADD KEY `FK_INTR_ODNWK_TO_INTR_RVPHO` (`WONO`);

--
-- 테이블의 인덱스 `INTR_SPBK`
--
ALTER TABLE `INTR_SPBK`
  ADD PRIMARY KEY (`WNO`,`MEMNO`),
  ADD KEY `FK_INTR_MEMBER_TO_INTR_SPBK` (`MEMNO`);

--
-- 테이블의 인덱스 `INTR_STMACH`
--
ALTER TABLE `INTR_STMACH`
  ADD PRIMARY KEY (`MEMNO`,`HTNO`),
  ADD KEY `FK_INTR_HASHTAG_TO_INTR_STMACH` (`HTNO`);

--
-- 테이블의 인덱스 `INTR_WKACP`
--
ALTER TABLE `INTR_WKACP`
  ADD PRIMARY KEY (`ACPNO`),
  ADD KEY `FK_INTR_WSAV_TO_INTR_WKACP` (`WSANO`);

--
-- 테이블의 인덱스 `INTR_WKOT`
--
ALTER TABLE `INTR_WKOT`
  ADD PRIMARY KEY (`OPNO`),
  ADD KEY `FK_INTR_WORKS_TO_INTR_WKOT` (`WNO`);

--
-- 테이블의 인덱스 `INTR_WORKS`
--
ALTER TABLE `INTR_WORKS`
  ADD PRIMARY KEY (`WNO`),
  ADD KEY `IX_INTR_WORKS` (`WTITL`,`SLST`,`WRTDT`),
  ADD KEY `FK_INTR_WRKSHP_TO_INTR_WORKS` (`MEMNO`);

--
-- 테이블의 인덱스 `INTR_WPHO`
--
ALTER TABLE `INTR_WPHO`
  ADD PRIMARY KEY (`WPNO`),
  ADD KEY `FK_INTR_WORKS_TO_INTR_WPHO` (`WNO`);

--
-- 테이블의 인덱스 `INTR_WRKSHP`
--
ALTER TABLE `INTR_WRKSHP`
  ADD PRIMARY KEY (`MEMNO`),
  ADD UNIQUE KEY `UIX_INTR_WRKSHP` (`BSNO`),
  ADD KEY `IX_INTR_WRKSHP` (`WSNM`,`MEMNO`);

--
-- 테이블의 인덱스 `INTR_WSAV`
--
ALTER TABLE `INTR_WSAV`
  ADD PRIMARY KEY (`WSANO`),
  ADD KEY `IX_INTR_WSAV` (`ACNM`),
  ADD KEY `FK_INTR_WRKSHP_TO_INTR_WSAV` (`MEMNO`);

--
-- 테이블의 인덱스 `INTR_WSPHO`
--
ALTER TABLE `INTR_WSPHO`
  ADD PRIMARY KEY (`WSPNO`),
  ADD KEY `FK_INTR_WRKSHP_TO_INTR_WSPHO` (`MEMNO`);

--
-- 테이블의 인덱스 `INTR_WTMACH`
--
ALTER TABLE `INTR_WTMACH`
  ADD PRIMARY KEY (`WNO`,`HTNO`),
  ADD KEY `FK_INTR_HASHTAG_TO_INTR_WTMACH` (`HTNO`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `INTR_BCMMT`
--
ALTER TABLE `INTR_BCMMT`
  MODIFY `CNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글번호', AUTO_INCREMENT=19;

--
-- 테이블의 AUTO_INCREMENT `INTR_BOARD`
--
ALTER TABLE `INTR_BOARD`
  MODIFY `BNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물번호', AUTO_INCREMENT=222;

--
-- 테이블의 AUTO_INCREMENT `INTR_HASHTAG`
--
ALTER TABLE `INTR_HASHTAG`
  MODIFY `HTNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '해시태그번호', AUTO_INCREMENT=41;

--
-- 테이블의 AUTO_INCREMENT `INTR_LKMB`
--
ALTER TABLE `INTR_LKMB`
  MODIFY `LNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '좋아요번호', AUTO_INCREMENT=43;

--
-- 테이블의 AUTO_INCREMENT `INTR_MEMBER`
--
ALTER TABLE `INTR_MEMBER`
  MODIFY `MEMNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호', AUTO_INCREMENT=25;

--
-- 테이블의 AUTO_INCREMENT `INTR_ODNWK`
--
ALTER TABLE `INTR_ODNWK`
  MODIFY `WONO` int(11) NOT NULL AUTO_INCREMENT COMMENT '작품주문번호', AUTO_INCREMENT=32;

--
-- 테이블의 AUTO_INCREMENT `INTR_QNA`
--
ALTER TABLE `INTR_QNA`
  MODIFY `QNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '문의번호', AUTO_INCREMENT=4;

--
-- 테이블의 AUTO_INCREMENT `INTR_RVPHO`
--
ALTER TABLE `INTR_RVPHO`
  MODIFY `RVPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '사진번호';

--
-- 테이블의 AUTO_INCREMENT `INTR_WKACP`
--
ALTER TABLE `INTR_WKACP`
  MODIFY `ACPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '사진번호', AUTO_INCREMENT=79;

--
-- 테이블의 AUTO_INCREMENT `INTR_WKOT`
--
ALTER TABLE `INTR_WKOT`
  MODIFY `OPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '옵션번호';

--
-- 테이블의 AUTO_INCREMENT `INTR_WORKS`
--
ALTER TABLE `INTR_WORKS`
  MODIFY `WNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '작품번호', AUTO_INCREMENT=58;

--
-- 테이블의 AUTO_INCREMENT `INTR_WPHO`
--
ALTER TABLE `INTR_WPHO`
  MODIFY `WPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '사진번호', AUTO_INCREMENT=58;

--
-- 테이블의 AUTO_INCREMENT `INTR_WRKSHP`
--
ALTER TABLE `INTR_WRKSHP`
  MODIFY `MEMNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '공방번호', AUTO_INCREMENT=25;

--
-- 테이블의 AUTO_INCREMENT `INTR_WSAV`
--
ALTER TABLE `INTR_WSAV`
  MODIFY `WSANO` int(11) NOT NULL AUTO_INCREMENT COMMENT '공방체험번호', AUTO_INCREMENT=17;

--
-- 테이블의 AUTO_INCREMENT `INTR_WSPHO`
--
ALTER TABLE `INTR_WSPHO`
  MODIFY `WSPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '공방사진번호', AUTO_INCREMENT=21;

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `INTR_ACRGTT`
--
ALTER TABLE `INTR_ACRGTT`
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_ACRGTT` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`),
  ADD CONSTRAINT `FK_INTR_WSAV_TO_INTR_ACRGTT` FOREIGN KEY (`WSANO`) REFERENCES `INTR_WSAV` (`WSANO`);

--
-- 테이블의 제약사항 `INTR_BCMMT`
--
ALTER TABLE `INTR_BCMMT`
  ADD CONSTRAINT `FK_INTR_BOARD_TO_INTR_BCMMT` FOREIGN KEY (`BNO`) REFERENCES `INTR_BOARD` (`BNO`),
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_BCMMT` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_BOARD`
--
ALTER TABLE `INTR_BOARD`
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_BOARD` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_BTMACH`
--
ALTER TABLE `INTR_BTMACH`
  ADD CONSTRAINT `FK_INTR_BOARD_TO_INTR_BTMACH` FOREIGN KEY (`BNO`) REFERENCES `INTR_BOARD` (`BNO`),
  ADD CONSTRAINT `FK_INTR_HASHTAG_TO_INTR_BTMACH` FOREIGN KEY (`HTNO`) REFERENCES `INTR_HASHTAG` (`HTNO`);

--
-- 테이블의 제약사항 `INTR_LKMB`
--
ALTER TABLE `INTR_LKMB`
  ADD CONSTRAINT `FK_INTR_BOARD_TO_INTR_LKMB` FOREIGN KEY (`BNO`) REFERENCES `INTR_BOARD` (`BNO`),
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_LKMB` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_ODNWK`
--
ALTER TABLE `INTR_ODNWK`
  ADD CONSTRAINT `FK_INTR_ORDER_TO_INTR_ODNWK` FOREIGN KEY (`ODNO`) REFERENCES `INTR_ORDER` (`ODNO`),
  ADD CONSTRAINT `FK_INTR_WORKS_TO_INTR_ODNWK` FOREIGN KEY (`WNO`) REFERENCES `INTR_WORKS` (`WNO`);

--
-- 테이블의 제약사항 `INTR_ORDER`
--
ALTER TABLE `INTR_ORDER`
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_ORDER` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_QNA`
--
ALTER TABLE `INTR_QNA`
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_QNA` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`),
  ADD CONSTRAINT `FK_INTR_WORKS_TO_INTR_QNA` FOREIGN KEY (`WNO`) REFERENCES `INTR_WORKS` (`WNO`),
  ADD CONSTRAINT `FK_INTR_WRKSHP_TO_INTR_QNA` FOREIGN KEY (`MEMNO2`) REFERENCES `INTR_WRKSHP` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_RLTSP`
--
ALTER TABLE `INTR_RLTSP`
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_RLTSP` FOREIGN KEY (`MEMNO2`) REFERENCES `INTR_MEMBER` (`MEMNO`),
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_RLTSP2` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_RVPHO`
--
ALTER TABLE `INTR_RVPHO`
  ADD CONSTRAINT `FK_INTR_ODNWK_TO_INTR_RVPHO` FOREIGN KEY (`WONO`) REFERENCES `INTR_ODNWK` (`WONO`);

--
-- 테이블의 제약사항 `INTR_SPBK`
--
ALTER TABLE `INTR_SPBK`
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_SPBK` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`),
  ADD CONSTRAINT `FK_INTR_WORKS_TO_INTR_SPBK` FOREIGN KEY (`WNO`) REFERENCES `INTR_WORKS` (`WNO`);

--
-- 테이블의 제약사항 `INTR_STMACH`
--
ALTER TABLE `INTR_STMACH`
  ADD CONSTRAINT `FK_INTR_HASHTAG_TO_INTR_STMACH` FOREIGN KEY (`HTNO`) REFERENCES `INTR_HASHTAG` (`HTNO`),
  ADD CONSTRAINT `FK_INTR_WRKSHP_TO_INTR_STMACH` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_WRKSHP` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_WKACP`
--
ALTER TABLE `INTR_WKACP`
  ADD CONSTRAINT `FK_INTR_WSAV_TO_INTR_WKACP` FOREIGN KEY (`WSANO`) REFERENCES `INTR_WSAV` (`WSANO`);

--
-- 테이블의 제약사항 `INTR_WKOT`
--
ALTER TABLE `INTR_WKOT`
  ADD CONSTRAINT `FK_INTR_WORKS_TO_INTR_WKOT` FOREIGN KEY (`WNO`) REFERENCES `INTR_WORKS` (`WNO`);

--
-- 테이블의 제약사항 `INTR_WORKS`
--
ALTER TABLE `INTR_WORKS`
  ADD CONSTRAINT `FK_INTR_WRKSHP_TO_INTR_WORKS` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_WRKSHP` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_WPHO`
--
ALTER TABLE `INTR_WPHO`
  ADD CONSTRAINT `FK_INTR_WORKS_TO_INTR_WPHO` FOREIGN KEY (`WNO`) REFERENCES `INTR_WORKS` (`WNO`);

--
-- 테이블의 제약사항 `INTR_WRKSHP`
--
ALTER TABLE `INTR_WRKSHP`
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_WRKSHP` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_WSAV`
--
ALTER TABLE `INTR_WSAV`
  ADD CONSTRAINT `FK_INTR_WRKSHP_TO_INTR_WSAV` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_WRKSHP` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_WSPHO`
--
ALTER TABLE `INTR_WSPHO`
  ADD CONSTRAINT `FK_INTR_WRKSHP_TO_INTR_WSPHO` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_WRKSHP` (`MEMNO`);

--
-- 테이블의 제약사항 `INTR_WTMACH`
--
ALTER TABLE `INTR_WTMACH`
  ADD CONSTRAINT `FK_INTR_HASHTAG_TO_INTR_WTMACH` FOREIGN KEY (`HTNO`) REFERENCES `INTR_HASHTAG` (`HTNO`),
  ADD CONSTRAINT `FK_INTR_WORKS_TO_INTR_WTMACH` FOREIGN KEY (`WNO`) REFERENCES `INTR_WORKS` (`WNO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
