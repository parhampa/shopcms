
$('.navigation__wrapper').hover(
    function() {
        $('.nav__label').addClass('animated fadeIn').show();
    }, function() {
        $('.nav__label').removeClass('animated fadeIn').hide();
    },

);


var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("slider-festival");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 4500);
}
