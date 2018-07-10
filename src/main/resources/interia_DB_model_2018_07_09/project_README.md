기본 "INTERIOR" 붙인 후 테이블명 작성
예) 작품사진 테이블명 : INTERIOR_POW
     장바구니 테이블명 : INTERIOR_SPBK
     
<1> 회원 TABLE - MEMBER

- PK _ 회원번호 - Member Number (MEMNO)
- 아이디 - ID
- 비밀번호 - Password (PWD)
- 이름 - NAME
- 닉네임 - Nickname (NKNM)
- 전화번호 - Phone Number (PHNO)
- 우편번호 - ZIP CODE (ZCODE)
- 기본주소 - Base Address (BADDR)
- 상세주소 - Detailed Address (DADDR)


<2> 주문 TABLE - ORDER

- PK _ 주문번호 - Order Number (ODNO)
- FK _ 회원번호 - Member Number (MEMNO)
- 결제수단 - method of payment (MOPAY)
- 배송비 - Delivery Cost (DCOST)
- 총금액 - Total Amount (TAMNT)
- 주문일 - Order Date (ODATE)
- 주문상태 - Order Status (ODSTT)
- 배송메모 - Delivery Memo (DLMEMO)
- 택배사 - Courier (CURIR)
- 우편번호 - ZIP CODE (ZCODE)
- 기본주소 - Base Address (BADDR)
- 상세주소 - Detailed Address (DADDR)
- 송장번호 - invoice number(IVNO)
- 클래임요청일 - Claim Request Date (CRDTE)
- 환불 및 교환 요청 - Claim Request (CRQST)
- 환불 및 교환 사유 - Claim Detail (CNDTL)
- 처리상태(교환/환불) - Processing Status (PRSTT)
- 처리사유(교환/환불) - Processing Detail (PRDTL)


<3> 작품TABLE - Works (WORKS)

- PK _ 작품번호 - Work Number (WNO)
- FK _ 공방번호 - Studio number (MEMNO)
- 작품명 - Works Title (WTITL)
- 판매가 - Price (PRICE)
- 등록일 - Registration date (WRTDT)
- 재고수량 - Available stock (ALSTK)
- 판매상태 - Sales Status (SLST)
- 제품상세 - Product Detail (PDDT)
- 배송비여부 - Shipping Cost (SPCS)
- 제작의뢰상세 - Production Request Detail (PDRD)


<4> 작품사진TABLE - Photos of works (WPHO)

- PK _ 사진번호 - Photo Number (WPNO)
- FK _ 작품번호 - Work Number (WNO)
- 사진 - PATH


<5> 작품옵션TABLE - Works options (WKOT)

- PK _ 옵션번호 - Option Number (OPNO)
- FK _ 작품번호 - Work Number (WNO)
- 속성값 - Attribute value (ABVL)
- 속성명 - Attribute name (ABNM)


<6> 주문/작품 TABLE - Order / Works (ODNWK)
- PK _ 작품주문번호 - Works Order Number(WONO)
- FK _ 주문번호 - Order Number(ODNO)
- FK _ 작품번호 - Works Number(WNO)
- 수량 - Order Store (OSTOR)
- 의뢰내용 - Question Content (QCTT)
- 구매후기 - Purchase Review (PCHRV)


<7> 리뷰사진 TABLE - Review Photo (RVPHO)
- PK _ 사진번호 - Photo Number (RVPNO)
- FK _ 작품주문번호 - Works Order Number(WONO)
- 리뷰사진 - PATH


<8> 공방 TABLE - Workshop(WRKSHP)

- PK(FK) _ 공방번호 - Workshop Number (MEMNO)
- 사업자번호 - Business Number (BSNO)
- 상호 - Mutual (MUTUA)
- 대표자명 - Representative name (RNAME)
- 업태 - Industry (INDST)
- 종목 - ITEMS
- 우편번호 - ZIP CODE (ZCODE)
- 기본주소 - Base Address (BADDR)
- 상세주소 - Detailed Address (DADDR)
- 공방명 - Studio Name (WSNM)
- 소개글 - Introduction (ITROD)
- 공방소개내용 - Workshop Content (WSCTT)
- 페이스북 - Facebook (FCBK)
- 트위터 - Twitter (TWIT)
- 인스타 - Instagram (ISTAG)


<9> 공방사진 TABLE - Workshop Photo (WSPHO)

- PK _ 공방사진번호 - Workshop Photo Number (WSPNO)
- FK _ 공방번호 - Studio Number (MEMNO)
- 사진구분 - Photo classification (PCLSF)
- 사진 - PATH


<10> 공방체험등록 TABLE - Activity Registration (ACRGTT)

