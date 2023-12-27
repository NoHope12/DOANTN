$(".owl-carousel").owlCarousel({
    loop: true,
    margin: 10,
    nav: true,
    dots: false,
    stagePadding: 100,
    responsive: {
        0: {
            items: 1
        },
        768: {
            stagePadding: 40,
            items: 1
        },
        1000: {
            items: 1
        }
    }
});