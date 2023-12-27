<?php global $tmpl;
//$tmpl->addStylesheet('rating', 'plugins/comments/css');

$url = $_SERVER['REQUEST_URI'];
$module = 'products';
$view = 'product';
$rid = FSInput::get('id');
$limit = 10;
$arr_rating = array(
    5 => 'Xuất sắc',
    4 => 'Rất tốt',
    3 => 'Trung bình',
    2 => 'Tàm tạm',
    1 => 'Kém',
);
$return = base64_encode($url);
if (empty($_SESSION['user_id'])) {
    $login = 0;
} else {
    $login = 1;
}
?>
<div class='comments'>

    <!-- FORM COMMENT	-->
<!--    <p class="title-r">--><?php //echo $total_comment ?><!-- đánh giá và bình luận <span>--><?php //echo $data->name ?><!--</span></p>-->
    <div class='comment_form cf collapse' id="comment_form">
        <form action="index.php?module=products&view=product&task=save_comment" method="post" name="comment_add_form" id='comment_add_form' class='form_comment row'>
            <div class='row-rating fl col-sm-12'>
                <div class='label-form fl'><?php echo FSText::_('Đánh giá của bạn về sản phẩm')?>:</div>
                <div class='row-raty cf fl'>
                    <span class='fl'></span>
                    <div class="fl rating-value"></div>
                </div>
                <div class='row-raty fl cf'>
                    <span class='fl ratingbg'></span>
                </div>
            </div>
            <div class="col-sm-6">
                <textarea class="form-control" id="full_rate" class="txt_input"
                          placeholder="<?php echo FSText::_('Nội dung đánh giá của bạn') ?> " rows="6" name="full_rate"></textarea>
            </div>
            <div class="col-sm-6">
                <div class="row">
                    <div class='col-sm-6 '>
                        <input type="text" id="name_rate" name="name_rate" placeholder="<?php echo FSText::_('Họ và tên') ?>" value=""
                               class="form-control mb"/>
                        <input type="text" id="email_rate" name="email_rate" placeholder="<?php echo FSText::_('Email') ?>"
                                value="" class="form-control"/>
                    </div>
                    <div class='col-sm-6'>
                        <input type="text" id="phone_rate" name="phone_rate" placeholder="<?php echo FSText::_('Số điện thoại') ?>"
                               class="form-control mb"/>
                        <input type='button' class="button submitbt" value='<?php echo FSText::_('GỬI ĐÁNH GIÁ') ?>' id='submitbt'>
                    </div>
                </div>
            </div>
<!--            <input type="hidden" value="--><?php //echo $module; ?><!--" name='module'/>-->
<!--            <input type="hidden" value="--><?php //echo $view; ?><!--" name='view'/>-->
<!--            <input type="hidden" value="save_comment" name='task'/>-->

            <input type="hidden" value="<?php echo $data->id; ?>" name='record_id' id='record_id'/>
            <input type="hidden" value="<?php echo "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>"
                   name='return'/>
        </form>
    </div>

    <div class="clearfix"></div>
    <?php
    if ($total_comment) {
        $return = base64_encode($url);
        ?>
        <div class='comments_contents'>
            <div id="list-comment">
                <?php $i = 1;
                foreach ($list_parent as $item) { ?>
                    <?php
                    echo display_comment_item($item, $list_children, 0, 3, $return);
                    if ($i >= 5) {
                        break;
                    }
                    ?>
                    <?php $i++;
                } ?>
            </div>
            <?php
            if (count($list_parent) >= 5) {
                ?>
                <div class="view-more-cm">
                    <?php echo FSText::_('Xem thêm')?>
                </div>
            <?php } ?>
            <input type="hidden" id="total_page" name="total_page" value="<?php echo ceil($total / $limit); ?>"/>
            <input type="hidden" id="record_id" value="<?php echo $data->id; ?>"/>
            <input type="hidden" id="url_current" name="url_current" value="<?php echo $_SERVER["REQUEST_URI"] ?>"/>
        </div>
<!--        <div class='comments_contents visible-xs'>-->
<!--            <div id="list-comment_mb">-->
<!--                --><?php //$i = 1;
//                foreach ($list_parent as $item) { ?>
<!--                    --><?php
//                    echo display_comment_item($item, $list_children, 0, 3, $return);
//                    if ($i >= 2) {
//                        break;
//                    }
//                    ?>
<!---->
<!--                    --><?php //$i++;
//                } ?>
<!--            </div>-->
<!--            --><?php
//            if ($total_comment >= 2) {
//                ?>
<!--                <div class="view-more-cm">-->
<!--                    --><?php //echo FSText::_('Xem thêm')?>
<!--                </div>-->
<!--            --><?php //} ?>

<!--        </div>-->
    <?php } ?>
</div>
<?php
function display_comment_item($item, $childdren, $level, $max_level = 2, $return)
{
    $html = '';
    $sub = ($level >= $max_level) ? ($max_level % 2) : ($level % 2);
    $html .= '<div class="cf comment-item comment-item-125  comment_level_0 comment_sub_0">';
//	$html .= '<img class="img-cm fl " src="'.URL_ROOT.'images/user.png">';
    $html .= '<div class="wrapper_comment_content fl ">
		<div class="info_cm "> 
			<span class="name ">';
    $html .= '<strong class="text_b_cm">' . $item->name . '</strong>';
    $html .= '</div> 
	</div>';
    $html .= '<div class="star-detail fl" data-rating="' . ceil(($item->rating)) . '"></div>';
    $html .= '<span class="date"> | &nbsp;&nbsp;&nbsp;  ' . date('H:s:i d/m/Y', strtotime($item->created_time)) . ' </span>';

    $html .= '<div class="comment_content ">' . $item->comment . '</div>';
    if (count(@$childdren[$item->id])) {
    $html .='<div class="wrapper-admin-rep">';
        foreach ($childdren[$item->id] as $ad_cm) {
            $html .= '<div class="wrapper_comment_content "> ';
            $html .= '<div class="info_cm "> ';
            $html .= '<span class="name "><span class="text_b_cm">' . $ad_cm->name . '</span>';
            $html .= '<span class="text_qtv">QTV</span>';
            $html .= '</span>';
//            $html .= '<span class="date "> (' . date('d/m/Y', strtotime($ad_cm->created_time)) . ')</span> ';
            $html .= '</div> ';
            $html .= '<div class="comment_content "> ';
            $html .= $ad_cm->comment;
            $html .= '</div>';
            $html .= '</div>';

        }
    $html .= '</div>';
    }
    $html .= '</div>';
    return $html;
}

?>
<input type="hidden" id="prd_id" value="<?php echo FSInput::get('id'); ?> ">