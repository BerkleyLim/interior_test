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
			$("#seller-value").text(++sellerValue);
			$("#price-value").text(result.price * sellerValue);
			$("#All-Price").text((sellerValue * result.price) + deliveryPrice);
			$("#All-Price").val((sellerValue * result.price) + deliveryPrice);
		}
	});
	
	// 8) 구매 갯수 감소 이벤트
	$("#minus-value").click(() => {
		if (sellerValue == 1) {
			window.alert("최소 1개 이상을 지정해야합니다.");
		} else {
			$("#seller-value").text(--sellerValue);
			$("#price-value").text(result.price * sellerValue);
			$("#All-Price").text((sellerValue * result.price) + deliveryPrice);
			$("#All-Price").val((sellerValue * result.price) + deliveryPrice);
		}
	});
	
	// 9) 전체 제품의 대한 이미지 표시 
	var mainPhoto = "";
	var subIndex = 0;
	for (var index in result.worksPhoto) {
		//console.log(result.worksPhoto[index].mainPhoto);
		if(result.worksPhoto[index].mainPhoto == "y" 
			|| result.worksPhoto[index].mainPhoto == "Y") {
			// 메인 이미지 표시
			$("#main-image").attr("src","../../images/works/works_list/" + result.worksPhoto[index].path);
		} else {
			// 서브 이미지 표시
			$("#sub-image" + (++subIndex)).attr("src","../../images/works/works_list/" + result.worksPhoto[index].path);
		}
	}
	
	
	// 10) 옵션 관련
	var worksOptions = "";
	var i = 0;
	for (var worksOption of result.worksOption) {
		if (i == 0) {
			i++;
		} else {
			worksOptions += ", ";
		}
		worksOptions += worksOption.attributeValue;
	}
	if (worksOptions != "null") {
		$("#fOptionValue").val(worksOptions);
	}
	
	
	// 장바구니 담기 구현
	$("#btn-basket").click(() => {
		$.getJSON(serverRoot + "/json/auth/loginUser", (data) => {
			// 해당 선택에 맞는 옵션값을 추출한다. (만일 optionNumber 값이 주어지지 않았을 때 값은 0)
			var fOptionNumber = 0;
			
			if (result.optionNumber > 0) {
				fOptionNumber = result.optionNumber;
			}
			
			window.alert("해당 제품을 장바구니에 담았습니다.")
			$.post(serverRoot + "/json/works/add/buscket", {
				worksNumber : result.worksNumber,
				optionNumber : fOptionNumber
				}, 'json');
			location.href = serverRoot + "/interia/html/works/sp_bascket.html"; 
		}).fail(() => {
			window.alert("로그인 하시기 바랍니다.");
			location.href = serverRoot + "/interia/html/auth/login.html";
		}); 
	});
	
	// 구매하기 버튼 구현
	$("#btn-purchased").click(() => {
		$.getJSON(serverRoot + "/json/auth/loginUser", (data) => {
			$.getJSON(serverRoot + "/json/order/purchaseReady", {
				
			}, () => {
				
				location.href='sp_purchase.html';
			}, 'post')
		}).fail(() => {
			window.alert("로그인 하시기 바랍니다.");
			location.href = serverRoot + "/interia/html/auth/login.html";
		}); 
	});
	
});






