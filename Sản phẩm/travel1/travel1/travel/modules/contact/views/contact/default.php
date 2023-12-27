<?php
global $config, $tmpl, $device;
$tmpl->addStylesheet('home', 'modules/contact/assets/css');
$tmpl->addScript2('https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js');
$tmpl->addScript('form', 'templates/default/js', 'bottom');
// $tmpl->addScript('default', 'modules/home/assets/js', 'bottom');
$tmpl->addScript('contact', 'modules/contact/assets/js', 'bottom');
$url = $_SERVER['REQUEST_URI'];
// $code = FSInput::get('code');
// if (!empty($list)) 
// echo $url;die;
$text_fullname = FSText::_('Bạn phải nhập họ và tên');
$text_email = FSText::_('Bạn phải nhập email');
$text_mail_check = FSText::_('Email không hợp lệ');
$text_phone = FSText::_('Bạn phải nhập số điện thoại');
$text_phone_check = FSText::_('Số điện thoại không hợp lệ');
$text_text = FSText::_('Hãy nhập nội dung'); {
?>
    <input type="hidden" value="<?php echo $text_fullname ?>" name="" id="text_fullname">
    <input type="hidden" value="<?php echo $text_email ?>" name="" id="text_email">
    <input type="hidden" value="<?php echo $text_mail_check ?>" name="" id="text_contact_email_check">
    <input type="hidden" value="<?php echo $text_phone ?>" name="" id="text_phone">
    <input type="hidden" value="<?php echo $text_phone_check ?>" name="" id="text_phone_check">
    <input type="hidden" value="<?php echo $text_text ?>" name="" id="text_text">
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

    <section class="box-contact">
        <section class="wrap wrap-contact">
            <div class="title-contact">
                <h1>Liên hệ với chúng tôi</h1>
                <p>
                    Liên hệ với chúng tôi qua email, điện thoại hoặc địa chỉ của chúng
                    tôi dưới đây.
                </p>
            </div>
            <div class="info-contact">
                <a href="tel:0354899836">
                    <div class="card-info-contact">
                        <div class="phone-contact">
                            <i class="fa-solid fa-phone-volume"></i>
                            <span>0354 899 836</span>
                        </div>
                        <div class="text-info-card">
                            <h3>Yêu cầu đặt Tour</h3>
                            <p>
                                This is Photoshop’s version of Lorem Ipsum. Proin gravida nibh
                                vel velit auctor aliquet. Aenean sollicitudin, lorem quis
                                bibendum auctor, nisi elit
                            </p>
                        </div>
                    </div>
                </a>
                <a href="tel:0387094970">
                    <div class="card-info-contact">
                        <div class="phone-contact">
                            <i class="fa-solid fa-phone-volume"></i>
                            <span>0387 094 970</span>
                        </div>
                        <div class="text-info-card">
                            <h3>Đăng bài đăng</h3>
                            <p>
                                This is Photoshop’s version of Lorem Ipsum. Proin gravida nibh
                                vel velit auctor aliquet. Aenean sollicitudin, lorem quis
                                bibendum auctor, nisi elit
                            </p>
                        </div>
                    </div>
                </a>
                <a href="tel:0354899836">
                    <div class="card-info-contact">
                        <div class="phone-contact">
                            <i class="fa-solid fa-blender-phone"></i>
                            <span>0354 899 836</span>
                        </div>
                        <div class="text-info-card">
                            <h3>Kiểm tra thanh toán</h3>
                            <p>
                                This is Photoshop’s version of Lorem Ipsum. Proin gravida nibh
                                vel velit auctor aliquet. Aenean sollicitudin, lorem quis
                                bibendum auctor, nisi elit
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="how-contact">
                <form method="post" action="#" name="contact" class="form-contact" enctype="multipart/form-data">
                    <div class="title-form-contact">
                        <h3>Thông tin liên hệ</h3>
                        <span>Phần thông tin bắt buộc <span style="color: red">*</span></span>
                    </div>
                    <div class="input">
                        <label><?php echo FSText::_('Họ và tên') ?> <span style="color: red">*</span></label>
                        <input type="text" class="form-control" id="fullname" name="fullname" value="">
                    </div>
                    <div class="input">
                        <label><?php echo FSText::_('Email') ?> <span style="color: red">*</span></label>
                        <input type="text" class="form-control" id="email" name="email" value="">
                    </div>
                    <div class="input">
                        <label><?php echo FSText::_('Số điện thoại') ?> <span style="color: red">*</span></label>
                        <input type="number" class="form-control" id="phone" name="phone" value="" onKeyDown="if(this.value.length==10 && event.keyCode!=8) return false;">
                    </div>

                    <div class="input">
                        <label><?php echo FSText::_('Lời nhắn') ?> <span style="color: red">*</span></label>
                        <textarea name="text" id="text" rows="7"></textarea>
                    </div>
                    <div class="button">
                        <a onclick="pp_contact_valid();" class="send" href="javascript: void(0)" id='submitbt'><?php echo FSText::_('Gửi yêu cầu') ?></a>
                    </div>


                    <input type="hidden" name='return' value='<?php echo $return; ?>' />
                    <input type="hidden" name="module" value="contact" />
                    <input type="hidden" name="task" value="save" />
                    <input type="hidden" name="view" value="contact" />
                    <input type="text" name="contact_me_by_fax_only" style="opacity: 0 !important" tabindex="-1" autocomplete="off">
                </form>
                <div class="add-contact">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.7965136298008!2d105.7723241154193!3d21.040826492741033!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x313454c90a66a4fd%3A0x1c9a2fe43fae27dd!2zMTQ3IFAuIE1haSBE4buLY2gsIE1haSBE4buLY2gsIEPhuqd1IEdp4bqleSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1680775368104!5m2!1svi!2s" width="600" height="450" style="border: 0" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
        </section>
    </section>
    <script>
        function pp_contact_valid() {
            if ($('#phone').val() == '') {
                alert('Vui lòng nhập Số điện thoại');
                return false;
            }
            var vnf_regex = /((090|091|092|093|094|095|096|097|098|099|032|033|034|035|036|037|038|039|070|076|077|078|079|081|082|083|084|085|056|058|059)+([0-9]{7})\b)/g;
            var mobile = $('#phone').val();
            if (mobile !== '') {
                if (vnf_regex.test(mobile) == false) {
                    alert('Số điện thoại của bạn không đúng định dạng!');
                    return false;
                }
            } else {
                alert('Bạn chưa điền số điện thoại!');
                return false;
            }
            return false;
        }
    </script>
<?php } ?>