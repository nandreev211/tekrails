$(window).load(function(){
    $('#menu-button').click(function(){
        $('#fixed-nav').toggle();
    });

    $('#slider-row').css('opacity', '1');
    $('#slider').bxSlider({
        auto: true,
        pause: 5000,
        responsive: true,
        touchEnabled: false
    });

    $('#fixed-nav a').click(function(){
        $('#fixed-nav a').removeClass('current');
        $(this).addClass('current');
    });

});


$(window).scroll(function(){
    if ($(this).scrollTop() > 70) {
        $('header').addClass('fixed');
        $('#slider-row').addClass('padding-top');
    } else {
        $('header').removeClass('fixed');
        $('#slider-row').removeClass('padding-top');
    }

    $('.nav-link').each(function() {
//        if ($(this).hasClass('current')){
//            $('#fixed-nav a').removeClass('current');
//            var id = $(this).attr('id');
//            $('#' + id + '-duplicate').addClass('current');
//        }
    });
});