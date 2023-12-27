

 $("document").ready(function(){
	$('#submitbt').click(function(){
		if(!notEmpty("name","Bạn phải nhập họ tên"))
			return false;
		if(!notEmpty("full_rate","Bạn phải nhập nội dung comment"))
			return false;
                    if(!notEmpty("txtCaptcha","Bạn phải nhập mã capcha"))
			return false;
		 document.comment_add_form.submit();  
	});
 
        var track_load = 2; //total loaded record group(s)
	var loading  = false; //to prevents multipal ajax loads
	var total_groups = $('#total_page').val(); //total record group(s)
	var recordid = $('#record_id').val(); //total record group(s)
	var url_current = $('#url_current').val(); //total record group(s)
//        alert(total_groups);
        $(".view-more-cm").click(function(){ //detect page scroll
		
		
				loading = true; //prevent further ajax loading
//                                alert("asjdjk");
//				$('.animation_image').show(); //show loading image
				
				//load data from the server using a HTTP POST request
				$.post(url_current+'?raw='+recordid+'&page='+track_load, function(data){
                                       //hide loading image once data is received
					
					track_load++; //loaded group increment
					loading = false; 
                                        if(data){
                                         $("#list-comment").append(data); 
                                        }else{
                                            $(".view-more-cm").hide();
                                        }
					$('.animation_image').hide();
				}).fail(function(xhr, ajaxOptions, thrownError) { //any errors?
                                    alert(thrownError); //alert with HTTP error
                                    $('.animation_image').hide(); //hide loading image
                                    loading = false;
				
				});
	});
        
       
});
       