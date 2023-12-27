
<?php
class HomeModelsHome extends FSModels
{
    function __construct()
    {
        $this->limit = 10;
        $fstable = FSFactory::getClass('fstable');
        $this->table_name = $fstable->_('fs_contact');
        // $this->table_add = $fstable->_('fs_address');
    }
    function get_destination()
    {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
                        FROM " . $fs_table->getTable('fs_destination', 1) . " 
                        WHERE published = 1 and show_in_homepage = 1 ORDER BY id DESC
                        LIMIT 7";
        global $db;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function get_tour()
    {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
                        FROM " . $fs_table->getTable('fs_tour', 1) . " 
                         WHERE published = 1 and show_in_homepage = 1 ORDER BY id DESC
                         LIMIT 5
                        ";
        global $db;
        // print_r($query);die;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function get_chuyen()
    {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
                        FROM " . $fs_table->getTable('fs_banners', 1) . " 
                         WHERE published = 1 and category_id = 3
                        ";
        global $db;
        // print_r($query);die;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    function get_partners()
    {
        $fs_table = FSFactory::getClass('fstable');
        $query = " SELECT *
                        FROM " . $fs_table->getTable('fs_partners', 1) . " 
                         WHERE published = 1
                        ";
        global $db;
        // print_r($query);die;
        $sql = $db->query($query);
        $result = $db->getObjectList();
        return $result;
    }
    // function get_circular()
    // {
    //     $fs_table = FSFactory::getClass('fstable');
    //     $query = " SELECT *
    //                     FROM " . $fs_table->getTable('fs_videos', 1) . " 
    //                     WHERE published = 1 and show_in_homepage = 1
    //                     LIMIT 1";
    //     global $db;
    //     // print_r($query);die;
    //     $sql = $db->query($query);
    //     $result = $db->getObjectList();
    //     return $result;
    // }
}

?>