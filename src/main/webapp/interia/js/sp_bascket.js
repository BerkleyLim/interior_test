$.getJSON(serverRoot + "/json/auth/loginUser", (data) => {
	
	// 핸들바 템플릿(전체 공방별 리스트용)
	var sourceWorkshopList = $('#basket-template').html()
	// 핸들바 템플릿 컴파일(전체 리스트용)
	var templateFnWorkshopList = Handlebars.compile(sourceWorkshopList);
	
	
	$.getJSON(serverRoot + "/json/works/buscketWorkshop/",
			(workshopData) => {
			
			$.getJSON(serverRoot + "/json/works/buscketList/", (productData) => {
				
				// 먼저 공방의 대해 출력
				$("#basket-list").html(templateFnWorkshopList({bascket:workshopData}))
				
				// 핸들바 템플릿(제품용)
				var sourceProduct = $("#product-template").html()

				console.log(productData);
				// 핸들바 템플리 컴파일(제품용)
				var templateFnProduct = Handlebars.compile(sourceProduct);
				
				// 각 공방별로 제품 리스트 담기
				for (var j = 0; j < workshopData.length; j++) {
					var workshopTitle = $("#studioName" + workshopData[j].workshopNumber).text();
					var products = new Array();
					
					var x = 0;
					for (var i = 0; i < productData.length; i++) {
						if (workshopTitle == productData[i].studioName) {
							products[x++] = productData[i];
						}
					}
					$("#bascket-list-detail" + workshopData[j].workshopNumber).html(templateFnProduct({product:products}))
					x =0;
				}
				
				
			});
		
	});
	
	
	// 질문 사항,
	// 1) handlebars에서 css 안먹히는지,
	// 2) 리스트에서 반복 작업시 같은 ID가 여러개 나오는데, 여기서 같은 ID는 JQuery로 이용하여 불가능한지의 대해
	

}).fail(() => {
	location.href = serverRoot + "/interia/html/auth/login.html";
}); 


