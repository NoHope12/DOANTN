<style>
    .horizon-newsmenu {
        margin-top: 40px;
    }

    .item {
        background: #fff;
        border-radius: 5px;
        display: flex;
        justify-content: center;
        padding: 15px;

    }

    .item img {
        margin-right: 20px;
    }

    .item span {
        font-size: 16px;
        font-weight: 600;
        color: #107171;
    }
</style>
<div class="horizon-newsmenu row">
    <?php foreach ($list as $item) { ?>
        <?php if ($item->level == 1) { ?>
            <div class="col-md-3">
                <div class="item">
                    <a href="<?php echo FSRoute::_($item->link) ?>">
                        <img src="<?php echo URL_ROOT . $item->image ?>" alt="<?php echo $item->name ?>">
                        <span><?php echo $item->name ?></span>
                    </a>
                </div>
            </div>
        <?php } ?>
    <?php } ?>
</div>

