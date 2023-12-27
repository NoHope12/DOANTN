<?php

class FSRoute
{
    var $url;

    function __construct($url)
    {
    }

    static function _($url)
    {
        return FSRoute::enURL($url);
    }

    /*
     * Trả lại tên mã hóa trên URL
     */
    static function get_name_encode($name, $lang)
    {
        $lang_url = array(
            'ct' => 'ce',
            'cr' => 'cre',
            'lien-he' => 'contact',
            'thanh-tich' => 'achievement',
            'cau-chuyen' => 'story',
            'tin-tuc' => 'news',
            'tin-tuc-noi-bat' => 'investor',
            'hinh-anh' => 'pictures',
            'video' => 'videos',
            'ho-so' => 'profiles',
            'gt' => 'gte',
            'tt' => 'tte',
            'dl' => 'dle',
            'ttnb' => 'ttnbe',
            'tuyen-dung' => 'careers',
        );
        if ($lang == 'vi')
            return $name;
        else
            return $lang_url[$name];
    }

    static function addParameters($params, $value)
    {
        // only filter
        $module = FSInput::get('module');
        $view = FSInput::get('view');
        if ($module == 'products' && $view == 'search') {
            $array_paras_need_get = array('ccode', 'filter', 'manu', 'order', 'status', 'style', 'Itemid', 'keyword');
            $url = 'index.php?module=' . $module . '&view=' . $view;
            foreach ($array_paras_need_get as $item) {
                if ($item != $params) {
                    $value_of_param = FSInput::get($item);
                    if ($value_of_param) {
                        $url .= "&" . $item . "=" . $value_of_param;
                    }
                } else {
                    if ($value)
                        $url .= "&" . $item . "=" . $value;
                }
            }
            return FSRoute::_($url);
        }
        if ($module == 'products' && $view == 'cat') {
            $array_paras_need_get = array('ccode', 'manu', 'order', 'status', 'style', 'sort', 'Itemid', 'cid', $params);
            $url = 'index.php?module=' . $module . '&view=cat';
            foreach ($array_paras_need_get as $item) {
                if ($item != $params) {
                    $value_of_param = FSInput::get($item);
                    if ($value_of_param) {
                        $url .= "&" . $item . "=" . $value_of_param;
                    }
                } else {
                    if ($value)
                        $url .= "&" . $item . "=" . $value;
                }
            }
            return FSRoute::_($url);
        }


        return FSRoute::_($_SERVER['REQUEST_URI']);
    }

    function removeParameters($params)
    {
        // only filter
        $module = FSInput::get('module');
        $view = FSInput::get('view');
        $ccode = FSInput::get('ccode');
        $filter = FSInput::get('filter');
        $manu = FSInput::get('manu');
        $Itemid = FSInput::get('Itemid');

        $url = 'index.php?module=' . $module . '&view=' . $view;
        if ($ccode) {
            $url .= '&ccode=' . $ccode;
        }
        if ($manu) {
            $url .= '&manu=' . $manu;
        }
        if ($filter) {
            $url .= '&filter=' . $filter;
        }
        $url .= '&Itemid=' . $Itemid;
        $url = trim(preg_replace('/&' . $params . '=[0-9a-zA-Z_-]+/i', '', $url));
    }

