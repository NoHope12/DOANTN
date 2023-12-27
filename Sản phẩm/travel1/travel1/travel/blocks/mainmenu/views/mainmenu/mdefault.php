<?php global $tmpl;
$tmpl->addStylesheet('jquery.mmenu.all', 'blocks/mainmenu/assets/css/m');
//$tmpl->addStylesheet('mmainmenu', 'blocks/mainmenu/assets/css');
$tmpl->addScript('jquery.mmenu.min', 'blocks/mainmenu/assets/js/m');
$tmpl->addScript('menu', 'blocks/mainmenu/assets/js/m');
//$tmpl -> addScript('mainmenu','blocks/mainmenu/assets/js');
?>
<?php
$arr_root = array();
$arr_children = array();
$current_root = 0;
$module = FSInput::get('module');
$ccode = FSInput::get('ccode');
foreach ($list as $item) {
    if ($item->level == 0) {
        $arr_root[] = $item;
        $current_root = $item->id;
    } else if ($item->level == 1) {
        if (!isset($arr_children[$item->parent_id]))
            $arr_children[$item->parent_id] = array();
        $arr_children[$item->parent_id][] = $item;
    } else {
        $arr_children[$current_root][] = $item;
    }
}
$mmm = 1;
?>

<nav id="menu" class="menu-res">

    <ul class='main-menu'>
        
        <?php
        if ($module == "home") {
            $class = " active-mainmenu ";
        }
        ?>
        <!--li class="item <?php echo $class; ?> " ><a class="name " title="Trang chủ" href="<?php echo URL_ROOT; ?>">Trang chủ</a></li-->
        <?php $url = $_SERVER['REQUEST_URI']; ?>
        <?php $url = substr($url, strlen(URL_ROOT_REDUCE)); ?>
        <?php $url = URL_ROOT . $url; ?>
        <?php if (isset($list) && !empty($list)) { ?>
            <?php $t = 0; ?>
            <?php foreach ($arr_root as $item) { ?>
                <?php $link = FSRoute::_($item->link); ?>
                <?php $class = ''; ?>
                <?php
                if ($url == $link)
                    $class = 'active';
                if (strpos($item->link, $module) !== false && $module != "home" && $module != "products") {
                    $class = " active-mainmenu ";
                }
                if (strpos($item->link, $ccode) !== false && $module != "home" && $module == "products") {
                    $class = " active-mainmenu ";
                }
                ?>
                <?php if (isset($arr_children[$item->id]) && count($arr_children[$item->id])) { ?>
                    <li class="item <?php echo $class; ?> dropdown">

                        <a class="name" href="<?php echo $link; ?>" title="<?php echo $item->name; ?>">
                            <?php echo $item->name; ?>
                        </a>
                        <div class='highlight layer_menu_accessories'>
                            <ul>
                                <?php foreach ($arr_children[$item->id] as $child) { ?>
                                    <li>
                                        <?php $link_child = FSRoute::_($child->link); ?>
                                        <a href="<?php echo $link_child; ?>" title="<?php echo $child->name; ?>"><?php echo $child->name; ?></a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </li>
                <?php } else { ?>
                    <li class="item <?php echo $class; ?>">
                        <a class="name <?php echo @$item->view; ?>" href="<?php echo $link; ?>" title="<?php echo $item->name; ?>">
                            <?php echo $item->name; ?>
                        </a>
                        <?php if (@$item->tablename && @$item->tablename != 'fs_products') { ?>
                            <div class='highlight layer_menu_<?php echo ceil(($t + 1) / 3); ?>' id='childs_of_<?php echo $item->id; ?>'>

                                <!--	FILTER			-->
                                <?php
                                if ($item->banner_cat) {
                                    echo "<div class='wrapper-manu-menu fr'>";
                                    echo "<div class='title-manu-nb km-hot'>Khuyến mại hot</div>";
                                    echo "<div class='list-manu-mnu cf'>";
                                    echo $item->banner_cat;
                                    echo "</div>";
                                    echo "</div>";
                                }

                                $filter_in_table_name = isset($arr_filter_by_field[$item->tablename]) ? $arr_filter_by_field[$item->tablename] : array();

                                if (count($filter_in_table_name)) {
                                    ?>
                                    <?php
                                    $j = 0;
                                    $k = 0;
                                    $full_col = 1; // nếu full_col == 1: cột đã đầy

                                    foreach ($filter_in_table_name as $field_name => $filters_in_field) {

                                        if ($field_name == 'price' || $field_name == 'loai_day' || $field_name == 'loai_phu_kien' || $field_name == 'loai_dong_ho' || $field_name == 'manufactory') {

                                            $i = 0;
                                            if (count($filters_in_field) > $max_filter_in_column) {
                                                if ($j && !$full_col)
                                                    echo "</div> "; // end .menu_col
                                                $class = 'first_field';
                                                echo '<div class="menu_col" id="menu_col_' . $j . '">';
                                                $full_col = 1;
                                                $j++;
                                            } else {
                                                $class = $full_col ? 'first_field' : 'second_field';
                                                if (!$j || $full_col) {
                                                    echo '<div class="menu_col" id="menu_col_' . $j . '">';
                                                    $full_col = 0;
                                                    $j++;
                                                } else {
                                                    $full_col = 1;
                                                }
                                            }
                                            echo '<div class="cf field_name normal ' . $class . '" data-id="id_field_' . $field_name . '">';
                                            $ii = 1;
                                            foreach ($filters_in_field as $filter) {


                                                if (!$i) {
                                                    echo '<div class="field_label" id="mn_id_field_' . $filter->id . '">' . $filter->field_show . '</div>';
                                                }
                                                $str_filter_id = isset($filter_request) ? $filter_request . "," . $filter->alias : $filter->alias;

                                                $link = FSRoute::_('index.php?module=products&view=cat&cid=' . $item->cid . '&ccode=' . $item->ccode . '&filter=' . $str_filter_id);
                                                $link_cat = FSRoute::_('index.php?module=products&view=cat&cid=' . $item->cid . '&ccode=' . $item->ccode);
                                                if ($i < 7) {
                                                    echo '<h3><a href="' . $link . '" title="' . $filter->filter_show . '" >' . $filter->filter_show . '</a></h3>';
                                                } else {
                                                    echo '<h3 class="manu-item-hd"><a href="' . $link . '" title="' . $filter->filter_show . '" >' . $filter->filter_show . '</a></h3>';
                                                }
                                                if ($field_name == 'manufactory') {
                                                    if ($i == count($filters_in_field) - 1) {
                                                        echo '<h3 class="read_more_mm"><a  href="javascript:void(0)">Xem thêm</a></h3>';
                                                        echo '<h3 class="hidden_more_mm"><a  href="javascript:void(0)">Thu gọn</a></h3>';
                                                    }
                                                }

                                                $i++;
                                            }
                                            echo '</div>'; // .field_name normal
                                            if ($full_col)
                                                echo '</div>'; // .menu_col
                                            if ($j > 3)
                                                break;
                                        }
                                    }
                                    ?>
                                    <div class="clearfix"></div>
                                <?php } ?>

                                <!--	FILTER			-->

                            </div>
                        <?php } ?>
                    </li>
                    <?php $t++; ?>
                <?php } ?>
            <?php } // end foreach($list as $item)?>
        <?php }  // end if(isset($list) && !empty($list)) ?>
    </ul>
    <?php echo $tmpl->load_direct_blocks("msearch", array("style" => "mdefault")); ?>
</nav>
	