- PK(FK) _ 회원번호 - Member Number (MENNO)
- PK(FK) _ 공방체험번호 - Workshop Activity Number (WSANO)
- 등록일자 - Activity Registration Date (ACRDT)


<11> 공방-공방체험 TABLE - Workshop Activity (WSAV)

- PK _ 공방체험번호 - Workshop Activity Number (WSANO)
- FK _ 공방번호 - Studio Number(MEMNO)
- 체험명 - Activity Name (ACNM)
- 최소인원 - Minimun number (MINNO)
- 최대인원 - Maximun numbber (MAXNO)
- 체험일자 - Activity Date (ACTDT)
- 소요시간 - Estimated Time(ESMT)
- 준비물유무 - Materials CASE (MTCSE)
- 준비물내용 - Materials (MTRLS)
- 체험료 - Activity Price (APRIC)
- 체험소개 - Activity Content (ACCNT)
- 체험장소 - Activity Place (ACPLC)
 
 
<12> 공방체험사진 TABLE - Workshop Activity Photo (WKACP)

- PK _ 사진번호 - Activity Photo Number (ACPNO)
- FK _ 공방체험번호 - Workshop Number (WNO)
- 사진 - PATH


<13> 장바구니TABLE -  Shopping basket (SPBK)
- 작품번호 - Work Number (WNO)
- 회원번호 - Member Number (MEMNO)


<14> 문의 TABLE - QNA
- PK _ 문의번호 - Question number (QNO)
- FK _ 회원번호 - Member Number (MEMNO)
- FK _ 공방번호 - Studio Number (SNO)
- 문의일자 - Question Registration Date (QRTDT)
- 문의유형 - Type of inquiry (TOIQ)
- 문의내용 - Inquiry contents (IQCT)
- 문의답변일자 - Answer Registration Date (ARTDT)
- 문의답변 - Answer your question (AWQT)
- 작품번호 - Work Number (WNO)


<15> 관계(팔로워 팔로잉) TABLE - Relationship (RLTSP)

- PK(FK) _ 회원번호 - Member Number (MENNO)
- PK(FK) _ 회원번호2 - Member Number2 (MENNO2)


<16> 게시물 TABLE - BOARD

- PK _ 게시물번호 - Board Number (BNO)
- FK _ 회원번호 - Member Number (MEMNO)
- 작성일자 - Registration Date (BRTDT)
- 게시물 내용 - Board Content (BOCTT)
- 사진 - PATH


<17> 좋아요 TABLE - Like Member (LKMB)

- PK _ 좋아요번호 - like Number (LNO)
- FK _ 게시물번호 - Board Number (BNO)
- FK _ 회원번호(클릭한사람) - Member Number (MNO)


<18> 댓글 TABLE - Board Comment (BCMMT)

- PK _ 댓글번호 - Comment Number (CNO)
- FK _ 게시물번호 - Board Number (BNO)
- FK _ 회원번호 - Member Number (MEMNO)
- 댓글내용 - Comment Content (CMCTT)
- 댓글게시일자 - Comment Registration Date (CRTDT)


<19> 메시지 TABLE - MESSAGE
- PK _ 메시지번호 - Message Number (MSNO)
- FK _ 사용자1 - Member Number (MENNO)
- FK _ 사용자2 - Member Number2 (MENNO2)
- 내용 - Message Content (MSCTT)
- 메시지방향 - Message Direction (MSDIR)
- 날짜 - Message Date (MDATE)


<20> 스크랩(판매작품) TABLE - Scrap Sale works (SPSW)

- PK(FK) _ 작품번호 - Work Number (WNO)
- PK(FK) _ 회원번호 - Member Number (MEMNO)


<21> 스크랩(공방) TABLE - Scrap Studio (SPSTUD)
- PK(FK) _ 작품번호 - Work Number (WNO)
- PK(FK) _ 회원번호 - Member Number (MNO)


<22> 해시태그 TABLE - HASHTAG
- PK _ 해시태그번호 - Hashtag Number (HTNO)
- 태그명 - Tag Name (TNAME)


<23> 게시물태그매칭 TABLE - Board Tag Maching (BTMACH)
- PK(FK) _ 해쉬태그번호 - Hashtag Number (HTNO)
- PK(FK) _ 게시물번호 - Board Number (BNO)


<24> 공방태그매칭 TABLE - Studio Tag Maching (STMACH)
- PK(FK) _ 공방번호 - Studio Number (MEMNO)
- PK(FK) _ 해쉬태그번호 - Hashtag Number (HTNO)


<25> 작품태그매칭 TABLE - Works Tag Maching (WTMACH)
- PK(FK) _ 작품번호 - Works Number(WNO)
- PK(FK) _ 해쉬태그번호 - Hashtag Number (HTNO)







