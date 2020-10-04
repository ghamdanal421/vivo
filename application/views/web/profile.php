<?php 

	$profile_info  = $this->db->get_where('user', array(
		'user_id' => $this->session->userdata('user_id')))->result_array()[0];
		$subscriptions    = $this->db->get_where('subscription' , array('user_id' => $this->session->userdata('user_id')) )->result_array();

?>
<!-- Start My Profile  -->
<div class="container">
	<div class="my-profile">
	<div class="list-profile">
			<ul id="setClasstr">
			<li><a class=" <?=empty($url_param) || $url_param =="info"  ? "actief" : ""?>   acen" data-vler="text" href="<?=base_url('/profile/info')?>" data-url="profile/info"> الملف الشخصي</a></li>
			<li><a class="<?= $url_param =="edit"  ? "actief" : ""?>  acen" data-vler="vest" href="<?=base_url('profile/edit')?>" data-url="/profile/edit">  خطة الاشتراك</a></li>
			<li><a href="<?=base_url('/login/logout')?>"> تسجيل الخروج</a></li>
			</ul>
		</div>
		<div class="contint-profile">
				
				<div class="info-user animation  <?=empty($url_param) || $url_param =="info"  ? "vispled" : ""?>  "  data-vler="text">
				<h4> تغير الملف الشخصي</h4> 
				<hr>
				<div class="content-info">
				<?php if(isset($this->session->success) && !empty($this->session->success)){ ?>
					<div class="alert alert_success" style="animation-delay: .2s">
						<div class="alert--icon">
							<i class="fa fa-check-circle"></i>
						</div>
						<div class="alert--content">
						<?=$this->session->success?>
						</div>
						<div class="alert--close">
							<i class="fa fa-times-circle"></i>
						</div>
					</div>
				<?php } ?>
				<?php if(isset($this->session->error) && !empty($this->session->error)){ ?>

					<div class="alert alert_danger" style="animation-delay: .4s">
					<div class="alert--icon">
						<i class="fa fa-times-circle"></i>
					</div>
					<div class="alert--content">
					<?=$this->session->error?>
					</div>
					<div class="alert--close">
						<i class="fa fa-times-circle"></i>
					</div>
					</div>
				<?php } ?>

					<div class="avatar">
					<img id="profile_image" src="<?php echo $this->common_model->get_img('user', $profile_info['user_id']).'?'.time(); ?>" class="thumb-lg img-circle img-thumbnail" alt="<?php echo $profile_info['name'];?>_photo" >
						<h2><?=$profile_info['name']?>	</h2>
					</div>
					<?php echo form_open(base_url() . 'profile/update/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?> 

					<div class="contol-form">
							<label>تغير صورة:  </label>
							<input type="file"  name="photo" class="filestyle" data-input="false" accept="image/*" id="uploadFile" tabindex="-1" style="position: absolute; clip: rect(0px, 0px, 0px, 0px);">
							<div id="cloc-inbot-file" class="file-img">أختيار صورة</div>
						</div>
							<div class="contol-form">
							<label> اسم المستخدم: </label>
							<input type="text" disabled="disabled" value="<?=$profile_info['username']?>" />
						</div>	
						<div class="contol-form">
							<label>الاسم الكامل: </label>
							<input type="text" placeholder="اكتب اسمك هنا ..." name="name" value="<?=$profile_info['name']?>" />
						</div>
						<div class="contol-form">
							<label>الجنس:  </label>
							<select name="gender">
								<option <?=$profile_info['gender'] == "1"? "selected" : ""?>  value="1">ذكر </option>
								<option <?=$profile_info['gender'] == "2"? "selected" : ""?>  value="2">أنثى</option>
							</select>
						</div>
						<div class="contol-form">
							<label>البريد الاكتروني:  </label>
							<input type="email" placeholder="أدخل بريدك الاكتروني ... " name="email" value="<?=$profile_info['email']?>" />
						</div>
						<div class="contol-form">
							<label>رقم الهاتف:  </label>
							<input type="tel" placeholder="أدخل رقم الهاتف (مع مفتاح الدولة) " name="phone" value="<?=$profile_info['phone']?>" />
						</div>
						<div class="contol-form button-center">
							<button>حفظ</button>
						</div>
						<?php echo form_close(); ?>


				</div>
				<hr>
				<div class="change-password">
					<h3>تغير كلمة المورو</h3>
					<?php echo form_open(base_url() . 'profile/change_password/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?> 
							<div class="contol-form">
								<label>كلمة المرور:  </label>
								<input type="password" placeholder="أدخل كلمة المرور ..." name="password" />
							</div>
							<div class="contol-form">
								<label>كلمة المرو الجديدة: </label>
								<input type="password" placeholder="أدخل كلمة المرور جديدة ..." name="new_password" />
							</div>
							<div class="contol-form">
								<label>أعد  كلمة المرو: </label>
								<input type="password" placeholder="اعد ادخال كلمة المرور الجديدة ..." name="retype_new_password" />
							</div>
							<div class="contol-form button-center">
								<button>تغير </button>
							</div>
						<?php echo form_close(); ?>
				</div>
			</div>
			<div class="edit-user animation <?= $url_param =="edit"  ? "vispled" : ""?> " data-vler="vest">
				<h4>الاشتراك النشط</h4>
				<hr>
				<div class="form-profile">
				<div class="contol-form">
						<label>أسم المستخدم: </label>
						<div class="text-info"><?=$profile_info['username']?></div>
					</div>
					<div class="contol-form">
						<label>البريد الالكتروني: </label>
						<div class="text-info"><?=$profile_info['email']?></div>
					</div>
					<div class="contol-form">
						<label>الخطة النشطة :</label>
						<div class="text-info"><?=$this->api_subscription_model->get_active_plan_title($this->session->userdata('user_id'))?></div>
					</div>
					<div class="contol-form">
						<label>تأريخ الانتهاء:</label>
						<div class="text-info"><?=$this->api_subscription_model->get_user_subscription_package_title_and_expired_date($this->session->userdata('user_id'))['expire_date']?></div>
					</div>
				</div>
				<hr>
				<h4>سجل الاشتراك</h4>

				<div class="contenr-table">
					<table class="table table-striped">
						<thead>
							<tr>
								<th>#</th>                            
								<th>أسم الخطة</th>
								<th>أنشائت في</th>
								<th>من</th>
								<th>الي</th>
								<th>الحالة</th>
							</tr>
						</thead>
						<tbody>
						<?php
                            $sl = 1;
							foreach ($subscriptions as $subscription): 
								
                        ?>
							<tr id="row_2">
								<td><?php echo $sl++;?></td>
								<td><strong><?php echo $this->api_subscription_model->get_plan_name_by_id($subscription['plan_id']);?><?php if(time() > $subscription['timestamp_to']){ echo '(expired)'; }?></strong></td>
								<td><?php echo date('d-m-Y',$subscription['payment_timestamp']);?></td>
								<td><?php echo date('d-m-Y',$subscription['timestamp_from']);?></td>
								<td><?php echo date('d-m-Y',$subscription['timestamp_to']);?></td>
								<td><?php if($subscription['status'] =='1'){ echo 'مفعلة';}else{ echo "غير مفعلة";}?></td>
							</tr>
							<?php endforeach;?>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
		
	</div>

</div>

<script>
        var myULSet = document.querySelectorAll('#setClasstr li > a.acen');
        var myTextSet = document.querySelectorAll('.contint-profile >  div');
        
        myULSet.forEach(function(setLi) {
            
            setLi.onclick = function () {

               for (var i = 0; myULSet.length > i; i++ ) {
                   myULSet[i].classList.remove('actief');
               }
                
               for (var i = 0; myTextSet.length > i; i++ ) {
                   
                     myTextSet[i].classList.remove('vispled');
                   
                   if (setLi.getAttribute('data-vler') == myTextSet[i].getAttribute('data-vler')) {
                       
                        myTextSet[i].classList.add('vispled');
                       
                       }
               
               }
				this.classList.add('actief');

				if (history.pushState) {
					window.history.pushState("object or string", "Title", this.href);
					} 



				return false;
			}
			
        });
        
    </script>

<!-- End My Profile  -->

<script type="text/javascript">

document.getElementById('uploadFile').addEventListener('change', function (){

		
		var myInout = this ;
        var files = !!this.files ? this.files : [];
        if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support

        if (/^image/.test( files[0].type)){ // only image file
            var reader = new FileReader(); // instance of the FileReader
            reader.readAsDataURL(files[0]); // read the local file

            reader.onloadend = function(){ // set image data as background of div
            //    myInout.parentElement.firstElementChild.style.backgroundImage =  "url("+this.result+")";
			   document.getElementById('profile_image').src = this.result;
				
            }
        }
    });

	 document.getElementById('cloc-inbot-file').onclick = function (){
		document.getElementById('uploadFile').click();
	 };

	 
	 
</script>



<?php
		
		


?>