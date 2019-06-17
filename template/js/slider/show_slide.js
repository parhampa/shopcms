
$(document).ready(function () {
    $('.show_slide').owlCarousel({
        rtl: true,
        loop: true,
        margin: 15,
        nav: true,

        autoplay:true,
        autoplayTimeout:3000,
        autoplayHoverPause:true,

        // autoWidth:true,
        // responsiveClass:true,
        responsive: {
            0: {
                items: 3,
                nav: true
            },
            600: {
                items: 4,
                nav: true
            },
            1000: {
                items: 6,
                nav: false,
                loop: true
            }
        }
    })
});


$(document).ready(function () {

    $('.show_slide2').owlCarousel({
        rtl: true,
        loop: false,
        margin: 0,
        nav: true,


        // autoWidth:true,
        // responsiveClass:true,
        responsive: {
            0: {
                items: 1,
                nav: true
            },
            600: {
                items: 3,
                nav: true
            },
            1000: {
                items: 4,
                nav: false,
                loop: false
            }
        }



    })
});


$(document).ready(function () {

    $('.show_slide3').owlCarousel({
        rtl: true,
        loop: false,
        margin: 0,
        nav: true,


        // autoWidth:true,
        // responsiveClass:true,
        responsive: {
            0: {
                items: 1,
                nav: true
            },
            600: {
                items: 2,
                nav: true
            },
            1000: {
                items: 4,
                nav: false,
                loop: false
            }
        }



    })
});



$(document).ready(function () {

    $('.show_slide4').owlCarousel({
        rtl: true,
        loop: false,
        margin: 0,
        nav: true,


        // autoWidth:true,
        // responsiveClass:true,
        responsive: {
            0: {
                items: 3,
                nav: true
            },
            600: {
                items: 3,
                nav: true
            },
            1000: {
                items: 4,
                nav: false,
                loop: false
            }
        }



    })
});