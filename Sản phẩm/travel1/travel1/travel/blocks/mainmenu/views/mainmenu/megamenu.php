<?php
global $tmpl, $config;
// var_dump($child);
$tmpl->addStylesheet('megamenu', 'blocks/mainmenu/assets/css');

//$tmpl->addScript('home', 'blocks/mainmenu/assets/js');
$Itemid = FSInput::get('Itemid');
$style = '';
$lang = FSInput::get('lang');

$logo = URL_ROOT . $config['logo'];

if ($lang == 'vi') {
    $lang_link = URL_ROOT . 'vi';
} else {
    $lang_link = URL_ROOT;
}
if($Itemid==1){
    $link_en = URL_ROOT ;
    $link_vi = URL_ROOT . 'vi';
}
else{

    $link_server = 'index.php?'.$_SERVER['QUERY_STRING'];
    $link_en = str_replace('&lang='.$lang,'&lang=en',$link_server);
    $link_vi = str_replace('&lang='.$lang,'&lang=vi',$link_server);
	foreach ($list as $item) {
    $link = $item->link ? FSRoute::_($item->link) : '#';
    $lang = @$_SESSION['lang'];

		if ($item->id == 376) {
			$module = FSInput::get('module');
			$view = FSInput::get('view');
			$id_cur = FSInput::get('id');
			$code = FSInput::get('code');

			$control = new MainMenuBControllersMainMenu();

			switch ($module) {
				case 'contents':
					switch ($view) {
						case 'content':
							if ($lang == 'en') {
								$tab_s = 'fs_contents_en';
							} else {
								$tab_s = 'fs_contents';
							}
				   
							$link_ = 'index.php?module='.$module.'&view='.$view.'&code='.$code.'&id='.$id_cur;
							$detail_lang_change = $control->get_record_by_id($id_cur, $tab_s);

							$link_vi_1 = str_replace($code, $detail_lang_change->alias, $link_);
							if ($lang == 'en') {
								$link = FSRoute::_(str_replace('&lang=' . $lang, '&lang=vi', $link_vi_1));
								$link = FSRoute::_(str_replace('/cd_en/', '/cd/', $link));

							} else {
								$link = FSRoute::_(str_replace('&lang=' . $lang, '&lang=en', $link_vi_1));
								$link = FSRoute::_(str_replace('/cd/', '/cd_en/', $link));
							}
	//                        echo $link_vi; die;
							break;
					}

				case 'news':
					switch ($view) {
						case 'news':
							if ($lang == 'en') {
								$tab_s = 'fs_news_en';
							} else {
								$tab_s = 'fs_news';
							}

							$link_ = 'index.php?module='.$module.'&view='.$view.'&code='.$code.'&id='.$id_cur;
							$detail_lang_change = $control->get_record_by_id($id_cur, $tab_s);
							$link_vi_1 = str_replace('&code=' . $code, '&code=' . $detail_lang_change->alias, $link_);
							if ($lang == 'en') {
								$link = FSRoute::_(str_replace('&lang=' . $lang, '&lang=vi', $link_vi_1));
								$link = FSRoute::_(str_replace('/n_en/', '/n/', $link));
							} else {
								$link = FSRoute::_(str_replace('&lang=' . $lang, '&lang=en', $link_vi_1));
								$link = FSRoute::_(str_replace('/n/', '/n_en/', $link));
							}
							break;
	//
						case 'home':

							if ($lang == 'en') {
								$link = URL_ROOT . 'tin-tuc.html';
							} else {
								$link = URL_ROOT . 'news.html';
							}
							break;

					}

				case 'contact':
					switch ($view){
						case 'contact':
							if ($lang == 'en'){
								$link = URL_ROOT . 'lien-he.html';
							} else {
								$link = URL_ROOT . 'contact.html';
							}
							break;

						case  'enquiry':
							if ($lang == 'en'){
								$link = URL_ROOT . 'registration.html';
							} else {
								$link = URL_ROOT . 'registration_en.html';
							}
							break;

						case  'enquiry2':
							if ($lang == 'en'){
								$link = URL_ROOT . 'enquiry2.html';
							} else {
								$link = URL_ROOT . 'enquiry2_en.html';
							}
							break;

						case  'mailingList':
							if ($lang == 'en'){
								$link = URL_ROOT . 'mailing-list.html';
							} else {
								$link = URL_ROOT . 'mailing-list_en.html';
							}
							break;

						case  'spaceBooking':
							if ($lang == 'en'){
								$link = URL_ROOT . 'space-booking.html';
							} else {
								$link = URL_ROOT . 'space-booking_en.html';
							}
							break;
					}
			}
		}
	}

}
?>
<!-- <div class="col-sm-1"></div>

 -->
