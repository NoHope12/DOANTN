<?php

class Contact1ModelsContact extends FSModels
{

    function __construct()
    {
        parent::__construct();
        global $module_config;
        $this->limit = 10;
    }

    /*
     * select cat list is children of catid
     */

    function set_query_body()
    {
        $id = FSInput::get('id', 0, 'int');

        $date1 = FSInput::get("date_search");
        $year = FSInput::get('year');
        $select = FSInput::get('select');
        $fs_table = FSFactory::getClass('fstable');
        $query = " FROM " . $fs_table->getTable('fs_destination', 1) . "
						  WHERE published = 1 and category_id_wrapper like '%," . $id . ",%' ORDER BY id ASC 
						 ";

        return $query;
    }

    function get_list($query_body)
    {
        if (!$query_body)
            return;

        global $db;
        $query = " SELECT *";
        $query .= $query_body;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function get_list_cat()
    {
        $id = FSInput::get('id', 0, 'int');
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
						FROM " . $fs_table->getTable('fs_destination_categories', 1) . " 
						WHERE published = 1 and level = 1 and parent_id = $id";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function get_link()
    {
        $id = FSInput::get('id', 0, 'int');
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
						FROM " . $fs_table->getTable('fs_tour', 1) . " 
						WHERE published = 1 and id=53";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    /*
     * return products list in category list.
     * These categories is Children of category_current
     */

    function getTotal($query_body)
    {
        if (!$query_body)
            return;
        global $db;
        $query = "SELECT count(*)";
        $query .= $query_body;
        $sql = $db->query($query);
        $total = $db->getResult();
        return $total;
    }


    function get_menu($where)
    {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
                        FROM " . $fs_table->getTable('fs_menus_items', 1) . " 
                        $where ";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function get_menu_phu()
    {
        $id = FSInput::get('id', 0, 'int');
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
                        FROM " . $fs_table->getTable('fs_destination_categories', 1) . " 
                        WHERE published = 1  AND id = $id";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function get_categories_tree()
    {
        $fs_table = FSFactory::getClass('fstable');
        global $db;
        $query = " SELECT a.*
						  FROM 
						  " . $fs_table->getTable('fs_menus_items', 1) . " AS a
						  WHERE group_id = 2 level = 0
						  	ORDER BY ordering ";
        $sql = $db->query($query);
        $result = $db->getObjectList();
        $tree  = FSFactory::getClass('tree', 'tree/');
        $list = $tree->indentRows2($result);
        return $list;
    }
    function save()
    {
        if (!empty($_REQUEST['contact_me_by_fax_only']) && (bool) $_REQUEST['contact_me_by_fax_only'] == TRUE) {
            return;
        }
        $email = FSInput::get('email');
        $fullname = FSInput::get('fullname');
        $phone = FSInput::get('phone');
        // $subject = FSInput::get('subject');
        // $address = FSInput::get('address');
        // $country = FSInput::get('country');
        // $summary = FSInput::get('text');
        $time = date("Y-m-d H:i:s");
        $published = 0;

        $sql = " INSERT INTO 
						fs_contact (`email`,fullname,phone,created_time,published)
						VALUES ('$email','$fullname','$phone','$time','$published')";
        global $db;
        // $db->query($sql);
        $id = $db->insert($sql);
        return $id;
    }
}