    /*
     * rewrite
     */
    static function enURL($url)
    {
        if (!$url)
            $url = $_SERVER['REQUEST_URI'];
        if (!IS_REWRITE)
            return URL_ROOT . $url;
        if (strpos($url, 'http://') !== false || strpos($url, 'https://') !== false)
            return $url;
        $url_reduced = substr($url, 10); // width : index.php
        $array_buffer = explode('&', $url_reduced, 10);
        $array_params = array();
        for ($i = 0; $i < count($array_buffer); $i++) {
            $item = $array_buffer[$i];
            $pos_sepa = strpos($item, '=');
            $array_params[substr($item, 0, $pos_sepa)] = substr($item, $pos_sepa + 1);
        }

        $module = isset($array_params['module']) ? $array_params['module'] : '';
        $view = isset($array_params['view']) ? $array_params['view'] : $module;
        $task = isset($array_params['task']) ? $array_params['task'] : 'display';
        $Itemid = isset($array_params['Itemid']) ? $array_params['Itemid'] : 0;

        $languge = isset($_SESSION['lang']) ? $_SESSION['lang'] : 'en';
        $url_first = URL_ROOT;
        $url1 = '';
        $lang = isset($array_params['lang']) ? $array_params['lang'] : 'vi';
        switch ($module) {
            case 'contact':
                switch ($view) {
                    case 'contact':
                        return $url_first . FSRoute::get_name_encode('lien-he', $lang) . '.html';
                }
                break;
            case 'about_us':
                switch ($view) {
                    case 'achievement':
                        return $url_first . FSRoute::get_name_encode('thanh-tich', $lang) . '.html';
                    case 'story':
                        return $url_first . FSRoute::get_name_encode('cau-chuyen', $lang) . '.html';
                    case 'who_we_are':
                        $code = isset($array_params['code']) ? $array_params['code'] : '';
                        $id = isset($array_params['id']) ? $array_params['id'] : '';
                        return $url_first . $code . '-' . FSRoute::get_name_encode('gt', $lang) . $id . '.html';
                }
                break;
            case 'news':
                switch ($view) {
                    case 'news':
                        $ccode = isset($array_params['ccode']) ? $array_params['ccode'] : '';
                        $id = isset($array_params['id']) ? $array_params['id'] : '';
                        return $url_first . $ccode . '-' . FSRoute::get_name_encode('tt', $lang) . $id . '.html';
                    case 'news2':
                        $ccode = isset($array_params['ccode']) ? $array_params['ccode'] : '';
                        $code = isset($array_params['code']) ? $array_params['code'] : '';
                        $id = isset($array_params['id']) ? $array_params['id'] : '';
                        return $url_first . $ccode . '/' . $code . '-' . FSRoute::get_name_encode('tt', $lang) . $id . '.html';
                    case 'investor':
                        $ccode = isset($array_params['ccode']) ? $array_params['ccode'] : '';
                        $code = isset($array_params['code']) ? $array_params['code'] : '';
                        $id = isset($array_params['id']) ? $array_params['id'] : '';
                        return $url_first . $ccode . '/' . $code . '-' . FSRoute::get_name_encode('tt', $lang) . $id . '.html';
                    default:
                        return $url_first . $url;
                }
                break;
            case 'download':
                switch ($view) {
                    case 'download':
                        $code = isset($array_params['code']) ? $array_params['code'] : '';
                        $id = isset($array_params['id']) ? $array_params['id'] : '';
                        return $url_first . $code . '-' . FSRoute::get_name_encode('dl', $lang) . $id . '.html';
                    default:
                        return $url_first . $url;
                }
                break;
            case 'media':
                switch ($view) {
                    case 'pictures':
                        return $url_first . FSRoute::get_name_encode('hinh-anh', $lang) . '.html';
                    case 'videos':
                        return $url_first . FSRoute::get_name_encode('video', $lang) . '.html';
                    case 'profiles':
                        return $url_first . FSRoute::get_name_encode('ho-so', $lang) . '.html';
                }
            case 'contents':
                switch ($view) {
                    case 'contents':
                        $ccode = isset($array_params['ccode']) ? $array_params['ccode'] : '';
                        $code = isset($array_params['code']) ? $array_params['code'] : '';
                        $id = isset($array_params['id']) ? $array_params['id'] : '';
                        return $url_first . $ccode . '/' . $code . '-' . FSRoute::get_name_encode('ct', $lang) . $id . '.html';
                }
                break;
            case 'careers':
                switch ($view) {
                    case 'cat':
                        return $url_first . FSRoute::get_name_encode('tuyen-dung', $lang) . '.html';
                    case 'careers':
                        $ccode = isset($array_params['ccode']) ? $array_params['ccode'] : '';
                        $code = isset($array_params['code']) ? $array_params['code'] : '';
                        $id = isset($array_params['id']) ? $array_params['id'] : '';
                        return $url_first . $ccode . '/' . $code . '-' . FSRoute::get_name_encode('cr', $lang) . $id . '.html';
                }
                break;
            case 'videos':
                switch ($view) {
                    case 'cat':
                        return $url_first . 'videos';
                    case 'video':
                        $id = isset($array_params['id']) ? $array_params['id'] : '';
                        $code = isset($array_params['code']) ? $array_params['code'] : '';
                        return $url_first . $code . '-v' . $id;
                }
                break;
            case 'users':
                switch ($view) {
                    case 'users':
                        switch ($task) {
                            case 'login':
                                $url1 = '';
                                foreach ($array_params as $key => $value) {
                                    if ($key == 'module' || $key == 'view' || $key == 'Itemid' || $key == 'task')
                                        continue;
                                    $url1 .= '&' . $key . '=' . $value;
                                }

                                return URL_ROOT . 'dang-nhap' . $url1;
                            case 'register':
                                $url1 = '';
                                foreach ($array_params as $key => $value) {
                                    if ($key == 'module' || $key == 'view' || $key == 'Itemid' || $key == 'task')
                                        continue;
                                    $url1 .= '&' . $key . '=' . $value;
                                }
                                return URL_ROOT . 'dang-ky.html' . $url1;
                            case 'forget':
                                return URL_ROOT . 'quen-mat-khau.html';
                            case 'user_info':
                                return URL_ROOT . 'thong-tin-tai-khoan.html';
                            case 'logout':
                                return URL_ROOT . 'dang-xuat.html';
                            case 'login_register':
                                return URL_ROOT . 'dang-ky-dang-nhap.html';
                            case 'logged':
                                return URL_ROOT . 'thanh-vien.html';
                            case 'accumulation':
                                return URL_ROOT . 'chi-tieu-tich-luy.html';
                            case 'management':
                                return URL_ROOT . 'quan-ly-don-hang.html';
                            case 'warranty':
                                return URL_ROOT . 'tra-cuu-bao-hanh.html';
                            case 'repair':
                                return URL_ROOT . 'tra-cuu-sua-chua.html';
                            default:
                                return URL_ROOT . $url;
                        }
                    default:
                        return URL_ROOT . $url;
                }
                break;

            default:
                return URL_ROOT . $url;
        }
    }

