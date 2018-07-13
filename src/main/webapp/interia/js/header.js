$(window).on("scroll touchmove", function () {
    $('#header_bg').toggleClass('tiny', $(document).scrollTop() > 0);
});

$.get("/interior_test/interia/html/header.html", (data) => {
    $("#header").html(data);
});

