<?php 
	class MainMenuBModelsMainMenu
	{
		function __construct()
		{
		}
		
		function getList($group){
			if(!$group)	
				return;
			global $db;
            
			$fstable  = FSFactory:: getClass('fstable');
//			var_dump($fstable);die;
//			$table_name = 'fs_menus_items'; //$fstable->_('fs_menus_items');
			$table_name = $fstable->_('fs_menus_items');
//			echo $table_name;die;
//			echo $_SESSION['lang'].'<br/>';
//			echo $table_name; die;

			$sql = " SELECT id,image, icon,link, name, level, parent_id as parent_id, 
                            target, description,style,link,summary,bk_color
					        FROM ".$table_name."
					        WHERE published  = 1
						    AND group_id = $group 
					        ORDER BY ordering ASC
                    ";
			$db->query($sql);
			$result =  $db->getObjectList();
			$tree_class  = FSFactory::getClass('tree','tree/');
			return $list = $tree_class -> indentRows($result,3);
		}
		function get_list2($id_cur,$tab_s){
            global $db;
            $query = "SELECT * FROM $tab_s WHERE id = $id_cur";
            $db->query($query);
            $result = $db->getObject();
            return $result;
        }

	}
?>