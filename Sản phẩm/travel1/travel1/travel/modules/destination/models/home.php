<?php

class DestinationModelsHome extends FSModels {

    function __construct() {
        parent::__construct();
        global $module_config;
        $this->limit = 10;
    }

    /*
     * select cat list is children of catid
     */

    function set_query_body() {
        $date1 = FSInput::get("date_search");
        $where = "";
        $fs_table = FSFactory::getClass('fstable');
        $query = " FROM " . $fs_table->getTable('fs_destination',1) . "
						  WHERE 
						  	 published = 1
						  	" . $where .
                " ORDER BY created_time DESC, id DESC 
						 ";

        return $query;
    }

    function get_list($query_body) {
        if (!$query_body)
            return;

        global $db;
        $query = " SELECT id,title,summary,image, created_time,category_id,category_name, category_alias, alias";
        $query .= $query_body;
        //print_r($query);
        $sql = $db->query_limit($query, $this->limit, $this->page);
        $result = $db->getObjectList();
        return $result;
    }

    /*
     * return products list in category list.
     * These categories is Children of category_current
     */

    function getTotal($query_body) {
        if (!$query_body)
            return;
        global $db;
        $query = "SELECT count(*)";
        $query .= $query_body;
        $sql = $db->query($query);
        $total = $db->getResult();
        return $total;
    }

    function getPagination($total) {
        FSFactory::include_class('Pagination');
        $pagination = new Pagination($this->limit, $total, $this->page);
        return $pagination;
    }

    function get_list_cat() {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
						FROM " . $fs_table->getTable('fs_destination_categories',1) . " 
						WHERE published = 1";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }

    function get_destination() {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
						FROM " . $fs_table->getTable('fs_destination',1) . " 
						WHERE published = 1";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }

}

?>