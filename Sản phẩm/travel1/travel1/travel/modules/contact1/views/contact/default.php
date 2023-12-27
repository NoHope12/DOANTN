<?php
global $config, $tmpl, $device;
$tmpl->addStylesheet('home', 'modules/contact1/assets/css');
$tmpl->addScript2('https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js');
$tmpl->addScript('form', 'templates/default/js', 'bottom');
$tmpl->addScript('contact', 'modules/contact1/assets/js', 'bottom');
$url = $_SERVER['REQUEST_URI'];
// $code = FSInput::get('code');
// if (!empty($list)) 
// echo $url;die;
$text_fullname = FSText::_('Bạn phải nhập họ và tên');
$text_email = FSText::_('Bạn phải nhập email');
$text_mail_check = FSText::_('Email nhập không hợp lệ');
$text_phone = FSText::_('Bạn phải nhập số điện thoại');
$text_phone_check = FSText::_('Bạn nhập số điện thoại không hợp lệ');
$text_text = FSText::_('Hãy nhập nội dung'); {
?>
    <!-- Section home -->
    <section class="box-banner">
        <img src="templates/default/images/dalat2.jpg" alt="" />
        <div class="filter-bg"></div>
        <div class="wrap title-banner">
            <h1>Liên hệ chúng tôi</h1>
            <span>The Best for Our Customers</span>
            <div class="back-page">
                <a href="/">Trang chủ</a>
                <a>Liên hệ</a>
            </div>
        </div>
    </section>
    <input type="hidden" value="<?php echo $text_fullname ?>" name="" id="text_fullname">
    <input type="hidden" value="<?php echo $text_email ?>" name="" id="text_email">
    <input type="hidden" value="<?php echo $text_mail_check ?>" name="" id="text_contact_email_check">
    <input type="hidden" value="<?php echo $text_phone ?>" name="" id="text_phone">
    <input type="hidden" value="<?php echo $text_phone_check ?>" name="" id="text_phone_check">
    <input type="hidden" value="<?php echo $text_text ?>" name="" id="text_text">
    <aside class="contents-detail">
        <div class="container">
            <div class="corporate-contacts">
                <h2><?php echo FSText::_('Corporate contacts') ?></h2>
                <?php echo $config['contact'] ?>
            </div>
            <div class="contact">
                <form method="post" action="#" name="contact" class="form form-contact" enctype="multipart/form-data">
                    <div class="row">
                        <div class="form-group col-md-4 input">
                            <label><?php echo FSText::_('Fullname') ?> *</label>
                            <input type="text" class="form-control" id="fullname" name="fullname" value="">
                        </div>
                        <div class="form-group col-md-4 input">
                            <label><?php echo FSText::_('Email') ?> *</label>
                            <input type="text" class="form-control" id="email" name="email" value="">
                        </div>
                        <div class="form-group col-md-4 input">
                            <label><?php echo FSText::_('Phone') ?> *</label>
                            <input type="number" class="form-control" id="phone" name="phone" value="">
                        </div>
                        <div class="form-group col-md-12 input">
                            <label><?php echo FSText::_('Write your comments here') ?> *</label>
                            <textarea name="text" id="text" rows="7"></textarea>
                        </div>
                    </div>
                    <div class="button">
                        <a class="send" href="javascript: void(0)" id='submitbt'><?php echo FSText::_('Send') ?></a>
                        <a href="#" class="cancel"><?php echo FSText::_('Cancel') ?></a>
                    </div>

            </div>
            <input type="hidden" name='return' value='<?php echo $return; ?>' />
            <input type="hidden" name="module" value="contact1" />
            <input type="hidden" name="task" value="save" />
            <input type="hidden" name="view" value="contact" />
            <input type="text" name="contact_me_by_fax_only" style="opacity: 0 !important" tabindex="-1" autocomplete="off">
            </form>

        </div>
        </div>
    </aside>
<?php } ?>