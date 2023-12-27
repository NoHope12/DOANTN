<?php
	class PartnersControllersCategories extends ControllersCategories{
	   function __construct()
		{
			$this->view = 'categories' ; 
			parent::__construct(); 
		}

        function edit()
		{
			$model =  $this -> model;
			$ids = FSInput::get('id',array(),'array');
			$id = $ids[0];
			$data = $model->get_record_by_id($id);
			$categories = $model->get_categories_tree();
            $business = $model->get_records('1', 'fs_business','id,name');
            $region = $model->get_records('1', 'fs_region','id,name');


            // echo 'modules/'.$this->module.'/views/'.$this->view.'/detail.php';
			include 'modules/'.$this->module.'/views/'.$this->view.'/detail.php';
		}
        function add()
        {
            $model =  $this -> model;

            $maxOrdering = $model->getMaxOrdering();
            $categories = $model->get_categories_tree();
            $tables = $model->get_tablenames();
            $khuvuc = $model->get_records('1', 'fs_khuvuc','id,name');
            $business = $model->get_records('1', 'fs_business','id,name');
            $region = $model->get_records('1', 'fs_region','id,name');

            include 'modules/'.$this->module.'/views/'.$this->view.'/detail.php';
        }
	}
	
?>