    /*
     * get real url from virtual url
     */
    function deURL($url)
    {
        if (!IS_REWRITE)
            return $url;
        return $url;
        if (strpos($url, URL_ROOT_REDUCE) !== false) {
            $url = substr($url, strlen(URL_ROOT_REDUCE));
        }
        if ($url == 'news.html')
            return 'index.php?module=news&view=home&Itemid=1';
        if (strpos($url, 'news-page') !== false) {
            $f = strpos($url, 'news-page') + 9;
            $l = strpos($url, '.html');
            $page = intval(substr($url, $f, ($l - $f)));
            return "index.php?module=news&view=home&page=$page&Itemid=1";
        }
        $array_url = explode('/', $url);
        $module = isset($array_url[0]) ? $array_url[0] : '';
        switch ($module) {
            case 'news':
                // if cat
                if (preg_match('#news/([^/]*)-c([0-9]*)-it([0-9]*)(-page([0-9]*))?.html#s', $url, $arr)) {
                    return "index.php?module=news&view=cat&id=" . @$arr[2] . "&Itemid=" . @$arr[3] . '&page=' . @$arr[5];
                }
                // if article
                if (preg_match('#news/detail/([^/]*)-i([0-9]*)-it([0-9]*).html#s', $url, $arr)) {
                    return "index.php?module=news&view=news&id=" . @$arr[2] . "&Itemid=" . @$arr[3];
                }
            case 'companies':
                $str_continue = ($module = isset($array_url[1])) ? $array_url[1] : '';
                if ($str_continue == 'register.html')
                    return "index.php?module=companies&view=company&task=register&Itemid=5";
                if (preg_match('#category-id([0-9]*)-city([0-9]*)-it([0-9]*)(-page([0-9]*))?.html#s', $str_continue, $arr)) {
                    if (isset($arr[5]))
                        return "index.php?module=companies&view=category&id=" . @$arr[1] . "&city=" . @$arr[2] . "&Itemid=" . @$arr[3] . "&page=" . @$arr[5];
                    else
                        return "index.php?module=companies&view=category&id=" . @$arr[1] . "&city=" . @$arr[2] . "&Itemid=" . @$arr[3];
                }
            default:
                return $url;
        }
    }

