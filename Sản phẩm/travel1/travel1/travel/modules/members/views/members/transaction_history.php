<?php
global $tmpl, $commons, $user;
$tmpl->addScript("jquery-ui.min");
$tmpl->addStylesheet("jquery-ui.min");
$tmpl->addScript('members', 'modules/members/assets/js');
?>
<div class="container members-page">
    <div class="row">
        <aside class="col-lg-3 col-md-3">
            <?php require_once('sidebar.php'); ?>
        </aside>
        <main class="col-lg-9 col-md-9">
            <div class="box-template mb-4">
                <div class="box-content">
                    <?php if ($user->userInfo->type == 1) : ?>
                        <div class="row">
                            <div class="col text-center">
                                <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.89757 26.427C10.4602 26.427 10.9176 26.8843 10.9176 27.447C10.9176 28.0097 10.4602 28.4657 9.89757 28.4657C9.33491 28.4657 8.87891 28.0097 8.87891 27.447C8.87891 26.8843 9.33491 26.427 9.89757 26.427Z" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M24.8989 26.427C25.4616 26.427 25.9189 26.8843 25.9189 27.447C25.9189 28.0097 25.4616 28.4657 24.8989 28.4657C24.3362 28.4657 23.8789 28.0097 23.8789 27.447C23.8789 26.8843 24.3362 26.427 24.8989 26.427Z" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M3.66406 4.33325L6.4374 4.81325L7.7214 20.1106C7.8254 21.3573 8.86673 22.3146 10.1174 22.3146H24.6667C25.8614 22.3146 26.8747 21.4373 27.0467 20.2533L28.3121 11.5093C28.4681 10.4306 27.6321 9.46525 26.5427 9.46525H6.88273" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M18.832 14.3934H22.5294" stroke="#FF8A2F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                                <div class="mt-2 mb-2" style="font-size: 36px;color: #FF8A2F; font-weight: bold;">
                                    <?php echo $th->order_success ?>
                                </div>
                                <div>
                                    Đơn hàng thành công
                                </div>
                            </div>
                            <div class="col text-center">
                                <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M28.8506 19.1943H23.4529C21.4709 19.1931 19.8645 17.5879 19.8633 15.6059C19.8633 13.624 21.4709 12.0188 23.4529 12.0176H28.8506" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M24.0654 15.5238H23.6498" stroke="#FF8A2F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.3289 4H21.8535C25.7177 4 28.8504 7.13268 28.8504 10.9969V20.5663C28.8504 24.4305 25.7177 27.5631 21.8535 27.5631H10.3289C6.46471 27.5631 3.33203 24.4305 3.33203 20.5663V10.9969C3.33203 7.13268 6.46471 4 10.3289 4Z" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M9.37891 10.0509H16.5775" stroke="#FF8A2F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                                <div class="mt-2 mb-2" style="font-size: 36px;color: #FF8A2F; font-weight: bold;">
                                    <?php echo number_format($th->order_amount, 0, ',', '.') ?>VNĐ
                                </div>
                                <div>
                                    Doanh thu
                                </div>
                            </div>
                            <div class="col text-center">
                                <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M6.38957 9.40758C6.38957 7.74225 7.74024 6.39158 9.40424 6.39158H10.7762C11.5709 6.39158 12.3349 6.07691 12.9002 5.51558L13.8589 4.55558C15.0336 3.37558 16.9429 3.37025 18.1229 4.54491L18.1349 4.55558L19.0949 5.51558C19.6589 6.07691 20.4229 6.39158 21.2189 6.39158H22.5896C24.2549 6.39158 25.6056 7.74225 25.6056 9.40758V10.7769C25.6056 11.5742 25.9202 12.3369 26.4816 12.9022L27.4416 13.8622C28.6216 15.0369 28.6282 16.9449 27.4536 18.1262L27.4416 18.1382L26.4816 19.0982C25.9202 19.6609 25.6056 20.4262 25.6056 21.2209V22.5929C25.6056 24.2582 24.2549 25.6076 22.5896 25.6076H21.2189C20.4229 25.6076 19.6589 25.9236 19.0949 26.4849L18.1349 27.4436C16.9616 28.6249 15.0522 28.6302 13.8709 27.4556C13.8669 27.4516 13.8629 27.4476 13.8589 27.4436L12.9002 26.4849C12.3349 25.9236 11.5709 25.6076 10.7762 25.6076H9.40424C7.74024 25.6076 6.38957 24.2582 6.38957 22.5929V21.2209C6.38957 20.4262 6.07357 19.6609 5.51224 19.0982L4.55357 18.1382C3.37224 16.9636 3.36691 15.0542 4.54157 13.8742L4.55357 13.8622L5.51224 12.9022C6.07357 12.3369 6.38957 11.5742 6.38957 10.7769V9.40758" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.5703 19.4258L19.4236 12.5725L12.5703 19.4258Z" fill="#FF8A2F" />
                                    <path d="M12.5703 19.4258L19.4236 12.5725" stroke="#FF8A2F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M19.418 20.4298C19.1513 20.4298 18.898 20.3231 18.7113 20.1364C18.618 20.0431 18.5513 19.9231 18.498 19.8031C18.4446 19.6831 18.418 19.5644 18.418 19.4298C18.418 19.2964 18.4446 19.1631 18.498 19.0431C18.5513 18.9231 18.618 18.8164 18.7113 18.7231C19.0846 18.3498 19.7513 18.3498 20.1246 18.7231C20.218 18.8164 20.298 18.9231 20.3513 19.0431C20.3913 19.1631 20.418 19.2964 20.418 19.4298C20.418 19.5644 20.3913 19.6831 20.3513 19.8031C20.298 19.9231 20.218 20.0431 20.1246 20.1364C19.938 20.3231 19.6846 20.4298 19.418 20.4298Z" fill="#FF8A2F" />
                                    <path d="M12.5664 13.5769C12.4331 13.5769 12.3131 13.5489 12.1931 13.4956C12.0731 13.4422 11.9531 13.3769 11.8597 13.2836C11.7664 13.1769 11.6997 13.0702 11.6464 12.9502C11.5931 12.8289 11.5664 12.7102 11.5664 12.5769C11.5664 12.4422 11.5931 12.3102 11.6464 12.1902C11.6997 12.0702 11.7664 11.9502 11.8597 11.8702C12.2464 11.4956 12.8997 11.4956 13.2731 11.8702C13.4597 12.0556 13.5664 12.3102 13.5664 12.5769C13.5664 12.7102 13.5531 12.8289 13.4997 12.9502C13.4464 13.0702 13.3664 13.1769 13.2731 13.2836C13.1797 13.3769 13.0731 13.4422 12.9531 13.4956C12.8331 13.5489 12.6997 13.5769 12.5664 13.5769Z" fill="#FF8A2F" />
                                </svg>
                                <div class="mt-2 mb-2" style="font-size: 36px;color: #FF8A2F; font-weight: bold;">
                                    40
                                </div>
                                <div>
                                    Mức chiết khấu
                                </div>
                            </div>
                            <div class="col text-center">
                                <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M27.738 10.1647L26.9081 8.72461C26.206 7.50605 24.65 7.08568 23.4298 7.78487V7.78487C22.849 8.12704 22.1559 8.22412 21.5034 8.0547C20.8509 7.88528 20.2926 7.46327 19.9516 6.88175C19.7322 6.51212 19.6143 6.09111 19.6098 5.6613V5.6613C19.6296 4.97221 19.3696 4.30445 18.8891 3.81014C18.4086 3.31583 17.7485 3.03707 17.0591 3.03735H15.3871C14.7117 3.03735 14.0642 3.30647 13.5878 3.78518C13.1114 4.26389 12.8453 4.91271 12.8486 5.58808V5.58808C12.8286 6.98249 11.6924 8.10233 10.2979 8.10219C9.86805 8.09773 9.44704 7.97984 9.07741 7.76047V7.76047C7.85718 7.06127 6.30125 7.48164 5.59915 8.70021L4.70823 10.1647C4.00698 11.3818 4.42163 12.9367 5.63577 13.643V13.643C6.42497 14.0986 6.91114 14.9407 6.91114 15.852C6.91114 16.7633 6.42497 17.6054 5.63577 18.061V18.061C4.42318 18.7625 4.00807 20.3137 4.70823 21.5271V21.5271L5.55034 22.9794C5.8793 23.573 6.43124 24.011 7.08403 24.1965C7.73681 24.382 8.43662 24.2998 9.0286 23.9679V23.9679C9.61054 23.6284 10.304 23.5353 10.9549 23.7095C11.6058 23.8837 12.1601 24.3106 12.4947 24.8955C12.714 25.2651 12.8319 25.6861 12.8364 26.1159V26.1159C12.8364 27.5246 13.9784 28.6666 15.3871 28.6666H17.0591C18.4631 28.6667 19.6031 27.5321 19.6098 26.1281V26.1281C19.6066 25.4506 19.8743 24.7999 20.3533 24.3209C20.8324 23.8418 21.4831 23.5741 22.1606 23.5774C22.5893 23.5889 23.0086 23.7063 23.381 23.9191V23.9191C24.598 24.6204 26.153 24.2057 26.8593 22.9916V22.9916L27.738 21.5271C28.0781 20.9432 28.1715 20.2479 27.9974 19.5951C27.8233 18.9422 27.3961 18.3857 26.8104 18.0488V18.0488C26.2248 17.7119 25.7976 17.1554 25.6235 16.5025C25.4494 15.8497 25.5428 15.1543 25.8829 14.5705C26.1041 14.1844 26.4243 13.8642 26.8104 13.643V13.643C28.0173 12.9371 28.431 11.3912 27.738 10.1769V10.1769V10.1647Z" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <circle cx="16.2297" cy="15.852" r="3.51487" stroke="#FF8A2F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                                <div class="mt-2 mb-2" style="font-size: 36px;color: #FF8A2F; font-weight: bold;">
                                    <?php echo $th->order_numbers - $th->order_success ?>
                                </div>
                                <div>
                                    Đơn hàng đang xử lý
                                </div>
                            </div>
                        </div>
                    <?php else : ?>
                        <div class="row">
                            <div class="col-md-4 text-center">
                                <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.89757 26.427C10.4602 26.427 10.9176 26.8843 10.9176 27.447C10.9176 28.0097 10.4602 28.4657 9.89757 28.4657C9.33491 28.4657 8.87891 28.0097 8.87891 27.447C8.87891 26.8843 9.33491 26.427 9.89757 26.427Z" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M24.8989 26.427C25.4616 26.427 25.9189 26.8843 25.9189 27.447C25.9189 28.0097 25.4616 28.4657 24.8989 28.4657C24.3362 28.4657 23.8789 28.0097 23.8789 27.447C23.8789 26.8843 24.3362 26.427 24.8989 26.427Z" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M3.66406 4.33325L6.4374 4.81325L7.7214 20.1106C7.8254 21.3573 8.86673 22.3146 10.1174 22.3146H24.6667C25.8614 22.3146 26.8747 21.4373 27.0467 20.2533L28.3121 11.5093C28.4681 10.4306 27.6321 9.46525 26.5427 9.46525H6.88273" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M18.832 14.3934H22.5294" stroke="#FF8A2F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                                <div>
                                    <div class="mt-2 mb-2 text">
                                        <?php echo $th->order_numbers ?>
                                    </div>
                                    <div>
                                        Đơn hàng
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 text-center">
                                <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M28.8506 19.1943H23.4529C21.4709 19.1931 19.8645 17.5879 19.8633 15.6059C19.8633 13.624 21.4709 12.0188 23.4529 12.0176H28.8506" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M24.0654 15.5238H23.6498" stroke="#FF8A2F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M10.3289 4H21.8535C25.7177 4 28.8504 7.13268 28.8504 10.9969V20.5663C28.8504 24.4305 25.7177 27.5631 21.8535 27.5631H10.3289C6.46471 27.5631 3.33203 24.4305 3.33203 20.5663V10.9969C3.33203 7.13268 6.46471 4 10.3289 4Z" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                    <path d="M9.37891 10.0509H16.5775" stroke="#FF8A2F" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                                <div>
                                    <div class="mt-2 mb-2 text" >
                                        <?php echo number_format($th->order_amount, 0, ',', '.') ?>VNĐ
                                    </div>
                                    <div>
                                        Mức chi tiêu
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4 text-center">
                                <svg width="32" height="32" viewBox="0 0 32 32" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M16.9509 4.58777L20.0389 10.7998C20.1935 11.1131 20.4922 11.3318 20.8389 11.3824L27.7522 12.3811C28.0322 12.4184 28.2842 12.5651 28.4562 12.7891C28.7789 13.2091 28.7295 13.8038 28.3429 14.1651L23.3322 19.0104C23.0775 19.2504 22.9642 19.6024 23.0309 19.9451L24.2309 26.7824C24.3149 27.3491 23.9282 27.8798 23.3615 27.9718C23.1269 28.0078 22.8869 27.9704 22.6735 27.8651L16.5162 24.6371C16.2069 24.4691 15.8362 24.4691 15.5269 24.6371L9.3242 27.8824C8.80554 28.1464 8.17087 27.9504 7.8882 27.4424C7.7802 27.2371 7.74287 27.0038 7.7802 26.7758L8.9802 19.9384C9.0402 19.5971 8.92687 19.2464 8.67887 19.0051L3.64154 14.1611C3.23087 13.7531 3.2282 13.0891 3.63754 12.6784C3.63887 12.6771 3.6402 12.6744 3.64154 12.6731C3.81087 12.5198 4.01887 12.4171 4.2442 12.3771L11.1589 11.3784C11.5042 11.3238 11.8015 11.1078 11.9589 10.7944L15.0442 4.58777C15.1682 4.33577 15.3882 4.14244 15.6549 4.05444C15.9229 3.96511 16.2162 3.98644 16.4682 4.11311C16.6749 4.21577 16.8442 4.38244 16.9509 4.58777Z" stroke="#200E32" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                                <div>
                                    <div class="mt-2 mb-2 text" >
                                        <?php echo number_format($th->order_amount / 1000, 0, ',', '.') ?>
                                    </div>
                                    <div>
                                        Điểm tích lũy
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
            <?php if ($user->userInfo->type == 1) { ?>
                <div class="mb-4"><img class="img-fluid" src="/templates/default/images/static.png" alt=""></div>
            <?php } ?>
            <div class="box-template mb-4">
                <div class="box-content">
                    <div class="bound-filter mb-3">
                        <form method="post" action="<?php echo FSRoute::_("index.php?module=members&view=members&task=transaction_history&Itemid=10"); ?>">
                            <select name="status" class="form-select">
                                <option value="-1">Trạng thái</option>
                                <?php foreach ($_SESSION['FS_ORDER_STATUS'] as $key => $val) : ?>
                                    <option value="<?php echo $key ?>"><?php echo $val ?></option>
                                <?php endforeach; ?>
                            </select>&nbsp;&nbsp;&nbsp;&nbsp;
                            <p>Từ ngày</p>
                            <input name="form_date" class="form-control datepicker" />
                            <p>Đến ngày</p>
                            <input name="to_date" class="form-control datepicker" />
                            <button type="submit" class="btn">Tìm</button>
                            <input type="hidden" name="module" value="members" />
                            <input type="hidden" name="view" value="members" />
                            <input type="hidden" name="task" value="transaction_history" />
                        </form>
                    </div>
                    <?php foreach ($list as $item) : ?>
                        <div class="mp-order-item mb-3">
                            <div class="mpoi-top clearfix row">
                                <div class="col-md-4 ma-donhang">
                                    <span>Mã đơn hàng: </span>
                                <strong><?php echo $item->code; ?></strong>
                                </div>
                                <div class="col-md-4 date">
                                    <span>Ngày đặt:</span>
                                <b><?php echo date('d/m/Y', strtotime($item->created_time)); ?></b>
                                </div>
                                <div class="col-md-4 check">
                                    <strong class="float-end" style="color: <?php if ($item->status == 3) echo '#FF4545';
                                                                        else echo '#2EC36E'; ?>;"><?php echo $_SESSION['FS_ORDER_STATUS'][$item->status] ?></strong>
                                </div>
                                
                            </div>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">Sản phẩm</th>
                                        <th scope="col">Số lượng</th>
                                        <th scope="col">Thành tiền</th>
                                        <th scope="col"></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($item->list as $pro) : ?>
                                        <tr>
                                            <th scope="row"><?php echo $pro->name ?></th>
                                            <td><?php echo $pro->quantity ?></td>
                                            <td><?php echo format_money_0($pro->quantity * $pro->price) ?></td>
                                            <td>
                                                <a href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#modal-re-vote">Đánh giá</a>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                            <div class="text-end">
                                Tổng thanh toán: <b><?php echo format_money_0($item->total_after_discount) ?></b>&nbsp;
                                <?php if ($item->status == 0) : ?>
                                    <button class="btn btn-cancel" data-bs-toggle="modal" data-bs-target="#modal-re-cancel">Huỷ đơn</button>
                                <?php else : ?>
                                    <button class="btn" data-bs-toggle="modal" data-bs-target="#modal-re-order">Đặt lại</button>
                                <?php endif; ?>
                            </div>
                        </div>
                    <?php endforeach; ?>
                    <?php echo $pagination->showPagination(1); ?>
                </div>
                <!--end: .box-content-->
            </div>
            <!--end: .box-template-->
            <?php if ($user->userInfo->type == 0) { ?>
                <!-- <div class="box-template mb-4"> -->
                    <!-- <div class="box-heading mb-5">
                        Chương trình ưu đãi
                    </div> -->
                    <!--end: .box-heading-->
                    <!-- <div class="box-content">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="voucher-item clearfix">
                                    <div class="thumb">
                                        <img src="/templates/default/images/voucher.svg" />
                                    </div>
                                    <div class="title">Giảm 10%</div>
                                    <div class="note">Số lượng có hạn</div>
                                    <div class="date clearfix">
                                        HSD: 08/11/2021
                                        <a href="#">Lưu</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="voucher-item clearfix">
                                    <div class="thumb">
                                        <img src="/templates/default/images/voucher-ship.svg" />
                                    </div>
                                    <div class="title">Giảm 30k phí vận chuyển</div>
                                    <div class="note">Cho đơn hàng từ 149K</div>
                                    <div class="date clearfix">
                                        HSD: 08/11/2021
                                        <a href="#">Lưu</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-md-6">
                                <div class="voucher-item clearfix">
                                    <div class="thumb">
                                        <img src="/templates/default/images/voucher.svg" />
                                    </div>
                                    <div class="title">Giảm 10%</div>
                                    <div class="note">Số lượng có hạn</div>
                                    <div class="date clearfix">
                                        HSD: 08/11/2021
                                        <a href="#">Lưu</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="voucher-item clearfix">
                                    <div class="thumb">
                                        <img src="/templates/default/images/voucher-ship.svg" />
                                    </div>
                                    <div class="title">Giảm 30k phí vận chuyển</div>
                                    <div class="note">Cho đơn hàng từ 149K</div>
                                    <div class="date clearfix">
                                        HSD: 08/11/2021
                                        <a href="#">Lưu</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="text-center mt-4">
                            <a href="<?php echo FSRoute::_('index.php?module=products&view=home') ?>" class="btn">Mua sắm ngay
                                <svg width="15" height="12" viewBox="0 0 15 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path d="M0.999999 5.70126L13.9285 5.70126M13.9285 5.70126L8.53584 1M13.9285 5.70126L8.53583 10.4025" stroke="white" stroke-width="1.84692" stroke-linecap="round" stroke-linejoin="round" />
                                </svg>
                            </a>
                        </div>
                    </div> -->
                    <!--end: .box-content-->
                <!-- </div> -->
                <!--end: .box-template-->
            <?php } ?>

            <div class="bt-sub-title mb-3"><?php if ($user->userInfo->type = 1) echo 'Cập nhật chính sách và tin tức';
                                            else echo 'Dành cho bạn'; ?></div>
            <div class="row">
                <?php foreach ($listNews as $item) {
                    $link = FSRoute::_("index.php?module=news&view=news&code=$item->alias&id=$item->id");
                    $title = htmlspecialchars($item->title); ?>
                    <div class="col-md-4 mb-3">
                        <div class="news-th">
                            <a href="<?php echo $link ?>">
                                <img class="img-fluid" src="<?php echo str_replace('/original/', '/original/', '/' . $item->image) ?>" alt="<?php echo $item->alias ?>" alt="<?php echo $item->image ?>">
                            </a>
                            <span><?php echo $item->title ?></span>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </main>
    </div>
    <!--end: .row-->
</div>
<!--end: .container-->

<style>
    .row.mb-2 {
        font-weight: 600;
        font-size: 18px;
        line-height: 27px;
        color: #828282;
    }
</style>

<div class="modal fade" id="modal-re-order" tabindex="-1" aria-labelledby="modal-re-order" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <table class="table">
                    <tbody>
                        <tr>
                            <td>
                                <img style="width: 80px;" class="thumb img-fluid" src="/images/products/2021/11/11/tiny/1_1636600663.jpg" />
                            </td>
                            <td>01</td>
                            <th>Thịt cá hồi áp chảo nước sốt chanh dây</th>
                            <td>86.000đ</td>
                        </tr>
                        <tr>
                            <td>
                                <img style="width: 80px;" class="thumb img-fluid" src="/images/products/2021/11/11/tiny/1_1636600663.jpg" />
                            </td>
                            <td>01</td>
                            <th>Thịt gà áp chảo nước sốt chanh dây</th>
                            <td>86.000đ</td>
                        </tr>
                        <tr>
                            <td>
                                <img style="width: 80px;" class="thumb img-fluid" src="/images/products/2021/11/11/tiny/1_1636600663.jpg" />
                            </td>
                            <td>01</td>
                            <th>Thịt gà áp chảo nước sốt chanh dây</th>
                            <td>86.000đ</td>
                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="2">
                                Tổng (3 phần)
                            </td>
                            <td>
                                258.000đ
                            </td>
                        </tr>
                    </tfoot>
                </table>
                <div class="row mb-2">
                    <div class="col">
                        Phí vận chuyển
                    </div>
                    <div class="col text-end">
                        50.000đ
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        Giảm giá
                    </div>
                    <div class="col text-end">
                        -15.000đ
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">

                    </div>
                    <div class="col text-end">
                        293.000đ
                    </div>
                </div>
                <hr />
                <div class="mb-3">
                    Chi tiết đơn hàng
                </div>
                <div class="row mb-2">
                    <div class="col">
                        Điểm tích lũy
                    </div>
                    <div class="col text-end">
                        0
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        Phương thức thanh toán
                    </div>
                    <div class="col text-end">
                        Tiền mặt
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        Thời gian đặt
                    </div>
                    <div class="col text-end">
                        15:27 07/07/2021
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        Thời gian nhận
                    </div>
                    <div class="col text-end">
                        15:27 10/07/2021
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        Địa điểm
                    </div>
                    <div class="col text-end">
                        Số 15 Lê Văn Thiêm, Nhân Chính, Thanh Xuân, Hà Nội
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        Nhân viên
                    </div>
                    <div class="col text-end">
                        Thái Hoàng Linh
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-re-vote" tabindex="-1" aria-labelledby="modal-re-vote" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body text-center">
                <div class="mb-4" style="font-weight: bold; font-size: 36px;line-height: 24px;">Đánh giá sản phẩm</div>
                <svg width="250" height="38" viewBox="0 0 250 38" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M37.9009 14.3599C37.6521 13.5569 36.9696 12.9867 36.1622 12.9107L25.1944 11.8715L20.8574 1.27893C20.5376 0.50263 19.8093 0.00012207 19.0002 0.00012207C18.191 0.00012207 17.4627 0.50263 17.1429 1.28075L12.8059 11.8715L1.83637 12.9107C1.03038 12.9885 0.349643 13.5569 0.0994391 14.3599C-0.150765 15.1628 0.0803041 16.0435 0.690014 16.5986L8.98039 24.1855L6.53575 35.4225C6.35686 36.2488 6.66418 37.1028 7.32115 37.5984C7.67428 37.8646 8.08742 38.0001 8.50404 38.0001C8.86326 38.0001 9.21957 37.8991 9.53936 37.6994L19.0002 31.7991L28.4575 37.6994C29.1495 38.1338 30.0219 38.0942 30.6774 37.5984C31.3347 37.1013 31.6417 36.2469 31.4628 35.4225L29.0182 24.1855L37.3086 16.6001C37.9183 16.0435 38.1511 15.1643 37.9009 14.3599Z" fill="#CDCBC5" />
                    <path d="M143.901 14.3597C143.652 13.5568 142.97 12.9865 142.162 12.9106L131.194 11.8714L126.857 1.27881C126.538 0.502508 125.809 0 125 0C124.191 0 123.463 0.502508 123.143 1.28062L118.806 11.8714L107.836 12.9106C107.03 12.9884 106.35 13.5568 106.099 14.3597C105.849 15.1627 106.08 16.0433 106.69 16.5985L114.98 24.1854L112.536 35.4224C112.357 36.2486 112.664 37.1027 113.321 37.5982C113.674 37.8645 114.087 38 114.504 38C114.863 38 115.22 37.899 115.539 37.6993L125 31.799L134.457 37.6993C135.15 38.1337 136.022 38.0941 136.677 37.5982C137.335 37.1012 137.642 36.2468 137.463 35.4224L135.018 24.1854L143.309 16.6C143.918 16.0433 144.151 15.1642 143.901 14.3597Z" fill="#CDCBC5" />
                    <path d="M90.9009 14.3597C90.6521 13.5568 89.9696 12.9865 89.1622 12.9106L78.1944 11.8714L73.8574 1.27881C73.5376 0.502508 72.8093 0 72.0002 0C71.191 0 70.4627 0.502508 70.1429 1.28062L65.8059 11.8714L54.8364 12.9106C54.0304 12.9884 53.3496 13.5568 53.0994 14.3597C52.8492 15.1627 53.0803 16.0433 53.69 16.5985L61.9804 24.1854L59.5357 35.4224C59.3569 36.2486 59.6642 37.1027 60.3212 37.5982C60.6743 37.8645 61.0874 38 61.504 38C61.8633 38 62.2196 37.899 62.5394 37.6993L72.0002 31.799L81.4575 37.6993C82.1495 38.1337 83.0219 38.0941 83.6774 37.5982C84.3347 37.1012 84.6417 36.2468 84.4628 35.4224L82.0182 24.1854L90.3086 16.6C90.9183 16.0433 91.1511 15.1642 90.9009 14.3597Z" fill="#CDCBC5" />
                    <path d="M196.901 14.3597C196.652 13.5568 195.97 12.9865 195.162 12.9106L184.194 11.8714L179.857 1.27881C179.538 0.502508 178.809 0 178 0C177.191 0 176.463 0.502508 176.143 1.28062L171.806 11.8714L160.836 12.9106C160.03 12.9884 159.35 13.5568 159.099 14.3597C158.849 15.1627 159.08 16.0433 159.69 16.5985L167.98 24.1854L165.536 35.4224C165.357 36.2486 165.664 37.1027 166.321 37.5982C166.674 37.8645 167.087 38 167.504 38C167.863 38 168.22 37.899 168.539 37.6993L178 31.799L187.457 37.6993C188.15 38.1337 189.022 38.0941 189.677 37.5982C190.335 37.1012 190.642 36.2468 190.463 35.4224L188.018 24.1854L196.309 16.6C196.918 16.0433 197.151 15.1642 196.901 14.3597Z" fill="#CDCBC5" />
                    <path d="M249.901 14.3597C249.652 13.5568 248.97 12.9865 248.162 12.9106L237.194 11.8714L232.857 1.27881C232.538 0.502508 231.809 0 231 0C230.191 0 229.463 0.502508 229.143 1.28062L224.806 11.8714L213.836 12.9106C213.03 12.9884 212.35 13.5568 212.099 14.3597C211.849 15.1627 212.08 16.0433 212.69 16.5985L220.98 24.1854L218.536 35.4224C218.357 36.2486 218.664 37.1027 219.321 37.5982C219.674 37.8645 220.087 38 220.504 38C220.863 38 221.22 37.899 221.539 37.6993L231 31.799L240.457 37.6993C241.15 38.1337 242.022 38.0941 242.677 37.5982C243.335 37.1012 243.642 36.2468 243.463 35.4224L241.018 24.1854L249.309 16.6C249.918 16.0433 250.151 15.1642 249.901 14.3597Z" fill="#CDCBC5" />
                </svg>
                <textarea class="mt-4 mb-4" style="height: 120px; width: 100%; border: none; background: #E0E1E0;box-shadow: inset 0px -3px 10px rgba(247, 247, 247, 0.45), inset -2px -2px 10px rgba(135, 191, 243, 0.29);border-radius: 15px;" placeholder="Viêt nhận xét...">

                </textarea>
                <button style="background: #FF8A2F; color: #fff;" class="btn">Gửi đánh giá</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modal-re-cancel" tabindex="-1" aria-labelledby="modal-re-cancel" aria-hidden="true">
    <div class="modal-dialog modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body ">
                <div class="text-center mb-4" style="font-weight: bold; font-size: 36px;line-height: 24px;">Chọn lý do hủy đơn</div>
                <div>
                    <div class="form-group form-check">
                        <input type="radio" class="form-check-input" name="payment_method" value="2" id="payment_method_2">
                        <label class="form-check-label" for="payment_method_2">Muốn thay đổi đơn hàng</label>
                    </div>
                    <div class="form-group form-check">
                        <input type="radio" class="form-check-input" name="payment_method" value="2" id="payment_method_2">
                        <label class="form-check-label" for="payment_method_2">Đổi ý không muốn mua nữa</label>
                    </div>
                </div>
                <input placeholder="Lý do khác" class="form-control" />
                <div class="mt-3 text-center">
                    <button type="submit" style="background: #FF8A2F; color: #fff;" class="btn">Đồng ý</button>
                </div>
            </div>
        </div>
    </div>
</div>