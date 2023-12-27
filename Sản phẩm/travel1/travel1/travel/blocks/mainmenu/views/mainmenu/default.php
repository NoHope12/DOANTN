<?php
global $tmpl, $config;
$tmpl->addStylesheet('menu', 'blocks/mainmenu/assets/css');
$tmpl->addStylesheet('style','block/mainmenu/assets/css');
$url_current = $_SERVER['REQUEST_URI'];
$url_current = substr(URL_ROOT, 0, strlen(URL_ROOT) - 1) . $url_current;

if ($lang == 'en') {
    $lang_link = URL_ROOT . 'en';
} else {
    $lang_link = URL_ROOT;
}
?>

<ul class="navbar-nav menu_main row-item">
    <?php
    $Itemid = FSInput::get('Itemid', 1, 'int');
    $total = count($list);
    $i = 0;
    $count_children = 0;
    $summner_children = 0;
    echo "<li class='item first_item " /*($Itemid == 11 ? 'active' : '')*/ . "' >
                        <a class='icon-home' href='" . FSRoute::_('index.php?module=products&view=home') . "' title='Sản phẩm'><i class='fa fa-bars'></i>&nbsp;</a>
                      </li>";

    echo "<li class='item  " . ($Itemid == 1 ? 'active' : '') . "' >
                        <a class='icon-home' href='" . $lang_link . "' title='Trang chủ'>" . FSText::_('Trang chủ') . "</a>
                      </li>";
    foreach ($list as $item) {
        //$class =  $item -> id ==  $Itemid ? 'active':'';
        $link = $item->link ? FSRoute::_($item->link) : '#';
        $class = '';
        $icon = '';
        if ($link == $url_current) {
            $class = 'active';
        }

        if ($i == ($total - 1))
            $class .= ' last-item';

        $count_children++;

        if ($count_children == $summner_children && $summner_children)
            $class .= ' last-item';
        if ($item->level == 0)
            echo "<li class='item nav-item $class ' ><a class='nav-link' target='" . $item->target . "' href='" . $link . "' title='" . $item->name . "' >"
                . $icon . $item->name . "</a></li>";

        // sepa
        //if($i < $total - 1)
        //echo "<li class='sepa' ><span>&nbsp;</span></li>";
        $i++;
    }
    ?>
</ul><!-- nav -->
