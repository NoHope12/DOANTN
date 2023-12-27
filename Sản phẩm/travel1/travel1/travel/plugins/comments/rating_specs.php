<?php  	global $tmpl;
	$tmpl -> addStylesheet('rating','plugins/comments/css');
	$tmpl -> addScript('rating_special','plugins/comments/js');
	$url = $_SERVER['REQUEST_URI'];
	$module = FSInput::get ( 'module' );
	$view = FSInput::get ( 'view' );
	$rid = FSInput::get ( 'id' );
	$arr_rating = array(
		5=>'Xuất sắc',
		4=>'Rất tốt',
		3=>'Trung bình',
		2=>'Tàm tạm',
		1=>'Kém',
	);
	$return = base64_encode($url);
	if(empty($_SESSION['user_id'])) {
		$login = 0;
	}else{
		$login = 1;
	}
?>
<div class='comments'>

		<!-- FORM COMMENT	-->
		
		<div class='comment_form cf'  id="comment_form">
			<form action="#" method="post" name="comment_add_form" id='comment_add_form' class='form_comment'>
				
                            <div class="left-cm">
                                <div class='row-cm'>
                                    <div class='label-form'>Họ và tên của bạn<span class='required'>*</span></div>
                                    <input type="text" id="name" name="name" placeholder="Họ và tên" value=""  class="txt_input"/>
                                </div>
                                <div class='row-cm'>
                                <div class='label-form'>Email của bạn</div>
                                <input type="text" id="email" name="email"  placeholder="Email"  class="txt_input"/>
                                </div>
<!--                                <div class='row-cm'>
                                    <div class='wrapper-capcha'>
                                        <img id="imgCaptcha" src="<?php echo URL_ROOT?>libraries/jquery/ajax_captcha/create_image.php" />
                                        <a href="javascript:changeCaptcha();"  title="Click here to change the captcha" class="code-view" >&nbsp;</a>
                                        <input type="text" id="txtCaptcha" value="" class="txt_input" name="txtCaptcha"  />
                                    </div>
                                </div>-->
                            </div>
                            <div class="right-cm">
                                
                                <div class='row-cm'>
                                    	<div class='label-form yr-cm'>Nhận xét của bạn<span class='required'>*</span></div>
                                            <textarea id="full_rate" class="txt_input" placeholder="Viết nhận xét của bạn tại đây..." rows="6" name="full_rate"></textarea>
                                            <div class='wrapper-capcha'>
                                                <img id="imgCaptcha" src="<?php echo URL_ROOT?>libraries/jquery/ajax_captcha/create_image.php" />
                                                <a href="javascript:changeCaptcha();"  title="Click here to change the captcha" class="code-view" >&nbsp;</a>
                                                <input type="text" id="txtCaptcha" value="" class="txt_input" name="txtCaptcha"  />
                                                <input type='button' class="button submitbt" value='Gửi bình luận' id='submitbt'>
                                            </div>
                                            
                                </div>
                            </div>
					
						
				<input type="hidden" value="<?php echo $module;?>" name='module' />
				<input type="hidden" value="<?php echo $view;?>" name='view' />
				<input type="hidden" value="save_comment" name='task' />
				<input type="hidden" value="<?php echo $_SESSION['user_id'];?>" name='user_id' />
				<input type="hidden" value="<?php echo $_SESSION['fullname'];?>"  name="user_name"/>
				<input type="hidden" value="<?php echo $_SESSION['user_email'];?>" name='user_email' />
				<input type="hidden" value="<?php echo $rid;?>" name='record_id' id='record_id'  />
				<input type="hidden" value="<?php echo "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; ?>" name='return'  />
			</form>
		</div>
	<?php 
		if($total_comment){
		$return = base64_encode($url);
//                print_r($list_parent);die;
		?>
			<div class='comments_contents'>
                            <div id="list-comment">
			<?php foreach ($list_parent as $item){ ?>
				<?php echo  display_comment_item($item,$comments_ad,0,3,$return);?>
			<?php }?>
                            </div> 
                            <?php 
                                if($total_comment/$limit>=1){
                            ?>
                            <div class="view-more-cm"> 
                                        Xem thêm các bình luận khác
                                    </div>
                                <?php } ?>
                            <input type="hidden" id="total_page" name="total_page" value="<?php echo ceil($total/$limit); ?>" />
                            <input type="hidden" id="record_id" value="<?php echo $data->id; ?>" />
                            <input type="hidden" id="url_current" name="url_current" value="<?php echo $_SERVER["REQUEST_URI"]?>" />
			</div>
		<?php }?>
</div>
<?php 
function display_comment_item($item,$comments_ad,$level,$max_level = 2,$return){
    
	$sub = ($level >= $max_level) ? ($max_level % 2) : ($level % 2);
	$html = '<div class="cf comment-item comment-item-'.$item -> id.' '. ($item -> parent_id? "comment-child":""). ' comment_level_'.$level.' comment_sub_'.$sub.'"   >';
	$html.='<img class="img-cm fl " src="'.URL_ROOT.'images/user.png" />';	
        $html .= '<div class="wrapper_comment_content "> ';
        $html .= '<div class="info_cm "> ';
	$html .= '<span class="name ">Bình luận bởi <span class="text_b_cm">'.$item -> name.'</span></span>';
	$html .= '<span class="date "> ('. date('d/m/Y',strtotime($item -> created_time)).')</span> ';
        if($item -> email){
	$html .= '<span class="date "> - Email: <span class="text_b_cm">'.$item -> email.'</span></span> ';
        }
	$html .= '</div> ';
	$html .= '<div class="comment_content "> ';
	$html .=  $item -> full_rate;
	$html .= '</div>';
        ?><?php 
        $cm=0;
        foreach($comments_ad as $ad_cm){ 
			$cm=0;
            if($ad_cm->parent_id==$item->id){
                if($cm==0){
                    $html .= '<div class="border-cm"></div>';
				}	
            $html.='<img class="img-cm fl " src="'.URL_ROOT.'images/admin.png" />';	
            $html .= '<div class="wrapper_comment_content "> ';
            $html .= '<div class="info_cm "> ';
            $html .= '<span class="name ">Trả lời bởi <span class="text_b_cm">'.$ad_cm -> name.'</span></span>';
            $html .= '<span class="date "> ('. date('d/m/Y',strtotime($ad_cm -> created_time)).')</span> ';
            $html .= '</div> ';
            $html .= '<div class="comment_content "> ';
            $html .=  $ad_cm -> comment;
            $html .= '</div>';    
            $html .= '</div>'; 		
            } 	
            $cm++;
		} 
	$html .= '</div>';
	$html .= '</div>';
	
	return $html;
}
?>