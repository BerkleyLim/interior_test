$.getJSON(serverRoot + "/json/auth/loginUser", (data) => {
	$.getJSON(serverRoot + "/json/order/purchasedForm", (data) => {
		
		// 핸들바 템플릿(전체 공방별 리스트용)
		var sourceWorkshopList = $('#workshop-template').html()
		// 핸들바 템플릿 컴파일(전체 리스트용)
		var templateFnWorkshopList = Handlebars.compile(sourceWorkshopList);
		
		// 먼저 공방의 대해 출력
		$("#workshop-list").html(templateFnWorkshopList({studioNames:workshopData}))
		
		// 핸들바 템플릿(전체 공방별 리스트용)
		var sourceWorksList = $('#workshop-template').html()
		// 핸들바 템플릿 컴파일(전체 리스트용)
		var templateFnWorksList = Handlebars.compile(sourceWorkshopList);
		
		// 먼저 공방의 대해 출력
		$("#works-list").html(templateFnWorkshopList({studioNames:workshopData}))
	})
}).fail(() => {
	window.alert("로그인 하여 주시기 바랍니다.")
	location.href = serverRoot + "/interia/html/auth/login.html";
}); 
