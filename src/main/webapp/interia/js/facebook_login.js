// 로그인 성공한 후 서버에 자동으로 로그인 하기
// => 페이스북으로부터 사용자 정보 가져오기 (페이스북으로부터 사용자 정보를 가져올 수 있도록 서버에 accessToken을 보낸다.)
function autoServerLogin(accessToken) {
	var result = getUserInfo(accessToken);
//	console.log(result.userId);
	// 페이스북으로 처음으로 로그인 했을 경우!
//	$.getJSON(serverRoot + "/json/member/", (data) => {
//		console.log(data.no);
//		if (data.no < 1) {
//			// FB.api('서비스 URL', 서비스 결과를 받았을 때 호출될 함수);
//			// => '/me' : 현재 로그인 한 사용자의 정보를 가져오는 서비스이다.
//				no: response.authResponse.accessToken.id
//				id: String(response.authResponse.accessToken.id),
//				password: "-",
//				name: response.authResponse.accessToken.name,
//				nickname: response.authResponse.accessToken.name,
//				phoneNumber: "-"
//			
//			//$.post(serverRoot + "/json/member/add", data);
//		    
//		}
//	});
	// 이와 동일하게 로그인 실행
//	$.post(serverRoot + "/json/auth/login", data, (result) => {
//        if (result.state == "success") {
//        	location.href = "../main/index.html";
//        }
//        else 
//            window.alert("로그인 실패!");
//    }, "json");
}

//로그인 성공한 후 사용자 정보 가져오기
//=> 로그인을 하면 페이스북에서 통행권을 발급한다.
//=> 이 통행권이 있어야 페이스북에 서비스를 요청할 수 있다.
function getUserInfo(accessToken) {
 // 자바스크립트에서 페이스북에 서비스를 요청할 때는 
 // accessToken을 따로 지정하지 않아도 된다.
 // 왜? 
 // => 서비스를 요청할 때 내부에 보관된 accessToken을 사용할 것이다.
 
 // FB.api('서비스 URL', 서비스 결과를 받았을 때 호출될 함수);
 // => '/me' : 현재 로그인 한 사용자의 정보를 가져오는 서비스이다.
 FB.api('/me?fields=id,name,email', function(response) {
     console.log(response);
     //autoServerLogin(response.authResponse.accessToken);
 });
}

//페이스북 로그인을 수행한 후에 그 결과에 따라 작업을 수행한다.
function statusChangeCallback(response) {
  //console.log(response);

  if (response.status === 'connected') { // 로그인이 정상적으로 되었을 때,
	  //console.log(response.authResponse.accessToken)
      autoServerLogin(response.authResponse.accessToken);
	  //getUserInfo(response.authResponse.accessToken); // 테스트용
  } else { // 로그인이 되지 않았을 때,
      console.log("로그인 되지 않았음");
  }
}

//페이스북 로그인 버튼을 화면에 붙인다.
//=> 로그인 버튼을 누르면 페이스북 사이트의 로그인 페이지가 출력된다.
//=> 그 페이지에서 로그인을 수행한 후 onlogin에 등록한 코드가 실행된다.
// 즉 checkLoginState() 함수가 실행된다.
function checkLoginState() {
	console.log("checkLoginState() 수행완료");
	// 로그인 상태를 가져올 것을 요청한다.
    // => 그리고 로그인 정보를 가져 왔을 때 호출될 함수를 등록한다.
    FB.getLoginStatus(function(response) { 
      statusChangeCallback(response);
    });
}

//페이스북 자바스크립트 SDK 파일을 가져온 후에 호출될 함수를 등록한다.
//=> 즉 sdk.js 파일을 실행할 때 이 함수를 찾아 호출한다.
//=> 이 함수는 페이스북 API를 사용하기 전에 준비하는 작업을 수행한다.
window.fbAsyncInit = function() {
  console.log("window.fbAsyncInit() 호출됨!");
  FB.init({
    appId      : '499179377189688', // 개발자가 등록한 앱 ID
    cookie     : true,  
    xfbml      : true,  
    version    : 'v3.0' 
  });
  FB.AppEvents.logPageView();
};

//페이스북 SDK 라이브러리파일 로드
//- 동적으로 script 태그를 만든다.
//- 웹브라우저는 당연히 동적으로 생성된 script 태그를 실행할 것이다.
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "../../js/facebook_sdk.js";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
