
<script language="javascript" type="text/javascript" src="../libraries/jquery/jquery.ui/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" media="screen" href="../libraries/jquery/jquery.ui/jquery-ui.css" />
<style>
    @media (min-width: 960px) {
        body table.table-bordered.dataTable tbody td.left{
            max-width: 180px;
            overflow: hidden;
            text-overflow: ellipsis;
        }
    }

</style>

<?php  
global $toolbar;
$toolbar->setTitle(FSText :: _('Liên hệ') );
//$toolbar->addButton('add',FSText :: _('Add'),'','add.png'); 
$toolbar->addButton('export', FSText:: _('Export'), '', 'Excel-icon.png');
$toolbar->addButton('edit',FSText :: _('Edit'),FSText :: _('You must select at least one record'),'edit.png'); 
$toolbar->addButton('remove',FSText :: _('Remove'),FSText :: _('You must select at least one record'),'remove.png'); 

//	FILTER
$filter_config  = array();
$fitler_config['search'] = 1; 

$text_from_date = array();
$text_from_date['title'] =  FSText::_('From day'); 

$text_to_date = array();
$text_to_date['title'] =  FSText::_('To day');

$fitler_config['text'][] = $text_from_date;
$fitler_config['text'][] = $text_to_date;
$fitler_config['text_count'] = 2;
	// CONFIG	
$list_config = array();
$list_config[] = array('title'=>'Họ tên','field'=>'fullname','ordering'=> 1, 'type'=>'text');
$list_config[] = array('title'=>'Điện thoại','field'=>'phone','ordering'=> 1, 'type'=>'text');
$list_config[] = array('title'=>'Điện thoại nạp tiền','field'=>'phone_contact','ordering'=> 1, 'type'=>'text');
$list_config[] = array('title'=>'Created time','field'=>'created_time','ordering'=> 1, 'type'=>'datetime');
$list_config[] = array('title'=>'Số tiền trúng thưởng','field'=>'money','ordering'=> 1, 'type'=>'text');
$list_config[] = array('title'=>'Trạng thái nạp tiền','field'=>'da_nap_tien','ordering'=> 1, 'type'=>'text');
// $list_config[] = array('title'=>'Số tiền trúng thưởng','field'=>'money','ordering'=> 1, 'type'=>'text');
$list_config[] = array('title'=>'ip','field'=>'ip','ordering'=> 1, 'type'=>'text');
$list_config[] = array('title'=>'Xem','type'=>'edit');
$list_config[] = array('title'=>'Id','field'=>'id','ordering'=> 1, 'type'=>'text');
TemplateHelper::genarate_form_liting($this->module,$this -> view,$list,$fitler_config,$list_config,$sort_field,$sort_direct,$pagination);
?>
<script>
	$(function() {
		$( "#text0" ).datepicker({
		  clickInput:true,
          dateFormat: 'dd-mm-yy',
          changeMonth: true,
          numberOfMonths: 2,
          changeYear: true,
          maxDate:  " + d ",
          showMonthAfterYear: true
        });
		$( "#text1" ).datepicker({
		  clickInput:true,
          dateFormat: 'dd-mm-yy',
          changeMonth: true,
          numberOfMonths: 2,
          changeYear: true,
          maxDate:  " + d ",
          showMonthAfterYear: true
        });
	});
</script>