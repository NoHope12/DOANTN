<?php
// models contact
//	include 'modules/'.$module.'/models/'.$view.'.php';

class contactControllersContact extends Controllers
{
	function __construct()
	{
		$this->view = 'contact';
		parent::__construct();
	}
	function display()
	{
		parent::display();
		$sort_field = $this->sort_field;
		$sort_direct = $this->sort_direct;

		$list = $this->model->get_data('');
		$pagination = $this->model->getPagination('');
		include 'modules/' . $this->module . '/views/' . $this->view . '/list.php';
	}

	function edit()
	{
		$ids = FSInput::get('id', array(), 'array');
		$id = $ids[0];
		$model = $this->model;

		$data = $model->get_record_by_id($id);
		//			$parts = $model->get_parts();
		include 'modules/' . $this->module . '/views/' . $this->view . '/detail.php';
	}
	function export()
	{
		setRedirect('index.php?module=' . $this->module . '&view=' . $this->view . '&task=export_excel_list_newsletter&raw=1');
	}

	function export_excel_list_newsletter()
	{
		ob_end_clean();
		FSFactory::include_class('excel', 'excel');
		//			require_once 'excel.php';
		$model  = $this->model;
		$filename = 'contact-list';
		$list = $model->get_Game();
		if (empty($list)) {
			echo 'error';
			exit;
		} else {
			$excel = FSExcel();
			$excel->set_params(array('out_put_xls' => 'export/excel/' . $filename . '.xls', 'out_put_xlsx' => 'export/excel/' . $filename . '.xlsx'));
			$style_header = array(
				'fill' => array(
					'type' => PHPExcel_Style_Fill::FILL_SOLID,
					'color' => array('rgb' => 'DF9622'),
				),
				'font' => array(
					'bold' => false,
				)
			);
			$style_header1 = array(
				'font' => array(
					'bold' => false,
				)
			);

			$excel->obj_php_excel->getActiveSheet()->getColumnDimension('A')->setWidth(10);
			$excel->obj_php_excel->getActiveSheet()->getColumnDimension('B')->setWidth(30);
			$excel->obj_php_excel->getActiveSheet()->getColumnDimension('C')->setWidth(30);
			$excel->obj_php_excel->getActiveSheet()->getColumnDimension('D')->setWidth(30);

			$excel->obj_php_excel->getActiveSheet()->setCellValue('A1', 'ID');
			$excel->obj_php_excel->getActiveSheet()->setCellValue('B1', 'Họ tên');
			$excel->obj_php_excel->getActiveSheet()->setCellValue('C1', 'Điện thoại');
			$excel->obj_php_excel->getActiveSheet()->setCellValue('D1', 'Công việc');


			foreach ($list as $item) {
				$key = isset($key) ? ($key + 1) : 2;
				$excel->obj_php_excel->getActiveSheet()->setCellValue('A' . $key, $item->id);
				$excel->obj_php_excel->getActiveSheet()->setCellValue('B' . $key, $item->fullname);
				$excel->obj_php_excel->getActiveSheet()->setCellValueExplicit('C' . $key, $item->telephone, PHPExcel_Cell_DataType::TYPE_STRING);
				$excel->obj_php_excel->getActiveSheet()->setCellValue('D' . $key, $item->job);
			}
			$excel->obj_php_excel->getActiveSheet()->getRowDimension(1)->setRowHeight(20);
			$excel->obj_php_excel->getActiveSheet()->getStyle('A1')->getFont()->setSize(12);
			$excel->obj_php_excel->getActiveSheet()->getStyle('A1')->getFont()->setName('Arial');
			$excel->obj_php_excel->getActiveSheet()->getStyle('A1')->applyFromArray($style_header);
			$excel->obj_php_excel->getActiveSheet()->duplicateStyle($excel->obj_php_excel->getActiveSheet()->getStyle('A1'), 'B1:D1');
			$output = $excel->write_files();
			if (ob_get_contents()) ob_end_clean();

			$path_file =   PATH_ADMINISTRATOR . DS . str_replace('/', DS, $output['xls']);
			header("Pragma: public");
			header("Expires: 0");
			header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
			header("Cache-Control: private", false);
			header("Content-type: application/force-download");
			header("Content-Disposition: attachment; filename=\"" . $filename . '.xls' . "\";");
			header("Content-Transfer-Encoding: binary");
			header("Content-Length: " . filesize($path_file));
			readfile($path_file);
		}
	}
}
