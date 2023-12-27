<?php
class MembersModelsMembers extends FSModels{

    function __construct(){
        parent::__construct();
        $this->img_folder = 'images/members/'.date('Y/m');

        $this->avatar_paths = array(
            array('avatar', 60, 60, 'resize_image_fix')
        );
    }

    /**
     * Lấy danh đơn hàng
     * @return Object list
     */
    function getOrders(){
        global $db, $user;
        $query = '  SELECT *
                    FROM fs_order
                    WHERE user_id = '.$user->userID.'
                    ORDER BY id DESC';
        $db->query_limit($query, $this->limit, $this->page);
        return $db->getObjectList();
    }

    function getOrdersTotal()
    {
        global $db, $user;
        $query = '  SELECT count(id)
                    FROM fs_order
                    WHERE user_id = '.$user->userID.'
                    ORDER BY id DESC';
        $db->query($query);
        $total = $db->getResult();
        return $total;
    }

    function getPaginationOrders($total) {
        FSFactory::include_class('Pagination');
        $pagination = new Pagination($this->limit, $total, $this->page);
        return $pagination;
    }

    function getOrderProducts($id){
        global $db, $user;
        $query = '  SELECT b.id, b.name, a.*
                    FROM fs_order_items AS a INNER JOIN fs_products AS b ON a.product_id = b.id
                    WHERE a.order_id = '.$user->userID.'
                    ORDER BY a.id ASC';
        $db->query($query);
        return $db->getObjectList();
    }

    public function transaction_history_total()
    {
        global $db, $user;
        $query = '  SELECT COUNT(id) AS order_numbers, COUNT(case when `status`=1 then 1 end) AS order_success, SUM(total_after_discount) as order_amount
                    FROM fs_order
                    WHERE user_id = '.$user->userID.'
                    ORDER BY id DESC';
        $db->query($query);
        return $db->getObject();
    }

}