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
            <?php if($user->userInfo->is_bmi==0){ ?>
                <div class="text-center">
                    <img src="/templates/default/images/no-bmi.png" alt="">
                    <div class="heading mt-3 mb-4">Bạn chưa có thông tin về chỉ số sức khỏe.</div> 
                    <a href="/trai-nghiem.html" class="btn">
                        Trải nghiệm ngay
                    </a>
                </div>
            <?php }else{ ?>
                <?php 
                $bmi_form = unserialize($user->userInfo->bmi_form);
                $_GET = array_merge($bmi_form, $_GET);
                require_once(PATH_BASE.'modules/home/views/home/content_experience.php');
                ?>
            <?php } ?>
        </main>
    </div><!--end: .row-->
</div><!--end: .container-->