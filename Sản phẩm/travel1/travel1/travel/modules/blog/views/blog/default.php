<?php
global $tmpl, $config;
$tmpl->addScript2('https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js');
$tmpl->addStylesheet('detail', 'modules/blog/assets/css');
$tmpl->addStylesheet('home', 'modules/blog/assets/css');
// $tmpl->addScript('jquery.toc', 'modules/news/assets/js');
$tmpl->addScript('detail', 'modules/blog/assets/js');

$tmpl->addStylesheet2('https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css');
$tmpl->setMeta('og:image', URL_ROOT . $data->image);
?>

<!-- Section home -->
<section class="box-banner">
    <img src="../images/cauvang2.png" alt="" />
    <div class="filter-bg"></div>
    <div class="wrap title-banner">
        <h1>Blogs</h1>
        <span>Create your blog pages in seconds!</span>
        <div class="back-page">
            <a href="/">Trang chủ</a>
            <a href="blog.html">Bài viết</a>
            <a>Chi tiết bài viết</a>
        </div>
    </div>
</section>

<!-- Section Blog -->

<section class="box-page-blog">
    <div class="wrap wrap-page-blog">
        <div class="content-blog">
            <h1><?php echo $data->title ?></h1>
            <div class="img-view-blog">
                <img src="<?php echo URL_ROOT . $data->image; ?>" alt="" />
            </div>
            <div class="text-view-blog">
                <?php echo $data->content ?>
                <div class="author-view">
                    <p>Đăng bởi <a href=""><?php echo $data->author ?></a></p>
                    <p>
                        <a href=""><span>3</span> Bình luận</a>
                    </p>
                    <div class="btn-share">
                        <i class="fa-solid fa-share-nodes share">
                            <ul>
                                <li>
                                    <a href="">
                                        <i class="fa-brands fa-facebook-f"></i>
                                        <span>Share</span>
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
                        <i class="fa-solid fa-chevron-left"></i>
                        Trước
                    </button>
                    <button>
                        Sau
                        <i class="fa-solid fa-chevron-right"></i>
                    </button>
                </div>
            </div>
            <div class="commnet-view-blog">
                <div class="total-cmt">
                    <p><span>3</span> thoughts on “Luxury Tours in Bahamas”</p>
                </div>
                <div class="cmt-detail">
                    <div class="user-avt">
                        <img src="../images/nhatrang2.jpg" alt="" />
                    </div>
                    <div class="user-info">
                        <a href="">
                            <h3>Admin</h3>
                        </a>
                        <p>
                            Ngày bình luận
                            <span class="user-time"> 22/0/2023 - 21:00 </span>
                        </p>
                        <input type="checkbox" id="check-1" />
                        <p>
                            The standard chunk of Lorem Ipsum used since the 1500s is
                            reproduced below for those interested. Sections 1.10.32 and
                            1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are
                            also reproduced in their exact original form, accompanied by
                            English versions from the 1914 translation by H. Rackham.
                        </p>
                        <p class="cmt">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Molestias laborum iste labore est omnis reiciendis sunt minus
                            amet? Ipsam fugiat quo dolorum dolorem molestiae tempora modi
                            sunt reiciendis deserunt. Optio.
                        </p>
                        <div class="react-cmt">
                            <label for="check-1">Xem thêm</label>
                            <span>Phản hồi</span>
                        </div>
                    </div>
                </div>
                <div class="cmt-detail">
                    <div class="user-avt">
                        <img src="../images/nhatrang2.jpg" alt="" />
                    </div>
                    <div class="user-info">
                        <a href="">
                            <h3>Admin</h3>
                        </a>
                        <p>
                            Ngày bình luận
                            <span class="user-time"> 22/0/2023 - 21:00 </span>
                        </p>
                        <input type="checkbox" id="check-2" />
                        <p>
                            The standard chunk of Lorem Ipsum used since the 1500s is
                            reproduced below for those interested. Sections 1.10.32 and
                            1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are
                            also reproduced in their exact original form, accompanied by
                            English versions from the 1914 translation by H. Rackham.
                        </p>
                        <p class="cmt">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Molestias laborum iste labore est omnis reiciendis sunt minus
                            amet? Ipsam fugiat quo dolorum dolorem molestiae tempora modi
                            sunt reiciendis deserunt. Optio.
                        </p>
                        <div class="react-cmt">
                            <label for="check-2">Xem thêm</label>
                            <span>Phản hồi</span>
                        </div>
                    </div>
                </div>
                <div class="cmt-detail">
                    <div class="user-avt">
                        <img src="../images/nhatrang2.jpg" alt="" />
                    </div>
                    <div class="user-info">
                        <a href="">
                            <h3>Admin</h3>
                        </a>
                        <p>
                            Ngày bình luận
                            <span class="user-time"> 22/0/2023 - 21:00 </span>
                        </p>
                        <input type="checkbox" id="check-3" />
                        <p>
                            The standard chunk of Lorem Ipsum used since the 1500s is
                            reproduced below for those interested. Sections 1.10.32 and
                            1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are
                            also reproduced in their exact original form, accompanied by
                            English versions from the 1914 translation by H. Rackham.
                        </p>
                        <p class="cmt">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Molestias laborum iste labore est omnis reiciendis sunt minus
                            amet? Ipsam fugiat quo dolorum dolorem molestiae tempora modi
                            sunt reiciendis deserunt. Optio.
                        </p>
                        <div class="react-cmt">
                            <label for="check-3">Xem thêm</label>
                            <span>Phản hồi</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="sub-reply-cmt">
                <h3 class="sub-rep-user">Bình luận</h3>
                <form class="form-reply">
                    <input type="text" placeholder="Tên của bạn" required />
                    <input type="Email" name="" id="" placeholder="Email" required />
                    <textarea name="" id="" cols="30" rows="10" placeholder="Bình luận"></textarea>
                    <span><input type="checkbox" id="checkbox" readonly />
                        Lưu tên, email của tôi trong trình duyệt này cho phần bình luận
                        tiếp theo.
                    </span>
                    <button>Post your comment</button>
                </form>
            </div>
        </div>
        <div class="select-blog">
            <div class="search-blog">
                <input type="text" placeholder="Search..." />
                <button>
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </div>
            <div class="nav-select-blog">
                <ul class="nav-blog">
                    <li>
                        <span class="show-select">
                            <p>Bài viết khác</p>
                            <i class="fa-solid fa-chevron-right"></i>
                        </span>
                        <ul class="drop-nav-blog nav-tour-blog">
                            <?php foreach ($relate_news_list as $item) { ?>
                                <?php $link = FSRoute::_("index.php?module=blog&view=blog&ccode=" . $item->category_alias . "&code=" . $item->alias . "&id=" . $item->id); ?>
                                <li>
                                    <a href="<?php echo $link ?>"><?php echo $item->title ?></a>
                                </li>
                            <?php } ?>
                        </ul>
                    </li>
                    <li>
                        <span class="show-select">
                            <p>Ảnh</p>
                            <i class="fa-solid fa-chevron-right"></i>
                        </span>
                        <ul class="drop-nav-blog nav-img-blog">
                            <li>
                                <a href="">
                                    <img src="templates/default/images/nhatrang.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="templates/default/images/nhatrang.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="templates/default/images/nhatrang2.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="templates/default/images/nhatrang3.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="templates/default/images/nhatrang4.jpg" alt="" />
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="templates/default/images/nhatrang5.jpg" alt="" />
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>