<?php
global $tmpl;
$tmpl->addStylesheet('styles', 'blocks/mainmenu/assets/css');
$tmpl->addScript('script_source', 'blocks/mainmenu/assets/js');
$Itemid = FSInput::get('Itemid');
?>
<ul class="menu-mobile row-item">
    <?php $i = 0; ?>
    <!-- <li class='<?php echo ($Itemid == 1 ? 'open' : '') ?>'>
        <div class="sub sub-0">
            <a href="<?php echo URL_ROOT; ?>">
                <?php echo FSText::_('Trang chủ') ?>
            </a>
        </div>
    </li> -->
    <?php foreach ($level_0 as $item) : ?>
        <?php $link = FSRoute::_($item->link); ?>
        <?php $class = 'level_0'; ?>
        <?php $class .= $item->description ? ' long ' : ' sort' ?>
        <?php if ($arr_activated[$item->id]) $class .= ' open '; ?>

        <li class="has-sub <?php echo $class; ?>">
            <div class="sub sub-0">
                <a href="<?php echo $link; ?>" title="<?php echo htmlspecialchars($item->name); ?>">
                    <?php echo $item->name; ?>
                </a>
                <span class="offcanvas-menu-toggler collapsed">
                    <i class="open-icon fa fa-angle-down"></i>
                    <i class="close-icon fa fa-angle-up"></i>
                </span>
            </div>
            <!-- END: sub -->
            <!--	LEVEL 1			-->
            <?php if (isset($children[$item->id]) && count($children[$item->id])) { ?>
                <ul>
                <?php } ?>
                <?php if (isset($children[$item->id]) && count($children[$item->id])) { ?>
                    <?php $j = 0; ?>
                    <?php foreach ($children[$item->id] as $key => $child) { ?>
                        <?php $link = FSRoute::_($child->link); ?>

                        <li class='has-sub1 <?php if ($arr_activated[$child->id]) $class .= ' open '; ?> '>
                            <div class="sub sub-1">
                                <a href="<?php echo $link; ?>" title="<?php echo htmlspecialchars($child->name); ?>">
                                    <?php echo $child->name; ?>
                                </a>
                                <span class="offcanvas-menu-toggler collapsed">
                                    <i class="open-icon fa fa-angle-down"></i>
                                    <i class="close-icon fa fa-angle-up"></i>
                                </span>
                            </div><!-- END: sub -->
                            <!--	LEVEL 2			-->
                            <?php if (isset($children[$child->id]) && count($children[$child->id])) { ?>
                                <ul>
                                <?php } ?>
                                <?php if (isset($children[$child->id]) && count($children[$child->id])) { ?>
                                    <?php foreach ($children[$child->id] as $child2) { ?>
                                        <?php $link = FSRoute::_($child2->link); ?>
                                        <li class='has-sub2 <?php if ($arr_activated[$child2->id]) $class .= ' open '; ?> '>
                                            <div class="sub sub-2">
                                                <a href="<?php echo $link; ?>" title="<?php echo htmlspecialchars($child2->name); ?>">
                                                    <?php echo $child2->name; ?>
                                                </a>
                                                <span class="offcanvas-menu-toggler collapsed">
                                                    <i class="open-icon fa fa-angle-down"></i>
                                                    <i class="close-icon fa fa-angle-up"></i>
                                                </span>
                                            </div><!-- END: sub -->
                                            <!-- level 3 -->
                                            <?php if (isset($children[$child2->id]) && count($children[$child2->id])) { ?>
                                                <ul>
                                                <?php } ?>
                                                <?php if (isset($children[$child2->id]) && count($children[$child2->id])) { ?>
                                                    <?php foreach ($children[$child2->id] as $child3) { ?>
                                                        <?php $link = FSRoute::_($child3->link); ?>
                                                        <li class='has-sub3 <?php if ($arr_activated[$child3->id]) $class .= ' open '; ?> '>
                                                            <div class="sub sub-3">
                                                                <a href="<?php echo $link; ?>" title="<?php echo htmlspecialchars($child3->name); ?>">
                                                                    <?php echo $child3->name; ?>
                                                                </a>
                                                                <span class="offcanvas-menu-toggler collapsed">
                                                                    <i class="open-icon fa fa-angle-down"></i>
                                                                    <i class="close-icon fa fa-angle-up"></i>
                                                                </span>
                                                            </div><!-- END: sub -->
                                                            <!-- level 4 -->
                                                            <?php if (isset($children[$child3->id]) && count($children[$child3->id])) { ?>
                                                                <ul>
                                                                <?php } ?>
                                                                <?php if (isset($children[$child3->id]) && count($children[$child3->id])) { ?>
                                                                    <?php foreach ($children[$child3->id] as $child4) { ?>
                                                                        <?php $link = FSRoute::_($child4->link); ?>
                                                                        <li class='has-sub4 <?php if ($arr_activated[$child4->id]) $class .= ' open '; ?> '>
                                                                            <div class="sub sub-4">
                                                                                <a href="<?php echo $link; ?>" title="<?php echo htmlspecialchars($child4->name); ?>">
                                                                                    <?php echo $child4->name; ?>
                                                                                </a>
                                                                            </div><!-- END: sub -->
                                                                        </li>
                                                                    <?php } ?>
                                                                <?php } ?>
                                                                <?php if (isset($children[$child3->id]) && count($children[$child3->id])) { ?>
                                                                </ul>
                                                            <?php } ?>
                                                            <!-- end level 4 -->
                                                        </li>
                                                    <?php } ?>
                                                <?php } ?>
                                                <?php if (isset($children[$child2->id]) && count($children[$child2->id])) { ?>
                                                </ul>
                                            <?php } ?>
                                            <!-- end level 3 -->
                                        </li>
                                    <?php } ?>
                                <?php } ?>
                                <?php if (isset($children[$child->id]) && count($children[$child->id])) { ?>
                                </ul>
                            <?php } ?>
                            <!--	end LEVEL 2			-->

                        </li>
                        <?php $j++; ?>
                    <?php } ?>
                <?php } ?>
                <?php if (isset($children[$item->id]) && count($children[$item->id])) { ?>
                </ul>

            <?php } ?>
            <!--	end LEVEL 1			-->
        </li>
        <?php $i++; ?>
    <?php endforeach; ?>
    <!--	CHILDREN				-->
</ul>