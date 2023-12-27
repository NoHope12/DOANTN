<?php

use WindowsAzure\Table\Models\Query;

class AjaxModelsAjax extends FSModels{
    function __construct(){
        parent::__construct();
    }
    
    function registerNewsletter(){
        $email = FSInput::get('email');
        $created_time = date("Y-m-d H:i:s");
        $sql = "INSERT INTO fs_newsletter (`email`, `created_time`)
                VALUES ('$email', '$created_time')";
        global $db;
        $db->query($sql);
        $id = $db->insert();
        return $id;
    }
    function getDistrictByCity($city_id){
        $query = "SELECT id, `name`, `city_id` ,fee_shipping
                  FROM fs_districts
                  WHERE published = 1 and city_id = $city_id
                  ORDER BY ordering ASC";
        global $db;
        $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function checkEmailExists(){
        global $db;
        $email = FSInput::get('email');
        $query = '  SELECT count(id)
                    FROM fs_newsletter
                    WHERE email = \''.$email.'\''; echo $query;die;
        $result = $db->query($query);
        $total = $db->getResult();
		return $total;
    }
    
    function getTotalByCitiesZone($regions = 0){
        global $db;
        $query = '  SELECT city_id , count(id) AS total
                    FROM fs_lands
                    WHERE published = 1 AND regions_id = '.$regions.'
                    GROUP BY city_id';
        $result = $db->query($query);
        return $db->getObjectListByKey('city_id');
    }

	function saveGetNews(){
		$email = FSInput::get('email', '');
		$name = FSInput::get('name', '');
		$created_time = date("Y-m-d H:i:s");
		$sql = "INSERT INTO fs_email_get_news (`email`,`created_time`,`name`) VALUES ('$email','$created_time','$name')";
		global $db;
		$db->query($sql);
		$id = $db->insert();
		return $id;
	}

	function get_district($city_id) {
		if ($city_id) {
			$where = 'AND city_id = "' . $city_id . '"';
		} else {
			$where = '';
		}
		global $db;
		$order = " ORDER BY ordering DESC, id DESC ";
		$query = "SELECT *
                FROM fs_local_districts
                WHERE published = 1 " . $where . "";
		$db->query($query);

		$result = $db->getObjectList();

		return $result;
	}
}