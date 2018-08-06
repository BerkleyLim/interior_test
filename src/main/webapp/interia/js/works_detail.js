// 제품 판매 관련 값 변경하기

// => 제품번호 추출
var no = location.href.split("?")[1];

$.getJSON(serverRoot + "/json/works/" + no, (result) => {
	// 1) 제목 수정
	var title = result.title;
	$("#fTitle").text(title);
	$("#fTitle2").text(title);
	
	// 2) 가격 수정 - 초기화
	var price = result.price;
	$("#fPrice").text(price);
	
	// 3) 택배비 수정
	// 배송비 저장
	var deliveryPrice = 2500;
	$("#fDeliveryPrice").text("2500");
	
	// 4) 구매 개수 설정 (초기화 : 1)
	var maxCapacity = result.capacity;
	$("#seller-value").text(1);
	$("#seller-value").val(1);
	var sellerValue = $("#seller-value").text();
	
	// 5) 재고의 따른 가격 설정
	$("#price-value").text(price * $("#seller-value").text());
	
	// 6) 총 상품 금액
	$("#All-Price").text((sellerValue * price) + deliveryPrice);
	$("#All-Price").val((sellerValue * price) + deliveryPrice);
	
	// 7) 구매 갯수 증가 이벤트
	$("#plus-value").click(() => {
		if (sellerValue == maxCapacity) {
			window.alert("더이상의 재고 수량이 존재하지 않습니다.");
		} else {
			$("#seller-value").text(sellerValue++);
			$("#price-value").text(price * $("#seller-value").text());
			$("#All-Price").text((sellerValue * price) + deliveryPrice);
			$("#All-Price").val((sellerValue * price) + deliveryPrice);
		}
	});
	
	// 8) 구매 갯수 감소 이벤트
	$("#minus-value").click(() => {
		if (sellerValue == 1) {
			window.alert("최소 1개 이상을 지정해야합니다.");
		} else {
			$("#seller-value").text(sellerValue--);
			$("#price-value").text(price * $("#seller-value").text());
			$("#All-Price").text((sellerValue * price) + deliveryPrice);
			$("#All-Price").val((sellerValue * price) + deliveryPrice);
		}
	});
	
	// 메인만 이미지 표시 (임시로 테스트용으로 둔 것!)
	//$("#main-image").attr("src","../../images/works/works_list/" + result.photo.path);
//	$("#main-image").attr("src","../../images/works/works_list/" + {
//		if (result.photo.)
//		result.photo.path
//	});
	
	
	// 장바구니 담기 구현
	
	// 구매하기 버튼 구현
	$("#btn-purchased").click(() => {
		//$.getJSON()
	});
	
	// 핸들러 제어
//    var trTemplateSrc=$('#tr-template').html();
//    
//    // 위에서 준비한 템플릿 데이터를 가지고 HTML을 생성할 템플릿 엔진 준비
//    var templateFn = Handlebars.compile(trTemplateSrc)
//    
//    $.getJSON("../../../json/works/option/" + no , (data) => {
//        console.log(data);
//        $(fAttributeValue).html(templateFn({select:data}))
//    });
});
