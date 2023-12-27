<?php
global $tmpl;
$tmpl->addScript('script', 'blocks/mainmenu/assets/js');
$tmpl->addStylesheet('bottommenu', 'blocks/mainmenu/assets/css');
$lang = FSInput::get('lang');
$Itemid = FSInput::get('Itemid');
?>
<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
    <div class="menu_bottom_mystar">
        <h3><?php echo $title; ?></h3>
        <ul class='megamenu-bottom'>
            <?php $i = 0; ?>
            <?php foreach ($level_0 as $item): ?>
                <?php $link = $item->link ? FSRoute::_($item->link) : '#'; ?>
                <?php $class = 'level_0'; ?>
                <?php $class .= $item->description ? ' long ' : ' sort' ?>
                <?php if ($arr_activated[$item->id]) $class .= ' activated '; ?>
                <?php $image = $item->image ? '<img src="' . URL_ROOT . $item->image . '" alt="' . $item->name . '">' : '' ?>

                <li class="<?php echo $class; ?> <?php echo $item->is_type ? 'mega-menu' : '' ?>">
                    <a href="<?php echo $link; ?>" id="menu_item_<?php echo $item->id; ?>" class="menu_item_a"
                       title="<?php echo htmlspecialchars($item->name); ?>">
                        <!--                        --><?php //echo $image ?>
                        <?php echo $item->name; ?>
                    </a>
                    <!--	LEVEL 1			-->
                    <?php if (isset($children[$item->id]) && count($children[$item->id])){ ?>
                    <ul>
                        <?php } ?>
                        <?php if (isset($children[$item->id]) && count($children[$item->id])) { ?>
                            <?php $j = 0; ?>
                            <?php foreach ($children[$item->id] as $key => $child) { ?>
                                <?php $link = $item->link ? FSRoute::_($child->link) : '#'; ?>

                                <li class='sub-menu-level1 <?php if ($arr_activated[$child->id]) $class .= ' activated '; ?> '>
                                    <a href="<?php echo $link; ?>" class="<?php echo $class ?> sub-menu-item" id="menu_item_<?php echo $child->id; ?>"
                                       title="<?php echo htmlspecialchars($child->name); ?>">
                                        <?php if ($child->image) { ?>
                                            <i class="icon-2"
                                               style="background: url('<?php echo URL_ROOT . $child->image ?>') no-repeat center center;"></i>
                                        <?php } ?>
                                        <?php echo $child->name; ?>
                                    </a>
                                </li>
                                <?php $j++; ?>
                            <?php } ?>
                        <?php } ?>
                        <?php if (isset($children[$item->id]) && count($children[$item->id])){ ?>
                    </ul>
                <?php } ?>
                </li>

                <?php if (($i + 1) % 4 == 0) { ?>
                    <div class="clearfix"></div>
                <?php } ?>

                <?php $i++; ?>
            <?php endforeach; ?>
            <!--	CHILDREN				-->
        </ul>
    </div>
</div>
