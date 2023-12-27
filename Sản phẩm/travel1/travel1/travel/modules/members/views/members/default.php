<?php
global $tmpl, $commons, $user;
$tmpl->addScript('members', 'modules/members/assets/js');
$tmpl->addStylesheet('profile', 'modules/members/assets/css');
?>

<!-- Section home -->
<section class="box-banner">
    <img src="templates/default/images/dalat.jpg" alt="" />
    <div class="filter-bg"></div>
    <div class="wrap title-banner">
        <h1>Thông tin cá nhân</h1>
        <div class="back-page">
            <a href="/">Trang chủ</a>
            <a>Thông tin cá nhân</a>
        </div>
    </div>
</section>

<!-- Section profile -->

<div class="box-profile container members-page">
    <div class="wrap wrap-profile">
        <form class="form-horizontal member-post" id="frmEditUser" name="frmEditUser" action="<?php echo FSRoute::_('index.php?module=members&view=members&task=do_update') ?>" method="POST" accept-charset="utf-8" enctype="multipart/form-data">
            <div class="row">
                <aside class="col-lg-3 col-md-3 img-profile">
                    <?php require_once('sidebar.php'); ?>
                </aside>
                <main class="col-lg-9 col-md-9">
                    <div class="box-template mb-4">
                        <div class="box-heading mb-5">
                            Thông tin tài khoản
                        </div>
                        <!--end: .box-heading-->
                        <div class="box-content">

                            <div class="row bound-input mb-3">
                                <div class="col-md-3">
                                    <label>Họ và tên</label>
                                </div>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" id="name" name="name" value="<?php echo $user->userInfo->name ?>">
                                </div>
                            </div>
                            <div class="row bound-input mb-3">
                                <div class="col-md-3">
                                    <label>Email</label>
                                </div>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" id="email" name="email" value="<?php if ($user->userInfo->email) {
                                                                                                                $arrEmail = explode('@', $user->userInfo->email);
                                                                                                                echo substr($arrEmail[0], 0) . '@' . $arrEmail[1];
                                                                                                            }
                                                                                                            ?>">
                                    <!-- <?php if ($user->userInfo->email) {
                                                $arrEmail = explode('@', $user->userInfo->email);
                                                echo substr($arrEmail[0], 0, 3) . '*****@' . $arrEmail[1];
                                            }
                                            ?>&nbsp;&nbsp;<a href="#">Thay đổi</a> -->

                                </div>
                            </div>
                            <div class="row bound-input mb-3">
                                <div class="col-md-3">
                                    <label>Điện thoại</label>
                                </div>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" id="mobile" name="mobile" value="<?php echo $user->userInfo->telephone ?>">
                                </div>
                            </div>
                            <!-- <div class="row bound-input mb-3">
                                <div class="col-md-3">
                                    <label>Số điện thoại 2</label>
                                </div>
                                <div class="col-md-9">
                                    <input type="text" class="form-control" id="mobile2" name="mobile2" value="<?php echo $user->userInfo->mobile2 ?>">
                                </div>
                            </div> -->
                            <div class="row bound-input mb-3">
                                <div class="col-md-3">
                                    <label>Giới tính</label>
                                </div>
                                <div class="col-md-9">
                                    <div class="form-check form-check-inline">
                                        <input <?php if ($user->userInfo->sex == 1) echo 'checked'; ?> class="form-check-input" type="radio" name="sex" id="inlineRadio1" value="1">
                                        <label class="form-check-label" for="inlineRadio1">Nam</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input <?php if ($user->userInfo->sex == 2) echo 'checked'; ?> class="form-check-input" type="radio" name="sex" id="inlineRadio2" value="2">
                                        <label class="form-check-label" for="inlineRadio2">Nữ</label>
                                    </div>
                                </div>
                            </div>
                            <div class="row bound-input mb-3">
                                <div class="col-md-3">
                                    <label>Ngày sinh</label>
                                </div>
                                <div class="col-md-9">
                                    <?php
                                    $birthday = strtotime($user->userInfo->birthday);
                                    ?>
                                    <div class="row">
                                        <div class="col">
                                            <select name="birthday_day" class="form-control">
                                                <option value="0">Ngày</option>
                                                <?php for ($i = 1; $i <= 31; $i++) : ?>
                                                    <option <?php if ($i == date('d', $birthday)) echo 'selected'; ?> value="<?php echo $i ?>"><?php echo str_pad($i, 2, 0, STR_PAD_LEFT) ?></option>
                                                <?php endfor; ?>
                                            </select>
                                        </div>
                                        <div class="col">
                                            <select name="birthday_month" class="form-control">
                                                <option value="0">Tháng</option>
                                                <?php for ($i = 1; $i <= 12; $i++) : ?>
                                                    <option <?php if ($i == date('m', $birthday)) echo 'selected'; ?> value="<?php echo $i ?>"><?php echo str_pad($i, 2, 0, STR_PAD_LEFT) ?></option>
                                                <?php endfor; ?>
                                            </select>
                                        </div>
                                        <div class="col">
                                            <select name="birthday_year" class="form-control">
                                                <option value="0">Năm</option>
                                                <?php for ($i = 1960; $i <= 2010; $i++) : ?>
                                                    <option <?php if ($i == date('Y', $birthday)) echo 'selected'; ?> value="<?php echo $i ?>"><?php echo $i ?></option>
                                                <?php endfor; ?>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="text-end">
                                <a class="btn-member2" href="javascript:void(0);" onclick="validateEditUser();">
                                    <svg width="20" height="18" viewBox="0 0 20 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M2.65203 8.03159C2.74311 8.06803 2.84874 8.06803 2.93982 8.02431L5.78489 6.73109C5.96702 6.64367 6.04352 6.4251 5.95609 6.24297C5.87231 6.06811 5.66467 5.98796 5.48616 6.06811L3.49352 6.97518C4.4443 4.13011 7.09265 2.22855 10.1417 2.22855C13.3365 2.22855 16.1305 4.36327 16.9356 7.41959C16.9866 7.61265 17.1869 7.72924 17.38 7.67822C17.573 7.62723 17.6896 7.42686 17.6386 7.23381C16.7498 3.86055 13.6679 1.5 10.1417 1.5C6.77935 1.5 3.85413 3.59827 2.79772 6.7384L1.95988 4.64379C1.89796 4.45435 1.69032 4.34872 1.50088 4.41063C1.31144 4.47255 1.20581 4.68019 1.26773 4.86963C1.27138 4.88421 1.27866 4.89876 1.28593 4.91334L2.44801 7.8276C2.48445 7.91868 2.55729 7.99518 2.65203 8.03159Z" fill="white" stroke="white" stroke-width="1.6" />
                                        <path d="M18.7272 13.4085C18.7235 13.4012 18.7199 13.3939 18.7199 13.3866L17.5578 10.4723C17.5214 10.3813 17.4485 10.3048 17.3538 10.2684C17.2627 10.2319 17.1571 10.2356 17.066 10.2756L14.221 11.5689C14.0352 11.6454 13.9477 11.8603 14.0242 12.0461C14.1007 12.2318 14.3157 12.3193 14.5014 12.2428C14.5087 12.2391 14.516 12.2355 14.5233 12.2318L16.516 11.3248C15.5579 14.1698 12.9059 16.0714 9.86048 16.0714C6.6657 16.0714 3.87166 13.9367 3.0666 10.8804C3.01561 10.6873 2.81524 10.5707 2.62218 10.6217C2.42913 10.6727 2.31253 10.8731 2.36355 11.0661C3.24876 14.443 6.33426 16.7999 9.86052 16.7999C13.2228 16.7999 16.1444 14.7017 17.2045 11.5615L18.0423 13.6562C18.1115 13.8456 18.3192 13.944 18.5086 13.8747C18.698 13.8055 18.7964 13.5979 18.7272 13.4085Z" fill="white" stroke="white" stroke-width="1.6" />
                                    </svg>
                                    Cập nhật tài khoản
                                </a>
                            </div>

                        </div>
                        <!--end: .box-content-->

                    </div>
                    <!--end: .box-template-->

                    <!-- <div class="box-template mb-4">
                    <div class="box-heading mb-5">
                        Sổ địa chỉ
                        <a onclick="addAddress()" class="btn-member2 float-end" href="javascript:void(0);">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M20.5 11H15C14.4477 11 14 10.5523 14 10V4.5C14 3.67157 13.3284 3 12.5 3C11.6716 3 11 3.67157 11 4.5V10C11 10.5523 10.5523 11 10 11H4.5C3.67157 11 3 11.6716 3 12.5C3 13.3284 3.67157 14 4.5 14H10C10.5523 14 11 14.4477 11 15V20.5C11 21.3284 11.6716 22 12.5 22C13.3284 22 14 21.3284 14 20.5V15C14 14.4477 14.4477 14 15 14H20.5C21.3284 14 22 13.3284 22 12.5C22 11.6716 21.3284 11 20.5 11Z" fill="white" />
                            </svg>
                            Thêm địa chỉ mới
                        </a>
                    </div>
                   
                    <div class="box-content">
                       <?php foreach ($address as $item) : ?>
                            <div class="mp-address-item mb-3">
                                <h3><?php echo $item->name ?>
                                    <?php if ($item->default) { ?>
                                        <span>
                                            <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                <circle cx="8" cy="8" r="8" fill="#2EC36E" />
                                                <path d="M4.80078 7.42855L7.30513 9.99998L11.6008 5.59998" stroke="white" stroke-width="1.5" stroke-linecap="round" />
                                            </svg>
                                            Địa chỉ mặc định
                                        </span>
                                    <?php } ?>
                                    <a onclick="editAddress('<?php echo $item->id ?>', '<?php echo $item->name ?>', '<?php echo $item->address ?>', '<?php echo $item->telephone ?>', '<?php echo $item->default ?>');" class="float-end" href="javascript:void(0);">Sửa</a>
                                </h3>
                                <p><span>Địa chỉ:</span> <?php echo $item->address ?></p>
                                <p><span>Số điện thoại:</span> <?php echo $item->telephone ?></p>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div> -->
                    <!--end: .box-template-->
                    <?php if ($user->userInfo->type == 1) { ?>
                        <div><img class="img-fluid" src="/templates/default/images/payment.png" alt=""></div>
                    <?php } ?>
                </main>
            </div>
            <!--end: .row-->
        </form>
    </div>
