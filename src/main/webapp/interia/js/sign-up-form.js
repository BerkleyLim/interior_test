$("#addBtn").click(() => {
    $.post(serverRoot + "/json/member/add", {
        id: $(fId).val(),
        password: $(fPassword).val(),
        name: $(fName).val(),
        nickname: $(fNickname).val(),
        phoneNumber: $(fFirstNumber).val() + $(fSecondNumber).val() + $(fThirdNumber).val()
    }, () => {
        location.href = "../main/index.html";
    });
});


//
//// 여기서 get 방식일 경우 실행하는 것! (즉, 번호를 조회하여 스크립트문 실행!)
//if (location.href.split("?").length > 1) {
///*     var tags = $(".input-view");
//    tags.css("display", "none");
// */    
//    var no = location.href.split("?")[1].split("=")[1];
//    var fPhoneNumber = $(fFirstNumber).val() + $(fSecondNumber).val() + $(fThirdNumber).val(); // 이부분 휴대폰 번호 하나로 합치는 작업 예정
//    
//    console.log(fPhoneNumber);
//    
//    $.getJSON(serverRoot + "/json/member/" + no, function(data) {
//        $(fNo).val(data.no);
//        $(fId).val(data.id);
//        $(fPassword).val(data.password);
//        $(fName).val(data.name);
//        
//    });
//    
//    $("#updBtn").click(() => {
//        $.post(serverRoot + "/json/member/update", {
//            title: $(fTitle).val(),
//            content: $(fContent).val(),
//            no: $(fNo).val()
//        }, () => {
//            location.href = "list.html";
//        });
//    });
//    
//    $("#delBtn").click(() => {
//        if (window.confirm("삭제하시겠습니까?") == false) 
//            return;
//        
//        $.get(serverRoot + "/json/member/delete", {"no": no}, () => {
//            location.href = "list.html";
//        });
//    });
//    
//} else { // 새 글 등록
///*     var tags = $(".detail-view");
//    tags.css("display", "none"); */
//    
//
//}