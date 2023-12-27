<?php
global $config, $tmpl, $device;
$Itemid = FSInput::get('Itemid', 1, 'int');
$tmpl->addStylesheet('default', 'modules/home/assets/css');
// $tmpl->addScript('default', 'modules/home/assets/js');
$lang = $_SESSION['lang'];
$lang_a = URL_ROOT . $lang;
?>

<!-- Section home -->
<section class="box-home">
    <img src="templates/default/images/moutain1.png" id="moutain1">
    <img src="templates/default/images/moutain2.png" id="moutain2">
    <img src="templates/default/images/person.png" id="person">
    <div class="clouds-1">
        <img src="templates/default/images/cloud1.png" style="--i:1;" class="cloud">
        <img src="templates/default/images/cloud2.png" style="--i:2;" class="cloud">
        <img src="templates/default/images/cloud3.png" style="--i:3;" class="cloud">
        <img src="templates/default/images/cloud4.png" style="--i:4;" class="cloud">
        <img src="templates/default/images/cloud5.png" style="--i:5;" class="cloud">
        <img src="templates/default/images/cloud1.png" style="--i:10;" class="cloud">
        <img src="templates/default/images/cloud2.png" style="--i:9;" class="cloud">
        <img src="templates/default/images/cloud3.png" style="--i:8;" class="cloud">
        <img src="templates/default/images/cloud4.png" style="--i:7;" class="cloud">
        <img src="templates/default/images/cloud5.png" style="--i:6;" class="cloud">
    </div>
    <div class="clouds-2">
        <img src="templates/default/images/cloud1.png" style="--i:1;" class="cloud">
        <img src="templates/default/images/cloud2.png" style="--i:2;" class="cloud">
        <img src="templates/default/images/cloud3.png" style="--i:3;" class="cloud">
        <img src="templates/default/images/cloud4.png" style="--i:4;" class="cloud">
        <img src="templates/default/images/cloud5.png" style="--i:5;" class="cloud">
        <img src="templates/default/images/cloud1.png" style="--i:10;" class="cloud">
        <img src="templates/default/images/cloud2.png" style="--i:9;" class="cloud">
        <img src="templates/default/images/cloud3.png" style="--i:8;" class="cloud">
        <img src="templates/default/images/cloud4.png" style="--i:7;" class="cloud">
        <img src="templates/default/images/cloud5.png" style="--i:6;" class="cloud">
    </div>
    <div class="title" id="title">
        <span>
            Travel
        </span>
        <h1>Viet Nam</h1>
    </div>
    <div class="wrap-form" id="wrap-form">
        <form action="" class="wrap">
            <div class="location">
                <label for="add">Địa điểm</label>
                <select name="add" id="add" required>
                    <option value="0">Địa điểm</option>
                    <option value="1">Hà Nội</option>
                    <option value="2">Ninh Bình</option>
                    <option value="3">Hội An</option>
                    <option value="4">Huế</option>
                    <option value="5">Sapa</option>
                    <option value="6">Nha Trang</option>
                </select>
            </div>
            <div class="depature">
                <label for="depature">
                    Ngày khởi hành
                </label>
                <input type="date" id="depature" placeholder="Ngày khởi hành" required>
            </div>
            <div class="people">
                <label for="pax">Số người</label>
                <input type="text" id="pax" placeholder="0" required>
            </div>
            <button type="submit" class="btn-search">
                Tìm kiếm
            </button>
        </form>
    </div>
    <a href="#box-destination" class="to-scrolldown" style="--color: skyblue">
        <div class="chevrons">
            <div class="chevrondown"></div>
            <div class="chevrondown"></div>
        </div>
    </a>
</section>

<section>
    <?php echo $main_content; ?>
</section>

<!-- Section Detinations -->

