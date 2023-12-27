<?php
global $tmpl, $config;
$tmpl->addScript2('https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js');
$tmpl->addStylesheet('detail', 'modules/destination/assets/css');
// $tmpl->addScript('jquery.toc', 'modules/news/assets/js');
$tmpl->addScript('detail', 'modules/destination/assets/js');

$tmpl->addStylesheet2('https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css');
$tmpl->setMeta('og:image', URL_ROOT . $data->image);
?>

<!-- Section home -->
<section class="box-banner">
    <img src="templates/default/images/nhatrang4.jpg" alt="" />
    <div class="filter-bg"></div>
    <div class="wrap title-banner">
        <h1>Chi tiết địa điểm</h1>
        <span>Create your blog pages in seconds!</span>
        <div class="back-page">
            <a href="/">Trang chủ</a>
            <a href="destination.html">Địa điểm</a>
            <a>Chi tiết địa điểm</a>
        </div>
    </div>
</section>

<section class="box-page-blog">
    <div class="wrap wrap-page-blog">
        <div class="content-page-blog">
            <h3><?php echo $data->title ?></h3>
            <p><?php echo $data->summary ?></p>
            <div class="img-post">
                <?php echo $data->content ?>
            </div>
        </div>
        <div class="select-blog">
            <!-- <div class="search-blog">
                        <input type="text" placeholder="Search...">
                        <button>
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </div> -->
            <div class="nav-select-blog">
                <ul class="nav-blog">
                    <li>
                        <span class="show-select open">
                            <p>Bài viết khác</p>
                            <i class="fa-solid fa-chevron-right"></i>
                        </span>
                        <ul class="drop-nav-blog nav-tour-blog">
                            <!-- <?php foreach ($category as $item) { ?>
                                <?php $link = FSRoute::_("index.php?module=destination&view=destination&ccode=" . $item->category_alias . "&code=" . $item->alias . "&id=" . $item->id); ?>
                                <li>
                                    <a href="<?php echo $link ?>"><?php echo $item->title ?></a>
                                </li>
                            <?php } ?> -->
                            <li>
                                <a href=""> Hà Nội - thủ đô ngàn năm văn hiến </a>
                            </li>
                            <li>
                                <a href=""> Sapa - Phố núi trong sương </a>
                            </li>
                            <li>
                                <a href=""> Tràng An - Hạ Long trên cạn </a>
                            </li>
                            <li>
                                <a href=""> Phố cổ Hội An </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <span class="show-select open">
                            <p>Gallery</p>
                            <i class="fa-solid fa-chevron-right"></i>
                        </span>
                        <ul class="drop-nav-blog nav-img-blog">
                            <li>
                                <a href="templates/default/images/nhatrang4.jpg" data-fancybox="gallery">
                                    <img src="templates/default/images/nhatrang4.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="templates/default/images/halong4.jpg" data-fancybox="gallery">
                                    <img src="templates/default/images/halong4.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="templates/default/images/sapa2.jpg" data-fancybox="gallery">
                                    <img src="templates/default/images/sapa2.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="templates/default/images/dalat.jpg" data-fancybox="gallery">
                                    <img src="templates/default/images/dalat.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="templates/default/images/hohoankiem.jpg" data-fancybox="gallery">
                                    <img src="templates/default/images/hohoankiem.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="templates/default/images/hagiang2.jpg" data-fancybox="gallery">
                                    <img src="templates/default/images/hagiang2.jpg" alt="" />
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <button class="btn-cssbuttons">
            <span>Button</span><span>
                <svg height="18" width="18" xmlns="http://www.w3.org/2000/svg" version="1.1" viewBox="0 0 1024 1024" class="icon">
                    <path fill="#ffffff" d="M767.99994 585.142857q75.995429 0 129.462857 53.394286t53.394286 129.462857-53.394286 129.462857-129.462857 53.394286-129.462857-53.394286-53.394286-129.462857q0-6.875429 1.170286-19.456l-205.677714-102.838857q-52.589714 49.152-124.562286 49.152-75.995429 0-129.462857-53.394286t-53.394286-129.462857 53.394286-129.462857 129.462857-53.394286q71.972571 0 124.562286 49.152l205.677714-102.838857q-1.170286-12.580571-1.170286-19.456 0-75.995429 53.394286-129.462857t129.462857-53.394286 129.462857 53.394286 53.394286 129.462857-53.394286 129.462857-129.462857 53.394286q-71.972571 0-124.562286-49.152l-205.677714 102.838857q1.170286 12.580571 1.170286 19.456t-1.170286 19.456l205.677714 102.838857q52.589714-49.152 124.562286-49.152z"></path>
                </svg>
            </span>
            <ul>
                <li>
                    <a href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fparse.com" target="_blank">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>
                </li>
                <li>
                    <a href="" target="_blank">
                        <i class="fa-brands fa-instagram"></i>
                    </a>
                </li>
                <li>
                    <a href="" target="_blank">
                        <i class="fa-brands fa-twitter"></i>
                    </a>
                </li>
            </ul>
        </button>
    </div>
</section>