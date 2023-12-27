<?php
global $tmpl;
$tmpl->addStylesheet('home', 'modules/blog/assets/css');
$tmpl->addScript('main', 'modules/blog/assets/js');
if (!empty($list)) {
?>

    <!-- Section home -->
    <section class="box-banner">
        <img src="templates/default/images/cauvang2.png" alt="" />
        <div class="filter-bg"></div>
        <div class="wrap title-banner">
            <h1>Blogs</h1>
            <span>Create your blog pages in seconds!</span>
            <div class="back-page">
                <a href="/">Trang chủ</a>
                <a>Bài viết</a>
            </div>
        </div>
    </section>

    <!-- Section Blog -->

    <section class="box-page-blog">
        <div class="wrap wrap-page-blog">
            <div class="content-page-blog">
                <?php foreach ($blog as $item) { ?>
                    <?php $link = FSRoute::_("index.php?module=blog&view=blog&ccode=" . $item->category_alias . "&code=" . $item->alias . "&id=" . $item->id); ?>
                    <div class="card-page-blog">
                        <div class="img-card-page-blog">
                            <img src="<?php echo URL_ROOT . $item->image; ?>" alt="" />
                        </div>
                        <div class="info-card-page-blog">
                            <div class="info-title">
                                <a href="<?php echo $link ?>">
                                    <h3><?php echo $item->title ?></h3>
                                </a>
                                <span><?php echo date('d', strtotime($item->created_time)); ?>th ,<?php echo date('M', strtotime($item->created_time)); ?></span>
                            </div>
                            <p><?php echo $item->summary ?>
                            </p>
                            <div class="info-view">
                                <div class="author-view">
                                    <span>Đăng bởi <a href=""><?php echo $item->author ?></a></span>
                                    <span><a href="">0 Bình luận</a></span>
                                    <div class="btn-share">
                                        <i class="fa-solid fa-share-nodes share">
                                            <ul>
                                                <li>
                                                    <a href="">
                                                        <i class="fa-brands fa-facebook-f"></i>
                                                        <span>Chia sẻ</span>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a href="">
                                                        <i class="fa-brands fa-twitter"></i>
                                                        <span>Tweet</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </i>
                                    </div>
                                </div>
                                <div class="btn-view">
                                    <button>
                                        <a href="../view/detailBlog.html">
                                            <span>Xem thêm</span>
                                            <i class="fa-solid fa-chevron-right"></i>
                                        </a>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
                <div class="card-page-blog">
                    <div class="img-card-page-blog">
                        <img src="../images/nhatrang4.jpg" alt="" />
                    </div>
                    <div class="info-card-page-blog">
                        <div class="info-title">
                            <a href="../view/detailBlog.html">
                                <h3>Biển Nha Trang đẹp nhất khi đi vào tháng 7 và 8</h3>
                            </a>
                            <span>30th, May</span>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                            enim ad minim veniam, quis nostrud exercitation ullamco laboris
                            nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor…
                        </p>
                        <div class="info-view">
                            <div class="author-view">
                                <span>Đăng bởi <a href="">Ngoc</a></span>
                                <span><a href="">0 Bình luận</a></span>
                                <div class="btn-share">
                                    <i class="fa-solid fa-share-nodes share">
                                        <ul>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-facebook-f"></i>
                                                    <span>Chia sẻ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-twitter"></i>
                                                    <span>Tweet</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </i>
                                </div>
                            </div>
                            <div class="btn-view">
                                <button>
                                    <a href="../view/detailBlog.html">
                                        <span>Xem thêm</span>
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-page-blog">
                    <div class="img-card-page-blog slide-img-page-blog">
                        <div class="img-page-blog">
                            <img src="../images/ninhbinh3.jpg" alt="" />
                        </div>
                    </div>
                    <div class="info-card-page-blog">
                        <div class="info-title">
                            <a href="../view/detailBlog.html">
                                <h3>Vịnh Hạ Long - Đi để trở về</h3>
                            </a>
                            <span>30th, May</span>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                            enim ad minim veniam, quis nostrud exercitation ullamco laboris
                            nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor…
                        </p>
                        <div class="info-view">
                            <div class="author-view">
                                <span>Đăng bởi <a href="">Ngoc</a></span>
                                <span><a href="">0 Bình luận</a></span>
                                <div class="btn-share">
                                    <i class="fa-solid fa-share-nodes share">
                                        <ul>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-facebook-f"></i>
                                                    <span>Chia sẻ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-twitter"></i>
                                                    <span>Tweet</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </i>
                                </div>
                            </div>
                            <div class="btn-view">
                                <button>
                                    <a href="../view/detailBlog.html">
                                        <span>Xem thêm</span>
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-page-blog">
                    <div class="img-card-page-blog">
                        <img src="../images/hoguom1.jpg" alt="" />
                    </div>
                    <div class="info-card-page-blog">
                        <div class="info-title">
                            <a href="../view/detailBlog.html">
                                <h3>Vịnh Hạ Long - Đi để trở về</h3>
                            </a>
                            <span>30th, May</span>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                            enim ad minim veniam, quis nostrud exercitation ullamco laboris
                            nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor…
                        </p>
                        <div class="info-view">
                            <div class="author-view">
                                <span>Đăng bởi <a href="">Ngoc</a></span>
                                <span><a href="">0 Bình luận</a></span>
                                <div class="btn-share">
                                    <i class="fa-solid fa-share-nodes share">
                                        <ul>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-facebook-f"></i>
                                                    <span>Chia sẻ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-twitter"></i>
                                                    <span>Tweet</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </i>
                                </div>
                            </div>
                            <div class="btn-view">
                                <button>
                                    <a href="../view/detailBlog.html">
                                        <span>Xem thêm</span>
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-page-blog">
                    <div class="img-card-page-blog">
                        <img src="../images/halong.jpg" alt="" />
                    </div>
                    <div class="info-card-page-blog">
                        <div class="info-title">
                            <a href="../view/detailBlog.html">
                                <h3>Vịnh Hạ Long - Đi để trở về</h3>
                            </a>
                            <span>30th, May</span>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                            enim ad minim veniam, quis nostrud exercitation ullamco laboris
                            nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor…
                        </p>
                        <div class="info-view">
                            <div class="author-view">
                                <span>Đăng bởi <a href="">Ngoc</a></span>
                                <span><a href="">0 Bình luận</a></span>
                                <div class="btn-share">
                                    <i class="fa-solid fa-share-nodes share">
                                        <ul>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-facebook-f"></i>
                                                    <span>Chia sẻ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-twitter"></i>
                                                    <span>Tweet</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </i>
                                </div>
                            </div>
                            <div class="btn-view">
                                <button>
                                    <a href="../view/detailBlog.html">
                                        <span>Xem thêm</span>
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-page-blog">
                    <div class="img-card-page-blog">
                        <img src="../images/ruongbacthang4k.jpg" alt="" />
                    </div>
                    <div class="info-card-page-blog">
                        <div class="info-title">
                            <a href="../view/detailBlog.html">
                                <h3>Vịnh Hạ Long - Đi để trở về</h3>
                            </a>
                            <span>30th, May</span>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                            enim ad minim veniam, quis nostrud exercitation ullamco laboris
                            nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor…
                        </p>
                        <div class="info-view">
                            <div class="author-view">
                                <span>Đăng bởi <a href="">Ngoc</a></span>
                                <span><a href="">0 Bình luận</a></span>
                                <div class="btn-share">
                                    <i class="fa-solid fa-share-nodes share">
                                        <ul>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-facebook-f"></i>
                                                    <span>Chia sẻ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-twitter"></i>
                                                    <span>Tweet</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </i>
                                </div>
                            </div>
                            <div class="btn-view">
                                <button>
                                    <a href="../view/detailBlog.html">
                                        <span>Xem thêm</span>
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-page-blog">
                    <div class="img-card-page-blog">
                        <img src="../images/dalat3.jpg" alt="" />
                    </div>
                    <div class="info-card-page-blog">
                        <div class="info-title">
                            <a href="../view/detailBlog.html">
                                <h3>Vịnh Hạ Long - Đi để trở về</h3>
                            </a>
                            <span>30th, May</span>
                        </div>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                            eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                            enim ad minim veniam, quis nostrud exercitation ullamco laboris
                            nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor…
                        </p>
                        <div class="info-view">
                            <div class="author-view">
                                <span>Đăng bởi <a href="">Ngoc</a></span>
                                <span><a href="">0 Bình luận</a></span>
                                <div class="btn-share">
                                    <i class="fa-solid fa-share-nodes share">
                                        <ul>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-facebook-f"></i>
                                                    <span>Chia sẻ</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="">
                                                    <i class="fa-brands fa-twitter"></i>
                                                    <span>Tweet</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </i>
                                </div>
                            </div>
                            <div class="btn-view">
                                <button>
                                    <a href="../view/blog.html">
                                        <span>Xem thêm</span>
                                        <i class="fa-solid fa-chevron-right"></i>
                                    </a>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="select-blog">
                <!-- <div class="search-blog">
            <input type="text" placeholder="Tìm..." />
            <button>
              <i class="fa-solid fa-magnifying-glass"></i>
            </button>
          </div> -->
                <div class="nav-select-blog">
                    <ul class="nav-blog">
                        <li>
                            <span class="show-select open">
                                <p>Bài viết gần đây</p>
                                <i class="fa-solid fa-chevron-right"></i>
                            </span>
                            <ul class="drop-nav-blog nav-tour-blog">
                                <li>
                                    <a href="../view/detailBlog.html"> Biển Nha Trang - hòn ngọc viễn Đông </a>
                                </li>
                                <li>
                                    <a href="../view/detailBlog.html"> Luxury Tours in Bahamas </a>
                                </li>
                                <li>
                                    <a href="../view/detailBlog.html"> Amazing Tips for Tour Guides </a>
                                </li>
                                <li>
                                    <a href="../view/detailBlog.html"> Top Tour Destination of 2023 </a>
                                </li>
                            </ul>
                        </li>
                        <!-- <li>
                <span class="show-select open">
                  <p>Blog Tags</p>
                  <i class="fa-solid fa-chevron-right"></i>
                </span>
                <ul class="drop-nav-blog nav-icon-blog">
                  <li>
                    <a href="">
                      <i class="fa-solid fa-person-snowboarding"></i>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <i class="fa-solid fa-city"></i>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <i class="fa-solid fa-crosshairs"></i>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <i class="fa-solid fa-person-biking"></i>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <i class="fa-solid fa-sailboat"></i>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <i class="fa-solid fa-person-swimming"></i>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <i class="fa-solid fa-hippo"></i>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <i class="fa-solid fa-person-snowboarding"></i>
                    </a>
                  </li>
                  <li>
                    <a href="">
                      <i class="fa-solid fa-umbrella-beach"></i>
                    </a>
                  </li>
                </ul>
              </li> -->
                        <li>
                            <span class="show-select open">
                                <p>Ảnh</p>
                                <i class="fa-solid fa-chevron-right"></i>
                            </span>
                            <ul class="drop-nav-blog nav-img-blog">
                                <li>
                                    <a href="templates/default/images/hoguom.jpg" data-fancybox="gallery">
                                        <img src="templates/default/images/hoguom.jpg" alt="" />
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
        </div>
    </section>
<?php } ?>