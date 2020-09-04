jQuery(function ($) {

    $(".sidebar-dropdown > a").click(function () {
        $(".sidebar-submenu").slideUp(200);
        if (
            $(this)
                .parent()
                .hasClass("active")
        ) {
            $(".sidebar-dropdown").removeClass("active");
            $(this)
                .parent()
                .removeClass("active");
        } else {
            $(".sidebar-dropdown").removeClass("active");
            $(this)
                .next(".sidebar-submenu")
                .slideDown(200);
            $(this)
                .parent()
                .addClass("active");
        }
    });
    $(".sidebar-sub-dropdown > a").click(function () {
        $(".sidebar-sub-submenu").slideUp(200);
        if (
            $(this)
                .parent()
                .hasClass("active")
        ) {
            $(".sidebar-dropdown").removeClass("active");
            $(this)
                .parent()
                .removeClass("active");
        } else {
            $(".sidebar-dropdown").removeClass("active");
            $(this)
                .next(".sidebar-sub-submenu")
                .slideDown(200);
            $(this)
                .parent()
                .addClass("active");
        }
    });

    $("#close-sidebar").click(function () {
        $(".page-wrapper").removeClass("toggled");
        $(this).addClass('hidden');

        setTimeout(() => {
            $("#show-sidebar").removeClass('hidden');
        }, 1100);
    });
    $("#show-sidebar").click(function () {
        $(".page-wrapper").addClass("toggled");
        $(this).addClass('hidden');
        setTimeout(() => {
            $("#close-sidebar").removeClass('hidden');
        }, 1100);
    });
    $("#sign-in").click(function () {
        $(".page-wrapper").removeClass("toggled");
        $("#close-sidebar").addClass('hidden');
        setTimeout(() => {
            $("#show-sidebar").removeClass('hidden');
        }, 1100);
    });

    $("#close-searchbar").click(function () {
        $(".searchbar-section").addClass("hidden");
    });
    $("#show-searchbar").click(function () {
        $(".searchbar-section").removeClass("hidden");
        $(".page-wrapper").removeClass("toggled");
    });

});