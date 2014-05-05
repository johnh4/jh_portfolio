$(document).ready(function () {

    var navrow = $('#navrow');
    var origOffsetY = navrow.offset().top;

    function scroll() {
        if ($(window).scrollTop() >= origOffsetY) {
            console.log('in affirmative offset consition');
            $('#navrow').addClass('sticky');
            $('#navrow').removeClass('bottom');
            //$('.content').addClass('navrow-padding');
        } else {
            $('#navrow').removeClass('sticky');
            $('#navrow').addClass('bottom');
            //$('.content').removeClass('navrow-padding');
        }


    }

    document.onscroll = scroll;

});