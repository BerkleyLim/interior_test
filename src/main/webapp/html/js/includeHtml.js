function includeHtml() {
    $("include-html").each(function() {
       element = $(this);
       element.load(element.attr("target"), eval(element.attr("completed")));
    });
}