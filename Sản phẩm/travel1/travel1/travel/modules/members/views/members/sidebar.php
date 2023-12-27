<?php
global $tmpl, $user;
$task = FSInput::get('task', 'display', 'str');
$tmpl->addStylesheet('profile', 'modules/members/assets/css');
?>
<div class="mp-sidebar">
    <div class="text-center">
        <label for="avatar"></label>
        <div class="avatar-upload image-wrap">
            <img id="u_preview" src="<?php echo URL_ROOT . $user->userInfo->avatar ?>" onerror="this.src='/images/not_picture.png'" alt="avatar" class="img-responsive">
            <div class="up-file">
                <input type="file" name="avatar" id="avatar" accept="image/x-png,image/jpeg" onchange="loadFile(event)">
                <label for="avatar">Thay ảnh đại diện</label>
            </div>
        </div>
        <div class="mb-3 mt-3">
            <strong><?php echo $user->userInfo->name ? $user->userInfo->name : $user->userInfo->telephone ?></strong>
        </div>
        <div class="mp-level">
            Thành viên Thường
        </div>
    </div>
    <ul class="list-unstyled member-task">
        <?php foreach ($user->userTask as $t => $text) { ?>
            <li <?php if ($t == $task) { ?> class="selected" <?php } ?>>
                <?php if ($t == 'transaction_history') : ?>
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M15.7729 9.30504V6.27304C15.7729 4.18904 14.0839 2.50004 12.0009 2.50004C9.91694 2.49104 8.21994 4.17204 8.21094 6.25604V6.27304V9.30504" stroke="#200E32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M16.7422 21.0004H7.25778C4.90569 21.0004 3 19.0954 3 16.7454V11.2294C3 8.87937 4.90569 6.97437 7.25778 6.97437H16.7422C19.0943 6.97437 21 8.87937 21 11.2294V16.7454C21 19.0954 19.0943 21.0004 16.7422 21.0004Z" stroke="#200E32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                <?php endif; ?>

                <?php if ($t == 'display') : ?>
                    <svg width="17" height="22" viewBox="0 0 17 22" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <circle cx="8.57881" cy="6.27803" r="4.77803" stroke="#200E32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M1.00002 17.7014C0.998732 17.3655 1.07385 17.0338 1.2197 16.7312C1.67736 15.8158 2.96798 15.3307 4.03892 15.111C4.81128 14.9462 5.59431 14.8361 6.38217 14.7815C7.84084 14.6534 9.30793 14.6534 10.7666 14.7815C11.5544 14.8367 12.3374 14.9468 13.1099 15.111C14.1808 15.3307 15.4714 15.7701 15.9291 16.7312C16.2224 17.348 16.2224 18.064 15.9291 18.6808C15.4714 19.6419 14.1808 20.0813 13.1099 20.2918C12.3384 20.4635 11.5551 20.5767 10.7666 20.6305C9.57937 20.7311 8.38659 20.7495 7.19681 20.6854C6.92221 20.6854 6.65677 20.6854 6.38217 20.6305C5.59663 20.5773 4.81632 20.4641 4.04807 20.2918C2.96798 20.0813 1.68652 19.6419 1.2197 18.6808C1.0746 18.3747 0.999552 18.0402 1.00002 17.7014Z" stroke="#200E32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                <?php endif; ?>

                <?php if ($t == 'bmi') : ?>
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M21.5232 9.75284C20.8841 5.81944 17.5431 2.89321 13.5598 2.77801C13.3704 2.77059 13.1858 2.83878 13.0467 2.96755C12.9077 3.09632 12.8255 3.27511 12.8184 3.46451V3.46451V3.52859L13.2669 10.238C13.2963 10.6896 13.6846 11.0329 14.1364 11.0068L20.8641 10.5583C21.0537 10.5443 21.2298 10.4553 21.3536 10.311C21.4773 10.1666 21.5383 9.97894 21.5232 9.78946V9.75284Z" stroke="#200E32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path d="M8.90102 6.76889C9.32898 6.6699 9.76692 6.88887 9.9445 7.29063C9.99102 7.38512 10.019 7.48766 10.0269 7.59269C10.1184 8.89246 10.3106 11.7391 10.4205 13.2769C10.4392 13.5539 10.5676 13.812 10.7772 13.9941C10.9868 14.1762 11.2603 14.2673 11.5372 14.2472V14.2472L17.1848 13.8993C17.4369 13.8842 17.6841 13.9739 17.8678 14.1472C18.0515 14.3205 18.1555 14.5621 18.155 14.8147V14.8147C17.9262 18.225 15.4759 21.0761 12.1387 21.8151C8.80153 22.5541 5.37669 21.0041 3.7294 18.0092C3.23765 17.1472 2.92623 16.1943 2.81406 15.2083C2.76611 14.9056 2.74772 14.5991 2.75914 14.2929C2.76886 10.6509 5.32665 7.51285 8.89187 6.76889" stroke="#200E32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                <?php endif; ?>

                <?php if ($t == 'changepass') : ?>
                    <svg width="18" height="20" viewBox="0 0 18 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M8.8722 -0.000314806C11.7262 -0.000314806 14.0542 2.2563 14.1688 5.08225L14.1732 5.30073V6.87659C15.9497 7.49324 17.225 9.18169 17.225 11.1685V15.4575C17.225 17.9664 15.1915 19.9995 12.683 19.9995H5.042C2.53347 19.9995 0.5 17.9664 0.5 15.4575V11.1685C0.5 9.18154 1.77545 7.49298 3.5522 6.87645L3.55221 5.27745C3.56502 2.34945 5.94806 -0.0130698 8.8722 -0.000314806ZM12.6732 5.30073V6.62653H5.0522V5.28073L5.058 5.08542C5.16855 3.08019 6.83555 1.49081 8.86893 1.49968C10.971 1.49969 12.6732 3.20193 12.6732 5.30073ZM12.683 8.12653H5.042C3.36184 8.12653 2 9.48812 2 11.1685V15.4575C2 17.1379 3.36184 18.4995 5.042 18.4995H12.683C14.3632 18.4995 15.725 17.1379 15.725 15.4575V11.1685C15.725 9.48812 14.3632 8.12653 12.683 8.12653ZM9.6052 12.1009C9.55554 11.7348 9.24174 11.4526 8.86205 11.4526C8.44784 11.4526 8.11205 11.7884 8.11205 12.2026V14.4236L8.1189 14.5254C8.16856 14.8915 8.48235 15.1736 8.86205 15.1736C9.27626 15.1736 9.61205 14.8379 9.61205 14.4236V12.2026L9.6052 12.1009Z" fill="#200E32" />
                    </svg>
                <?php endif; ?>

                <?php if ($t == 'logout') : ?>
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M15.0155 7.38948V6.45648C15.0155 4.42148 13.3655 2.77148 11.3305 2.77148H6.45548C4.42148 2.77148 2.77148 4.42148 2.77148 6.45648V17.5865C2.77148 19.6215 4.42148 21.2715 6.45548 21.2715H11.3405C13.3695 21.2715 15.0155 19.6265 15.0155 17.5975V16.6545" stroke="#200E32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path d="M21.8086 12.0214H9.76758" stroke="#200E32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                        <path d="M18.8809 9.10632L21.8089 12.0213L18.8809 14.9373" stroke="#200E32" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round" />
                    </svg>
                <?php endif; ?>

                <a role="menuitem" href="<?php echo FSRoute::_('index.php?module=members&view=members&Itemid=100&task=' . $t) ?>"><?php echo $text ?></a>
            </li>
        <?php } ?>
    </ul>
</div>