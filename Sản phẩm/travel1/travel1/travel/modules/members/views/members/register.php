<?php
global $tmpl, $commons;
$tmpl->addStylesheet('profile', 'modules/members/assets/css');
$tmpl->addTitle('Đăng ký');
$tmpl->addScript2('https://cdn.jsdelivr.net/npm/sweetalert2@11');

?>

<!-- Section home -->
<section class="box-banner">
    <img src="templates/default/images/dalat2.jpg" alt="" />
    <div class="filter-bg"></div>
    <div class="wrap title-banner">
        <h1>Đăng ký</h1>
        <span>Welcome to VN Travel</span>
        <div class="back-page">
            <a href="/">Trang chủ</a>
            <a>Đăng ký</a>
        </div>
    </div>
</section>

<div class="box-info-detail member-container">
    <div class="member-modal wrap wrap-info-detail">
        <div class="tab-info-detail box-form pt-lg-4">
            <!-- <div class="bound-btn">
                <a class="btn-member btn-facebook" onclick="openPopupWindow(this);" data-id="lacebook-login" data-height="500" data-width="800" data-url="<?php echo FSRoute::_(URL_ROOT . 'index.php?module=members&view=members&raw=1&task=face_login&Itemid=10'); ?>" href="#facebook_login">
                    <svg width="6" height="16" viewBox="0 0 6 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M2.57888 15.1429C3.2913 15.1429 3.86884 14.5654 3.86884 13.8529V8.89961C3.86884 8.40233 4.27196 7.9992 4.76925 7.9992C5.23434 7.9992 5.6229 7.64498 5.66581 7.18186L5.72421 6.55167C5.77464 6.00734 5.34627 5.53744 4.7996 5.53744C4.28591 5.53744 3.86983 5.12037 3.87105 4.60668L3.87176 4.30531C3.87176 3.66325 3.92501 3.31921 4.72995 3.31921C5.32423 3.31921 5.806 2.83745 5.806 2.24316V2.08819C5.806 1.40832 5.25485 0.857178 4.57498 0.857178H4.08451C2.01673 0.857178 1.28892 2.05139 1.28892 4.05969V4.89326C1.28892 5.24919 1.00039 5.53772 0.644461 5.53772C0.288535 5.53772 0 5.82626 0 6.18218V7.35502C0 7.71094 0.288535 7.99948 0.644461 7.99948C1.00039 7.99948 1.28892 8.28801 1.28892 8.64394V13.8529C1.28892 14.5654 1.86646 15.1429 2.57888 15.1429Z" fill="white" />
                    </svg>&nbsp;&nbsp;
                    Đăng nhập với facebook
                </a>
                <a class="google-plus" onclick="openPopupWindow(this);" data-id="google-login" data-height="500" data-width="800" data-url="<?php echo FSRoute::_(URL_ROOT . 'index.php?module=members&view=members&raw=1&task=google_login&Itemid=10'); ?>" href="#google_login">
                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect width="40" height="40" rx="5" fill="#CBCBCB" />
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M16.0478 18.885V21.3278H20.108C19.9444 22.3762 18.8807 24.4018 16.0478 24.4018C13.6034 24.4018 11.6091 22.3864 11.6091 19.9028C11.6091 17.4193 13.6034 15.4039 16.0478 15.4039C17.4387 15.4039 18.3694 15.9943 18.9012 16.5032L20.8443 14.6405C19.5966 13.4802 17.9807 12.7778 16.0478 12.7778C12.0898 12.7778 8.88867 15.9637 8.88867 19.9028C8.88867 23.8419 12.0898 27.0278 16.0478 27.0278C20.1796 27.0278 22.9205 24.1371 22.9205 20.0657C22.9205 19.5975 22.8693 19.2412 22.808 18.885H16.0478Z" fill="#fff" />
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M31.3903 18.8859H29.3448V16.8502H27.2994V18.8859H25.2539V20.9217H27.2994V22.9574H29.3448V20.9217H31.3903" fill="#fff" />
                    </svg>
                </a>
                <a class="apple" onclick="openPopupWindow(this);" data-id="google-login" data-height="500" data-width="800" data-url="<?php echo FSRoute::_(URL_ROOT . 'index.php?module=members&view=members&raw=1&task=google_login&Itemid=10'); ?>" href="#google_login">
                    <svg width="40" height="40" viewBox="0 0 40 40" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect width="40" height="40" rx="5" fill="#CBCBCB" />
                        <path d="M24.0317 9.04822C24.1198 9.04822 24.1933 9.11588 24.1978 9.20379C24.2725 10.6707 23.6987 11.7754 23.0064 12.5829C21.6266 14.212 19.5953 12.291 20.9857 10.6708C21.6493 9.89366 22.866 9.20211 24.0317 9.04822Z" fill="white" />
                        <path d="M28.7147 25.111C28.7336 25.1201 28.7458 25.1394 28.7458 25.1605C28.7458 25.1663 28.7449 25.172 28.7431 25.1775C28.3056 26.4993 27.6824 27.6327 26.9222 28.6846C26.2268 29.6416 25.3746 30.9295 23.853 30.9295C22.5382 30.9295 21.6649 30.0841 20.3174 30.061C18.892 30.0379 18.1081 30.7679 16.8048 30.9516C16.7767 30.9516 16.7485 30.9516 16.7204 30.9516C16.4808 30.9516 16.2387 30.9429 16.0098 30.8719C15.2134 30.6246 14.5607 29.9698 14.0684 29.3723C12.4093 27.3544 11.1272 24.7479 10.8887 21.4123C10.8887 21.0853 10.8887 20.7592 10.8887 20.4322C10.9897 18.045 12.1496 16.104 13.6914 15.1634C14.5051 14.6632 15.6237 14.2371 16.8693 14.4276C17.4031 14.5103 17.9484 14.693 18.4265 14.8739C18.8795 15.048 19.446 15.3567 19.9827 15.3403C20.3462 15.3298 20.7079 15.1403 21.0743 15.0066C22.1477 14.619 23.2 14.1746 24.5869 14.3833C26.9363 14.7385 26.1207 17.6009 25.8467 19.9612C25.8066 20.3064 25.8004 20.6776 25.8334 21.0776C26.0015 23.161 27.2057 24.3858 28.7147 25.111Z" fill="white" />
                    </svg>
                </a>
            </div> -->
            <!-- <form id="frmBRegister" name="frmBRegister" action="/" method="post" class="form-horizontal">
                <div class="form-group mb-2">
                    <label>Số điện thoại </label>
                    <input id="breg_phone" type="text" class="form-control" name="data[telephone]" placeholder="Nhập thông tin">
                </div>
                <div class="form-group mb-2">
                    <label>Email </label>
                    <input id="breg_email" type="email" class="form-control" name="data[email]" placeholder="Nhập thông tin">
                </div>
                <div class="form-group mb-2">
                    <label>Tài Khoản </label>
                    <input id="breg_username" type="text" class="form-control" name="data[username]" placeholder="Nhập thông tin">
                </div>
                <div class="form-group mb-2">
                    <label>Mật khẩu </label>
                    <input id="breg_password" type="password" class="form-control" name="data[password]" placeholder="Nhập thông tin">
                </div>
                <div class="form-group mb-2">
                    <label>Nhập lại mật khẩu </label>
                    <input id="breg_repassword" type="password" class="form-control" name="repassword" placeholder="Nhập thông tin">
                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="type" id="type_0" value="0" checked>
                            <label class="form-check-label form-check-label-register" for="type_0">
                                Tài khoản thường
                            </label>
                        </div>
                    </div>
                </div>
                <a class="btn-member btn-login mt-3 mb-3" href="javascript:void(0);" onclick="validateBRegister();">Đăng ký</a>
                <div class="note">
                    Creating an account means you’re okay with our <a href="#">Terms of Service</a>, <a href="#">Privacy Policy</a>, and our default <a href="#">Notification Settings</a>.
                </div>
                <div class="text-center mt-5">
                    Bạn đã có tài khoản. <a class="text-bold" style="color: #FF8A2F;" href="<?php echo FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10') ?>">Đăng nhập</a>
                </div>
            </form> -->

            <form class="content-info-detail form-horizontal" id="frmBRegister" name="frmBRegister" action="/" method="post">
                <h3>Đăng ký</h3>
                <label for="name">Số điện thoại</label>
                <input id="breg_phone" type="text" class="form-control" name="data[telephone]" placeholder="Nhập thông tin">

                <label for="email">Email</label>
                <input id="breg_email" type="email" class="form-control" name="data[email]" placeholder="Nhập thông tin">

                <label for="numPhone">Tên đăng nhập</label>
                <input id="breg_username" type="text" class="form-control" name="data[username]" placeholder="Nhập thông tin">

                <label for="password">Mật khẩu</label>
                <input id="breg_password" type="password" class="form-control" name="data[password]" placeholder="Nhập thông tin">

                <label>Nhập lại mật khẩu </label>
                <input id="breg_repassword" type="password" class="form-control" name="repassword" placeholder="Nhập thông tin">

                <!-- <div class="row">
                    <div class="col">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="type" id="type_0" value="0" checked>
                            <label class="form-check-label form-check-label-register" for="type_0">
                                Tài khoản thường
                            </label>
                        </div>
                    </div>
                     <div class="col">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="type" id="type_1" value="1">
                            <label class="form-check-label form-check-label-register" for="type_1">
                                Tài khoản Đại lý/CTV
                            </label>
                        </div>
                    </div> 
                </div> -->
                <a class="btn-member btn-login mt-3 mb-3" href="javascript:void(0);" onclick="validateBRegister();">Đăng ký</a>
                <div class="toLogin">
                    Bạn đã có tài khoản?
                    <a href="http://travel:8888/dang-nhap.html"> Đăng nhập </a>
                </div>
            </form>
        </div><!--end: .box-form-->
    </div>
</div>