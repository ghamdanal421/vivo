
<div class="container">
	<div class="content-wrapper">
		<div class="main-wrapper">
			<div class="main-info">
                <?php 
                if(isset($this->session->success) && !empty($this->session->success)){ ?>

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
                <div id="formSignUp" class="contact custum-form">
                 <?php 
                       echo form_open(base_url() . 'request/add/' , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));

                     if($this->session->userdata('admin_is_login') == 1 ||  $this->session->userdata('user_is_login') == 1){ ?>
                    <div class="form-info">
                        <div class="icon-info">
                            <i class="fa fa-glass"></i>
                        </div>
                        <div class="info">
                            <h3>تقديم طلب أنمي</h3>
                            <p class="message">أهلا بك : 

                            <?=$this->session->userdata('name') ?>
                            </p>
                        </div>
                   </div>	
                    
                <?php	} else { ?>
                    <div class="form-info">
                        <div class="icon-info">
                            <i class="fa fa-glass"></i>
                        </div>
                        <div class="info">
                            <h3>تقديم طلب أنمي</h3>
                            <p class="message">
                                يمكنك تقديم طلب الحصول على أنمي معين
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
               
                <?php } ?>
                <div class="form-group">
                    <label> أسم الانمي <em>*</em></label>
                        <input     name="name_anime" required="required" type="text" class="form-control" placeholder="أكتب اسم الانمي المطلوب" >
                </div>
                <div class="form-group">
						<label> اسم الموسم  </label>
						<input type="text"   name="season" class="form-control" placeholder="أكتب اسم الموسم " title="اكتب اسم الموسم" value="" />
						
					</div>
                <div class="form-group">
                    <label> رسالتك    <em>*</em></label>
                    <textarea pattern=".{10,}"   required="required"  name="message" class="form-control" placeholder=" أكتب رسالتك هنا" title="يجب ان لا يقل نص الرسالة عن 10 احرف" ></textarea>
                    
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
