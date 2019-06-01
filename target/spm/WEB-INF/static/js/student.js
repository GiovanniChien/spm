$("#info").on("click", function () {
    var iframe = $("#student-main");
    var src = iframe.attr("src");
    var arr = src.split('/');
    iframe.attr("src", "/" + arr[1] + "/class/class_info");
});
$("#content").on("click", function () {
    var iframe = $("#student-main");
    var src = iframe.attr("src");
    var arr = src.split('/');
    iframe.attr("src", "/" + arr[1] + "/class/class_content");
});
$("#practice").on("click", function () {
    var iframe = $("#student-main");
    var src = iframe.attr("src");
    var arr = src.split('/');
    iframe.attr("src", "/" + arr[1] + "/class/class_practice");
});
$("#team").on("click", function () {
    var iframe = $("#student-main");
    var src = iframe.attr("src");
    var arr = src.split('/');
    iframe.attr("src", "/" + arr[1] + "/class/class_team");
});

$("#test").on("click", function () {
    var iframe = $("#student-main");
    var src = iframe.attr("src");
    var arr = src.split('/');
    iframe.attr("src", "/" + arr[1] + "/student/test");
});
$("#resource").on("click", function () {
    var iframe = $("#student-main");
    var src = iframe.attr("src");
    var arr = src.split('/');
    iframe.attr("src", "/" + arr[1] + "/resource");
});

$("#work").on("click", function () {
    var iframe = $("#student-main");
    var src = iframe.attr("src");
    var arr = src.split('/');
    iframe.attr("src", "/" + arr[1] + "/class/class_work");
});
$("#contact").on("click", function () {
    var iframe = $("#student-main");
    var src = iframe.attr("src");
    var arr = src.split('/');
    iframe.attr("src", "/" + arr[1] + "/class/class_contact");
});

$(".first").mouseenter(function () {
    $(".first").nextAll("li").css({
                                      'top': '108px'
                                  });
});
$(".student-menu").mouseleave(function () {
    $(".first").nextAll("li").css({
                                      'top': '0'
                                  });
});
$("#student-main").on("load", function () {
    var height = $(this).contents().find("body").height();
    $("#student-main").height(height === 0 ? 500 : height + 30);
});
