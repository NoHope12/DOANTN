<?php
global $tmpl, $commons;
$tmpl->addScript('members', 'modules/members/assets/js');
?>
<div class="container member-container">
    <div class="row">
        <aside class="col-lg-4 col-md-3">
            <?php require_once('sidebar.php'); ?>
        </aside>
        <main class="col-lg-8 col-md-9">
            <div class="box-template">
                <div class="box-heading">
                    thông tin khuyến mại
                </div><!--end: .box-heading-->
                <div class="box-content">
                    <table class="table">
                        <thead>
                            <tr>
                                <th></th>
                                <th>Người gửi</th>
                                <th>Tiêu đề tin</th>
                                <th>Ngày gửi</th>
                                <th>Xóa</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox"></td>
                                <td>KM_Seven.AM</td>
                                <td>Sale 30% toàn bộ sản phẩm xuân hè</td>
                                <td>04/03/2017</td>
                                <td>Xóa</td>
                            </tr>
                        </tbody>
                    </table>
                </div><!--end: .box-content-->
            </div><!--end: .box-template-->
        </main>
    </div><!--end: .row-->
</div><!--end: .container-->