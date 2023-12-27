<?php
global $tmpl;
$tmpl->addStylesheet('home', 'modules/destination/assets/css');
$tmpl->addScript('main', 'modules/destination/assets/js');
if (!empty($list)) {
?>

    <!-- Section home -->
    <section class="box-banner">
        <img src="templates/default/images/halong1.jpg" alt="" />
        <div class="filter-bg"></div>
        <div class="wrap title-banner">
            <h1>Địa điểm</h1>
            <span>The Best for Destination VN</span>
            <div class="back-page">
                <a href="/">Trang chủ</a>
                <a>Địa điểm</a>
            </div>
        </div>
    </section>

    <!-- Section page destination -->

    <section class="box-destinationPage">
        <div class="wrap wrap-destinationPage">
            <div class="title-destinationPage">
                <h3>Tìm điểm đến của bạn</h3>
            </div>
            <div class="search-change" id="search-change">
                <div class="btn-boxSearch" id="btn-boxSearch">
                    <i class="fa-regular fa-bars-sort"></i>
                </div>
                <div class="list-search">
                    <div class="btn-filter">
                        <button class="active" data-name="all">Tất cả</button>
                        <?php foreach ($list_cat as $val) { ?>
                            <button data-name="<?php echo $val->alias ?>"><?php echo $val->name ?></button>
                        <?php } ?>
                        <!-- <button data-name="hanoi">Hà Nội</button>
                        <button data-name="haiphong">Hạ Long Bay</button>
                        <button data-name="sapa">Sapa</button>
                        <button data-name="ninhbinh">Ninh Bình</button>
                        <button data-name="hoian"> Hội An</button> -->
                    </div>
                    <div class="search-input">
                        <input type="text" id="search-input" placeholder="Nhập từ khóa..." onkeyup="search()">
                        <!-- <button id="btn-search-inpuut">Tìm</button> -->
                        <div class="results">
                            <ul>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="grid-filter" id="btn-grid">
                    <i class="fa-regular fa-grid"></i>
                    <i class="fa-regular fa-list"></i>
                </div>
            </div>
            <div class="list-destination" id="grid-filter">
                <?php foreach ($destination as $item) { ?>
                    <?php $link = FSRoute::_("index.php?module=destination&view=destination&ccode=" . $item->category_alias . "&code=" . $item->alias . "&id=" . $item->id); ?>
                    <div class="card-destination" data-name="<?php echo $item->category_alias ?>">
                        <div class="img-card">
                            <img src="<?php echo URL_ROOT . $item->image; ?>" alt="">
                        </div>
                        <div class="info-card">
                            <h3><a href="<?php echo $link ?>"><?php echo $item->title ?></a></h3>
                            <span class="info-location">
                                <i class="fa-regular fa-location-dot"></i>
                                <?php echo $item->category_name ?>
                            </span>
                            <p><?php echo $item->summary ?></p>
                            <a href="<?php echo $link; ?>" class="btn-view">Xem chi tiết
                                <i class="fa-regular fa-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </section>

    <!-- Section secvice-us -->

    <!-- <section class="box-service-company">
        <div class="box-bg">

            <div class="filter-bg">
                <h3>Dịch vụ của chúng tôi</h3>
                <div class="wrap wrap-service-company">
                    <div class="card-service-company">
                        <div class="bg-blur"></div>
                        <div class="title-service">
                            <span href="">Ăn uống</span>
                            <i class="fa-solid fa-mountain-sun"></i>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud Lorem ipsum dolor sit amet, consectetur
                            adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi…exercitation
                            ullamco laboris nisi…</p>
                    </div>
                    <div class="card-service-company">
                        <div class="bg-blur"></div>
                        <div class="title-service">
                            <span href="">Mua sắm</span>
                            <i class="fa-solid fa-person-biking"></i>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi…
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi…</p>
                    </div>
                    <div class="card-service-company">
                        <div class="bg-blur"></div>
                        <div class="title-service">
                            <span href="">Thể thao</span>
                            <i class="fa-solid fa-tree"></i>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi…</p>
                    </div>
                    <div class="card-service-company">
                        <div class="bg-blur"></div>
                        <div class="title-service">
                            <span href="">Vui chơi - giải trí</span>
                            <i class="fa-solid fa-person-hiking"></i>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi…</p>
                    </div>
                    <div class="card-service-company">
                        <div class="bg-blur"></div>
                        <div class="title-service">
                            <span href="">Chăm sóc sức khỏe</span>
                            <i class="fa-solid fa-person-snowboarding"></i>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exe
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi…rcitation
                            ullamco laboris nisi…</p>
                    </div>
                    <div class="card-service-company">
                        <div class="bg-blur"></div>
                        <div class="title-service">
                            <span href="">Bãi biển</span>
                            <i class="fa-solid fa-umbrella-beach"></i>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicLorem ipsum dolor sit amet, consectetur
                            adipisicing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi…ing elit, sed do
                            eiusmod tempor incididunt ut
                            labore et dolore magna
                            aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi…</p>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
<?php } ?>