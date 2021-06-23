const my_footer = $("#footer-menu");
my_footer.find("li").each(function () {
    const menu = $(this);
    if (menu.data('name') == my_acctive_menu) {
        menu.addClass("active");
        $(this).find("a>i").addClass("text-warning");
        $(this).find("a>span").addClass("text-warning");
    } else {
        menu.find("a").prop("style", "color: #a3a3a3;");
        menu.find("span").prop("style", "color: #a3a3a3;");
    }
});


function Loader(isLoading = true) {
    if (isLoading) {
        $("#loader").html(`<div class="preloader d-flex align-items-center justify-content-center" id="preloader">
  <div class="spinner-grow text-warning" role="status">
    <div class="sr-only">Loading...</div>
  </div>
</div>`)
    } else {
        $("#loader").empty();
    }
}