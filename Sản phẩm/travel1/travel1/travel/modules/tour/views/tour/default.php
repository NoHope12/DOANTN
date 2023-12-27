<?php
global $tmpl, $config;
$tmpl->addStylesheet('detail', 'modules/tour/assets/css');
$tmpl->addScript('main', 'modules/tour/assets/js');
// $tmpl->addScript('detail', 'modules/tour/assets/js');
$tmpl->setMeta('og:image', URL_ROOT . $data->image);
?>
<section class="box-detail-tour">
    <div class="wrap-detail-tour">
        <div class="img-detail-tour">
            <img src="<?php echo URL_ROOT . $data->image ?>" alt="">
        </div>
        <div class="book-detail-tour">
            <div class="title-detail-tour">
                <h1><?php echo $data->title ?></h1>
                <span>Chỉ từ</span>
                <div class="price-tour">
                    <div class="price">
                        <h3><span class="discount-price"><?php echo $data->cost_old ?></span><span>$<?php echo $data->cost_new ?></span></h3>
                    </div>
                </div>
                <p><?php echo $data->summary ?></p>
            </div>
            <div class="content-detail-tour">
                <div class="card-detail-tour">
                    <div class="left-card">
                        <h3>Đánh giá</h3>
                        <p><span><?php echo $datta->review ?></span> Đánh giá</p>
                    </div>
                    <div class="right-card">
                        <div class="icon-detail-tour icon-star">
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                            <i class="fa-solid fa-star"></i>
                        </div>
                        <div class="rate">
                            <span>4/5</span>
                        </div>
                    </div>
                </div>
                <div class="card-detail-tour">
                    <div class="left-card">
                        <h3>Ngày khởi hành</h3>
                        <p>Ngày</p>
                    </div>
                    <div class="right-card">
                        <div class="icon-detail-tour icon-service">
                            <i class="fa-regular fa-calendar-days"></i>
                        </div>
                        <div class="rate ">
                            <span><?php echo date('d/m/Y', strtotime($data->created_time)); ?></span>
                        </div>
                    </div>
                </div>
                <div class="card-detail-tour">
                    <div class="left-card">
                        <h3>Loại tour</h3>
                        <p>loại</p>
                    </div>
                    <div class="right-card">
                        <div class="icon-detail-tour icon-metter">
                            <i class="fa-regular fa-mountain-sun"></i>
                        </div>
                        <div class="rate">
                            <span><?php echo $data->loai ?></span>
                        </div>
                    </div>
                </div>
                <div class="card-detail-tour">
                    <div class="left-card">
                        <h3>Số lượng người</h3>
                        <p>số lượng</p>
                    </div>
                    <div class="right-card">
                        <div class="icon-detail-tour icon-group">
                            <i class="fa-regular fa-people-group"></i>
                        </div>
                        <div class="rate rate-star">
                            <span><?php echo $data->people ?></span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="btn-book-tour">
                <a href="https://booking-guarantee.com/Home/SelectDate?hotelKey=IIT&lang=en&currency=USD" class="hvr-shutter-in-horizontal">
                    Đặt tour
                </a>
            </div>
            <div class="icon-view-detail">
                <div class="icon-network">
                    <a href="">
                        <i class="fa-brands fa-facebook-f"></i>
                        <span>Share</span>
                    </a>
                </div>
                <div class="icon-network">
                    <a href="">
                        <i class="fa-brands fa-twitter"></i>
                        <span>Tweet</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Section info-detail-tour -->

