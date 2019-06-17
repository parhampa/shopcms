//        fade


$(document).ready(function () {
    var carousel = $("#carousel").waterwheelCarousel({
        flankingItems: 3,
        movingToCenter: function ($item) {
            $('#callback-output').prepend('movingToCenter: ' + $item.attr('id') + '<br/>');
        },
        movedToCenter: function ($item) {
            $('#callback-output').prepend('movedToCenter: ' + $item.attr('id') + '<br/>');
        },
        movingFromCenter: function ($item) {
            $('#callback-output').prepend('movingFromCenter: ' + $item.attr('id') + '<br/>');
        },
        movedFromCenter: function ($item) {
            $('#callback-output').prepend('movedFromCenter: ' + $item.attr('id') + '<br/>');
        },
        clickedCenter: function ($item) {
            $('#callback-output').prepend('clickedCenter: ' + $item.attr('id') + '<br/>');
        }
    });

    $('#prev').bind('click', function () {
        carousel.prev();
        return false
    });

    $('#next').bind('click', function () {
        carousel.next();
        return false;
    });

    $('#reload').bind('click', function () {
        newOptions = eval("(" + $('#newoptions').val() + ")");
        carousel.reload(newOptions);
        return false;
    });

});


/* $(function(){
    $(".fader").fader({
        delay: 2000
    })
});
$(function(){
    $(".fader2").fader({
        delay: 5000
    })
});
$(function(){
    $(".fader3").fader({
        delay: 7000
    })
});
$(function(){
    $(".fader4").fader({
        delay: 3000
    })
});

  */






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
        loop: true,
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
                loop: true
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







$('.navigation__wrapper').hover(
    function() {
        $('.nav__label').addClass('animated fadeIn').show();
    }, function() {
        $('.nav__label').removeClass('animated fadeIn').hide();
    },

);


function chslide() {
    document.getElementById("next").click();
}
setInterval(chslide,10000);