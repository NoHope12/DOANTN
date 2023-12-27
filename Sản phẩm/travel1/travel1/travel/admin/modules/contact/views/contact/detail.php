<?php
    $title = @$data ? FSText :: _('Xem'): FSText :: _('Add'); 
    global $toolbar;
    $toolbar->setTitle($title);
    //$toolbar->addButton('apply',FSText :: _('Apply'),'','apply.png'); 
    //$toolbar->addButton('Save',FSText :: _('Save'),'','save.png'); 
    $toolbar->addButton('back',FSText :: _('Cancel'),'','cancel.png');   
    // $this->dt_col_start('col-xs-12 col-md-8 connectedSortable', 1);
	$this -> dt_form_begin(1,4,$title.' '.FSText::_('Liên hệ'));

//    TemplateHelper::dt_edit_text(FSText :: _('Title'),'title',@$data -> title);
    TemplateHelper::dt_edit_text(FSText :: _('Họ tên'),'fullname',@$data -> fullname);
?>

<?php
    // TemplateHelper::dt_edit_text(FSText :: _('Email'),'email',@$data -> email);
    TemplateHelper::dt_edit_text(FSText :: _('Số điện thoại'),'telephone',@$data -> telephone);
    TemplateHelper::dt_edit_text(FSText :: _('Công việc'),'job',@$data -> job);
    // TemplateHelper::dt_edit_text(FSText :: _('Money'),'money',@$data -> money);
    // TemplateHelper::dt_edit_text(FSText :: _('Trạng thái nạp tiền'),'da_nap_tien',@$data -> da_nap_tien);
    // TemplateHelper::dt_edit_text(FSText :: _('Mục đích chuyển tiền'),'purpose',@$data -> purpose);
    // TemplateHelper::dt_edit_text(FSText :: _('Đươn vị tiền tệ'),'currency',@$data -> currency);
//    TemplateHelper::dt_edit_text(FSText :: _('Address'),'address',@$data -> address);
?>

<?php
    // TemplateHelper::dt_edit_text(FSText :: _('Nội dung'),'content',@$data -> content,'',650,450,1,'','','col-sm-2','col-sm-10');
    
    $this -> dt_form_end(@$data,1);  
    // $this -> dt_col_end();
?>