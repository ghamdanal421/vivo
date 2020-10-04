
<div class="container">
	<div class="content-wrapper">
		<div class="main-wrapper">
	
			<div class="main-info">
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
<!-- Start Form Sign Up -->
    <div id="formSignUp" class="contact custum-form">
    
            
            <?php echo form_open(base_url() . 'contact/add/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>

                
                <?php 

if($this->session->userdata('admin_is_login') == 1 ||  $this->session->userdata('user_is_login') == 1){ ?>
     <div class="form-info">
                        <div class="icon-info">
                            <i class="fa fa-warning"></i>
                        </div>
                        <div class="info">
                            <h3>ابلاغ عن مشكلة</h3>
                            <p class="message">أهلا بك : 

                            <?=$this->session->userdata('name') ?>
                            </p>
                        </div>
                   </div>	
                    
                <?php	} else { ?>
                    <div class="form-info">
                        <div class="icon-info">
                            <i class="fa fa-warning"></i>
                        </div>
                        <div class="info">
                            <h3>ابلاغ عن مشكلة</h3>
                            <p class="message">
                                اهلا بك في نموذج ابلاغ عن مشكلة 
                            </p>
                        </div>
                   </div>	
                <div class="form-group">
                    <label>ألاسم الكريم<em>*</em></label>
                    <input pattern=".{4,}" name="uesr_name" required="required" type="text" class="form-control" placeholder="أكتب أسم الكريم" title="يجب ان لا يقل الاسم عن 4 احرف">
                </div>	
                <div class="form-group">
                    <label>البريد الإلكتروني <em>*</em></label>
                    <input  type="email" class="form-control" placeholder="أدخل البريد الإلكتروني الخاص بك" name="email" required="required" >
                </div>				
                <div class="form-group">
                    <label> رقم الهاتف  </label>
                        <input  pattern="[0-9]{10}"    name="number_phone" required="required" type="number" class="form-control" placeholder="رقم الهاتف الخاص بك" >
                </div>
                <?php } ?>
                <div class="form-group">
						<label> رابط صفحة المشكلة   <em>*</em></label>
						<input type="url"    required="required"  name="url" class="form-control" placeholder=" اكتبر رابط URL هنا   " title="أكتب رابط URL" value="<?=isset($_GET['url'])? $_GET['url']:""?>" />
						
					</div>
                <div class="form-group">
                    <label> صف المشكلة الدي وجهتها   <em>*</em></label>
                    <textarea pattern=".{10,}"   required="required"  name="message" class="form-control" placeholder=" اكتبر مشكلتك  هنا   " title="يجب ان لا يقل نص الرسالة عن 10 احرف" ></textarea>
                    
                </div>
                
                <div class="form-group">
                    <button name="mass" type="submit" >أرسال </button>
                </div>
                <?php echo form_close(); ?>

    </div>

            </div>
		</div>
		<?php $this->load->view('web/includes/templates/sidebar'); ?>
	</div>  

</div>