<section class="box-destination" id="box-destination">
    <div class="wrap wrap-destination">
        <div class="title-destination" data-aos="fade-down" data-aos-duration="1000">
            <h3>Địa điểm phổ biến</h3>
            <a href="destination.html">
                Xem tất cả
                <i class="fa-solid fa-angle-right"></i>
            </a>
        </div>
        <div class="content-destination" data-aos="fade-up" data-aos-duration="1000">
            <?php foreach ($destination as $item) { ?>
                <?php $link = FSRoute::_("index.php?module=destination&view=destination&ccode=" . $item->category_alias . "&code=" . $item->alias . "&id=" . $item->id); ?>
                <div class="post-destination">
                    <div class="filter-bg"></div>
                    <div class="post-img">
                        <img src="<?php echo URL_ROOT . $item->image ?>" alt="">
                    </div>
                    <div class="filter-black"></div>
                    <div class="post-info">
                        <div class="title-info">
                            <a href="<?php echo $link ?>"><?php echo $item->title ?></a>
                            <span>
                                <i class="fa-regular fa-location-dot"></i>
                                <?php echo $item->category_name ?>
                            </span>
                        </div>
                        <div class="post-react">
                            <div class="info-react">
                                <div class="number-view">
                                    <i class="fa-regular fa-eye"></i>
                                    <span>21</span>
                                </div>
                                <div class="number-share">
                                    <i class="fa-solid fa-share"></i>
                                    <span>12</span>
                                </div>
                            </div>
                            <a href="<?php echo $link ?>">Xem chi tiết<i class="fa-regular fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>

<!-- Section Tours -->

<section class="box-tour">
    <div class="wrap wrap-tour">
        <div class="title-tour" data-aos="fade-down" data-aos-duration="1000">
            <h3>Tour phổ biến</h3>
            <a href="../view/tour.html">
                Xem tất cả
                <i class="fa-solid fa-angle-right"></i>
            </a>
        </div>
        <div class="list-tour slide-tour" data-aos="fade-up" data-aos-duration="1000">
            <?php foreach ($tour as $val) { ?>
                <?php $link = FSRoute::_("index.php?module=tour&view=tour&ccode=" . $val->category_alias . "&code=" . $val->alias . "&id=" . $val->id); ?>
                <div class="card-tour">
                    <a href="<?php echo $link ?>" class="img-card-tour">
                        <img src="<?php echo URL_ROOT . $val->image ?>" alt="">
                    </a>
                    <div class="info-card-tour">
                        <a href="<?php echo $link ?>">
                            <h4><?php echo $val->title ?></h4>
                        </a>
                        <div class="time-tour">
                            <i class="fa-regular fa-timer"></i>
                            <span><?php echo date('d/m/Y', strtotime($val->created_time)); ?></span>
                        </div>
                        <div class="vote-tour">
                            <div class="vote-star">
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                                <i class="fa-sharp fa-solid fa-star"></i>
                            </div>
                            <div class="vote-number">
                                <p>(<span><?php echo $val->review ?></span> Đánh giá)</p>
                            </div>
                        </div>
                        <p><?php echo $val->summary ?></p>

                        <div class="btn-card-tour">
                            <div class="price-tour">
                                <span class="price-old">
                                    <?php echo $val->cost_old ?> &#8363
                                </span>
                                <span class="price-new">
                                    <?php echo $val->cost_new ?> &#8363
                                </span>
                            </div>
                            <button class="btn-view">
                                <a href="<?php echo $link ?>">
                                    <span>Đặt Tour ngay</span>
                                    <i class="fa-regular fa-cart-shopping-fast"></i>
                                </a>
                            </button>
                        </div>
                    </div>
                </div>
            <?php } ?>
        </div>
    </div>
</section>

<!-- Section comment -->

<section class="box-comment">
    <div class="filter-bg"></div>
    <img src="templates/default/images/bg-cmt.jpg" alt="">
    <div class="wrap-comment">
        <div class="title-cmt" data-aos="fade-right" data-aos-duration="1000">
            <span>Đánh giá</span>
            <h2>
                Mọi người nói về chúng tôi
            </h2>
        </div>
        <div class="line"></div>
        <div class="list-cmt" data-aos="fade-up" data-aos-duration="1000">
            <div class="post-cmt">
                <div class="post-content">
                    Tất cả những ai thích đi bộ xung quanh những chuyến đi mới nên sử dụng trang web này để có
                    thêm ý tưởng! bạn bè của tôi
                    và tôi rất thích các tour du lịch của
                    các bạn, được đề nghị và muốn thử một cái gì đó mới vào lần tới. Cảm ơn!
                </div>
                <div class="info-client">
                    <h4>Nami N.</h4>
                    <div class="vote-star">
                        <i class="fa-sharp fa-solid fa-star"></i>
                        <i class="fa-sharp fa-solid fa-star"></i>
                        <i class="fa-sharp fa-solid fa-star"></i>
                        <i class="fa-sharp fa-solid fa-star"></i>
                        <i class="fa-sharp fa-solid fa-star"></i>
                    </div>
                </div>
            </div>
            <div class="post-cmt">
                <div class="post-content">
                    Cảm ơn bạn rất nhiều vì những chuyến đi tuyệt vời và những hướng dẫn thú vị! Chúng tôi yêu
                    thích
                    kỳ nghỉ mà chúng tôi đã thực hiện vào tuần trước.
                    Nó chính xác như chúng tôi tưởng tượng, và thậm chí còn tốt hơn! Rất khuyến khích mọi người
                    dùng VNTravel.
                </div>
                <div class="info-client">
                    <h4>San J.</h4>
                    <div class="vote-star">
                        <i class="fa-sharp fa-solid fa-star-sharp"></i>
                        <i class="fa-sharp fa-solid fa-star-sharp"></i>
                        <i class="fa-sharp fa-solid fa-star-sharp"></i>
                        <i class="fa-sharp fa-solid fa-star-sharp"></i>
                        <i class="fa-sharp fa-solid fa-star-sharp"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Section Blog -->

<section class="box-blog">
    <div class="wrap wrap-blog">
        <div class="title-blog" data-aos="fade-down" data-aos-duration="1000">
            <h3>Bài viết gần đây</h3>
            <a href="../view/blog.html">
                Xem tất cả
                <i class="fa-solid fa-angle-right"></i>
            </a>
        </div>
        <div class="list-blog slide-blog" data-aos="fade-up" data-aos-duration="1000">
            <div class="post-blog">
                <div class="img-post-blog">
                    <img src="templates/default/images//ninhbinh2.jpeg" alt="">
                </div>
                <div class="info-post-blog">
                    <a href="#" class="title-info-blog">
                        Change your place and get the fresh air
                    </a>
                    <div class="author-blog">
                        <p class="name-author-blog">
                            By<span>Admin</span>
                        </p>
                        <p class="date-blog">24/05/2023</p>
                    </div>
                    <div class="btn-view">
                        <a href="#">
                            Xem bài viết
                            <i class="fa-solid fa-angle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="post-blog">
                <div class="img-post-blog">
                    <img src="templates/default/images//phocohoian4.jpg" alt="">
                </div>
                <div class="info-post-blog">
                    <a href="#" class="title-info-blog">
                        Change your place and get the fresh air
                    </a>
                    <div class="author-blog">
                        <p class="name-author-blog">
                            By<span>Admin</span>
                        </p>
                        <p class="date-blog">24/05/2023</p>
                    </div>
                    <div class="btn-view">
                        <a href="#">
                            Xem bài viết
                            <i class="fa-solid fa-angle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="post-blog">
                <div class="img-post-blog">
                    <img src="templates/default/images//nhatrang3.jpg" alt="">
                </div>
                <div class="info-post-blog">
                    <a href="#" class="title-info-blog">
                        Change your place and get the fresh air
                    </a>
                    <div class="author-blog">
                        <p class="name-author-blog">
                            By<span>Admin</span>
                        </p>
                        <p class="date-blog">24/05/2023</p>
                    </div>
                    <div class="btn-view">
                        <a href="#">
                            Xem bài viết
                            <i class="fa-solid fa-angle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="post-blog">
                <div class="img-post-blog">
                    <img src="templates/default/images//ninhbinh2.jpeg" alt="">
                </div>
                <div class="info-post-blog">
                    <a href="#" class="title-info-blog">
                        Change your place and get the fresh air
                    </a>
                    <div class="author-blog">
                        <p class="name-author-blog">
                            By<span>Admin</span>
                        </p>
                        <p class="date-blog">24/05/2023</p>
                    </div>
                    <div class="btn-view">
                        <a href="#">
                            Xem bài viết
                            <i class="fa-solid fa-angle-right"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Section Partner -->

<section class="box-partner">
    <div class="wrap wrap-partner">
        <div class="title-partner" data-aos="fade-down" data-aos-duration="1000">
            <h3>Đối tác của chúng tôi</h3>
        </div>
        <div class="list-partner slide-partner" data-aos="fade-up" data-aos-duration="1000">
            <?php foreach ($partners as $pas) { ?>
                <div class="logo-partner">
                    <img src="<?php echo URL_ROOT . $pas->image ?>" alt="">
                </div>
            <?php } ?>
        </div>
    </div>
</section>