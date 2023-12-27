<?php
global $config, $tmpl, $device;
$tmpl->addStylesheet('home', 'modules/about_us/assets/css');
// $tmpl->addStylesheet('owl.carousel.min', 'libraries/OwlCarousel2/dist/assets');
// $tmpl->addStylesheet('owl.theme.default.min', 'libraries/OwlCarousel2/dist/assets');
// $tmpl->addScript('owl.carousel.min', 'libraries/OwlCarousel2/dist');
$tmpl->addScript('default', 'modules/about_us/assets/js');
// if (!empty($list)) 
$url = URL_ROOT . $str = ltrim($_SERVER['REQUEST_URI'], '/');
// echo $url;die;
{
?>

    <!-- Section home -->
    <section class="box-banner">
        <img src="templates/default/images/dalat.jpg" alt="" />
        <div class="filter-bg"></div>
        <div class="wrap title-banner">
            <h1>About us</h1>
            <span>The Best for Our Customers</span>
            <div class="back-page">
                <a href="/">Trang chủ</a>
                <a>Giới thiệu</a>
            </div>
        </div>
    </section>

    <!-- Section about us -->

    <?php echo $config['gioi_thieu'] ?>
<?php } ?>