// 제품 판매 관련 값 변경하기

// => 제품번호 추출
var no = location.href.split("?")[1];

$.getJSON(serverRoot + "/json/works/" + no, (result) => {
	// 1) 제목 수정
	$("#fTitle").text(result.title);
	$("#fTitle2").text(result.title);
	
	// 2) 가격 수정 - 초기화
	$("#fPrice").text(result.price);
	
	// 3) 택배비 수정
	// 배송비 저장
	var deliveryPrice = 0;
	if (result.deliveryPrice == "y" || result.deliveryPrice == "Y") {
		deliveryPrice = 2500;
		$("#fDeliveryPrice").text(deliveryPrice + " 원");
		$("#fDeliveryPrice").val(2500);
	} else {
		$("#fDeliveryPrice").text("무  료");
		$("#fDeliveryPrice").val(0);
	}
	
	// 4) 구매 개수 설정 (초기화 : 1)
	var maxCapacity = result.capacity; // 최대 재고량
	var sellerValue = 1;  // 판매갯수 (초기값 : 1)
	$("#seller-value").text(sellerValue);
	$("#seller-value").val(sellerValue);
	
	
	// 5) 판매갯수의 따른 가격 설정
	$("#price-value").text(result.price * sellerValue);
	
	// 6) 총 상품 금액
	$("#All-Price").text((sellerValue * result.price) + deliveryPrice);
	$("#All-Price").val((sellerValue * result.price) + deliveryPrice);
	
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
		if (sellerValue == 0) {
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
//	var mainPhoto = null;
	console.log(result.worksPhoto);
//	if (result.worksPhoto.mainPhoto == "y" 
//		|| result.worksPhoto.mainPhoto == "Y") {
//		mainPhoto = result.photo.path;
//		break;
//	}
//	$("#main-image").attr("src","../../images/works/works_list/" + mainPhoto);
	
	
	
	// 핸들러 제어 - 옵션 속성 값
	var templateFn = Handlebars.compile($('#AttributeValue-template').html())
	$(fAttributeValue).html(templateFn({select:result.worksOption}))
	
	// 핸들러 제어 - 옵션 속성 이름
	templateFn = Handlebars.compile($('#AttributeName-template').html())
	$(fAttributeName).html(templateFn({select:result.worksOption}))

	// 장바구니 담기 구현
	
	// 구매하기 버튼 구현
	$("#btn-purchased").click(() => {
		//$.getJSON()
	});
	
});






