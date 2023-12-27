<?php
global $tmpl;
$parentId = 0;
$numChild = 0;
$count = 0;

foreach ($list as $item) {
    $target = $item->target;
//    echo $target; die;
    $link = $item->link ? FSRoute::_($item->link) : '#';
    $lang = @$_SESSION['lang'];
//    echo "ddd" ;die;

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
                       // $link_server = 'index.php?' . $_SERVER['QUERY_STRING'];
						$link_ = 'index.php?module='.$module.'&view='.$view.'&code='.$code.'&id='.$id_cur;
                        $detail_lang_change = $control->get_record_by_id($id_cur, $tab_s);

//                        echo "<pre>";
//                        print_r($detail_lang_change);
//                        echo "</pre>"; die;
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

    if ($parentId)
        $count++;
    if ($item->parent_id)
        echo '<li class="menu-' . $item->id . ' ' . @$item->selected . '"><a  target="' . $target . '" class="dropdown-item" href="' . $link . '" title="' . htmlspecialchars($item->name) . '">' . $item->name . '</a>';

    else
        echo '<li class="menu-' . $item->id . ' ' . @$item->selected . ' dropdown"><a target="' . $target . '" class="a-hd" href="' . $link . '" title="' . htmlspecialchars($item->name) . '">' . $item->name . '</a>';
    if ($item->children) {
        $parentId = $item->id;
        $numChild = $item->children;
        echo '<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">';
    }
    if ($parentId && $count == $numChild) {
        $parentId = 0;
        $count = 0;
        $numChild = 0;
        echo ' </li>';
        echo '</ul>';
        continue;
    }
    echo '</li>';
}
?>