    function get_home_link()
    {
        $lang = isset($_SESSION['lang']) ? $_SESSION['lang'] : 'vi';
        if ($lang == 'vi') {
            return URL_ROOT;
        } else {
            return URL_ROOT . 'en';
        }
    }

    /*
     * Dịch ngang
     */
    function change_link_by_lang($lang, $link = '')
    {
        $module = FSInput::get('module');
        $view = FSInput::get('view', $module);
        if (!$module || ($module == 'home' && $view == 'home')) {
            if ($lang == 'en') {
                //				return URL_ROOT;
            } else {
                return URL_ROOT . 'vi';
            }
        }
        switch ($module) {

            case 'contents':
                switch ($view) {
                    case 'contents':
                        $code = FSInput::get('code');
                        $record = FSRoute::trans_record_by_field($code, 'alias', 'fs_contents', $lang, 'id,alias,category_alias');
                        if (!$record)
                            return;
                        $url = URL_ROOT . FSRoute::get_name_encode('ct', $lang) . '-' . $record->alias;
                        return $url . '.html';
                        return $url;
                }
                break;
            default:
                $url = URL_ROOT . 'ce-about-digiworld';
                return $url . '.html';
        }
    }

    function get_record_by_id($id, $table_name, $lang, $select)
    {
        if (!$id)
            return;
        if (!$table_name)
            return;
        $fs_table = FSFactory::getClass('fstable');
        $table_name = $fs_table->getTable($table_name);

        $query = " SELECT " . $select . "
					  FROM " . $table_name . "
					  WHERE id = $id ";

        global $db;
        $sql = $db->query($query);
        $result = $db->getObject();
        return $result;
    }

    /*
     * Lấy bản ghi dịch ngôn ngữ
     */
    function trans_record_by_field($value, $field = 'alias', $table_name, $lang, $select = '*')
    {
        if (!$value)
            return;
        if (!$table_name)
            return;
        $fs_table = FSFactory::getClass('fstable');
        $table_name_old = $fs_table->getTable($table_name);

        $query = " SELECT id
					  FROM " . $table_name_old . "
					  WHERE " . $field . " = '" . $value . "' ";

        global $db;
        $sql = $db->query($query);
        $id = $db->getResult();
        if (!$id)
            return;
        $query = " SELECT " . $select . "
					  FROM " . $fs_table->translate_table($table_name) . "
					  WHERE id = '" . $id . "' ";
        global $db;
        $sql = $db->query($query);
        $rs = $db->getObject();
        return $rs;
    }

    /*
     * Dịch từ field -> field ( tìm lại id rồi dịch ngược)
     */
    function translate_field($value, $table_name, $field = 'alias')
    {

        if (!$value)
            return;
        if (!$table_name)
            return;
        $fs_table = FSFactory::getClass('fstable');
        $table_name_old = $fs_table->getTable($table_name);

        $query = " SELECT id
					  FROM " . $table_name_old . "
					  WHERE $field = '" . $value . "' ";
        global $db;
        $sql = $db->query($query);
        $id = $db->getResult();
        if (!$id)
            return;
        $query = " SELECT " . $field . "
					  FROM " . $fs_table->translate_table($table_name) . "
					  WHERE id = '" . $id . "' ";
        global $db;
        $sql = $db->query($query);
        $rs = $db->getResult();
        return $rs;
    }
}
