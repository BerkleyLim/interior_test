-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 18-08-02 06:28
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

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_BTMACH`
--

CREATE TABLE `INTR_BTMACH` (
  `HTNO` int(11) NOT NULL COMMENT '해시태그번호',
  `BNO` int(11) NOT NULL COMMENT '게시물번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='게시물태그매칭';

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_HASHTAG`
--

CREATE TABLE `INTR_HASHTAG` (
  `HTNO` int(11) NOT NULL COMMENT '해시태그번호',
  `TNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '태그명'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='해시태그';

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_LKMB`
--

CREATE TABLE `INTR_LKMB` (
  `LNO` int(11) NOT NULL COMMENT '좋아요번호',
  `BNO` int(11) NOT NULL COMMENT '게시물번호',
  `MEMNO` int(11) NOT NULL COMMENT '회원번호(클릭한사람)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='좋아요';

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
  `MEMPH` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '회원사진'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='회원';

--
-- 테이블의 덤프 데이터 `INTR_MEMBER`
--

INSERT INTO `INTR_MEMBER` (`MEMNO`, `ID`, `PWD`, `NAME`, `NKNM`, `PHNO`, `ZCODE`, `BADDR`, `DADDR`, `MEMPH`) VALUES
(1, 'user01@test.com', '1234', 'user01', 'user01', '010-1234-1234', NULL, NULL, NULL, NULL),
(2, 'user02@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user02', 'user02', '01011112222', NULL, NULL, NULL, NULL),
(3, 'user03@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user03', 'user03', '01022223333', NULL, NULL, NULL, NULL),
(4, 'user04@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user04', 'user04', '01022222222', NULL, NULL, NULL, NULL),
(8, 'user011@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', '홍길동', '1111', '01011111111', NULL, NULL, NULL, NULL),
(9, 'user12@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user12', 'user12', '01011111111', NULL, NULL, NULL, NULL),
(12, 'user16@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user16', 'user16', '01011111111', NULL, NULL, NULL, NULL),
(13, 'user001@test.com', '1111', 'user001', 'user001', '010-1234-1324', NULL, NULL, NULL, NULL),
(14, 'user14@test.com', '1111', 'user14', 'user14', '010-4397-8374', NULL, NULL, NULL, NULL),
(17, 'user20@test.com', '*89C6B530AA78695E257E55D63C00A6EC9AD3E977', 'user20', 'user20', '01021112222', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_MESSAGE`
--

CREATE TABLE `INTR_MESSAGE` (
  `MSNO` int(11) NOT NULL COMMENT '메시지번호',
  `MEMNO` int(11) NOT NULL COMMENT '사용자1',
  `MEMNO2` int(11) NOT NULL COMMENT '사용자2',
  `MSCTT` text COLLATE utf8_unicode_ci COMMENT '내용',
  `MSDIR` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT '메시지방향',
  `MDATE` date NOT NULL COMMENT '날짜'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='메시지';

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_ODNWK`
--

CREATE TABLE `INTR_ODNWK` (
  `WONO` int(11) NOT NULL COMMENT '작품주문번호',
  `ODNO` int(11) NOT NULL COMMENT '주문번호',
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `OSTOR` int(11) DEFAULT NULL COMMENT '수량',
  `QCTT` text COLLATE utf8_unicode_ci COMMENT '구매후기'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='주문/작품';

--
-- 테이블의 덤프 데이터 `INTR_ODNWK`
--

INSERT INTO `INTR_ODNWK` (`WONO`, `ODNO`, `WNO`, `OSTOR`, `QCTT`) VALUES
(1, 123456, 4, 2, 'ㅎㅇ'),
(2, 654321, 3, 1, 'ㅋㅋ'),
(3, 789456, 4, 2, 'ㄴㄴ');

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
(789456, 2, '카드', 1500, 30000, '2018-07-25', '배송준비중', '전화주시면 감사하겠습니다.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(8, 8, 'a033772c-fe2d-4e6f-b236-39009bbfb17d'),
(9, 8, 'f935ff79-cec0-4447-be6b-312212e24491'),
(10, 8, '4034cb68-b58f-4996-9599-3f75ab845d8c'),
(11, 9, '3e722a80-6e72-4208-a077-062179f1837b'),
(12, 9, '3765649a-548c-4a1e-9c98-ca7cf8b7a69c'),
(13, 9, '193a0676-d261-49de-aafa-42c62c3210e1'),
(14, 10, 'bb6dedb4-3890-4d23-b828-fab02ef4a3aa'),
(15, 10, 'c96875a5-61c9-4eb8-b0ec-fe2ee4d55ae4'),
(16, 11, 'efdd9d13-e6dd-4464-bd03-4d57d60f81f7'),
(17, 11, '6daa51e4-7fcf-419f-9927-b1e0be990cb5');

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WKOT`
--

CREATE TABLE `INTR_WKOT` (
  `OPNO` int(11) NOT NULL COMMENT '옵션번호',
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `ABNM` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '속성명',
  `ABVL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '속성값',
  `OPTYN` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT '옵션여부'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='작품옵션';

--
-- 테이블의 덤프 데이터 `INTR_WKOT`
--

INSERT INTO `INTR_WKOT` (`OPNO`, `WNO`, `ABNM`, `ABVL`, `OPTYN`) VALUES
(1, 4, '색상', '파스텔', ''),
(2, 3, '높이', '10cm추가', '');

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
  `ALSTK` int(11) DEFAULT NULL COMMENT '재고수량',
  `SLST` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '판매상태',
  `PDDT` text COLLATE utf8_unicode_ci NOT NULL COMMENT '제품상세',
  `SPCS` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT '배송비여부'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='작품';

--
-- 테이블의 덤프 데이터 `INTR_WORKS`
--

INSERT INTO `INTR_WORKS` (`WNO`, `MEMNO`, `WTITL`, `PRICE`, `WRTDT`, `ALSTK`, `SLST`, `PDDT`, `SPCS`) VALUES
(1, 1, '좌식의자', 25000, '2018-07-10', NULL, '판매중', '오동나무를 이용한 좌식의자', 'Y'),
(2, 1, '좌식의자1', 25000, '2018-07-10', 12, '판매중', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N'),
(3, 1, '좌식의자2', 35000, '2018-07-10', 12, '판매중', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N'),
(4, 1, '좌식의자3', 45000, '2018-07-10', 12, '판매중', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N'),
(5, 1, '좌식의자4', 55000, '2018-07-10', 12, '판매중', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N'),
(6, 1, '좌식의자5', 65000, '2018-07-10', 12, '판매중', '제가 발주한 2개 중 2개 모두 아쉬운점이 있었어요..', 'N');

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WPHO`
--

CREATE TABLE `INTR_WPHO` (
  `WPNO` int(11) NOT NULL COMMENT '사진번호',
  `WNO` int(11) DEFAULT NULL COMMENT '작품번호',
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '사진',
  `NIPT` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '메인사진여부'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='작품사진';

--
-- 테이블의 덤프 데이터 `INTR_WPHO`
--

INSERT INTO `INTR_WPHO` (`WPNO`, `WNO`, `PATH`, `NIPT`) VALUES
(1, 1, 'img01.jpg', NULL),
(2, 2, 'img02.png', NULL),
(3, 3, 'img03.png', NULL),
(4, 4, 'img04.png', NULL),
(5, 5, 'img05.png', NULL),
(6, 6, 'img06.png', NULL);

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
(2, '1211111111', 'test공방', 'user02', '목공업', '가구', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(8, 2, '체험 test1', 1, 5, '2018-07-30', '13:00:00', '15:00:00', 'Test', 50000, 'Test'),
(9, 2, '체험 Test2', 1, 3, '2018-08-24', '10:00:00', '11:00:00', '', 30000, 'TEST2'),
(10, 2, '체험 Test3', 1, 6, '2018-08-22', '09:00:00', '13:30:00', '', 50000, 'Test3'),
(11, 2, 'Test4', 1, 5, '2018-08-14', '02:00:00', '03:00:00', 'test', 10000, 'test');

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

-- --------------------------------------------------------

--
-- 테이블 구조 `INTR_WTMACH`
--

CREATE TABLE `INTR_WTMACH` (
  `WNO` int(11) NOT NULL COMMENT '작품번호',
  `HTNO` int(11) NOT NULL COMMENT '해시태그번호'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='작품태그매칭';

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
-- 테이블의 인덱스 `INTR_MESSAGE`
--
ALTER TABLE `INTR_MESSAGE`
  ADD PRIMARY KEY (`MSNO`),
  ADD KEY `FK_INTR_MEMBER_TO_INTR_MESSAGE` (`MEMNO`),
  ADD KEY `FK_INTR_MEMBER_TO_INTR_MESSAGE2` (`MEMNO2`);

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
  MODIFY `CNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '댓글번호';

--
-- 테이블의 AUTO_INCREMENT `INTR_BOARD`
--
ALTER TABLE `INTR_BOARD`
  MODIFY `BNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '게시물번호';

--
-- 테이블의 AUTO_INCREMENT `INTR_HASHTAG`
--
ALTER TABLE `INTR_HASHTAG`
  MODIFY `HTNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '해시태그번호';

--
-- 테이블의 AUTO_INCREMENT `INTR_LKMB`
--
ALTER TABLE `INTR_LKMB`
  MODIFY `LNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '좋아요번호';

--
-- 테이블의 AUTO_INCREMENT `INTR_MEMBER`
--
ALTER TABLE `INTR_MEMBER`
  MODIFY `MEMNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '회원번호', AUTO_INCREMENT=18;

--
-- 테이블의 AUTO_INCREMENT `INTR_MESSAGE`
--
ALTER TABLE `INTR_MESSAGE`
  MODIFY `MSNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '메시지번호';

--
-- 테이블의 AUTO_INCREMENT `INTR_ODNWK`
--
ALTER TABLE `INTR_ODNWK`
  MODIFY `WONO` int(11) NOT NULL AUTO_INCREMENT COMMENT '작품주문번호', AUTO_INCREMENT=4;

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
  MODIFY `ACPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '사진번호', AUTO_INCREMENT=18;

--
-- 테이블의 AUTO_INCREMENT `INTR_WKOT`
--
ALTER TABLE `INTR_WKOT`
  MODIFY `OPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '옵션번호', AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `INTR_WORKS`
--
ALTER TABLE `INTR_WORKS`
  MODIFY `WNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '작품번호', AUTO_INCREMENT=7;

--
-- 테이블의 AUTO_INCREMENT `INTR_WPHO`
--
ALTER TABLE `INTR_WPHO`
  MODIFY `WPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '사진번호', AUTO_INCREMENT=7;

--
-- 테이블의 AUTO_INCREMENT `INTR_WRKSHP`
--
ALTER TABLE `INTR_WRKSHP`
  MODIFY `MEMNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '공방번호', AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `INTR_WSAV`
--
ALTER TABLE `INTR_WSAV`
  MODIFY `WSANO` int(11) NOT NULL AUTO_INCREMENT COMMENT '공방체험번호', AUTO_INCREMENT=12;

--
-- 테이블의 AUTO_INCREMENT `INTR_WSPHO`
--
ALTER TABLE `INTR_WSPHO`
  MODIFY `WSPNO` int(11) NOT NULL AUTO_INCREMENT COMMENT '공방사진번호';

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
-- 테이블의 제약사항 `INTR_MESSAGE`
--
ALTER TABLE `INTR_MESSAGE`
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_MESSAGE` FOREIGN KEY (`MEMNO`) REFERENCES `INTR_MEMBER` (`MEMNO`),
  ADD CONSTRAINT `FK_INTR_MEMBER_TO_INTR_MESSAGE2` FOREIGN KEY (`MEMNO2`) REFERENCES `INTR_MEMBER` (`MEMNO`);

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
