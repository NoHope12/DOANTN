<?php 
	$params = array (
		'suffix' => array(
					'name' => 'Hậu tố',
					'type' => 'text',
					'default' => '_mainmenu'
					),
		//'limit' => array(
//					'name' => 'Giới hạn',
//					'type' => 'text',
//					'default' => '6'
//					),
//			
		'style' => array(
					'name'=>'Kiểu Style',
					'type' => 'select',
					'value' => array(
                                    'default' => 'Mặc định',
                                    'left'=>' Menu bên cột phải',
                                    'megamenu'=>'Menu đa cấp top',
                                    'megamenu_bottom'=>'Menu đa cấp bottom',
                                    //'contents2'=>'Menu giới thiệu show',
                                    //'main_activities'=>'Các hoạt động chính'
                                    )
		),
        'group' => array(
					'name'=>'Nhóm menu',
					'type' => 'select',
					'value' => get_category(),
					//'attr' => array('multiple' => 'multiple'),
		 ),
         
        // 'contents_id' => array(
//					'name'=>'Bài viết (dành cho kiểu style giới thiệu)',
//					'type' => 'select',
//					'value' => get_contents(),
//					'attr' => array('multiple' => 'multiple'),
//		),   

	);
    
    function get_category(){
            $fstable  = FSFactory:: getClass('fstable');
			$table_name = 'fs_menus_groups';
            
		    global $db;
			$query = ' SELECT group_name, id 
						FROM '.$table_name.' 
						';
			$sql = $db->query($query);
			$result = $db->getObjectList();
			if(!$result)
			     return;
			$arr_group = array();
            foreach($result as $item){
            	$arr_group[$item -> id] = $item -> group_name;
            }
			return $arr_group;
	}
    
    function get_contents(){
            $fstable  = FSFactory:: getClass('fstable');
			$table_name = $fstable->_('fs_contents');
            
		    global $db;
			$query = ' SELECT title, id 
						FROM '.$table_name.' 
						';
			$sql = $db->query($query);
			$result = $db->getObjectList();
			if(!$result)
			     return;
			$arr_group = array();
            foreach($result as $item){
            	$arr_group[$item -> id] = $item -> title;
            }
			return $arr_group;
	}
?>