</div>
<!--end: .container-->

<!-- <div class="modal fade" id="modal-re-address" tabindex="-1" aria-labelledby="modal-re-cancel" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body ">
                <div class="form-group mb-3">
                    <label>Họ tên</label>
                    <input id="model_name" name="name" placeholder="Nhập thông tin" class="form-control" />
                </div>
                <div class="form-group mb-3">
                    <label>Điện thoại</label>
                    <input id="model_telephone" name="telephone" placeholder="Nhập thông tin" class="form-control" />
                </div>
                <div class="form-group mb-3">
                    <label>Địa chỉ</label>
                    <input id="model_address" name="address" placeholder="Nhập thông tin" class="form-control" />
                </div>
                <div class="form-check form-switch">
                    <input class="form-check-input" id="model_default" name="is_default" type="checkbox" id="flexSwitchCheckDefault">
                    <label class="form-check-label" for="flexSwitchCheckDefault">Địa chỉ mặc định</label>
                </div>
                <div class="mt-3 text-center">
                    <button onclick="saveAddress();" style="background: #FF8A2F; color: #fff; min-width: 100px;" class="btn">Lưu</button>
                </div>
                <input type="hidden" id="model_id" name="id" value="0" />
            </div>
        </div>
    </div>
</div> -->

<script type="text/javascript">
    function addAddress() {
        showModel();
    }

    function editAddress(id, name, address, telephone, is_default) {
        $('#model_id').val(id);
        $('#model_name').val(name);
        $('#model_address').val(address);
        $('#model_telephone').val(telephone);
        $('#model_default').val(is_default);

        showModel();
    }

    function showModel() {
        var modalAddress = new bootstrap.Modal(document.getElementById("modal-re-address"), {});
        modalAddress.show();
    }

    function saveAddress() {
        if ($('#model_name').val() == '') {
            alert('Vui lòng nhập họ tên của bạn');
            $('#model_name').focus();
            return false;
        }
        if ($('#model_telephone').val() == '') {
            alert('Vui lòng nhập số điện thoại của bạn');
            $('#model_telephone').focus();
            return false;
        }
        if ($('#model_address').val() == '') {
            alert('Vui lòng nhập địa chỉ của bạn');
            $('#model_address').focus();
            return false;
        }

        var name = $('#model_name').val();
        var telephone = $('#model_telephone').val();
        var address = $('#model_address').val();
        var is_default = $('#model_default').is(":checked");
        console.log(is_default);
        var id = $('#model_id').val();

        $.ajax({
            type: 'POST',
            url: '/index.php?module=members&view=members&task=save_address&raw=1',
            dataType: 'json',
            data: {
                name: name,
                telephone: telephone,
                address: address,
                default: is_default,
                id: id
            },
            success: function(data) {
                if (data.error == false) {
                    location.reload();
                    alert('Cập nhật địa chỉ của bạn thành công.');
                } else
                    alert(data.message);
            },
            error: function(XMLHttpRequest, textStatus, errorThrown) {
                alert('Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.');
            }
        });
    }
</script>