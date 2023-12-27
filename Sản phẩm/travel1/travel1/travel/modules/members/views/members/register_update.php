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
                <div class="heading text-center">Nhập thông tin tài khoản</div>
            </div>
            <form id="frmBRegister" name="frmBRegister" action="/" method="post" class="form-horizontal">
                <div class="form-group mb-2">
                    <label>Họ tên <span>*</span></label>
                    <input id="breg_name" type="text" class="form-control" name="name" placeholder="Nhập thông tin">
                </div>
                <div class="form-group mb-2">
                    <label>Email <span>*</span></label>
                    <input id="breg_email" type="text" class="form-control" name="email" placeholder="Nhập thông tin">
                </div>
                <div class="form-group mb-2">
                    <label>Địa chỉ<span>*</span></label>
                    <input id="breg_address" type="text" class="form-control" name="address" placeholder="Nhập thông tin">
                </div>
                <a class="btn-member btn-login mt-3 mb-3" href="javascript:void(0);" onclick="validateURegister();">Cập nhật</a>
                <div class="note">
                    Creating an account means you’re okay with our <a href="#">Terms of Service</a>, <a href="#">Privacy Policy</a>, and our default <a href="#">Notification Settings</a>.
                </div>
            </form>
        </div><!--end: .box-form-->
    </div>
</div>