<div id='cssmenu' class="row-item">
<!--    --><?php
//    if ($i == 0)
//        echo '<li class=" item item_empty">
//                            <a href="'.$lang_link.'" title="Organic" class="logo">
//                                <img class="img-responsive" src="' . $logo . '" alt="logo">
//                            </a>
//                      </li>';
//    $i++; ?>
    <div class="bg_menu">

        <div id="menu_top" class="f_Gotham menu_top">
            <ul class="ul_menu_top">
                <li class="li_menu_top"><a
                            href="<?php echo FSRoute::_("index.php?module=exhibition&view=home&page=$2&Itemid=350&lang=vi") ?>"
                            class="f_Gotham"><?php echo FSText::_('exhibition'); ?></a></li>
                <li class="li_menu_top"><a
                            href="<?php echo FSRoute::_("index.php?module=design&view=home&page=$2&Itemid=350&lang=vi") ?>"
                            class="f_Gotham"><?php echo FSText::_('design'); ?></a></li>
                <li class="li_menu_top"><a
                            href="<?php echo FSRoute::_("index.php?module=event&view=home&page=$2&Itemid=350&lang=vi") ?>"
                            class="f_Gotham"><?php echo FSText::_('event'); ?></a></li>
            </ul>
        </div>
        <!--	<ul id = 'megamenu' class="menu">-->
        <div class="ngonngu">

<!--            --><?php
//            if (
//                $lang == 'en'
//            ) {
//                ?>
<!--                <a class="vn" href="--><?php //echo URL_ROOT.'vi' ?><!--">--><?php //echo FSText::_('VIE'); ?><!--</a>-->
<!--            --><?php //} else {
//                ?>
<!--                <a class="en" href="--><?php //echo URL_ROOT ?><!--">--><?php //echo FSText::_('ENG'); ?><!--</a>-->
<!--            --><?php //} ?>


            <a class="vn <?php if ($lang == 'vi'){echo 'active';} ?>" href="<?php echo  FSRoute::_($$link,'vi') ?>"><?php echo FSText::_('VIE'); ?></a>
            <span>|</span>
            <a class="en <?php if ($lang == 'en'){echo 'active';} ?>" href="<?php echo FSRoute::_($$link,'en') ?>"><?php echo FSText::_('ENG'); ?></a>


<!--            <a href=""><img src="templates/default/images/en.png" class="position"/></a>-->
        </div>
        <div class="field_search">
            <?php echo $tmpl->load_direct_blocks('search', array('style' => 'default')); ?>
        </div>
<!--        <button type="submit" style=" margin-top: 78px; padding: 0 5px;"><i class="fa fa-search"></i></button>-->
        <!-- <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo"><img src="blocks/mainmenu/assets/images/menu.png"></button>
        <div id="demo" class="collapse">
            Lorem ipsum dolor sit amet, consectetur adipisicing elit,
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
            quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        </div> -->
        <div class="menu_drop dropdown">

            <a data-toggle="dropdown" href=""><img class="img_menu" src="<?php echo URL_ROOT. 'blocks/mainmenu/assets/images/menu.png'?>"/></a>

            <ul class="nav navbar-nav main-menu dropdown-menu drop">

                <button type="button" class="close white" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <?php $i = 0; ?>

