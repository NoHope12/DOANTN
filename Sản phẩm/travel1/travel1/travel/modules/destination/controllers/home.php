<?php
/*
 * Huy write
 */
	// controller
	
	class destinationControllersHome extends FSControllers
	{
		function display()
		{			
			// call models
			$model = $this -> model;

			global $tags_group;
			
//			$categories = $model->get_records(' published = 1 ','fs_news_categories','id,name,alias');

			$query_body = $model->set_query_body();
			$list = $model->get_list($query_body);
			$total = $model->getTotal($query_body);
			$pagination = $model->getPagination($total);
            $list_cat = $model->get_list_cat();
            $destination = $model->get_destination();

			$breadcrumbs = array();
			$breadcrumbs[] = array(0=> FSText::_('Tin tức'), 1 => FSRoute::_('index.php?module=news&view=home&Itemid=2'));
			global $tmpl;	
			$tmpl -> assign('breadcrumbs', $breadcrumbs);
			$tmpl -> set_seo_special();
			
			// call views			
			include 'modules/'.$this->module.'/views/'.$this->view.'/default.php';
		}
	}
	
?>