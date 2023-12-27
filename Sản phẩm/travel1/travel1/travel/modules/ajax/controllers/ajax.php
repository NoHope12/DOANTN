<?php
class AjaxControllersAjax extends FSControllers
{
    function __construct()
    {
        parent::__construct();
    }

    function ajax_load_district()
    {
        $html = '';
        $html .= '<option value="">Quận/ Huyện</option>';
        $model = $this->model;
        $city_id = FSInput::get('city_id');
        // $city = $model->get_price_by_city($city_id);

        $list_district = $model->getDistrictByCity($city_id);
        $result = array();
        $result['district'] = $list_district;
        echo json_encode($result);
    }
    function ajax_load_freeship()
    {
        // $html = '';
        // $html .= '<option value="">Quận/ Huyện</option>';
        $model = $this->model;
        // $city_id = FSInput::get('city_id');
        // $city = $model->get_price_by_city($city_id);

        // $list_district = $model->getDistrictByCity($city_id);
        $result = array();
        // $result['district'] = $list_district;
        echo json_encode($result);
    }
    
    function create_image()
    {
        ob_start();
        //Let's generate a totally random string using md5 
        $md5_hash = md5(rand(0, 999));
        //We don't need a 32 character long string so we trim it down to 5 
        $security_code = substr($md5_hash, 15, 5);
        //Set the session to store the security code
        $_SESSION["security_code"] = $security_code;
        //Set the image width and height 
        $width = 60;
        $height = 21;
        //Create the image resource 
        $image = ImageCreate($width, $height);
        //We are making three colors, white, black and gray 
        $white = ImageColorAllocate($image, 255, 255, 255);
        $black = ImageColorAllocate($image, 0, 0, 0);
        $grey = ImageColorAllocate($image, 204, 204, 204);
        //Make the background black 
        ImageFill($image, 0, 0, $white);
        //Add randomly generated string in white to the image
        ImageString($image, 3, 15, 3, $security_code, $black);
        //Throw in some lines to make it a little bit harder for any bots to break 
        ImageRectangle($image, 0, 0, $width - 1, $height - 1, $grey);
        //    imageline($image, 0, $height/2, $width, $height/2, $grey); 
        //    imageline($image, $width/2, 0, $width/2, $height, $grey); 
        //Tell the browser what kind of file is come in 
        header("Content-Type: image/jpeg");
        //Output the newly created image in jpeg format 
        ImageJpeg($image);
        //Free up resources
        ImageDestroy($image);
        ob_end_flush();
        exit();
    }

    function check_capcha()
    {
        $result = 0;
        $capcha = FSInput::get('capcha');
        if ($capcha == $_SESSION["security_code"]) {
            $result = 1;
        } //echo $_SESSION["security_code"];
        echo $result;
        exit;
    }

    function php_info()
    {
        phpinfo();
    }

    function registerNewsletter()
    {
        ob_start();
        global $user;
        $data = array(
            'error' => true,
            'message' => 'Có lỗi trong quá trình đưa lên máy chủ. 123456789 Xin bạn vui lòng kiểm tra lại kết nối.',
            'redirect' => URL_ROOT
        );
        $name = FSInput::get('name', '', 'str');
        $email = FSInput::get('email', '');
        $id = $this->model->saveGetNews(array(
            'name' => $name,
            'email' => $email,
        ), 'fs_email_get_new');
        $content = '';
        $content .= 'Họ tên:'. $name.'<br>';
        $content .= 'Email:'. $email.'<br>';
        $this->send_email1('Có yêu cầu nhận thông tin mới nhất từ Viketo.vn', $content, $name, 'admin@viketo.vn');
        if ($id) {
            $data['message'] = 'Bạn đã để lại email cho Keto. Bạn sẽ nhận được các chương trình hấp dẫn của Keto qua Email đã đăng ký.';
            $data['error'] = false;
        }
        echo json_encode($data);
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

    function get_districts_by_city()
    {
        $model = $this->model;
        $city_id = FSInput::get('city_id');
        $rows = $model->get_district($city_id);
        $html = '<option urban="0" value="0">-- Chọn quận/huyện --</option>';
        if ($rows)
            foreach ($rows as $item) {
                $html .= '<option urban="' . $item->urban . '" value="' . $item->id . '">' . $item->name . '</option>';
            }
        echo $html;
    }
}
