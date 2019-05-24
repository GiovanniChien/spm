$(".first").mouseenter(function () {
    $(".first").nextAll("li").css({
        'top': '72px'
    });
});
$(".teacher-menu").mouseleave(function () {
    $(".first").nextAll("li").css({
        'top': '0'
    });
});
$(".last").mouseenter(function () {
    $(".first").nextAll("li").css({
        'top': '0'
    });
    $(".sublast").css({
        'top': '0'
    });
}).mouseleave(function () {
    $(".sublast").css({
        'top': '-108px'
    });
});
$("#teacher-main").on("load", function () {
    var height = $(this).contents().find("body").height();
    $("#teacher-main").height(height === 0 ? 500 : height + 30);
});