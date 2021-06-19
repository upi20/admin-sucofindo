const my_footer = $("#footer-menu");
my_footer.find("li").each(function () {
    const menu = $(this);
    if (menu.data('name') == my_acctive_menu) {
        menu.addClass("active");
    } else {
        menu.find("a").prop("style", "color: #a3a3a3;");
        menu.find("span").prop("style", "color: #a3a3a3;");
    }
});