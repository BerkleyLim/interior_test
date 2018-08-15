-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 18-08-14 11:46
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
-- 테이블 구조 `INTR_BRLK`
--

CREATE TABLE `INTR_BRLK` (
  `LNO` int(11) NOT NULL,
  `BNO` int(11) NOT NULL,
  `POX` int(11) NOT NULL,
  `POY` int(11) NOT NULL,
  `PRNM` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ADDR` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='게시물 링크 테이블';

--
-- 테이블의 덤프 데이터 `INTR_BRLK`
--

INSERT INTO `INTR_BRLK` (`LNO`, `BNO`, `POX`, `POY`, `PRNM`, `ADDR`) VALUES
(28, 220, 311, 306, '야야야', '링크'),
(29, 219, 197, 280, 'tkdd', 'www.');

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
(60, ''),
(54, '1차'),
(58, '2차'),
(4, 'ALONSO'),
(42, 'asdf'),
(39, 'DIY'),
(2, 'GERRARD'),
(3, 'MANE'),
(43, 'sadf'),
(55, 'test'),
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
(57, '삽입'),
(61, '샘플'),
(21, '수납'),
(16, '수납/생활'),
(34, '수납장'),
(53, '수정'),
(31, '시계'),
(63, '시바'),
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
(56, '태그'),
(62, '테스트'),
(14, '패브릭'),
(37, '학생'),
(36, '행거/옷걸이'),
(15, '홈데코/조명'),
(9, '화분'),
(59, '확인');

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
(42, 221, 17),
(43, 185, 19),
(45, 181, 19),
(46, 218, 2);

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
  `ODOPT` text COLLATE utf8_unicode_ci,
  `CLDTE` date DEFAULT NULL COMMENT '클레임요청일',
  `CRQST` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '환불및교환요청(취소,교환,환불)',
  `CNDTL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '환불및교환사유',
  `PRSTT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '처리상태(취소(신청,철회,완료),교환(신청,철회,완료),환불(신청,철회,완료))',
  `PRDTL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '처리사유'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='주문/작품';

--
-- 테이블의 덤프 데이터 `INTR_ODNWK`
--

INSERT INTO `INTR_ODNWK` (`WONO`, `ODNO`, `WNO`, `OSTOR`, `QCTT`, `ODOPT`, `CLDTE`, `CRQST`, `CNDTL`, `PRSTT`, `PRDTL`) VALUES
(1, 123456, 4, 2, 'ㅎㅇ', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 654321, 3, 1, 'ㅋㅋ', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 789456, 4, 2, 'ㄴㄴ', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 10001001, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 10001001, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 10001001, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 10001001, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 10001001, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 10001001, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 10001001, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 10001001, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 10001001, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 10001001, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 10001001, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 10001001, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 10001001, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 10001001, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 10001001, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 10001001, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 10001001, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 10001001, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 10001001, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 10001001, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 10001002, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 10001002, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 10001002, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 10001002, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 10001002, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 10001002, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 10001002, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 10001002, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 10110111, 104, 2, NULL, NULL, '2018-08-16', '취소', '그냥', '취소신청', NULL),
(33, 10110111, 105, 1, '', NULL, '2018-08-16', '환불', '그냥', '환불신청', NULL),
(34, 10110112, 104, 3, NULL, NULL, '2018-08-02', '취소', '그냥', '취소신청', NULL),
(35, 10110112, 105, 4, NULL, NULL, '2018-08-07', '교환', '그냥', '교환신청', NULL),
(36, 10110113, 104, 5, NULL, NULL, '2018-08-16', '취소', '그냥', '취소신청', NULL),
(37, 10110113, 105, 6, NULL, NULL, '2018-08-16', '환불', '그냥', '환불신청', NULL),
(38, 10110113, 106, 2, NULL, NULL, '2018-08-10', '교환', '그냥', '교환신청', NULL);

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
  `IVNO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '송장번호',
  `DELDT` date DEFAULT NULL COMMENT '상품발송일',
  `REICV` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '수취인'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='주문';

--
-- 테이블의 덤프 데이터 `INTR_ORDER`
--

INSERT INTO `INTR_ORDER` (`ODNO`, `MEMNO`, `MOPAY`, `DCOST`, `TAMNT`, `ODATE`, `ODSTT`, `DLMEMO`, `CURIR`, `ZCODE`, `BADDR`, `DADDR`, `IVNO`, `DELDT`, `REICV`) VALUES
(111111, 3, '카드', 3000, 10000, '2018-07-24', '배송중', '부재시 전화주세요', '비트택배', NULL, NULL, NULL, NULL, NULL, NULL),
(123456, 3, '카드', 3000, 10000, '2018-07-24', '배송중', '부재시 전화주세요', '비트택배', NULL, NULL, NULL, NULL, NULL, NULL),
(222222, 3, '카드', 2000, 20000, '2018-07-26', '배송준비', '전화주세요', '비트비트택배', NULL, NULL, NULL, NULL, NULL, NULL),
(333333, 2, '카드', 1500, 30000, '2018-07-25', '배송준비중', '전화주시면 감사하겠습니다.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444444, 24, '카드', 0, 11000, '2018-08-07', '배송준비중', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555555, 23, '카드', 0, 11000, '2018-08-07', '배송준비중', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654321, 3, '카드', 2000, 20000, '2018-07-26', '배송준비', '전화주세요', '비트비트택배', NULL, NULL, NULL, NULL, NULL, NULL),
(666666, 1, '카카오페이', 2500, 15000, '2018-08-17', '배송중', 'test01', NULL, NULL, NULL, NULL, '132-465-798', '2018-08-17', NULL),
(777777, 14, '카카오페이', 2500, 16000, '2018-08-18', '배송중', 'test02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789456, 2, '카드', 1500, 30000, '2018-07-25', '배송준비중', '전화주시면 감사하겠습니다.', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(888888, 3, '카카오페이', 2500, 17000, '2018-08-19', '배송준비중', 'test03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10001001, 24, '카드', 0, 11000, '2018-08-07', '배송준비중', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10001002, 23, '카드', 0, 11000, '2018-08-07', '배송준비중', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10110111, 1, '카카오페이', 2500, 15000, '2018-08-17', '배송중', 'test01', 'ㅓㅗ허ㅏ', NULL, NULL, NULL, '132-465-798', '2018-08-17', NULL),
(10110112, 14, '카카오페이', 2500, 16000, '2018-08-18', '배송중', 'test02', '대한통운', NULL, NULL, NULL, '132-456-7987', '2018-08-08', NULL),
(10110113, 3, '카카오페이', 2500, 17000, '2018-08-19', '배송준비중', 'test03', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
  `REPATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '리뷰사진'
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
(48, 10, '2394a10a-e2eb-474d-b0d7-8197fc6f55ea'),
(56, 16, 'ec0dd3c0-df04-44fc-b062-cec79059dac9'),
(57, 16, '3a75e6f6-240d-4558-be24-a96fb96b73da'),
(58, 16, '93c95232-0cd1-4415-8505-622b555c2737'),
(77, 8, 'c2c223a4-92af-4381-97c3-96dc848e6569'),
(78, 8, '37c16a71-1313-4999-8948-5e7a1a3d2ca5'),
(79, 17, 'b4636f75-d4e6-4b03-a422-198dab596d80'),
(80, 17, 'cad1c978-0b89-4fc7-97fc-0bee2efd4cb4'),
(81, 17, '816dd303-5ea7-4fbd-ad98-7db6f970662a'),
(82, 18, '3dba49d3-781b-416b-b546-db7e7cbae477'),
(83, 18, '7478701f-b920-4b58-b2ee-03d1e1629ae4'),
(84, 18, '403ebff7-9fb8-4efb-b32c-14207c7b15c6'),
(85, 19, '60f76e90-2852-4612-85ae-c762e0122b45'),
(86, 19, '770a1677-a09c-418f-8096-425cc45c9e4a'),
(87, 19, '28c35eff-0758-46e1-98e6-57b97a58c0d6'),
(88, 20, 'a66b640d-1e9d-45f1-9ada-93648418ffbf'),
(89, 20, 'bc06da2f-3fe2-4cd1-a368-bf81da4a8407'),
(90, 21, 'b71ec1b0-f3cf-41c2-9e8b-1ed25d1d2f69'),
(91, 21, '93b66770-090e-4062-925b-2c23f4742b35'),
(92, 22, 'b4f222b6-87e3-4628-922b-a0b07307c1fe'),
(93, 22, 'fd05bd8a-4559-453c-b660-ec72fb343140'),
(94, 23, '83ddf3e4-5bdb-4c54-b507-d97587d7139c'),
(95, 23, '6df15997-26b5-48dc-9150-40273f9dae06'),
(96, 23, 'cdf78f4d-ee72-463c-900d-46d9fefba666'),
(97, 24, '5dfa36b3-34b6-454f-9e82-3cc38d21c42b'),
(98, 24, 'a7ab95c3-86de-4047-9403-36bc94b38822'),
(99, 24, 'db721f02-8012-4602-b787-eca354387b43'),
(100, 25, '70e3a84a-f86c-4f2f-93fe-d3822e271bc4'),
(101, 25, '757a1e27-6f5f-4189-86ab-47ab69098a00'),
(102, 25, '0bb21de8-9bc5-48fb-ad6d-f3f062634c4f'),
(103, 26, 'c282147d-db8f-416b-a171-9930f3259536'),
(104, 26, '446be9b8-0b46-4b40-beb9-93326177d3e3'),
(105, 26, 'c1d241e4-9558-4aa6-ae8a-1dc1b6168608'),
(106, 27, 'e76a24fe-6c9e-48a8-909e-eed9cb548bd7'),
(107, 27, '3f7975c3-3507-40ec-94dc-be5b7291e261'),
(108, 27, 'a51192af-4f6e-4eeb-b861-34845b2e8a0a'),
(109, 28, '50b5dd3b-d176-4eb0-ad4d-25556cf5cd86'),
(110, 28, '2c5bb532-2dc6-4c68-99ca-0521100af987'),
(111, 28, '080e0e43-daf7-4cf7-becb-aa2e11eb9095'),
(112, 29, '46cfbfaa-6ae7-47ce-b3a9-ced7917620bd'),
(113, 30, 'aa2ef16e-e11d-424e-8ce3-d7d63b208d9c'),
(114, 31, '3691d52e-8df6-4519-ab15-2f72e8524679'),
(115, 32, '2cb8691b-324d-4d6b-ad3f-9b0b395851fb'),
(116, 32, 'a43e1fd1-53b2-4ba2-9bc1-4f8a44750709'),
(117, 32, 'e89ec54a-62c2-443c-bd9e-8b7483e44045'),
(118, 33, '9192e74e-92a3-478f-ab78-45147a4d9995'),
(119, 33, 'fe1f5a8c-d151-495d-99af-6adce75408b1'),
(120, 33, 'aae8da89-b45d-4d06-9281-29a5bf63da27'),
(121, 34, '26e0c287-a430-47fe-85b8-1f9938f0579d'),
(122, 34, '2080908d-da16-40e8-8a51-3f50d7cada53'),
(123, 34, '44e3bd73-0248-4640-85c5-1906f355aa05'),
(130, 38, 'c992f2c9-b213-4bd7-baa5-7a2fe5b59274'),
(131, 38, '6113f081-8280-48ba-99df-c9f1e4dc2b74'),
(138, 42, '7824b961-6c13-48a4-a0d7-f3403a7e4007'),
(139, 42, '4245ffb8-512f-46d0-903c-9ac22d5dd6c8'),
(140, 42, '373a618d-a5ca-4af6-9cc8-42873ba721d6'),
(144, 44, 'b684c3a1-811d-4265-83ac-c96db3aed008'),
(145, 44, '5737c629-2ab4-4bd3-ab1a-6de5b5b472d3'),
(146, 44, '19bab7ad-1462-4aed-b5f7-85157cdc8a55'),
(147, 45, '0088b246-8595-4375-a6a7-94c93976d363'),
(148, 45, '507613e1-653e-43b9-aefc-2fdc9d849501'),
(149, 45, '46d094b0-2440-47b8-9550-38494b85e69a');

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WKOT`
--

CREATE TABLE `INTR_WKOT` (
  `OPNO` int(11) NOT NULL COMMENT '옵션번호',
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `ABVL` text COLLATE utf8_unicode_ci COMMENT '속성값'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='작품옵션';

--
-- 테이블의 덤프 데이터 `INTR_WKOT`
--

INSERT INTO `INTR_WKOT` (`OPNO`, `WNO`, `ABVL`) VALUES
(1, 3, 'asdf'),
(2, 4, 'asdf'),
(3, 2, 'asdf'),
(4, 72, 'asdf'),
(5, 73, 'asdf'),
(6, 74, 'asdf'),
(7, 75, 'asdf'),
(8, 76, 'asdf'),
(9, 77, 'asdf'),
(10, 78, 'asdf'),
(11, 79, 'asdf'),
(12, 80, 'asdf'),
(19, 104, 'asdf'),
(20, 105, '야야야'),
(21, 106, 'test15'),
(22, 107, 'test16'),
(24, 109, 'sadf');

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
(57, 2, 'test07', 25000, '2018-08-09', NULL, 12, '판매중', '06fd556f-ee97-4ca3-b57b-f1a4a9ee4b73', 'Y'),
(69, 2, 'asdf', 145530, '2018-08-10', NULL, 12, 'default', '77cadc48-5aef-40e0-97d7-10e542cf2447', 'Y'),
(70, 2, 'asdf', 145530, '2018-08-10', NULL, 12, 'default', '77cadc48-5aef-40e0-97d7-10e542cf2447', 'Y'),
(71, 2, 'asdf', 145530, '2018-08-10', NULL, 12, 'default', '77cadc48-5aef-40e0-97d7-10e542cf2447', 'Y'),
(72, 2, 'asdf123', 100, '2018-08-10', NULL, 12, '판매대기', 'f5c45776-0907-4e10-89e5-10ca82d13403', 'Y'),
(73, 2, 'asdf123', 100, '2018-08-10', NULL, 12, '판매대기', 'f5c45776-0907-4e10-89e5-10ca82d13403', 'Y'),
(74, 2, 'asdf123', 100, '2018-08-10', NULL, 12, '판매대기', 'f5c45776-0907-4e10-89e5-10ca82d13403', 'Y'),
(75, 2, 'asdf4052', 4000, '2018-08-10', NULL, 13, '판매중', 'da9a74d2-b9e5-40e8-a21b-a920e658c343', 'Y'),
(76, 2, 'asdf4052', 4000, '2018-08-10', NULL, 13, '판매중', 'da9a74d2-b9e5-40e8-a21b-a920e658c343', 'Y'),
(77, 2, 'asdf4052', 4000, '2018-08-10', NULL, 13, '판매중', 'da9a74d2-b9e5-40e8-a21b-a920e658c343', 'Y'),
(78, 2, 'testoption2', 142, '2018-08-10', NULL, 12, '판매대기', 'af79e221-8b4b-4b1f-80ae-ee1a73339280', 'Y'),
(79, 2, 'testoption2', 142, '2018-08-10', NULL, 12, '판매대기', 'af79e221-8b4b-4b1f-80ae-ee1a73339280', 'Y'),
(80, 2, 'testoption3', 14100, '2018-08-10', NULL, 12, '판매중', '2ce3c060-cea0-4dc3-b603-2bf3e2f97bd7', 'Y'),
(96, 2, 'ㄴㅁㅇㄹ', 14000, '2018-08-10', NULL, 12, '판매중', 'b3f9c407-b7ab-4dd2-bee4-6964067a126f', 'Y'),
(97, 2, 'ㅁㄴㅇㄹ', 1400, '2018-08-10', NULL, 13, '판매대기', '16006c5d-9b3d-4ca5-8e24-bf50a1e40dbf', 'Y'),
(98, 2, 'asdf', 4100, '2018-08-09', NULL, NULL, '1321', '54131', 'Y'),
(104, 2, 'test13', 14000, '2018-08-13', NULL, 13, '판매중', 'fb45d933-fd14-473b-89ac-45d0d8f9500d', 'Y'),
(105, 2, 'test14', 15000, '2018-08-13', NULL, 15, '판매중', 'b31785a3-1bce-4dd9-ab87-63c6c7148801', 'Y'),
(106, 2, 'test15', 17000, '2018-08-13', NULL, 13, '판매중', 'e53af838-b2ca-4322-b9f3-f9b33632c33b', 'Y'),
(107, 2, 'test16', 18000, '2018-08-13', NULL, 13, '판매중', 'e3e50287-8fd1-4235-ae72-b228ffcb05ed', 'Y'),
(109, 2, 'test17수정 수정', 14000, '2018-08-11', '2018-08-13', 13, '판매중', '13e87f80-748b-4a36-9e8e-cca32123255b', 'Y');

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
(57, 57, '4291c669-d606-4ca9-9e4d-0a94548f1b76', NULL),
(80, 69, 'd0e5faef-ecf8-4215-8f7c-f5f16e20ebbe', NULL),
(81, 69, 'f06da091-bde5-4607-afb0-4f12b60b5668', NULL),
(82, 69, '479ae047-be06-47c7-82ba-09f21cac20e3', NULL),
(83, 70, '77f05034-b26b-4d9d-ba44-6495a6bbea80', NULL),
(84, 70, 'b46b5c5a-d4b8-4dcb-b9f0-4aa81f666193', NULL),
(85, 70, 'aa0d3f14-dafc-40c2-90e1-f852f99c4a91', NULL),
(86, 71, '6a73b79f-7a32-4101-9599-adedae052b70', NULL),
(87, 71, '772fe092-f7f8-40f5-a487-5fea0261df24', NULL),
(88, 71, 'b84b77b4-f7f3-4c2e-a745-d9b0b758b908', NULL),
(89, 72, 'ae5026fc-f26a-4a78-960e-98d28c889203', NULL),
(90, 72, '79d8aad4-b527-4bdd-87f8-48db0c1387f7', NULL),
(91, 72, '68c274ea-52d4-4934-a121-813e7ab048c4', NULL),
(92, 73, '2eecc44b-8f76-4ee4-90ce-7d432cfc2a7b', NULL),
(93, 73, 'a9a535e3-a8d8-4dfa-b209-d24df4e49782', NULL),
(94, 73, 'bb5c8b43-f106-45ca-9ee6-d105c6de837a', NULL),
(95, 74, 'f4cc0272-6358-4787-9a3e-b6593fb080b3', NULL),
(96, 74, '6d6abf0f-bb07-4d5e-a3b4-01c3e65d9b82', NULL),
(97, 74, '94fffc06-c0c5-4ddc-88b2-9f7b1e96fac7', NULL),
(98, 75, '4995ae65-98ee-41e5-be1d-3c2824b0f09a', NULL),
(99, 75, '5f8deccd-46f0-4be4-9099-f5832e9558f3', NULL),
(100, 75, '6ac063ac-a490-40b8-9a95-153eb73936e1', NULL),
(101, 76, '1c0799d4-aaf2-45d7-a7e9-99ce812b4493', NULL),
(102, 76, '6c4359da-507b-4d0d-a701-cab82e8f286e', NULL),
(103, 76, 'aee5023b-b28f-4795-96fa-d6cf78d4d787', NULL),
(104, 77, 'fffe3066-269d-48c6-9ecd-7385d7736a89', NULL),
(105, 77, '5f8a271d-b037-49d7-a183-2e5cc6f99b83', NULL),
(106, 77, '930e53b6-83a0-42c2-9b50-469f59dab495', NULL),
(107, 78, '811d4601-dd72-4981-83d8-f338ef9ce9fa', NULL),
(108, 78, '35a6ce26-c1d4-4292-93fb-6ad8ea0da453', NULL),
(109, 79, '9ba4755d-4547-4b12-9f4a-dbb359934582', NULL),
(110, 79, 'b567e463-9583-4432-806c-e94e58ec176f', NULL),
(111, 80, '23d0c95d-40b0-432e-bbc9-aaca35fe085f', NULL),
(112, 80, '36623643-1dd7-414d-ab1e-1edcee4cbc76', NULL),
(113, 80, 'ebf98ee3-15df-4225-8299-e587e6769e26', NULL),
(151, 104, 'ffaf32cd-bdbc-4a7e-a2b6-5b619522c9c1', NULL),
(152, 104, '272262ea-da91-4581-8745-d2b90c528369', NULL),
(153, 104, '45f137cb-b0fc-48ea-a3a8-5fd44beb211d', NULL),
(154, 105, 'd1fa8efd-8145-437f-8c85-0728c326391f', NULL),
(155, 105, 'dac58586-6b9e-4951-a5ea-212c1a2a5af7', NULL),
(156, 105, '10cf6fa9-9d16-41b9-8f9d-f47525b08ac2', NULL),
(157, 106, 'ce6d4b24-6abb-48ab-8913-b0d079ca7b76', NULL),
(158, 106, '6d9caf79-cf4a-43cc-8157-cab95aa58ecc', NULL),
(159, 106, '207ccf70-3a11-4688-88b3-ac5982d090e7', NULL),
(160, 107, 'baabeb4a-18fd-4a53-821b-65b6b3002453', NULL),
(161, 107, 'b44834c7-8b51-4bd6-afdf-b02ddea5afc3', NULL),
(162, 107, 'f4d92ec6-0dfe-4259-9c5e-275abd423e86', NULL),
(197, 109, '3b691ffc-3556-4157-b6f8-5ac87c422fc9', NULL),
(198, 109, '97f93fcc-9e1b-4d8e-b009-50b8006bfdcd', NULL),
(199, 109, '8bb37005-5d8a-43cf-9ab3-017fc0275ad2', NULL);

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
(16, 2, '체험 Test 8', 1, 4, '2018-12-01', '16:00:00', '20:00:00', '', 30000, 'asdf'),
(17, 2, 'test', 1, 3, '2018-02-01', '02:01:00', '03:07:00', 'asdf', 40000, 'sadf'),
(18, 2, 'test', 1, 3, '2018-02-01', '02:01:00', '03:07:00', 'asdf', 40000, 'sadf'),
(19, 2, 'test', 1, 3, '2018-02-01', '02:01:00', '03:07:00', 'asdf', 40000, 'sadf'),
(20, 2, 'test option', 1, 3, '2018-03-02', '02:01:00', '15:01:00', 'sdfg', 540000, 'sadfsadfasdfsadf'),
(21, 2, 'test option', 1, 3, '2018-03-02', '02:01:00', '15:01:00', 'sdfg', 540000, 'sadfsadfasdfsadf'),
(22, 2, 'test option', 1, 3, '2018-03-02', '02:01:00', '15:01:00', 'sdfg', 540000, 'sadfsadfasdfsadf'),
(23, 2, 'test option', 1, 3, '2018-03-02', '02:01:00', '15:01:00', 'sdfg', 540000, 'sadfsadfasdfsadf'),
(24, 2, 'test option', 1, 3, '2018-03-02', '02:01:00', '15:01:00', 'sdfg', 540000, 'sadfsadfasdfsadf'),
(25, 2, 'test option', 1, 3, '2018-03-02', '02:01:00', '15:01:00', 'sdfg', 540000, 'sadfsadfasdfsadf'),
(26, 2, 'tst321', 1, 4, '2019-02-01', '02:01:00', '15:02:00', 'asdf', 4000, 'sadf'),
(27, 2, 'tst321', 1, 4, '2019-02-01', '02:01:00', '15:02:00', 'asdf', 4000, 'sadf'),
(28, 2, 'tst321', 1, 4, '2019-02-01', '02:01:00', '15:02:00', 'asdf', 4000, 'sadf'),
(29, 2, 'asdf', 2, 4, '2018-01-01', '13:59:00', '15:00:00', 'asdf', 132132, 'asdf'),
(30, 2, 'asdf', 2, 4, '2018-01-01', '13:59:00', '15:00:00', 'asdf', 132132, 'asdf'),
(31, 2, 'asdf', 2, 4, '2018-01-01', '13:59:00', '15:00:00', 'asdf', 132132, 'asdf'),
(32, 2, 'asdf', 2, 4, '2018-01-01', '13:59:00', '15:00:00', 'asdf', 132132, 'asdf'),
(33, 2, 'asdf', 2, 4, '2018-01-01', '13:59:00', '15:00:00', 'asdf', 132132, 'asdf'),
(34, 2, 'asdf', 2, 4, '2018-01-01', '13:59:00', '15:00:00', 'asdf', 132132, 'asdf'),
(38, 2, 'ㅁㄴㅇㄹ', 2, 3, '2018-02-02', '15:01:00', '17:00:00', 'ㅁㄴㅇㄹ', 101321, 'ㅁㄴㅇㄹ'),
(42, 2, 'sadf', 1, 4, '2018-02-01', '14:00:00', '17:00:00', 'asdf', 120111, 'asdf'),
(44, 2, 'sadf', 1, 4, '2018-02-01', '14:00:00', '17:00:00', 'asdf', 120111, 'asdf'),
(45, 2, '제발 되라', 1, 4, '2019-02-01', '14:00:00', '16:00:00', 'ㅁㄴㅇㄹ', 123456, 'ㅁㄴㅇㄹ');

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
(46, 9),
(104, 55),
(105, 55),
(104, 56),
(104, 57),
(105, 57),
(107, 57),
(109, 57),
(105, 58),
(105, 59),
(109, 59),
(106, 60),
(107, 61),
(109, 62);

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
-- 테이블의 인덱스 `INTR_BRLK`
--
ALTER TABLE `INTR_BRLK`
  ADD PRIMARY KEY (`LNO`),
  ADD KEY `BNO` (`BNO`);

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
  ADD KEY `IX_INTR_ORDER` (`ODSTT`),
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
-- 테이블의 AUTO_INCREMENT `INTR_BRLK`
--
ALTER TABLE `INTR_BRLK`
  MODIFY `LNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 테이블의 AUTO_INCREMENT `INTR_HASHTAG`
--
ALTER TABLE `INTR_HASHTAG`
  MODIFY `HTNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '해시태그번호', AUTO_INCREMENT=64;

--
-- 테이블의 AUTO_INCREMENT `INTR_LKMB`
--
ALTER TABLE `INTR_LKMB`
  MODIFY `LNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '좋아요번호', AUTO_INCREMENT=47;

--
-- 테이블의 AUTO_INCREMENT `INTR_MEMBER`
--
ALTER TABLE `INTR_MEMBER`
  MODIFY `MEMNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호', AUTO_INCREMENT=25;

--
-- 테이블의 AUTO_INCREMENT `INTR_ODNWK`
--
ALTER TABLE `INTR_ODNWK`
  MODIFY `WONO` int(11) NOT NULL AUTO_INCREMENT COMMENT '작품주문번호', AUTO_INCREMENT=39;

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
  MODIFY `ACPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '사진번호', AUTO_INCREMENT=150;

--
-- 테이블의 AUTO_INCREMENT `INTR_WKOT`
--
ALTER TABLE `INTR_WKOT`
  MODIFY `OPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '옵션번호', AUTO_INCREMENT=25;

--
-- 테이블의 AUTO_INCREMENT `INTR_WORKS`
--
ALTER TABLE `INTR_WORKS`
  MODIFY `WNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '작품번호', AUTO_INCREMENT=110;

--
-- 테이블의 AUTO_INCREMENT `INTR_WPHO`
--
ALTER TABLE `INTR_WPHO`
  MODIFY `WPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '사진번호', AUTO_INCREMENT=200;

--
-- 테이블의 AUTO_INCREMENT `INTR_WRKSHP`
--
ALTER TABLE `INTR_WRKSHP`
  MODIFY `MEMNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '공방번호', AUTO_INCREMENT=25;

--
-- 테이블의 AUTO_INCREMENT `INTR_WSAV`
--
ALTER TABLE `INTR_WSAV`
  MODIFY `WSANO` int(11) NOT NULL AUTO_INCREMENT COMMENT '공방체험번호', AUTO_INCREMENT=46;

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
-- 테이블의 제약사항 `INTR_BRLK`
--
ALTER TABLE `INTR_BRLK`
  ADD CONSTRAINT `BNO` FOREIGN KEY (`BNO`) REFERENCES `INTR_BOARD` (`BNO`);

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
