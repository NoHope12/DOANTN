$(document).ready(function () {
    Toast = Swal.mixin({
                        toast: true,
                        position: 'top-end',
                        showConfirmButton: false,
                        timer: 3000,
                        timerProgressBar: true,
                        didOpen: (toast) => {
                            toast.addEventListener('mouseenter', Swal.stopTimer)
                            toast.addEventListener('mouseleave', Swal.resumeTimer)
                        }
                    })
})
function validateBRegister() {
    if(!isPhone('breg_phone')){
        alert('Số điện thoại không đúng.');
		return false;
	}
    if($('#breg_password').val()==''){
        alert('Bạn vui lòng nhập mật khẩu.');
		return false;
	}
    if($('#breg_password').val()!=$('#breg_repassword').val()){
        alert('Mật khẩu xác nhận không đúng.');
		return false;
	}

    var $data = $('form#frmBRegister').serialize();
    
    $.ajax({
		type : 'POST',
        dataType: 'json',
		url : '/index.php?module=members&view=members&raw=1&task=store_register',
        data: $data,
        success : function($json){
            if ($json.error == false) {
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: $json.message,
                    showConfirmButton: false,
                    timer: 1500
                })
                setTimeout(() => {
                    window.location.href = $json.redirect
                }, 1500)
            } else {
                Toast.fire({
                icon: 'error',
                title: $json.message
                })
            }
        },
        error : function(XMLHttpRequest, textStatus, errorThrown) {
            alert('1235 Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.');
        }
	});
    return false;
}

function validateURegister(){
    if($('#breg_name').val()==''){
        alert('Bạn vui lòng nhập Họ tên.');
		return false;
	}
    if($('#breg_email').val()==''){
        alert('Bạn vui lòng nhập Email.');
		return false;
	}

    var $data = $('form#frmBRegister').serialize();

    $.ajax({
		type : 'POST',
        dataType: 'json',
		url : '/index.php?module=members&view=members&raw=1&task=do_update_register',
		data: $data,
        success : function($json){
            if($json.error == false) {
                document.getElementById("frmBRegister").reset();
                var login = confirm($json.message);
                if (login == true) {
                    $(window.location).attr('href', $json.redirect);
                } 
            }else
                alert($json.message);
        },
        error : function(XMLHttpRequest, textStatus, errorThrown) {
            alert('Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.');
        }
	});
    return false;
}

function validateBLogin(){
    if($('#blog_username').val()==''){
        alert('Bạn vui lòng nhập số điện thoại.');
        $('#blog_username').focus();
		return false;
	}
    if($('#blog_password').val()==''){
        alert('Bạn vui lòng nhập mật khẩu.');
        $('#blog_password').focus();
		return false;
	}
    var $data = $('form#frmBLogin').serialize();
    $.ajax({
		type : 'POST',
        dataType: 'json',
		url : '/index.php?module=members&view=members&raw=1&task=do_login',
		data: $data,
        success : function(data){
            if (data.error == true){
                Toast.fire({
                icon: 'error',
                title: data.message
                })
            } else {
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: data.message,
                    showConfirmButton: false,
                    timer: 1500
                })
                setTimeout(() => {
                    $(window.location).attr('href', data.redirect);
                },1500)
            }
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            Toast.fire({
                icon: 'error',
                title: 'Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.'
                })
        }
	});
    return false;
}

function validateChangepass(){
    if($('#cpassword').val()==''){
		alert('Bạn vui lòng nhập mật khẩu hiện tại.');
		return false;
	}
    if($('#password').val()==''){
		alert('Bạn vui lòng nhập mật khẩu mới.');
		return false;
	}
    if($('#password').val()!=$('#repassword').val()){
		alert('Bạn vui lòng nhập mật khẩu.');
		return false;
	}
    document.forms['frmChangepass'].submit();
}

function validateForgot(){
    if($('#username').val()=='' && $('#email').val()==''){
		Boxy.alert('Bạn vui lòng nhập <b>tên đăng nhập</b> hoặc <b>email</b>.',function(){$('#username').focus();},{title:'Thông báo.',afterShow: function() { $('#boxy_button_OK').focus();} });
		return false;
	}
    if($('#email').val()!='' && !isEmail($('#email').val())){
		Boxy.alert('Địa chỉ email không đúng.',function(){$('#email').focus();},{title:'Thông báo.',afterShow: function() { $('#boxy_button_OK').focus();} });
		return false;
	}
    var $data = $('form#frmLogin').serialize();
    $.ajax({
		type : 'POST',
        dataType: 'json',
		url : '/index.php?module=members&view=members&raw=1&task=do_forgot_pass',
		data: $data,
        success : function(data){
            Boxy.alert(data.message,function(){
                if (data.error==false)
                    $(window.location).attr('href', data.redirect);
            },{title:'Thông báo.',afterShow: function() { $('#boxy_button_OK').focus();} });
        },
        error : function(XMLHttpRequest, textStatus, errorThrown) {Boxy.alert('Có lỗi trong quá trình đưa lên máy chủ. Xin bạn vui lòng kiểm tra lại kết nối.',function(){ },{title:'Thông báo.',afterShow: function() {$('#boxy_button_OK').focus();}});}
	});
    return false;
}

function validateEditUser(){
    if($('#fullname').val()==''){
        alert('Bạn vui lòng nhập tên đầy đủ.');
        $('#fullname').focus();
        return false;
    }
    if($('#mobile').val()==''){
        alert('Bạn vui lòng nhập số điện thoại.');
        $('#mobile').focus();
        return false;
    }
    
    document.forms['frmEditUser'].submit();
}

$('#city_id').change(function(){
    setSelectDistricts($('#district_id'), $(this).val(), 0);
});

$(document).ready(function(){
    $('#frmBRegister').keypress(function (e) {
        if (e.which == 13) {
            validateBRegister();
            return false;
        }
    });

    $('#frmBLogin').keypress(function (e) {
        if (e.which == 13) {
            validateBLogin();
            return false;
        }
    });

    if( $('select#district_id').length)
        setSelectDistricts($('#district_id'), $('#city_id').val(), $('#district_id').attr('data-id'));

    if( $('.datepicker').length)
        $('.datepicker').datepicker({
            changeMonth: true,
            changeYear: true,
            dateFormat: 'dd/mm/yy'
        });
});
var loadFile = function(event) {
    let image = $('#u_preview')[0];
    let size = $('#avatar')[0].files[0].size;
    if(size > 1000000){
        $("#acc_logo").val('');
        image.src = '/images/logo-user.svg';
        invalid('avatar', 'áº¢nh dÆ°á»›i 1M');
        return false;
    }
    image.src = URL.createObjectURL(event.target.files[0]);
    image.alt = $('#avatar').val().split('\\').pop();
    image.onload = function() {
        URL.revokeObjectURL(image.src); // free memory
    };
    $('div.label_error').remove();
};
$(document).ready(function() {
    $("#imgInp").change(function() {
        if ($("#imgInp").get(0).files.length === 1) {
            saveAvatar()
        }
    })
})

function saveAvatar() {
    var file_data = $('#imgInp').prop('files')[0];
    var form_data = new FormData();
    form_data.append('file', file_data);
    $.ajax({
        url: 'index.php?module=members&view=members&raw=1&task=saveAvatar',
        dataType: 'text', 
        cache: false,
        contentType: false,
        processData: false,
        data: form_data,
        type: 'post',
        success: function(data){
            $(".user-circle > img").attr("src", data)
        }
     });
  }