<section class="box-info-detail">
    <div class="nav-info-detail">
        <div class="wrap wrap-tab-info">
            <div class="tab-item active">
                <span>Tổng quan</span>
            </div>
            <div class="tab-item">
                <span>Lịch trình</span>
            </div>
            <div class="tab-item">
                <span>Chỗ ở</span>
            </div>
            <div class="tab-item">
                <span>FAQs & Reviews</span>
            </div>
            <div class="tab-item">
                <span>Ảnh</span>
            </div>
            <!-- <div class="tab-item">
                        <span>Ngày & giá</span>
                    </div> -->
        </div>
    </div>
    <div class="wrap wrap-info-detail">
        <div class="tab-info-detail active">

            <div class="info-detail-left">
                <div class="title-info-detail">
                    <h3>Giới thiệu về tour</h3>
                </div>
                <?php echo $data->content ?>
            </div>
            <div class="info-detail-right">
                <div class="title-info-detail">
                    <h3>Các gói bao gồm và loại trừ</h3>
                </div>
                <div class="content-info-detail">
                    <div class="card-content">
                        <div class="text-card">
                            <div class="icon-card">
                                <i class="fa-regular fa-cowbell-circle-plus"></i>
                            </div>
                            <h3>Những gì được bao gồm trong tour du lịch này?</h3>
                            <span>Các hạng mục đã bao gồm trong giá tour.</span>
                            <hr>
                            <p>Trong tour du lịch, các hạng mục thường được sử dụng để chỉ những dịch vụ, tiện ích hoặc chi phí không bao gồm trong gói tour của bạn. Những hạng mục thường có thể khác nhau tùy thuộc vào nhà tổ chức tour, điểm đến và loại hình tour du lịch. Dưới đây là một số hạng mục loại trừ phổ biến trong tour du lịch:
                            </p>
                            <p><span>&#10003</span>Tất cả bữa sáng, bữa trưa và bữa tối & ăn tối</p>
                            <p><span>&#10003</span>Tất cả các vé vào cửa, tham quan</p>
                            <p><span>&#10003</span>Tất cả các phương tiện vận chuyển bao gồm taxi và xe khách</p>
                            <p><span>&#10003</span>Hướng dẫn du lịch và trekking suốt hành trình</p>
                        </div>
                        <div class="text-card">
                            <div class="icon-card">
                                <i class="fa-regular fa-eraser"></i>
                            </div>
                            <h3>Những gì được loại trừ trong tour du lịch này?</h3>
                            <span>Các hạng mục đã bao gồm trong giá tour.</span>
                            <hr>
                            <p>Trong tour du lịch, các hạng mục loại trừ thường được sử dụng để chỉ những dịch vụ, tiện ích hoặc chi phí không bao gồm trong gói tour của bạn. Những hạng mục loại trừ thường có thể khác nhau tùy thuộc vào nhà tổ chức tour, điểm đến và loại hình tour du lịch. Dưới đây là một số hạng mục loại trừ phổ biến trong tour du lịch:
                            </p>
                            <p><span>&#10005</span>Tất cả dịch vụ về vận chuyển nội địa</p>
                            <p><span>&#10005</span>Tất cả chỗ ở bao gồm cả quán trà trên đường đi</p>
                            <p><span>&#10005</span>Vé máy bay</p>
                            <p><span>&#10005</span>Các dịch vụ ngoài danh mục</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-info-detail">
            <div class="info-detail-left">
                <?php echo $data->lich_trinh ?>
            </div>
            <div class="info-detail-right">
                <div class="img-info-detail">
                    <img src="templates/default/images/nhatrang4.jpg" alt="">
                    <div class="img-text-info">
                        <a href="">
                            <p>Memorable Time</p>
                        </a>
                        <span>Save these memories for life.</span>
                    </div>
                </div>
                <div class="img-info-detail">
                    <img src="templates/default/images/nhatrang3.jpg" alt="">
                    <div class="img-text-info">
                        <a href="">
                            <p>Your chance to be in nature</p>
                        </a>
                        <span>This is what we call the mountain is calling and I must go!</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-info-detail">
            <div class="info-detail-left">
                <div class="title-info-detail">
                    <h3>Khách sạn, nhà nghỉ và nhà hàng</h3>
                </div>
                <?php echo $data->cho_o ?>
            </div>
            <div class="info-detail-right">
                <div class="title-info-detail">
                    <h3>Hình ảnh Khách sạn, nhà nghỉ và nhà hàng</h3>
                </div>
                <div class="img-info-detail">
                    <img src="templates/default/images/phocohoian5.jpg" alt="">
                    <div class="img-text-info">
                        <a href="">
                            <p>Memorable Time</p>
                        </a>
                        <span>Save these memories for life.</span>
                    </div>
                </div>
                <div class="img-info-detail">
                    <img src="templates/default/images/phocohoian6.jpg" alt="">
                    <div class="img-text-info">
                        <a href="">
                            <p>Your chance to be in nature</p>
                        </a>
                        <span>This is what we call the mountain is calling and I must go!</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-info-detail">
            <div class="info-detail-left">
                <div class="title-info-detail">
                    <h3>Các hỏi thường gặp</h3>
                </div>
                <?php echo $data->faq ?>
            </div>
            <div class="info-detail-right">
                <div class="title-info-detail">
                    <h3>Đánh giá</h3>
                </div>
                <div class="form-cmt">
                    <div class="user-review">
                        <div class="user-avt">
                            <img src="templates/default/images/logo-pinterest.png" alt="">
                        </div>
                        <div class="user-info">
                            <h3>Vu Bao Ngoc</h3>
                            <span class="user-time">
                                Đánh giá 26/01/2017
                            </span>
                            <p>You have to be crazy about adventure tours to build a theme that displays the
                                tours so elegantly that a person browsing
                                the tours on site literally falls in love with place even before booking the
                                tour.</p>
                        </div>
                        <div class="rating">
                            <div class="icon-detail-tour icon-star">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <div class="rate">
                                <span>4/5</span>
                            </div>
                        </div>
                    </div>
                    <form action="">
                        <h3>Nhận xét của bạn</h3>
                        <div class="form-input">
                            <input type="text" placeholder="Họ tên" required>
                            <input type="email" placeholder="Email" required>
                            <input type="text" placeholder="Hạng tour 1-5" required>
                            <textarea name="" id="" cols="30" rows="8" placeholder="Bình luận của bạn" required></textarea>
                            <button>Gửi</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="tab-info-detail">
            <div class="gallery-detail">
                <?php echo $data->list_img ?>
            </div>
        </div>
        <!-- <div class="tab-info-detail">
                    <table>
                        <tr>
                            <th>
                                <p>Bưu kiện</p>
                                <span>Confirmed Dates</span>
                            </th>
                            <th>
                                <p>Tình trạng chuyến đi</p>
                                <span>Trip Status</span>
                            </th>
                            <th>
                                <p>Giá (PP)</p>
                                <span>Loại trừ chuyến bay</span>
                            </th>
                            <th>
                                <p>Giá (PP)</p>
                                <span>Bao gồm chuyến bay</span>
                            </th>
                            <th></th>
                        </tr>
                        <tr>
                            <td>Aug 1, 2023 - Aug 31, 2023</td>
                            <td>Có sẵn</td>
                            <td>2,300,000&#8363</td>
                            <td>2,300,000&#8363</td>
                            <td><button>Đặt ngay</button></td>
                        </tr>
                        <tr>
                            <td>Sep 1, 2023 - Sep 30, 2023</td>
                            <td>Có sẵn</td>
                            <td>2,300,000&#8363</td>
                            <td>2,300,000&#8363</td>
                            <td><button>Đặt ngay</button></td>
                        </tr>
                        <tr>
                            <td>Oct 1, 2023 - Oct 31, 2023</td>
                            <td>Có sẵn</td>
                            <td>2,300,000&#8363</td>
                            <td>2,300,000&#8363</td>
                            <td><button>Đặt ngay</button></td>

                        </tr>
                        <tr>
                            <td>Nov 1, 2023 - Nov 30, 2023</td>
                            <td>Có sẵn</td>
                            <td>2,300,000&#8363</td>
                            <td>2,300,000&#8363</td>
                            <td><button>Đặt ngay</button></td>
                        </tr>
                        <tr>
                            <td>Aug 1, 2023 - Aug 31, 2023</td>
                            <td>Có sẵn</td>
                            <td>2,300,000&#8363</td>
                            <td>2,300,000&#8363</td>
                            <td><button>Đặt ngay</button></td>

                        </tr>
                        <tr>
                            <td>Dec 1, 2023 - Dec 31, 2023</td>
                            <td>Chưa có</td>
                            <td>2,300,000&#8363</td>
                            <td>2,300,000&#8363</td>
                            <td><button>Đặt ngay</button></td>
                        </tr>
                    </table>
                </div> -->
    </div>
</section>