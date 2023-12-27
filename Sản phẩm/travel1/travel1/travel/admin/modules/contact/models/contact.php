<?php
class contactModelscontact extends FSModels
{
	var $limit;
	var $prefix;
	function __construct()
	{
		$this->limit = 10;
		$this->view = 'contact';
		$this->table_name = FSTable_ad::_('fs_contact');
		parent::__construct();
	}
	function get_Game()
	{
		$fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *  FROM " . $fs_table->getTable('fs_contact', 1);
        global $db;
        // print_r($query);die;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
	}
	function setQuery()
	{

		// ordering
		$ordering = "";
		if (isset($_SESSION[$this->prefix . 'sort_field'])) {
			$sort_field = $_SESSION[$this->prefix . 'sort_field'];
			$sort_direct = $_SESSION[$this->prefix . 'sort_direct'];
			$sort_direct = $sort_direct ? $sort_direct : 'asc';
			$ordering = '';
			if ($sort_field)
				$ordering .= " ORDER BY $sort_field $sort_direct, created_time DESC, id DESC ";
		}
		if (!$ordering)
			$ordering .= " ORDER BY created_time DESC , id DESC ";

		$where = "  ";

		if (isset($_SESSION[$this->prefix . 'keysearch'])) {
			if ($_SESSION[$this->prefix . 'keysearch']) {
				$keysearch = $_SESSION[$this->prefix . 'keysearch'];
				$where .= " AND fullname LIKE '%" . $keysearch . "%' ";
			}
		}

		// from
		if (isset($_SESSION[$this->prefix . 'text0'])) {
			$date_from = $_SESSION[$this->prefix . 'text0'];
			if ($date_from) {
				$date_from = strtotime($date_from);
				$date_new = date('Y-m-d H:i:s', $date_from);
				$where .= ' AND a.created_time >=  "' . $date_new . '" ';
			}
		}

		// to
		if (isset($_SESSION[$this->prefix . 'text1'])) {
			$date_to = $_SESSION[$this->prefix . 'text1'];
			if ($date_to) {
				$date_to = $date_to . ' 23:59:59';
				$date_to = strtotime($date_to);
				$date_new = date('Y-m-d H:i:s', $date_to);
				$where .= ' AND a.created_time <=  "' . $date_new . '" ';
			}
		}

		$query = " SELECT a.*
						  FROM 
						  fs_contact AS a
						  	WHERE 1=1" .
			$where .
			$ordering . " ";

		return $query;
	}

	function save($row = array(), $use_mysql_real_escape_string = 1)
	{
		$name = FSInput::get('name');
		if (!$name)
			return false;
		$row['map'] = htmlspecialchars_decode(FSInput::get('map'));
		$row['link_map'] = htmlspecialchars_decode(FSInput::get('link_map'));
		$row['description'] = htmlspecialchars_decode(FSInput::get('description'));
		$alias = FSInput::get('alias');
		$fsstring = FSFactory::getClass('FSString', '', '../');
		if (!$alias) {
			$row['alias'] = $fsstring->stringStandart($name);
		} else {
			$row['alias'] = $fsstring->stringStandart($alias);
		}
		return parent::save($row);
	}

	function get_parts()
	{
		global $db;
		$query = " SELECT a.*
						  FROM fs_contact_parts AS a
						  	WHERE published = 1 ORDER BY ordering ";
		$sql = $db->query($query);
		$list = $db->getObjectList();
		return $list;
	}
}
