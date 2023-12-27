$(".owl-carousel").owlCarousel({
    autoplay: true,
    // arrows: true,
    // infinite: false,
    // rewind:true,
    loop: true,
    margin: 0,
    autoplayTimeout: 4000,
    nav: true,
    dots: false,
    navText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"],
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 1
        },
        1000: {
            items: 1
        }
    }
});