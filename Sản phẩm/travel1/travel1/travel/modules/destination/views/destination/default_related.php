<?php
    if(isset($relate_news_list)){ ?>
        <div class="box-related-new">
            <h4 class="title-module-related">
                <span>
                <?php echo FSText::_('Related Posts'); ?>
                </span>
            </h4>
            <div class="new-related row-item">
                <div class="row">
                    <?php
                    foreach($relate_news_list as $item){
                        $link = FSRoute::_('index.php?module=news&view=news&code='.$item -> alias.'&ccode='.$item->category_alias.'&id='.$item->id.'&lang='.$_SESSION["lang"]);
                        $image_large = URL_ROOT.str_replace('original','original',$item->image);
                        $image_resized = URL_ROOT.str_replace('original','resized',$item->image);
                        ?>
                        <div class="col-md-4">
                            <div class="list-content-new position-relative">
                                <figure>
                                    <img class="img-fluid" src="<?php echo URL_ROOT. str_replace('original', 'resized', $item->image); ?>" onerror="this.src = '/images/no-image.jpg';"/>
                                </figure>
                                <div class="new-info-detail">
                                    <p class="time-new"><?php echo show_datetime($item->created_time); ?></p>
                                    <a class="new-item stretched-link" href='<?php echo $link ?>' title="<?php echo $item->title ?>"  >
                                        <h4 class="title"><?php echo $item->title; ?></h4>
                                    </a>
                                    <p class="summary-new-blog"><?php echo $item->summary; ?></p>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
<?php } ?>
