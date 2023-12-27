<?php 
global $tmpl, $commons;
$tmpl->addScript('members', 'modules/members/assets/js');
?>
<div class="member-container"> 
    <div class="member-left">
        <img src="/upload_images/images/demo/mem.png" />
    </div>
    <div class="member-modal">
        <div class="box-form pt-lg-4">
            <div class="content-heading pt-lg-4 pb-lg-4">
                <div class="heading text-center">Đặt lại mật khẩu truy cập</div>
            </div>
            <form id="frmBLogin" name="frmBLogin" action="<?php echo FSRoute::_('index.php?module=members&view=members&task=do_forgot_pass'); ?>" class="form-horizontal">
                <div class="form-group mb-2">
                    <label>Mật khẩu *</label>
                    <input id="blog_username" type="text" class="form-control" name="username" placeholder="Nhập thông tin">
                </div>
                <div class="form-group mb-2">
                    <label>Mật khẩu *</label>
                    <input id="blog_password" type="password" class="form-control" name="password" placeholder="Nhập thông tin">
                </div>
                <a class="btn-member btn-login mt-3 mb-3" href="javascript:void(0);" onclick="validateBLogin();">Lưu thay đổi</a>
                <div class="note">
                    Creating an account means you’re okay with our <a href="#">Terms of Service</a>, <a href="#">Privacy Policy</a>, and our default <a href="#">Notification Settings</a>.
                </div>
                <div class="text-center mt-5">
                Bạn đã có tài khoản. <a class="text-bold" style="color: #FF8A2F;" href="<?php echo FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10') ?>">Đăng nhập</a>
                </div>
            </form>
        </div><!--end: .box-form-->
    </div>
</div>