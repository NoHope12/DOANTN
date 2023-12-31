function share_facebook()
{
    u=location.href;t=document.title;
    window.open("http://www.facebook.com/share.php?u="+encodeURIComponent(u)+"&t="+encodeURIComponent(t))
}
function share_google()
{
    u=location.href;
    t=document.title;
    window.open("http://www.google.com/bookmarks/mark?op=edit&bkmk="+encodeURIComponent(u)+"&title="+t+"&annotation="+t)
}
function share_twitter()
{
    u=location.href;
    t=document.title;
    window.open("http://twitter.com/home?status="+encodeURIComponent(u))
}
function share_digg()
{
    u=location.href;
    t=document.title;
    window.open("http://digg.com/submit?phase=2&url="+encodeURIComponent(u)+"&title="+t);
    window.open("http://del.icio.us/post?v=2&url="+encodeURIComponent(u)+"&notes=&tags=&title="+t);
}
function share_delicious()
{
    u=location.href;
    t=document.title;
    window.open("http://del.icio.us/post?v=2&url="+encodeURIComponent(u)+"&notes=&tags=&title="+t);
}
function OpenPrint()
{
    u=location.href;
    window.open(u+"&print=1");
    return false
}
//Parallax Scrolling Effect


let bg = document.getElementById("bg");
let sea = document.getElementById("sea");
let moutain1 = document.getElementById("moutain1");
let moutain2 = document.getElementById("moutain2");
let moutain3 = document.getElementById("moutain3");
let moutain4 = document.getElementById("moutain4");
let moutain5 = document.getElementById("moutain5");
let boat = document.getElementById("boat");
let cloud2 = document.getElementById("cloud2");
let title = document.getElementById("title");

window.addEventListener('scroll', function () {
    var value = window.scrollY;

    bg.style.top = value * 0.5 + 'px';
    moutain1.style.top = value * 0.5 + 'px';
    moutain2.style.top = value * 0.5 + 'px';
    moutain3.style.top = value * 0.5 + 'px';
    moutain4.style.left = value * -1 + 'px';
    moutain5.style.left = value * 0.5 + 'px';
    boat.style.top = value * 0.5 + 'px';
    boat.style.left = value * 2 + 'px';
    title.style.marginTop = value * 1.5 + 'px';

});

$(document).ready(function () {
    $(window).scroll(function () {
        if (this.scrollY > 20) {
            $('.box-navbar').addClass("scrollMenu")
        } else {
            $('.box-navbar').removeClass("scrollMenu")
        }

        if (this.scrollY > 200) {
            $('.scroll-to-top').addClass("active")
        } else {
            $('.scroll-to-top').removeClass("active")
        }
    });

    $("#scroll-to-top").click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 100)
    })
});

$('.slider-home').slick({
    infinite: true,
    speed: 500,
    fade: true,
    cssEase: 'linear',
    dots: false,
    autoplay: true,
    arrows: true,
    prevArrow: "<button type='button' class='slick-prev pull-left'><i class='fa-light fa-chevron-left'></i></button>",
    nextArrow: "<button type='button' class='slick-next pull-right'><i class='fa-light fa-chevron-right'></i></button>",
    responsive: [
        {
            breakpoint: 1250,
            settings: {
                slidesToShow: 1,
            }
        },
        {
            breakpoint: 1000,
            settings: {
                slidesToShow: 1,
                arrows: false,
                dots: true,
            }
        },
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 1,
                arrows: false,
                dots: true,
            }
        }
    ]
});


$('.slide-tour').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    speed: 800,
    dots: false,
    autoplay: false,
    centerMode: true,
    centerPadding: '0px',
    cssEase: 'linear',
    arrows: true,
    prevArrow: "<button type='button' class='slick-prev pull-left'><i class='fa-light fa-chevron-left'></i></button>",
    nextArrow: "<button type='button' class='slick-next pull-right'><i class='fa-light fa-chevron-right'></i></button>",
    responsive: [
        {
            breakpoint: 1230,
            settings: {
                slidesToShow: 3,
            }
        },
        {
            breakpoint: 1000,
            settings: {
                slidesToShow: 2,
            }
        },
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 1,
            }
        }
    ]
});

$('.list-cmt').slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    speed: 500,
    cssEase: 'linear',
    dots: true,
    autoplay: false,
    arrows: false,
    //prevArrow: "<button type='button' class='slick-prev pull-left'><i class='fa-light fa-chevron-left'></i></button>",
    //nextArrow: "<button type='button' class='slick-next pull-right'><i class='fa-light fa-chevron-right'></i></button>",
});

$('.slide-blog').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    speed: 800,
    dots: false,
    autoplay: false,
    cssEase: 'linear',
    arrows: true,
    prevArrow: "<button type='button' class='slick-prev pull-left'><i class='fa-light fa-chevron-left'></i></button>",
    nextArrow: "<button type='button' class='slick-next pull-right'><i class='fa-light fa-chevron-right'></i></button>",
    responsive: [
        {
            breakpoint: 1230,
            settings: {
                slidesToShow: 3,
            }
        },
        {
            breakpoint: 1000,
            settings: {
                slidesToShow: 2,
            }
        },
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 1,
            }
        }
    ]
});

$('.slide-partner').slick({
    infinite: true,
    slidesToShow: 5,
    slidesToScroll: 1,
    speed: 800,
    dots: false,
    autoplay: false,
    arrows: true,
    prevArrow: "<button type='button' class='slick-prev pull-left'><i class='fa-light fa-chevron-left'></i></button>",
    nextArrow: "<button type='button' class='slick-next pull-right'><i class='fa-light fa-chevron-right'></i></button>",
    responsive: [
        {
            breakpoint: 1230,
            settings: {
                slidesToShow: 3,
            }
        },
        {
            breakpoint: 1000,
            settings: {
                slidesToShow: 3,
            }
        },
        {
            breakpoint: 768,
            settings: {
                slidesToShow: 3,
            }
        },
        {
            breakpoint: 500,
            settings: {
                slidesToShow: 1,
            }
        }
    ]
});


