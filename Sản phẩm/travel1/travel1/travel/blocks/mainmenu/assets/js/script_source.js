(function($){
    $(document).ready(function(){
        $('li.has-sub:has(> ul)').addClass('parent');

        $('.menu-mobile li.active').addClass('open').children('ul').show();

        $('.menu-mobile li.has-sub > div').on('click', function(){
            //$(this).removeAttr('href');
            var element = $(this).parent('li');
            if (element.hasClass('open')) {
                element.removeClass('open');
                element.find('li').removeClass('open');
                element.find('ul').slideUp(200);
            }
            else {
                element.addClass('open');
                element.children('ul').slideDown(200);
                element.siblings('li').children('ul').slideUp(200);
                element.siblings('li').removeClass('open');
                element.siblings('li').find('li').removeClass('open');
                element.siblings('li').find('ul').slideUp(200);
            }
        });

        $('.menu-mobile li.has-sub > h2').on('click', function(){
            //$(this).removeAttr('href');
            var element = $(this).parent('li');
            if (element.hasClass('open')) {
                element.removeClass('open');
                element.find('li').removeClass('open');
                element.find('ul').slideUp(200);
            }
            else {
                element.addClass('open');
                element.children('ul').slideDown(200);
                //element.siblings('li').children('ul').slideUp(200);
                //element.siblings('li').removeClass('open');
                //element.siblings('li').find('li').removeClass('open');
                //element.siblings('li').find('ul').slideUp(200);
            }
        });


        $('li.has-sub1:has(> ul)').addClass('parent');

        $('.menu-mobile li.active li.active').addClass('open').children('ul').show();

        $('.menu-mobile li.has-sub1 > div').on('click', function(){
            //$(this).removeAttr('href');
            var element = $(this).parent('li');
            if (element.hasClass('open')) {
                element.removeClass('open');
                element.find('li').removeClass('open');
                element.find('ul').slideUp(200);
            }
            else {
                element.addClass('open');
                element.children('ul').slideDown(200);
                element.siblings('li').children('ul').slideUp(200);
                element.siblings('li').removeClass('open');
                element.siblings('li').find('li').removeClass('open');
                element.siblings('li').find('ul').slideUp(200);
            }
        });

        $('.menu-mobile li.has-sub1 > h2').on('click', function(){
            //$(this).removeAttr('href');
            var element = $(this).parent('li');
            if (element.hasClass('open')) {
                element.removeClass('open');
                element.find('li').removeClass('open');
                element.find('ul').slideUp(200);
            }
            else {
                element.addClass('open');
                element.children('ul').slideDown(200);
                //element.siblings('li').children('ul').slideUp(200);
                //element.siblings('li').removeClass('open');
                //element.siblings('li').find('li').removeClass('open');
                //element.siblings('li').find('ul').slideUp(200);
            }
        });


        $('li.has-sub2:has(> ul)').addClass('parent');

        $('.menu-mobile li.active li.active').addClass('open').children('ul').show();

        $('.menu-mobile li.has-sub2 > div').on('click', function(){
            //$(this).removeAttr('href');
            var element = $(this).parent('li');
            if (element.hasClass('open')) {
                element.removeClass('open');
                element.find('li').removeClass('open');
                element.find('ul').slideUp(200);
            }
            else {
                element.addClass('open');
                element.children('ul').slideDown(200);
                element.siblings('li').children('ul').slideUp(200);
                element.siblings('li').removeClass('open');
                element.siblings('li').find('li').removeClass('open');
                element.siblings('li').find('ul').slideUp(200);
            }
        });

        $('.menu-mobile li.has-sub2 > h2').on('click', function(){
            //$(this).removeAttr('href');
            var element = $(this).parent('li');
            if (element.hasClass('open')) {
                element.removeClass('open');
                element.find('li').removeClass('open');
                element.find('ul').slideUp(200);
            }
            else {
                element.addClass('open');
                element.children('ul').slideDown(200);
                //element.siblings('li').children('ul').slideUp(200);
                //element.siblings('li').removeClass('open');
                //element.siblings('li').find('li').removeClass('open');
                //element.siblings('li').find('ul').slideUp(200);
            }
        });

        $('li.has-sub3:has(> ul)').addClass('parent');

        $('.menu-mobile li.active li.active').addClass('open').children('ul').show();

        $('.menu-mobile li.has-sub3 > div').on('click', function(){
            //$(this).removeAttr('href');
            var element = $(this).parent('li');
            if (element.hasClass('open')) {
                element.removeClass('open');
                element.find('li').removeClass('open');
                element.find('ul').slideUp(200);
            }
            else {
                element.addClass('open');
                element.children('ul').slideDown(200);
                element.siblings('li').children('ul').slideUp(200);
                element.siblings('li').removeClass('open');
                element.siblings('li').find('li').removeClass('open');
                element.siblings('li').find('ul').slideUp(200);
            }
        });

        $('.menu-mobile li.has-sub3 > h2').on('click', function(){
            //$(this).removeAttr('href');
            var element = $(this).parent('li');
            if (element.hasClass('open')) {
                element.removeClass('open');
                element.find('li').removeClass('open');
                element.find('ul').slideUp(200);
            }
            else {
                element.addClass('open');
                element.children('ul').slideDown(200);
                //element.siblings('li').children('ul').slideUp(200);
                //element.siblings('li').removeClass('open');
                //element.siblings('li').find('li').removeClass('open');
                //element.siblings('li').find('ul').slideUp(200);
            }
        });
    });
})(jQuery);