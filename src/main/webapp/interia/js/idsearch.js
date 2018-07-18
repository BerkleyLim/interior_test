$("#searchId").click(() => {
    $.post(serverRoot + "/json/auth/searchId", {
        id: $(fId).val(),
        phoneNumber: $(fFirstNumber).val() + $(fSecondNumber).val() + $(fThirdNumber).val()
    }, () => {
        location.href = "../main/index.html";
    });
});