<ul>
    <?php foreach ($menu as $item) { ?>
        <?php $link = '/' . $item->link ?>
        <li data-parent="<?php echo $item->parent_id ?>" class="parent-<?php echo $item->parent_id ?>">
            <a <?php echo  $item->link ? 'href="'.$link.'"' : 'data-bs-toggle="collapse" href="#collapseExample'.$item->id.'" role="button" aria-expanded="false" aria-controls="collapseExample"'?> class="btn btn-primary nav-link <?php echo ($link == $url) ? "active" : ""; ?>" ><?php echo $item->name ?></a>
            <ul class="collapse" id="<?php echo 'collapseExample' . $item->id ?>">
                <?php foreach ($item->child as $val) { ?>
                    <?php $link = '/' . $val->link ?>
                    <li data-parent="<?php echo $item->parent_id ?>" class="parent-<?php echo $item->parent_id ?>">
                        <a <?php echo  $val->link ? 'href="'.$link.'"' : 'data-bs-toggle="collapse" href="#collapseExample'.$val->id.'" role="button" aria-expanded="false" aria-controls="collapseExample"'?> class="btn btn-primary nav-link <?php echo ($link == $url) ? "active" : ""; ?>"  ><?php echo $val->name ?></a>
                        <ul class="collapse" id="<?php echo 'collapseExample' . $val->id ?>">
                            <?php foreach ($val->child as $val2) { ?>
                                <?php $link = '/' . $val2->link ?>
                                <li data-parent="<?php echo $item->parent_id ?>" class="parent-<?php echo $item->parent_id ?>">
                                    <a class="btn btn-primary nav-link <?php echo ($link == $url) ? "active" : ""; ?>" href="<?php echo $val2->link ?>"><?php echo $val2->name ?></a>
                                </li>
                            <?php } ?>
                        </ul>
                    </li>
                <?php } ?>
            </ul>
        </li>
    <?php } ?>
</ul>