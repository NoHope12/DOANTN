<?php
/*
 * Huy write
 */
// controller

class ContactControllersContact extends FSControllers
{
	function display()
	{
		// call models
		$model = $this->model;

		global $tags_group;

		//			$categories = $model->get_records(' published = 1 ','fs_news_categories','id,name,alias');

		$query_body = $model->set_query_body();
		$list = $model->get_list($query_body);

		foreach ($list as $item) {
			$list_filter_cat[$item->category_name][] = $item;
		}
		$total = $model->getTotal($query_body);
		// $pagination = $model->getPagination($total);
		// $list_cat = $model->get_list_cat();
		$menu_phu = $model->get_menu_phu();
		$menu = $model->get_menu('WHERE level = 1 ORDER BY ordering ASC');
		$lv = 1;
		$lv_child = $lv + 1;

		foreach ($menu as $item) {
			$item->child = $model->get_menu('WHERE published = 1 and level = 2 and parent_id = ' . $item->id . ' ORDER BY ordering ASC');

			foreach ($item->child as $val) {
				$val->child = $model->get_menu('WHERE published = 1 and level = 3 and parent_id = ' . $val->id . ' ORDER BY ordering ASC');
			}
		}
		$breadcrumbs = array();
		$breadcrumbs[] = array(0 => FSText::_('Tin tức'), 1 => FSRoute::_('index.php?module=news&view=home&Itemid=2'));
		global $tmpl;
		$tmpl->assign('breadcrumbs', $breadcrumbs);
		$tmpl->set_seo_special();

		// call views			
		include 'modules/' . $this->module . '/views/' . $this->view . '/default.php';
	}
	function search()
	{
		$year = FSInput::get('year');
		$select = FSInput::get('select');
		// call models
		$model = $this->model;

		global $tags_group;

		//			$categories = $model->get_records(' published = 1 ','fs_news_categories','id,name,alias');

		$query_body = $model->set_query_body();
		$list = $model->get_list($query_body);
		$total = $model->getTotal($query_body);
		$pagination = $model->getPagination($total);
		$list_cat = $model->get_list_cat();
		$menu = $model->get_menu('WHERE level = 1 ORDER BY ordering ASC');

		$breadcrumbs = array();
		$breadcrumbs[] = array(0 => FSText::_('Tin tức'), 1 => FSRoute::_('index.php?module=news&view=home&Itemid=2'));
		global $tmpl;
		$tmpl->assign('breadcrumbs', $breadcrumbs);
		$tmpl->set_seo_special();

		// call views			
		include 'modules/' . $this->module . '/views/' . $this->view . '/default.php';
	}
	// function save()
	// {
	// 	//			if(! $this -> check_captcha())
	// 	//			{
	// 	//				echo '<div id="message_rd"><div class="message-content suc">Bạn nhập sai mã hiển thị</div></div>';
	// 	//				echo "<script type='text/javascript'>alert('Bạn nhập sai mã hiển thị'); </script>";
	// 	//				$this -> display();
	// 	//				return;
	// 	//			}
	// 	$model = new ContactModelsContact();
	// 	$id = $model->save();
	// 	if ($id) {
	// 		$link = FSRoute::_("index.php?module=contact");
	// 		$msg = FSText::_("Nội dung đã được gửi. Xin cảm ơn vì đã liên hệ với chúng tôi!");
	// 		//				if(!$this -> send_mail()){
	// 		//					$msg = FSText::_("Nội dung đã được gửi. Xin cảm ơn vì đã liên hệ với chúng tôi!");
	// 		//				}
	// 		setRedirect($link, $msg);
	// 		return;
	// 	} else {
	// 		echo "<script type='text/javascript'>alert('Xin lỗi bạn không thể gửi được cho BQT'); </script>";
	// 		$this->display();
	// 		return;
	// 	}
	// }
	function save()
    {
        $model = $this->model;
        $fullname = FSInput::get('fullname');
        // $email = FSInput::get('email');
        $phone = FSInput::get('phone');
        $job = FSInput::get('job');

        //$rs = $this->sendMailFS2($firstname . ' ' . $lastname, $email, $content);
        $rs = 1;
        if ($rs == 1) {
            $row = array();
            $row['fullname'] = $fullname;
            // $row['email'] = $email;
            $row['telephone'] = $phone;
            $row['job'] = $job;
            $row['created_time'] = date('Y-m-d H:i:s');
            $row['published'] = 1;
            $model->_add($row, 'fs_contact');
            //  setRedirect(FSRoute::_('index.php?module=home&view=default&Itemid=6'), FSText::_('Cảm ơn bạn đã gửi thông tin liên hệ!'), 'success');
        } else {
            setRedirect(URL_ROOT, FSText::_('Có lỗi xảy ra vui lòng thử lại'), 'error');
        }
    }
}