<!--                <li class='level_0 --><?php //echo $Itemid == 1 ? 'active' : '' ?><!-- item '>-->
<!--                    <a class=" menu_item_a menu_item_0 icon-home"-->
<!--                       href="--><?php //echo $lang_link; ?><!--" title="--><?php //echo FSText::_('Trang chủ'); ?><!--">-->
<!--                        --><?php //echo FSText::_('Trang chủ'); ?>
<!--                    </a>-->
<!--                </li>-->
                 <?php var_dump($level_0) ?>
                <?php foreach ($level_0 as $item): ?>

                    <?php $link = $item->link ? FSRoute::_($item->link) : ''; ?>
                    <?php $class = 'level_0';

                    ?>
                    <?php if ($arr_activated[$item->id]) $class .= ' active '; ?>
                    <?php


                    ?>
                    <li class="item <?php echo $class . $i; ?> <?php echo $item->is_type ? 'dropdown-mega' : 'dropdown' ?>"
                        data-width="<?php // echo $item->width_submenu; ?>">
                        <a href="<?php echo $link; ?>" id="menu_item_<?php echo $item->id; ?>" class="menu_item_a"
                           title="<?php echo htmlspecialchars($item->name); ?>">
                            <?php echo $item->name; ?>
                        </a>
                        <!--	LEVEL 1	-->
                        <?php if (isset($children[$item->id]) && count($children[$item->id])){ ?>
                        <div class="menu_con" <?php //echo $style; ?> >
                            <ul class="dropdown-content list-unstyled ">
                                <?php } ?>
                                <?php if (isset($children[$item->id]) && count($children[$item->id])) { ?>
                                    <?php $j = 0; ?>
                                    <?php foreach ($children[$item->id] as $key => $child) { ?>
                                        <?php $link = FSRoute::_($child->link); ?>

                                        <!--	LEVEL 2			-->
                                        <li class='sub-menu-level1 <?php if ($arr_activated[$child->id]) $class .= ' activated '; ?> '>
                                            <a href="<?php echo $link; ?>" class="<?php echo $class ?> a_con sub-menu-item"
                                               id="menu_item_<?php echo $child->id; ?>"
                                               title="<?php echo htmlspecialchars($child->name); ?>">
                                                <?php if ($child->image) { ?>
                                                    <img src="<?php echo URL_ROOT . str_replace('original', 'resized', $child->image); ?>"
                                                         class="img-responsive" alt="<?php echo $child->name; ?>">

                                                <?php }
                                                echo $child->name; ?>
                                            </a>
                                            <?php if (isset($child->price) && $child->price != 0) { ?>
                                                <p class="price">
                                                    <?php echo FSText::_('Giá từ ') . format_money($child->price); ?>
                                                </p>
                                            <?php } ?>
                                        </li>
                                        <!-- END LEVEL 2 -->
                                        <?php $j++; ?>
                                    <?php } ?>
                                <?php } ?>
                                <?php if (isset($children[$item->id]) && count($children[$item->id])){ ?>
                            </ul>
                            <!--                        --><?php //if($item->summary){ ?>
                            <!--                        <div class="summary">-->
                            <!--                            --><?php //echo html_entity_decode($item->summary); ?>
                            <!--                        </div>-->
                            <!--                        --><?php //} ?>
                        </div>
                    <?php } ?>
                        <!-- END LEVEL 1 -->
                    </li>


                <?php endforeach; ?>
                <li role="separator" class="divider ma"></li>

                <li class="share">
                    <?php
                    if ($config['link_1']) { ?>
                        <div class="grid-item">
                            <a href="<?php echo $config['link_1'] ?>">
                                <img src="<?php echo $config['icon1'] ?>" alt="">
                            </a>
                        </div>
                    <?php } ?>

                    <?php
                    if ($config['link_2']) { ?>
                        <div class="grid-item">
                            <a href="<?php echo $config['link_2'] ?>"><img
                                        src="<?php echo $config['icon_2'] ?>" alt=""></a>
                        </div>
                    <?php } ?>

                    <?php
                    if ($config['link_3']) { ?>
                        <div class="grid-item">
                            <a href="<?php echo $config['link_3'] ?>"><img src="<?php echo $config['icon_3'] ?>"
                                                                           alt=""></a>
                        </div>
                    <?php } ?>

                    <?php
                    if ($config['link_4']) { ?>
                        <div class="grid-item">
                            <a href="<?php echo $config['link_4'] ?>"><img
                                        src="<?php echo $config['icon_4'] ?>" alt=""></a>
                        </div>
                    <?php } ?>

                    <?php
                    if ($config['link_5']) { ?>
                        <div class="grid-item">
                            <a href="<?php echo $config['link_5'] ?>"><img src="<?php echo $config['icon_5'] ?>"
                                                                           alt=""></a>
                        </div>
                    <?php } ?>

                    <?php
                    if ($config['link_6']) { ?>
                        <div class="grid-item">
                            <a href="<?php echo $config['link_6'] ?>"><img src="<?php echo $config['icon_6'] ?>"
                                                                           alt=""></a>
                        </div>
                    <?php } ?>

                </li>
            </ul>

        </div>
    </div>

</div>
