<?php 
global $tmpl, $commons, $user;
$tmpl->addScript('members', 'modules/members/assets/js');
?>
<div class="container members-page">
    <div class="row">
        <aside class="col-lg-3 col-md-3">
            <?php require_once('sidebar.php'); ?>
        </aside>
        <main class="col-lg-9 col-md-9">
            <div class="box-template mb-4">
                <div class="box-heading mb-5">
                    Đổi mật khẩu
                </div><!--end: .box-heading-->
                <div class="note">
                    Để bảo mật tài khoản, vui lòng không chia sẻ mật khẩu cho người khác
                </div>
                <div class="box-content">
                    <form class="form-horizontal member-post" id="frmChangepass" name="frmChangepass" action="<?php echo FSRoute::_('index.php?module=members&view=members&task=do_changepass') ?>" method="POST" accept-charset="utf-8" enctype="multipart/form-data">
                        <div class="row bound-input mb-3">
                            <div class="col-md-3">
                                <label>Mật khẩu hiện tại</label>
                            </div>
                            <div class="col-md-9">
                                <input type="password" class="form-control" id="cpassword" name="password" placeholder="Nhập thông tin" value="<?php //echo $user->userInfo->name ?>">
                            </div>
                        </div>
                        <div class="row bound-input mb-3">
                            <div class="col-md-3">
                                <label>Mật khẩu mới</label>
                            </div>
                            <div class="col-md-9">
                                <input type="password" class="form-control" id="password" placeholder="Nhập thông tin" value="<?php //echo $user->userInfo->email ?>">
                            </div>
                        </div>
                        <div class="row bound-input mb-3">
                            <div class="col-md-3">
                                <label>Xác nhận mật khẩu</label>
                            </div>
                            <div class="col-md-9">
                                <input type="password" class="form-control" id="repassword" name="password" placeholder="Nhập thông tin" value="<?php // echo $user->userInfo->telephone ?>">
                            </div>
                        </div>
                        <div class="text-end">
                            <a class="btn-member2" href="javascript:void(0);" onclick="validateChangepass();">
                                Xác nhận
                            </a>
                        </div>
                    </form>
                </div><!--end: .box-content-->
            </div><!--end: .box-template-->
        </main>
    </div><!--end: .row-->
</div><!--end: .container-->