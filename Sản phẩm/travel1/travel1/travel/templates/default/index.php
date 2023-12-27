<?php
global $config, $tmpl, $module, $user;
$logo = URL_ROOT . $config['logo'];
$Itemid = FSInput::get('Itemid');
$ccode = FSInput::get('ccode');
// $tmpl->addScript('main');
$tmpl->addStylesheet('style');
$tmpl->addStylesheet('about');
$tmpl->addStylesheet2('https://site-assets.fontawesome.com/releases/v6.1.2/css/all.css');
$tmpl->addStylesheet2('https://fonts.googleapis.com');
$tmpl->addStylesheet2('https://fonts.gstatic.com');
$tmpl->addStylesheet2('https://fonts.googleapis.com/css2?family=Inter:wght@200;300;400;500;600;700;800;900&display=swap');
$tmpl->addStylesheet2('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap');
$tmpl->addStylesheet2('https://fonts.cdnfonts.com/css/sattomy');
$tmpl->addStylesheet2('https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css');
$tmpl->addStylesheet2('https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.13/flatpickr.min.css');
$tmpl->addStylesheet2('https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.css');

$tmpl->addScript2('https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js');
$tmpl->addScript2('https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js');
$tmpl->addScript2('https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.13/flatpickr.min.js');
$tmpl->addScript2('https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js');
$tmpl->addScript2('https://unpkg.com/scrollreveal');
$tmpl->addScript('app');
$tmpl->addScript('form');
$tmpl->addScript('library');
$tmpl->addScript('members', 'modules/members/assets/js', 'bottom');
// $tmpl->addScript2('https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js', 'top');
// $tmpl->addScript2('https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js', 'top');
// $tmpl->addScript('main', 'templates/default/js', 'top');
// $tmpl->addStylesheet2('https://site-assets.fontawesome.com/releases/v6.1.2/css/all.css');
// $tmpl->addStylesheet2('https://fonts.googleapis.com');
// $tmpl->addStylesheet2('https://fonts.gstatic.com');
// $tmpl->addStylesheet2('https://fonts.googleapis.com/css2?family=Inter:wght@200;300;400;500;600;700;800;900&display=swap');
// $tmpl->addStylesheet2('https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css');
// $tmpl->addStylesheet('style');
// $tmpl->addStylesheet('about');
?>
<!-- navbar -->

<nav class="box-navbar" id="box-navbar">
    <div class="wrap wrap-navbar">
        <div class="box-logo" id="box-logo">
            <button type="button" id="menu-child">
                <div class="line"></div>
                <div class="line"></div>
                <div class="line"></div>
            </button>
            <a href="/">
                <img src="templates/default/images/logo-VNTRAVEL.png" alt="">
            </a>
        </div>
        <div class="box-menu" id="box-menu">
            <div class="wrap-menu" id="wrap-menu">
                <ul class="menu">
                    <li>
                        <a href="/">
                            Trang chủ
                        </a>
                    </li>
                    <li>
                        <a href="about.html">
                            Giới thiệu
                        </a>
                    </li>
                    <li>
                        <a href="destination.html">
                            Địa điểm
                        </a>
                    </li>
                    <li>
                        <a href="tour.html">
                            Tours
                        </a>
                    </li>
                    <li>
                        <a href="blog.html">
                            Bài viết
                        </a>
                    </li>
                    <li>
                        <a href="gallery.html">
                            Ảnh
                        </a>
                    </li>
                    <li>
                        <a href="contact.html">
                            Liên hệ
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="box-cta">
            <a class="cta-search" id="cta-search">
                <i class="fa-light fa-magnifying-glass"></i>
                <i class="fa-solid fa-magnifying-glass-location"></i>
            </a>
            <a class="cta-user" id="cta-user">
                <i class="fa-light fa-user"></i>
            </a>
            <div class="user-log" id="form-log">
                <?php
                if (!$user->is_loaded()) { ?>
                    <div class="user login">
                        <a href="dang-nhap.html">Đăng nhập</a>
                    </div>
                    <div class="user register">
                        <a href="dang-ky.html">Đăng ký</a>
                    </div>
                <?php } else { ?>
                    <div class="user profile">
                        <a href="trang-ca-nhan.html">Thông tin cá nhân</a>
                    </div>
                    <div class="user logout">
                        <a href="dang-xuat.html">Đăng xuất</a>
                    </div>
                <?php } ?>

            </div>
        </div>
    </div>
</nav>

<!-- Scroll to top -->

<div class="scroll-to-top" id="scroll-to-top">
    <i class="fa-regular fa-angle-down"></i>
</div>



<section>
    <?php echo $main_content; ?>
</section>

<!-- Footer -->

<footer class="box-footer">
    <div class="wrap wrap-footer">
        <div class="logo-company">
            <a href="/">
                <img src="templates/default/images/logo-VNTRAVEL.png" alt="">
            </a>
        </div>
        <div class="list-footer">
            <div class="menu-footer">
                <a href="/">Trang chủ</a>
                <a href="about.html">Về chúng tôi</a>
                <a href="destination.html">Địa điểm</a>
                <a href="tour.html">Tours</a>
                <a href="gallery.html">Thư viện</a>
                <a href="blog.html">Bài viết</a>
            </div>
            <div class="support-footer">
                <span>Support</span>
                <a href="contact.html">Liên hệ chúng tôi</a>
                <a href="#">Our Partner</a>
                <a href="#">Chính sách và bảo mật</a>
                <a href="#">Chính sách hoàn tiền</a>
            </div>
            <div class="contact-footer">
                <span>Contact</span>
                <a href="tel:0387094970">
                    <i class="fa-regular fa-phone"></i>
                    <span>038-709-4970</span>
                </a>
                <a href="mailto:vbngoc211201@gmail.com">
                    <i class="fa-regular fa-envelope"></i>
                    <span>vbngoc211201@gmail.com</span>
                </a>
                <a>
                    <i class="fa-regular fa-location-dot"></i>
                    <span>59 SN, P.Đức Thắng, Q.Bắc Từ Liêm, Hà Nội</span>
                </a>
                <div class="contact-icon">
                    <a href="#">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>
                    <a href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>
                    <a href="#">
                        <i class="fa-brands fa-tiktok"></i>
                    </a>
                    <a href="#">
                        <i class="fa-brands fa-youtube"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
     <div class="footer-wave">
        <div class="wave wave-1"></div>
        <div class="wave wave-2"></div>
        <div class="wave wave-3"></div>
        <div class="wave wave-4"></div>
    </div> 
    <div class="copyright-footer">
        <span>© Copyright 2023 - VN Travel - An Travel Theme - by Vu Bao Ngoc</span>
    </div>
</footer>
<!-- END: #footer -->

<!-- Google tag (gtag.js)
<script async src="https://www.googletagmanager.com/gtag/js?id=G-PMDPD8RL9P"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'G-PMDPD8RL9P');
</script> -->