<?php

class About_usModelsAbout_us extends FSModels
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
        $date1 = FSInput::get("date_search");
        $year = FSInput::get('year');
        $select = FSInput::get('select');
        $where = "";
        if (
            $year
        ) {
            $where .= ' AND created_time=' . $year . ' ';
        };
        if (
            $select
        ) {
            $where .= ' AND category_id=' . $select . ' ';
        };
        $fs_table = FSFactory::getClass('fstable');
        $query = " FROM " . $fs_table->getTable('fs_about', 1) . "
						  WHERE 
						  	 published = 1
						  	" . $where .
            " ORDER BY created_time DESC, id DESC 
						 ";

        return $query;
    }

    function get_list($query_body)
    {
        $id = FSInput::get2('id', 0, 'int');
        if (!$query_body)
            return;

        global $db;
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT id,title,summary,image, alias,content FROM " . $fs_table->getTable('fs_about', 1) . " where published = 1 and id = $id";
        // $query .= $query_body;
        //print_r($query);
        $sql = $db->query_limit($query, $this->limit, $this->page);
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

    function getPagination($total)
    {
        FSFactory::include_class('Pagination');
        $pagination = new Pagination($this->limit, $total, $this->page);
        return $pagination;
    }

    // function get_list_cat() {
    //     $fs_table = FSFactory::getClass('fstable');
    //     $query = " SELECT *
    // 					FROM " . $fs_table->getTable('fs_pictures_categories',1) . " 
    // 					WHERE published = 1";
    //     global $db;
    //     $sql = $db->query($query);
    //     $result = $db->getObjectList();
    //     return $result;
    // }

    function get_menu()
    {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
						FROM " . $fs_table->getTable('fs_menus_items', 1) . " 
						WHERE published = 1 and list_parent = 4 AND level = 1";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function get_image()
    {
        $id = FSInput::get2('id', 0, 'int');
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
						FROM " . $fs_table->getTable('fs_about_us_images', 1) . " 
						WHERE record_id = $id";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
}
