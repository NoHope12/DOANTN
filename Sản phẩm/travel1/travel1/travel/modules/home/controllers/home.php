<?php
/*
 * Huy write
 */

// controller
class HomeControllersHome extends FSControllers
{
    var $module;
    var $view;

    function display()
    {
        $model = $this->model;

        global $tmpl, $module_config, $device;
        // FSFactory::include_class('parameters');
        $destination = $model->get_destination();
        $tour = $model->get_tour();
        $chuyen = $model->get_chuyen();
        $partners = $model->get_partners();
        // $circular = $model->get_circular();
        // call views
        include PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/default.php';
    }
}
