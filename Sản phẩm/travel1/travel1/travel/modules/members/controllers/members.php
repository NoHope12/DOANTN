<?php
class MembersControllersMembers extends FSControllers
{
    function __construct()
    {
        global $user;
        parent::__construct();
    }

    public function display()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'));
        $address = $this->model->get_records('member_id=' . $user->userID, 'fs_members_address');
        $breadcrumbs = array(array(0 => 'Thông tin cá nhân', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/default.php');
    }

    function inbox()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn chưa đăng nhập!');
        $breadcrumbs = array(array(0 => 'Hộp thư', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/inbox.php');
    }

    function promotion()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn chưa đăng nhập!');
        $breadcrumbs = array(array(0 => 'Thông tin khuyến mãi', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/promotion.php');
    }

    function change_pass()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn chưa đăng nhập!');
        $breadcrumbs = array(array(0 => 'Thay đổi mật khẩu', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/change_pass.php');
    }

    public function info()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn chưa đăng nhập!');
        $breadcrumbs = array(array(0 => 'Thông tin cá nhân', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/default.php');
    }

    function register()
    {
        global $tmpl, $user;
        if ($user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&Itemid=10'), 'Bạn đã đăng nhập!');
        $breadcrumbs = array(array(0 => 'Đăng ký tài khoản mới', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/register.php');
    }

    function register_update()
    {
        global $tmpl, $user;
        if ($user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&Itemid=10'), 'Bạn đã đăng nhập!');
        $breadcrumbs = array(array(0 => 'Nhập thông tin tài khoản', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/register_update.php');
    }

    function do_register()
    {
        global $tmpl, $user, $config;
        $data = array();
        $data['username'] = FSInput::get('username', '', 'str');
        $data['password'] = FSInput::get('password', '', 'str');
        $data['fullname'] = FSInput::get('fullname', '', 'str');
        $data['email'] = FSInput::get('email', '', 'str');
        $data['mobile'] = FSInput::get('mobile', '', 'str');
        $data['address'] = FSInput::get('address', '', 'str');
        $birth_day = FSInput::get('birth_day', 0);
        $birth_month = FSInput::get('birth_month', 0);
        $birth_year = FSInput::get('birth_year', 0);
        $data['birthday'] = $birth_year . '-' . $birth_month . '-' . $birth_day . ' ' . '09:00:00';
        $data['created_time'] = date('Y-m-d H:i:s');
        $data['point'] = intval($config['point_member']);
        $data['number_occurrences'] = intval($config['number_occurrences']);
        $data['level_text'] = 'Tức Đồng';
        $data['published'] = 1;
        $user_id = $user->insertUser($data);
        if ($user_id) {
            // $this->sendActivateMail($user_id, $data['fullname'], $data['email']);
            $user->updateUser(array('code' => 'M' . str_pad($user_id, 6, "0", STR_PAD_LEFT)), $user_id);
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn đã đăng ký thành công!');
        } else
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=register&Itemid=10'), 'Bạn đăng ký chưa thành công!');
    }

    function do_bregister()
    {
        global $tmpl, $user, $config;
        $json = array(
            'error' => false,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối!!!',
            'redirect' => FSRoute::_('/index.php?module=members&view=members&task=register&Itemid=10'),
            'id' => fsEncode(0)
        );

        $data = array();
        $data['password'] = FSInput::get('password', '', 'str');
        $data['email'] = FSInput::get('email', '', 'str');
        $data['type'] = FSInput::get('type', '0', 'str');
        $data['username'] = $data['telephone'] = FSInput::get('mobile');
        $data['created_time'] = date('Y-m-d H:i:s');
        $data['published'] = 1;

        if ($user->checkExitsMobileVerify($data['telephone'])) {
            $json['message'] = 'Số điện thoại này đã có người sử dụng';
            echo json_encode($json);
            exit();
        }

        $user_id = $user->insertUser($data);

        if ($user_id) {
            // $this->sendActivateMail($user_id, $data['email'], $data['email']);
            $user->updateUser(array('code' => 'M' . str_pad($user_id, 6, "0", STR_PAD_LEFT)), $user_id);
            $json['error'] = false;
            $json['message'] = 'Bạn đã đăng ký thành công!';
            $_SESSION['register_id'] = $user_id;
        }

        ob_end_clean();
        echo json_encode($json);
        exit();
    }
    function store_register()
    {
        global $tmpl, $user, $config;
        $json = array(
            'error' => true,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.',
            'redirect' => FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10')
        );
        $data = $_POST['data'];
        if ($user->checkExitsUsername($_POST['data']['username'])) {
            $json = array(
                'error' => true,
                'message' => 'Tài khoản đã tồn tại!',
            );
            echo json_encode($json);
            exit();
        }
        $data['published'] = 1;
        $data['password'] = $data['password'];
        $user_id = $user->insertUser($data);
        if ($user_id) {
            $json = array(
                'error' => false,
                'message' => 'Bạn đã đăng kí thành công!',
                'redirect' => FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10')
            );
        } else {
            $json = array(
                'error' => true,
                'message' => 'Bạn đăng kí không thành công!',
            );
        }
        echo json_encode($json);
        exit();
    }

    function do_update_register()
    {
        global $tmpl, $user, $config;
        $json = array(
            'error' => true,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.',
            'redirect' => FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10')
        );

        $data = array();
        $data['name'] = FSInput::get('name', '', 'str');
        $data['email'] = FSInput::get('email', '0', 'str');
        $data['address'] = FSInput::get('address', '0', 'str');

        if ($_SESSION['register_id']) {
            $user->updateUser($data, $_SESSION['register_id']);
            $json['error'] = false;
            $json['message'] = 'Bạn đã đăng ký thành công!';
        }

        ob_end_clean();
        echo json_encode($json);
        exit();
    }

    function sendActivateMail($id, $name, $mail)
    {
        $title = 'Kích hoạt tài khoản tại ' . $_SERVER['HTTP_HOST'];
        $link = 'http://' . $_SERVER['HTTP_HOST'] . '/kich-hoat-tai-khoan?id=' . fsEncode($id);
        $body = '<p>Chào <b>' . $name . '</b></p>';
        $body .= '<p>Bạn đã đăng ký tài khoản thành công tại ' . $_SERVER['HTTP_HOST'] . ', vui lòng click vào đây để <a href="' . $link . '">kích hoạt</a>.</p>';
        $body .= '<p>Xin cảm ơn!</p>';
        sendMailFS($title, $body, $name, $mail);
    }

    function login()
    {
        global $tmpl, $user;
        if ($user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&Itemid=10'), 'Bạn đã đăng nhập!');
        $breadcrumbs = array(array(0 => 'Đăng nhập tài khoản', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/login.php');
    }

    function do_login()
    {
        global $user;
        $json = array(
            'error' => true,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.',
            'redirect' => URL_ROOT
        );
        $username = FSInput::get('username', '', 'str');
        $password = FSInput::get('password', '', 'str');
        $redirect = FSInput::get('redirect', '');
        $loged = $user->login($username, $password);
        if ($loged) {
            $json['error'] = false;
            $json['message'] = 'Bạn đã đăng nhập thành công.';
            if ($redirect != '')
                $json['redirect'] = FSRoute::_('index.php?module=members&view=members&Itemid=21');
        } else {
            $json['message'] = 'Tên đăng nhập hoặc mật khẩu không đúng.';
        }
        ob_end_clean();
        echo json_encode($json);
        exit();
    }

    function do_update()
    {
        global $tmpl, $user;
        $data = array();
        $data['name'] = FSInput::get('name', '', 'str');
        $data['email'] = FSInput::get('email', '', 'str');
        $data['telephone'] = FSInput::get('mobile', '', 'str');
        $data['sex'] = FSInput::get('sex', 'male', 'str');
        $data['mobile2'] = FSInput::get('mobile2', '', 'str');
        $data['address'] = FSInput::get('address', '', 'str');
        $data['city_id'] = FSInput::get('city_id', 0);
        $data['district_id'] = FSInput::get('district_id', 0);
        $birthday_day = FSInput::get('birthday_day', 0);
        $birthday_month = FSInput::get('birthday_month', 0);
        $birthday_year = FSInput::get('birthday_year', 0);
        $data['birthday'] = $birthday_year . '-' . $birthday_month . '-' . $birthday_day . ' 09:00:00';
        $data['sex'] = FSInput::get('sex', 1);
        $user_id = $user->updateUser($data);
        if (0 < $_FILES['avatar']['error']) {
            echo 'Error: ' . $_FILES['avatar']['error'] . '<br>';
        } else {
            $row["avatar"] = 'images/' . $_FILES['avatar']['name'];
            // $this->remove_old_image($user->userID, 'avatar', 'fs_members');
            $user->updateUser($row, $user->userID);
            move_uploaded_file($_FILES['avatar']['tmp_name'], 'images/' . $_FILES['avatar']['name']);
        }
        if ($user_id)
            setRedirect(FSRoute::_('index.php?module=members&view=members&Itemid=10'), 'Bạn đã cập nhất thành công!');
        else
            setRedirect(FSRoute::_('index.php?module=members&view=members&Itemid=10'), 'Bạn chưa cập nhất thành công!');
    }

    function changepass()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn chưa đăng nhập!');
        $breadcrumbs = array(array(0 => 'Trang cá nhân', 1 => ''), array(0 => 'Đổi mật khẩu', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/changepass.php');
    }

    function bmi()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn chưa đăng nhập!');
        $breadcrumbs = array(array(0 => 'Trang cá nhân', 1 => ''), array(0 => 'Đổi mật khẩu', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/bmi.php');
    }

    function do_changepass()
    {
        global $user;
        $password = FSInput::get('cpassword', '', 'str');
        if (!$user->checkCurrentPassword($password)) {
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=changepass&Itemid=10'), 'Mật khẩu hiện tại không đúng!');
            return;
        }
        $data['password'] = FSInput::get('password', '', 'str');
        $user_id = $user->updateUser($data);
        setRedirect(FSRoute::_("index.php?module=members&Itemid=10"), 'Thay đổi mật khẩu thành công');
        /*if($user_id)
            setRedirect(FSRoute::_("index.php?module=members&Itemid=10"), 'Thay đổi mật khẩu thành công');
        else
            setRedirect(FSRoute::_("index.php?module=members&task=changepass&Itemid=10"), 'Thay đổi mật khẩu không thành công');*/
    }

    function forgot_pass()
    {
        global $tmpl, $user;
        if ($user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&Itemid=10'), 'Bạn đã đăng nhập!');
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/forgot_pass.php');
    }

    function do_forgot_pass()
    {
        ob_start();
        global $user;
        $json = array(
            'error' => true,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.',
            'redirect' => URL_ROOT
        );
        $username = FSInput::get('username', '', 'str');
        $email = FSInput::get('email', '', 'str');
        $redirect = FSInput::get('redirect', '', 'str');
        $forgot = $user->forgot($username, $email);
        if ($forgot) {
            $activated_code = rand(100000, 999999);
            $user->updateUser(array('activated_code' => $activated_code), $forgot->id);
            $json['error'] = false;
            $json['message'] = 'Bạn đã gửi <b>yêu cầu đổi mật khẩu</b> thành công.<br />Bạn vui lòng <b>kiểm tra email</b> để thực hiện tiếp theo.';
            $msg = 'Chào <b>' . $forgot->fullname . '</b><br /><br />
                    Yêu cầu đổi mật khẩu của bạn đã được gửi đi. Vui lòng <a href="' . FSRoute::_('index.php?module=members&view=members&task=update_forgot_pass') . '?data=' . fsEncode($forgot->id) . '">click vào đây</a>, để thực hiện bước tiếp theo.<br /><br />
                    Mã bảo mật của bạn: <b>' . $activated_code . '</b><br /><br />
                    Cảm ơn!';
            sendMailFS('Yêu cầu đổi mật khẩu tại ' . $_SERVER['SERVER_NAME'], $msg, $forgot->fullname, $forgot->email);
        } else {
            $json['message'] = 'Tên đăng nhập hoặc email không đúng.';
        }
        ob_end_clean();
        echo json_encode($json);
    }

    function update_forgot_pass()
    {
        global $tmpl, $user;
        if ($user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&Itemid=10'), 'Bạn đã đăng nhập!');
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/update_forgot_pass.php');
    }

    function do_update_forgot_pass()
    {
        ob_start();
        global $user;
        $json = array(
            'error' => true,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.',
            'redirect' => URL_ROOT
        );
        $id = fsDecode(FSInput::get('data', '', 'str'));
        $activated_code = FSInput::get('activated_code', '', 'str');
        $check = $user->check_forgot($id, $activated_code);
        if ($check) {
            $password = FSInput::get('password', '', 'str');
            $user->updateUser(array('password' => $password), $forgot->id);
            $json['error'] = false;
            $json['message'] = 'Bạn đã đổi mật khẩu thành công!';
            $json['redirect'] = FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10');
        } else {
            $json['message'] = 'Mã bảo mật không đúng.';
        }
        ob_end_clean();
        echo json_encode($json);
        exit();
    }

    function logout()
    {
        global $user;
        $user->logouts(URL_ROOT);
    }

    function check_logged()
    {
        global $user;
        $result = 0;
        if ($user->userID)
            $result = 1;
        echo $result;
        exit;
    }

    function activate()
    {
        global $tmpl, $user;
        $id = fsDecode(FSInput::get('id', '', 'str'));
        $data = array('published' => 1);
        $user_id = $user->updateUser($data, $id);
        setRedirect(URL_ROOT, 'Bạn đã kích hoạt tài khoản thành công!');
    }

    function google_login()
    {
        global $user;
        $strHTML = '';
        require(PATH_BASE . 'libraries/google-api-php/config.php');
        $client_id = '365689301275-ej421baud0bs8465nutssqb9vq9ll8kh.apps.googleusercontent.com';
        $client_secret = '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';
        $redirect_uri = FSRoute::_('index.php?module=members&view=members&raw=1&task=google_login');
        //$redirect_uri = URL_ROOT.'oauth2callback';
        $client = new Google_Client();
        $client->setClientId($client_id);
        $client->setClientSecret($client_secret);
        $client->setRedirectUri($redirect_uri);
        $client->setScopes('email');
        if (isset($_GET['code'])) {
            $client->authenticate($_GET['code']);
            $_SESSION['access_token']  = $client->getAccessToken();
            $access_token = json_decode($_SESSION['access_token']);
            $token_url = 'https://www.googleapis.com/oauth2/v1/userinfo?alt=json&access_token=' . $access_token->access_token;
            $token_data = curlGetPageContent($token_url);
            $guser = json_decode($token_data);
            if (!empty($guser)) {
                $data = $user->checkExitsEmail($guser->email);
                if ($data) {
                    $user->loginMailOnly($guser->email);
                    $return['error']     = true;
                    $return['url']        =  URL_ROOT;
                    $return['msg']        =  "Bạn đã đăng nhập thành công";
                    $strHTML  = '<script type="text/javascript">';
                    $strHTML .= '	self.opener.location.reload();';
                    $strHTML .= '	window.close();';
                    $strHTML .= '</script>';
                } else {
                    $row['name'] = $guser->name;
                    $row['email'] = $guser->email;
                    $row['password'] = '123456';
                    //$row['type'] = '2';
                    $id = $user->insertUser($row);
                    if ($id) {
                        $user->updateUser(array('code' => 'CVN' . str_pad($id, 6, "0", STR_PAD_LEFT)), $id);
                        $user->loginMailOnly($guser->email);
                        $return['error']     = true;
                        $return['url']        =  URL_ROOT;
                        $return['msg']        =  "Lưu Thành viên thành công";
                        $strHTML  = '<script type="text/javascript">';
                        $strHTML .= '	self.opener.location.reload();';
                        $strHTML .= '	window.close();';
                        $strHTML .= '</script>';
                    } //end: if($id)
                } //end: if ($data)
            } else {
                unset($_SESSION['access_token']);
            } //end: if (!empty($guser))
        } //end: if (isset($_GET['code']))
        if (isset($_SESSION['access_token']) && $_SESSION['access_token']) {
            /* $client->setAccessToken($_SESSION['access_token']);
            unset($_SESSION['access_token']);
            $this->google_login(); */
            unset($_SESSION['access_token']);
        } else {
            $authUrl = $client->createAuthUrl();
            $strHTML  = '<script type="text/javascript">';
            $strHTML .= '	top.location.href="' . $authUrl . '"';
            $strHTML .= '</script>';
        }
        echo $strHTML;
    }

    function face_login()
    {

        global $user;
        $app_id = "446937490542425";
        $app_secret = "c6d30a7327b469bce5fc655fddd47644";
        $permission = "email,public_profile,user_friends";
        $my_url = FSRoute::_('index.php?module=members&view=members&raw=1&task=face_login');
        $strHTML = '';
        $code = isset($_REQUEST['code']) ? $_REQUEST['code'] : '';
        if (empty($code)) {
            $strHTML = '';
            $_SESSION['state'] = md5(uniqid(rand(), TRUE)); // CSRF protection
            $dialog_url = "http://www.facebook.com/dialog/oauth?client_id=" . $app_id . "&redirect_uri=" . urlencode($my_url) . "&scope=" . $permission . "&state=" . $_SESSION['state'];
            $strHTML  = '<script type="text/javascript">';
            $strHTML .= '	top.location.href="' . $dialog_url . '"';
            $strHTML .= '</script>';
        }
        $S_State = isset($_SESSION['state']) ? $_SESSION['state'] : '';
        $R_State = isset($_REQUEST['state']) ? $_REQUEST['state'] : '';
        if ($S_State && ($S_State == $R_State)) {
            $token_url = 'https://graph.facebook.com/oauth/access_token?client_id=' . $app_id . '&redirect_uri=' . urlencode($my_url) . '&client_secret=' . $app_secret . '&code=' . $code;
            $response = curlGetPageContent($token_url);
            $response = json_decode($response);
            $params = null;
            $_SESSION['access_token'] = $response->access_token;
            $graph_url = "https://graph.facebook.com/me?fields=email,id,name,gender&access_token=" . $response->access_token;
            $data = curlGetPageContent($graph_url);
            $fuser = json_decode($data);
            if (!empty($fuser)) {
                $data = $user->checkExitsFacebookID($fuser->id);
                if ($data) {
                    $user->loginFacebookID($fuser->id);
                    $return['error']     = true;
                    $return['url']        =  URL_ROOT;
                    $return['msg']        =  "Bạn đã đăng nhập thành công";
                    $strHTML  = '<script type="text/javascript">';
                    $strHTML .= '	self.opener.location.reload();';
                    $strHTML .= '	window.close();';
                    $strHTML .= '</script>';
                } else {
                    $row['name'] = $fuser->name;
                    $row['facebook_id'] = $fuser->id;
                    $row['password'] = '123456';
                    $id = $user->insertUser($row);
                    if ($id) {
                        $user->updateUser(array('code' => 'CVN' . str_pad($id, 6, "0", STR_PAD_LEFT)), $id);
                        $user->loginFacebookID($fuser->id);
                        $return['error']     = true;
                        $return['url']        =  URL_ROOT;
                        $return['msg']        =  "Lưu Thành viên thành công";
                        $strHTML  = '<script type="text/javascript">';
                        $strHTML .= '	self.opener.location.reload();';
                        $strHTML .= '	window.close();';
                        $strHTML .= '</script>';
                    }
                }
            } else {
                $strHTML = '';
                $_SESSION['state'] = md5(uniqid(rand(), TRUE)); // CSRF protection
                $dialog_url = "http://www.facebook.com/dialog/oauth?client_id=" . $app_id . "&redirect_uri=" . urlencode($my_url) . "&scope=" . $permission . "&state=" . $_SESSION['state'];
                $strHTML  = '<script type="text/javascript">';
                $strHTML .= 'top.location.href="' . $dialog_url . '"';
                $strHTML .= '</script>';
            }
        } else {
            $strHTML = '';
            $_SESSION['state'] = md5(uniqid(rand(), TRUE)); // CSRF protection
            $dialog_url = "http://www.facebook.com/dialog/oauth?client_id=" . $app_id . "&redirect_uri=" . urlencode($my_url) . "&scope=" . $permission . "&state=" . $_SESSION['state'];
            $strHTML  .= '<script type="text/javascript">';
            $strHTML .= 'top.location.href="' . $dialog_url . '"';
            $strHTML .= '</script>';
        }
        echo $strHTML;
    }

    function transaction_history()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn chưa đăng nhập!');
        $list = $this->model->getOrders();
        $total = $this->model->getOrdersTotal();
        $pagination = $this->model->getPaginationOrders($total);
        foreach ($list as $key => $val) {
            $list[$key]->list = $this->model->getOrderProducts($val->id);
        }
        $listNews = $this->model->get_records('', 'fs_news', '*', 'id DESC', 3);
        $th = $this->model->transaction_history_total();
        $breadcrumbs = array(array(0 => 'Thông tin cá nhân', 1 => ''));
        $breadcrumbs = array(array(0 => 'Lịch sử giao dịch', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/transaction_history.php');
    }

    function member_level()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn chưa đăng nhập!');
        $levels = $this->model->get_records('', 'fs_members_level');
        $breadcrumbs = array(array(0 => 'Thông tin cá nhân', 1 => ''));
        $breadcrumbs = array(array(0 => 'Cấp thành viên', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/member_level.php');
    }

    function promotion_information()
    {
        global $tmpl, $user;
        if (!$user->userID)
            setRedirect(FSRoute::_('index.php?module=members&view=members&task=login&Itemid=10'), 'Bạn chưa đăng nhập!');
        $breadcrumbs = array(array(0 => 'Thông tin cá nhân', 1 => ''));
        $breadcrumbs = array(array(0 => 'Thông tin khuyến mại', 1 => ''));
        $tmpl->assign('breadcrumbs', $breadcrumbs);
        require(PATH_BASE . 'modules/' . $this->module . '/views/' . $this->view . '/promotion_information.php');
    }

    public function save_address()
    {
        global $tmpl, $user;
        $json = array(
            'error' => true,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.',
        );
        $name = FSInput::get('name', '', 'str');
        $telephone = FSInput::get('telephone', '', 'str');
        $address = FSInput::get('address', '', 'str');
        $default = FSInput::get('default');
        if ($default == 'true') {
            $default = 1;
        }

        $id = FSInput::get('id', 0, 'int');

        if ($id) {
            $this->model->_update(array(
                'default' => 0
            ), 'fs_members_address', 'member_id = ' . $user->userID);
            $this->model->_update(array(
                'name' => $name,
                'telephone' => $telephone,
                'address' => $address,
                'default' => $default
            ), 'fs_members_address', 'id=' . intval($id));
        } else {
            $this->model->_add(array(
                'member_id' => $user->userID,
                'name' => $name,
                'telephone' => $telephone,
                'address' => $address,
                'default' => $default
            ), 'fs_members_address');
        }
        $json = array(
            'error' => false,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.',
        );

        echo json_encode($json);
    }

    function schedule_consultation()
    {
        ob_start();
        global $user;
        $json = array(
            'error' => true,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.',
            'redirect' => URL_ROOT
        );
        $name = FSInput::get('consult_name', '', 'str');
        $telephone = FSInput::get('consult_mobile', '', 'str');
        $email = FSInput::get('consult_email', '');
        $consult_specification = FSInput::get('consult_email', array(), 'array');
        $result = '';
        $info = '';
        $sex = '';
        if ($_SESSION['sex'] == 1) {
            $sex = 'Nam';
        } else {
            $sex = 'Nữ';
        }
        $info =
            'Tuổi: <b>' . $_SESSION['age'] . '</b></br>' .
            'Cân nặng: <b>' . $_SESSION['weight'] . ' </b>kg</br>' .
            'Cao: <b>' . $_SESSION['height'] . '  </b>cm</br>' .
            'Giới tính: <b>' . $sex . '</b></br>' .
            'Cân nặng mong muốn: <b>' . $_SESSION['weight_desire'] . '</b></br>' .
            'Mục tiêu giảm trong: <b>' . $_SESSION['date_taget'] . ' </b> ngày</br>';

        $result =
            'Chỉ số BMI: <b>' . $_SESSION['bmi'] . '</b></br>' .
            'Tuổi chuyển hóa: <b>' . $_SESSION['bmi_age_sh'] . '</b></br>' .
            'Lượng Calo khuyến nghị: <b>' . $_SESSION['calo'] . '</b></br>' .
            'Lượng nước khuyến nghị: <b>' . $_SESSION['bmi'] . '</b></br>' .
            'Cân nặng lý tưởng: <b>' . $_SESSION['best_weight'] . '</b></br>' .
            'Lộ trình giảm sau 28 ngày: <b>' . $_SESSION['target_weight'] . ' </b>kg</br>';
        $id = $this->model->_add(array(
            'name' => $name,
            'telephone' => $telephone,
            'email' => $email,
            'info' => $info,
            'result' => $result,
            'created_time' => date('Y-m-d H:i:s')
        ), 'fs_members_consult');


        if ($id) {
            $json['error'] = false;
            $json['message'] = 'Bạn đã đăng ký tư vấn thành công thành công.';
        }
        $content = '';
        $content .= 'Họ tên:' . $name . '<br>';
        $content .= 'Email:' . $email . '<br>';
        $content .= 'Số điện thoại' . $telephone;
        $this->send_email1('Có yêu cầu tư vấn từ khách hàng Viketo.vn', $content, $name, 'admin@viketo.vn');
        ob_end_clean();
        echo json_encode($json);
        exit();
    }
    function send_email1($title, $content, $nTo, $mTo)
    {
        //global $email_info;

        $global_class = FSFactory::getClass('FsGlobal');

        $admin_name = $global_class->getConfig('admin_name');
        $admin_email = $global_class->getConfig('admin_email');

        $nFrom = $admin_name;
        $server = 'mail.anhoajsc.com.vn';
        $mFrom = 'viketo@anhoajsc.com.vn';
        $mPass = 'Ah@123';
        //$mFrom = 'info@ketnoigiaoduc.vn'; //$email_info['mFrom'];//dia chi email cua ban
        //$mPass = 'lzsaw{JZnHDE'; // $email_info['mPass'];//mat khau email cua ban

        FSFactory::include_class('class.smtp', 'mailserver');
        $mail = FSFactory::getClass('PHPMailer', 'mailserver');

        $body = $content;

        $mail->IsSMTP();
        //Tắt mở kiểm tra lỗi trả về, chấp nhận các giá trị 0 1 2
        // 0 = off không thông báo bất kì gì, tốt nhất nên dùng khi đã hoàn thành.
        // 1 = Thông báo lỗi ở client
        // 2 = Thông báo lỗi cả client và lỗi ở server
        $mail->SMTPDebug = 0; // enables SMTP debug information (for testing)
        $mail->Debugoutput = "html"; // Lỗi trả về hiển thị với cấu trúc HTML
        $mail->CharSet = "utf-8";

        $mail->SMTPAuth = true; // enable SMTP authentication
        $mail->SMTPSecure = ""; // sets the prefix to the servier
        $mail->Host = $server; //$email_info['Host'];
        $mail->Port = '25'; //$email_info['Port'];

        $mail->Username = $mFrom; // GMAIL username
        $mail->Password = $mPass; // GMAIL password

        $mail->SetFrom($mFrom, $nFrom);
        //chuyen chuoi thanh mang
        // $ccmail = explode(',', $diachicc);
        // $ccmail = array_filter($ccmail);

        if (!empty($ccmail)) {
            foreach ($ccmail as $k => $v) {
                $mail->addBCC($v);
            }
        }
        $mail->addCC($admin_email, $admin_name);
        $mail->Subject = $title;
        $mail->MsgHTML($body);
        //$mail->MsgHTML(file_get_contents('email-template.html'), dirname(__FILE__));

        $address = $mTo;

        $mail->AddAddress($address, $nTo);
        $mail->AddReplyTo($admin_email, $admin_name);

        if (!$mail->Send()) {
            // echo $random;
            echo "Có lỗi khi gửi mail: " . $mail->ErrorInfo;
            die;
        }
        return true;
    }
}
