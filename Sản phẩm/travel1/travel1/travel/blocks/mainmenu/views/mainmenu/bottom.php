<?php
global $tmpl, $config;
$tmpl->addStylesheet('menu', 'blocks/mainmenu/assets/css');
?>

<ul class="menu_bottom row-item">
    <!--	CONTENT -->
    <?php
    $Itemid = FSInput::get('Itemid', 1, 'int');
//    echo $Itemid; die;
    $total = count($list);
    $i = 0;
    $count_children = 0;
    $summner_children = 0;
    foreach ($list as $item) {
        $class = $item->id == $Itemid ? 'active' : '';
        if ($i == 0)
            $class .= ' first-item';
        if ($i == ($total - 1))
            $class .= ' last-item';


        $count_children++;
        if ($count_children == $summner_children && $summner_children)
            $class .= ' last-item';
        $link = $item->link ? FSRoute::_($item->link . '&Itemid=' . $item->id) : $item->link;
        echo "<li class='item $class ' ><a href='" . $link . "' ><i class='fa fa-caret-right'></i> " . $item->name . "</a>  </li>";

        // sepa
        //if($i < $total - 1)
        //echo "<li class='sepa' ><span>&nbsp;</span></li>";
        $i++;
    }
    ?>
</ul>
<!--	end menu_ -->  