<?php
global $tmpl, $commons, $user;
$tmpl->addScript('members', 'modules/members/assets/js');
?>
<div class="container">
    <div class="container-white container-member member-container">
        <div class="row">
            <aside class="col-lg-4 col-md-3">
                <?php require_once('sidebar.php'); ?>
            </aside>
            <main class="col-lg-8 col-md-9">
                <div class="box-template">
                    <div class="box-heading">
                        Cấp thành viên
                    </div><!--end: .box-heading-->
                    <div class="box-content">
                        <div class="box-heading2">
                            Thông tin cấp tài khoản của bạn
                        </div>
                        <table class="table">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">Cấp tài khoản</th>
                                    <th scope="col">Giá trị đơn hàng</th>
                                    <th scope="col">Quyền lợi của bạn</th>
                                    <th scope="col">Ngày tạo TK</th>
                                </tr>
                            </thead>
                            <tbody>
                                <td class="red text-uppercase">
                                    <?php echo $user->level['title'] ?>
                                </td>
                                <td>
                                    <span class="red"><?php echo number_format($user->userInfo->money, 0, ',', '.');?> VNĐ</span>
                                </td>
                                <td>
                                    Giảm giá <span class="red"><?php echo $user->level['discount'] ?>%</span>
                                </td>
                                <td>
                                    <?php echo date('d/m/Y', strtotime($user->userInfo->created_time)) ?>
                                </td>
                            </tbody>
                        </table>
                        <div class="box-heading2">
                            Các mức của cấp tài khoản
                        </div>
                        <table class="table table-levels">
                            <thead class="thead-light">
                                <tr>
                                    <th scope="col">Cấp tài khoản</th>
                                    <th scope="col">Điều kiện</th>
                                    <th scope="col">Quyền lợi</th>
                                    <th scope="col">Hiệu lực</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach($levels as $item){ ?>
                                    <tr>
                                        <td class="red text-uppercase"><?php echo $item->name?></td>
                                        <td>
                                            <?php if($item->discount){?>
                                                Giá trị đơn hàng từ <span class="red">
                                            <?php }else{ ?>
                                                Giá trị đơn hàng <span class="red"><
                                            <?php } ?>
                                            <?php echo number_format($item->money, 0, ',', '.');?> VNĐ/năm</span>
                                        </td>
                                        <td>Giảm giá <span class="red"><?php echo $item->discount?>%</span> khi mua hàng</td>
                                        <td>1 năm</td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div><!--end: .box-content-->
                </div><!--end: .box-template-->
            </main>
        </div><!--end: .row-->
    </div><!--end: .container-->
</div><!--end: .container-->