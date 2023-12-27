<?php
global $tmpl;
$tmpl->addScript('styles', 'blocks/mainmenu/assets/js');
//$tmpl->addStylesheet('benni', 'blocks/mainmenu/assets/css');
$lang = FSInput::get('lang');
$Itemid = FSInput::get('Itemid');
$lang = $_SESSION['lang'];


//echo 1;die;
?>


<ul>

    <?php $i = 0;
    foreach ($level_0 as $item) :
        $class = 'level_0';
        $link = FSRoute::_($item->link.'&lang='.$_SESSION['lang']);
        $lang = @$_SESSION['lang'];
    ?>

        <li class="<?php echo $class; ?> <?php echo ($i > count($level_0) / 2) ? 'last-item' : '' ?>">
            <a href="<?php echo FSRoute::_($link); ?>" id="menu_item_<?php echo $item->id; ?>" title="<?php echo htmlspecialchars($item->name); ?>">
                <?php echo  $item->name; ?>
                <?php if (isset($children[$item->id]) && count($children[$item->id])) { ?>
                    <span class="click-show-menu" data-id='<?php echo $item->id ?>'>&nbsp;</span>
                <?php } ?>
            </a>
            <?php if (isset($children[$item->id]) && count($children[$item->id])) { ?>

                <ul class="tab1">
                    <?php $j = 0; ?>
                    <?php foreach ($children[$item->id] as $key => $child) {
                        $j++;
                        $class_child = $j == 0 ? 'first-child' : '';
                    ?>
                        <?php $link = FSRoute::_($child->link);?>
                        <li class='sub-menu-item level<?php echo $child->level; ?> <?php if ($arr_activated[$child->id]) $class .= ' activated '; ?> <?php echo $class_child; ?> <?php echo ($j > 4) ? "sub-menu-item-revers" : "" ?>'>
                            <a href="<?php echo $link; ?>" id="menu_item_<?php echo $child->id; ?>" title="<?php echo htmlspecialchars($child->name); ?>">

                                <?php echo $child->name; ?>

                            </a>

                            <?php if (isset($children[$child->id]) && count($children[$child->id])) { ?>
                                <ul class="tab2">

                                    <?php
                                    $total_child = count($children[$child->id]);
                                    $k = 0;
                                    foreach ($children[$child->id] as $key2 => $child2) {
                                        $class_child = $k == 0 ? 'first-child' : '';
                                    ?>
                                        <?php $link = FSRoute::_($child2->link);?>
                                        <li class='sub-menu-item level<?php echo $child2->level; ?> <?php if ($arr_activated[$child2->id]) $class .= ' activated '; ?> <?php echo $class_child; ?> <?php echo ($k > 4) ? 'sub-menu-item-revers2' : '' ?> '>
                                            <a href="<?php echo FSRoute::_($link); ?>" id="menu_item_<?php echo $child2->id; ?>" title="<?php echo htmlspecialchars($child2->name); ?>">
                                                <?php echo $child2->name; ?>
                                            </a>

                                            <?php if (isset($children[$child2->id]) && count($children[$child2->id])) { ?>

                                                <ul class="tab2">

                                                    <?php
                                                    $total_child = count($children[$child2->id]);
                                                    $l = 0;
                                                    foreach ($children[$child2->id] as $key3 => $child3) {
                                                        $class_child = $l == 0 ? 'first-child' : '';
                                                    ?>
                                                        <?php $link = FSRoute::_($child3->link);?>
                                                        <li class='sub-menu-item level<?php echo $child3->level; ?> <?php if ($arr_activated[$child3->id]) $class .= ' activated '; ?> <?php echo $class_child; ?> <?php echo ($l > 4) ? 'sub-menu-item-revers' : '' ?>'>
                                                            <a href="<?php echo FSroute::_($link); ?>" id="menu_item_<?php echo $child3->id; ?>" title="<?php echo htmlspecialchars($child3->name); ?>">
                                                                <?php echo $child3->name ?>
                                                            </a>
                                                            <?php if (isset($children[$child3->id]) && count($children[$child3->id])) { ?>

                                                                <ul class="tab2">

                                                                    <?php
                                                                    $total_child = count($children[$child3->id]);
                                                                    $l = 0;
                                                                    foreach ($children[$child3->id] as $key4 => $child4) {
                                                                        $class_child = $l == 0 ? 'first-child' : '';
                                                                    ?>
                                                                        <?php $link = FSRoute::_($child4->link.'&lang='.$_SESSION['lang']);?>
                                                                        <li class='sub-menu-item level<?php echo $child4->level; ?> <?php if ($arr_activated[$child4->id]) $class .= ' activated '; ?> <?php echo $class_child; ?> <?php echo ($l > 4) ? 'sub-menu-item-revers' : '' ?>'>
                                                                            <a href="<?php echo FSRoute::_($link); ?>" id="menu_item_<?php echo $child4->id; ?>" title="<?php echo htmlspecialchars($child4->name); ?>">
                                                                                <?php echo $child4->name ?>
                                                                            </a>
                                                                        </li>
                                                                    <?php $l++;
                                                                    } ?>
                                                                </ul>
                                                            <?php } else { ?>

                                                            <?php } ?>
                                                        </li>
                                                    <?php $l++;
                                                    } ?>
                                                </ul>
                                            <?php } else { ?>

                                            <?php } ?>
                                        </li>
                                        <?php $k++; ?>
                                    <?php } ?>
                                </ul>
                            <?php } else { ?>

                            <?php } ?>
                        </li>
                        <?php echo ($j % 3 == 0) ? "<div class='clearfix'></div>" : "" ?>
                    <?php } ?>
                </ul>

            <?php } ?>
        </li>
        <?php $i++; ?>
    <?php endforeach; ?>
</ul>