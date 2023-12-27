<?php

class tourModelsHome extends FSModels
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
        $year = FSInput::get('year') . ' 00:00:00'; //2022
        $year_end = FSInput::get('year') . ' 23:59:59'; //2022
        $select = FSInput::get('select');
        $where = "";
        if (
            FSInput::get('year')
        ) {
            $where .= ' AND created_time >= "' . $year . '" ' . ' AND created_time <= "' . $year_end . '" ';
        };
        $fs_table = FSFactory::getClass('fstable');
        $query = " FROM " . $fs_table->getTable('fs_tour', 1) . "
						  WHERE 
						  	 published = 1
						  	" . $where .
            " ORDER BY created_time DESC, id DESC 
						 ";
        // echo $query;
        // die;
        return $query;
    }
    // function set_query_body()
    // {
    //     $date1 = FSInput::get("date_search");
    //     $year = FSInput::get('year') . '-01 00:00:00'; //2022
    //     $year_end = FSInput::get('year') . '-31 23:59:59'; //2022
    //     $select = FSInput::get('select');
    //     $where = "";
    //     if (
    //         FSInput::get('year')
    //     ) {
    //         $where .= ' AND created_time >= "' . $year . '" ' . ' AND created_time <= "' . $year_end . '" ';
    //     };
    //     $fs_table = FSFactory::getClass('fstable');
    //     $query = " FROM " . $fs_table->getTable('fs_tour', 1) . "
	// 					  WHERE 
	// 					  	 published = 1
	// 					  	" . $where .
    //         " ORDER BY created_time DESC, id DESC 
	// 					 ";
    //     // echo $query;
    //     // die;
    //     return $query;
    // }

    function get_list($query_body)
    {
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

    function get_list_cat()
    {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
						FROM " . $fs_table->getTable('fs_tour_categories', 1) . " 
						WHERE published = 1";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }

    function get_tour()
    {
        $where = "";
        $date1 = FSInput::get("date_search");
        $year = FSInput::get('year') . ' 00:00:00'; //2022
        $year_end = FSInput::get('year') . ' 23:59:59'; //2022
        $select = FSInput::get('select');
        $where = "";
        if (
            FSInput::get('year')
        ) {
            $where .= ' AND created_time >= "' . $year . '" ' . ' AND created_time <= "' . $year_end . '" ';
        };
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
						FROM " . $fs_table->getTable('fs_tour', 1) . " 
						WHERE published = 1 " . $where . "";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    // function get_tour()
    // {
    //     $where = "";
    //     $date1 = FSInput::get("date_search");
    //     $year = FSInput::get('year') . '-01 00:00:00'; //2022
    //     $year_end = FSInput::get('year') . '-31 23:59:59'; //2022
    //     $select = FSInput::get('select');
    //     $where = "";
    //     if (
    //         FSInput::get('year')
    //     ) {
    //         $where .= ' AND created_time >= "' . $year . '" ' . ' AND created_time <= "' . $year_end . '" ';
    //     };
    //     $fs_table = FSFactory::getClass('fstable');
    //     $query = " SELECT *
	// 					FROM " . $fs_table->getTable('fs_tour', 1) . " 
	// 					WHERE published = 1 " . $where . "";
    //     global $db;
    //     $sql = $db->query($query);
    //     $result = $db->getObjectList();
    //     return $result;
    // }

    function get_tour_ct()
    {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
						FROM " . $fs_table->getTable('fs_tour_categories', 1) . " 
						WHERE published = 1";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function get_year()
    {
        global $db;
        $fs_table = FSFactory::getClass('fstable');

        $query = " SELECT *";
        $query .= " FROM " . $fs_table->getTable('fs_tour', 1) . "
        WHERE 
             published = 1 GROUP BY YEAR(created_time), MONTH(created_time),DAY(created_time)
       ";
        // $sql = $db->query_limit($query, $this->limit, $this->page);
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    // function get_year()
    // {
    //     global $db;
    //     $fs_table = FSFactory::getClass('fstable');

    //     $query = " SELECT *";
    //     $query .= " FROM " . $fs_table->getTable('fs_tour', 1) . "
    //     WHERE 
    //          published = 1 GROUP BY YEAR(created_time), MONTH(created_time)
    //    ";
    //     // $sql = $db->query_limit($query, $this->limit, $this->page);
    //     $sql = $db->query($query);
    //     $result = $db->getObjectList();
    //     return $result;
    // }
}
