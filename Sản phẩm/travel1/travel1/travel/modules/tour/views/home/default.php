<?php
global $tmpl;
$tmpl->addStylesheet('home', 'modules/tour/assets/css');
$tmpl->addScript('detail', 'modules/tour/assets/js');
if (!empty($list)) {
?>


    <!-- Section home -->
    <section class="box-banner">
        <img src="templates/default/images/nhatrang4.jpg" alt="" />
        <div class="filter-bg"></div>
        <div class="wrap title-banner">
            <h1>Tours Du lịch</h1>
            <span>The Best for Destination VN</span>
            <div class="back-page">
                <a href="/">Trang chủ</a>
                <a>Tours</a>
            </div>
        </div>
    </section>

    <!-- Section page tours -->

    <section class="box-tourPage">
        <div class="wrap wrap-tourPage">
            <div class="search-tour" id="search-tour">
                <h3>Lọc thông tin</h3>
                <div class="search-input">
                    <input type="text" id="find-tour" placeholder="Nhập từ khóa..." onkeyup="find()" />
                    <i class="fa-regular fa-magnifying-glass"></i>
                </div>
                <div class="find">
                    <h3>Thẻ địa điểm</h3>
                    <div class="search-btnName">
                        <button class="active" data-name="all">Tất cả</button>
                        <?php foreach ($tour_ct as $item) { ?>
                            <button data-name="<?php echo $item->alias ?>"><?php echo $item->name ?></button>
                        <? } ?>
                    </div>
                </div>
                <div class="find">
                    <h3>Giá tiền</h3>
                    <div class="search-btnPrice">
                        <button class="active-price" data-price="all">Tất cả</button>
                        <!-- short - medium - high -->
                        <button data-price="short">
                            <i class="fa-light fa-angle-left"></i>
                            5tr
                        </button>
                        <button data-price="medium">5-8tr</button>
                        <button data-price="high">
                            <i class="fa-light fa-angle-right"></i>
                            8tr
                        </button>
                    </div>
                </div>
                <div class="find">
                    <h3>Sắp xếp</h3>
                    <div class="arrange">
                        <select name="" id="sort">
                            <option value="0">---Sắp xếp theo---</option>
                            <option value="1">Giá thấp - cao</option>
                            <option value="2">Giá cao - thấp</option>
                        </select>
                    </div>
                </div>
                <form method="post" action="#" name="contact" class="form" enctype="multipart/form-data">
                    <select name="year" id="year" class="find">
                        <option value=""><?php echo FSText::_('---Tất cả---') ?></option>
                        <?php foreach ($list_year as $val) { ?>
                            <option <?php echo $year == date('Y-m-d', strtotime($val->created_time)) ? 'selected' : null ?> value="<?php echo date('Y-m-d', strtotime($val->created_time)) ?>"> <?php echo date('Y-m-d', strtotime($val->created_time))  ?></option>
                        <?php } ?>
                    </select>

                    <button type="submit"><?php echo FSText::_('Search') ?></button>
                    <input type="hidden" name="module" value="tour" />
                    <input type="hidden" name="view" value="home" />
                    <input type="hidden" name="task" value="search" />
                </form>
            </div>
            <div class="list-tour">
                <div class="title-list-tour">
                    <div class="btn-boxFilter" id="btn-boxFilter">
                        <i class="fa-light fa-filter-list"></i>
                        <i class="fa-solid fa-filter-list"></i>
                    </div>
                    <h2>Tour du lịch</h2>
                </div>
                <div class="grid-filter" id="btn-grid">
                    <i class="fa-regular fa-grid"></i>
                    <i class="fa-regular fa-list"></i>
                </div>
                <div class="list-post" id="list-tour">
                    <?php foreach ($tour as $val) { ?>
                        <?php $link = FSRoute::_("index.php?module=tour&view=tour&ccode=" . $val->category_alias . "&code=" . $val->alias . "&id=" . $val->id); ?>
                        <div class="post-card" data-name="<?php echo $val->category_alias ?>" data-price="<?php echo $val->type_price ?>">
                            <div class="img-card">
                                <img src="<?php echo URL_ROOT . $val->image ?>" alt="" />
                            </div>
                            <div class="content-card">
                                <div class="title-card">
                                    <h3>
                                        <a href="<?php echo $link ?>"><?php echo $val->title ?> </a>
                                    </h3>
                                    <div class="info-card">
                                        <div class="time-tour">
                                            <i class="fa-regular fa-timer"></i>
                                            <p>Ngày khởi hành:</p>
                                            <p><?php echo date('d/m/Y', strtotime($val->created_time)); ?></p>
                                        </div>
                                        <div class="location-tour">
                                            <i class="fa-regular fa-location-dot"></i>
                                            <p>Địa điểm:</p>
                                            <p><?php echo $val->category_name ?></p>
                                        </div>
                                        <div class="tag-tour">
                                            <i class="fa-regular fa-tag"></i>
                                            <!-- <span>Hồ Hoàn Kiếm, Hà Nội</span> -->
                                            <span><?php echo $val->dia_diem ?></span>
                                        </div>
                                    </div>
                                    <div class="people">
                                        <i class="fa-light fa-users"></i>
                                        <span><?php echo $val->people ?></span>
                                    </div>
                                </div>
                                <div class="info-book">
                                    <div class="eval-tour">
                                        <div class="price-tour">Giá<span><?php echo $val->cost_new ?>₫</span></div>
                                        <div class="rate-tour">
                                            <div class="vote-star">
                                                <i class="fa-sharp fa-solid fa-star"></i>
                                                <i class="fa-sharp fa-solid fa-star"></i>
                                                <i class="fa-sharp fa-solid fa-star"></i>
                                                <i class="fa-sharp fa-solid fa-star"></i>
                                                <i class="fa-sharp fa-solid fa-star"></i>
                                            </div>
                                            <div class="number-rate">
                                                <span>(<?php echo $val->review ?> đánh giá)</span>
                                            </div>
                                        </div>
                                    </div>
                                    <button class="btn-book">
                                        <a href="<?php echo $link ?>"> Đặt ngay </a>
                                    </button>
                                </div>
                            </div>
                        </div>
                    <? } ?>

                </div>
            </div>
        </div>
    </section>
<?php } ?>