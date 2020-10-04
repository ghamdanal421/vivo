	<?php
	
	$site_name  =   $this->db->get_where('config' , array('title'=>'site_name'))->row()->value;

	?>
	<!-- Start Footer -->
		<footer>
			<div class="container aside">
			
				<div class="copyright">جميع الحقوق محفوظة  &copy; <?php echo date('Y') . " " . $site_name  ?> </div>
				<div class="coding">تكويد : <a href="https://www.barmgely.com/">غمدان السعيدي</a></div>
			</div>
        </footer>
        <!-- End Footer -->
		<script src="<?php echo base_url(); ?>assets/layout/js/jquery-min.js"></script>
		<script src="<?php echo base_url(); ?>assets/layout/js/jquery.bxslider.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/layout/js/video.js"></script>
		<!-- <script src="<?php echo base_url(); ?>assets/layout/js/jquery.nicescroll.min.js"></script> -->
		<script src="<?php echo base_url(); ?>assets/layout/js/sticky.js"></script>
		<script src="<?php echo base_url(); ?>assets/layout/js/isotope.pkgd.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/layout/js/alerts.min.js"></script>
		<script src="<?php echo base_url(); ?>assets/layout/js/custom.js"></script>
		<script>

		$('.form-signin').submit(function (e) {
			var myButton = $('.liogin-button');
			

			
	$.ajax({
		url: "<?php echo base_url('login/do_login'); ?>",
		method: "POST",
		data: {
			email: $('#username-login').val(),
			password :  $('#password-login').val(),
			action :  'login',
			ajax :  'true'
		
		},
		cache: false,
		success:function(data) {
			console.log(data);
			if(data == "1"){
				history.go();
			}else {
				$('.error-masg-login').html('أسم المستخدم او كلمة المرور غير صحيحة ');
				myButton.removeAttr('disabled');
				myButton.html('تسجيل');
			}
			
	}, error: function (err){

		$('.error-masg-login').html('لم يسطع الاتصال با الخادم ');
		myButton.removeAttr('disabled');
		myButton.html('تسجيل');

		}
		
			
			
		});



		myButton.attr('disabled', 'disabled');
		myButton.html('<i class="fa fa-spinner fa-spin"></i> جاري تسجيل');

			return false;
		});

		</script>
		<script>
    $(document).ready(function() {
        $("#signup_form").submit(function(e) {
            e.preventDefault();
            username = $("#username-sign").val();
            email = $("#email-sign").val();
			password = $("#password-sign").val();
			name = $("#fullname-sign").val();
			
            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('login/ajax_signup'); ?>',
                data: "username=" + username + "&password=" + password + "&email=" + email + "&name="+name,
                dataType: 'json',
                beforeSend: function() {
                    $(".error-masg-signup").fadeOut();
					$("#signup").html('<i class="fa fa-spinner fa-spin"></i> جاري الانشاء');
					$("#signup").attr('disabled', 'disabled');
                },
                success: function(response) {
                    var signup_status = response.signup_status;
                    var redirect = response.redirect_url;
                   
                    if (signup_status == "success") {                      
                        // Command: toastr["success"]("Signup Success..", "Success");                        
						// setTimeout(' window.location.href = "' + redirect + '"; ', 2000);
						$.ajax({
		url: "<?php echo base_url('login/do_login'); ?>",
		method: "POST",
		data: {
			email: email,
			password : password,
			action :  'login',
			ajax :  'true'
		
		},
		cache: false,
		success:function(data) {
			console.log(data);
			if(data == "1"){
				history.go();
			}else {
				$('.error-masg-signup').html('أسم المستخدم او كلمة المرور غير صحيحة ');
				$(".error-masg-signup").fadeIn();
		$("#signup").removeAttr('disabled');
		$("#signup").html('أنشاء حساب');
			}
			
	}, error: function (err){

		$('.error-masg-signup').html('لم يسطع الاتصال با الخادم ');
		$(".error-masg-signup").fadeIn();
		$("#signup").removeAttr('disabled');
		$("#signup").html('أنشاء حساب');

		}
		});
		$("#signup").html('<i class="fa fa-spinner fa-spin"></i> يتم تسجيل الدخول');
                    }
                    else if (signup_status == "user_exist") {                      
                        // Command: toastr["error"]("User Name or Email Already Exist..", "Opps");
						$("#signup").html('أنشاء حساب ');
						$("#signup").removeAttr('disabled');
						$(".error-masg-signup").html('أسم المستخدم او البريد موجود بالفعل');
						$(".error-masg-signup").fadeIn();
                    }
                    else if (signup_status == "empty_input") {                      
                        // Command: toastr["error"]("Please Enter Email & Username Properly", "Opps");
						$("#signup").html('أنشاء حساب ');
						$("#signup").removeAttr('disabled');
						$(".error-masg-signup").html('أكتب اسم مستخدم وبريد صحيح');
						$(".error-masg-signup").fadeIn();
                    }
                    else {
                        $("#error").fadeIn(1000, function() {
                        //   Command: toastr["error"]("Signup Fail.Please Contact With System Administrator..", "Opps")
						$("#signup").html('أنشاء حساب ');
						$("#signup").removeAttr('disabled');
						$(".error-masg-signup").html('فشل في الاشتراك');
						$(".error-masg-signup").fadeIn();
                        });
                    }
                }
            });
            return false;

        });
    });

</script>
	</body>
</html>