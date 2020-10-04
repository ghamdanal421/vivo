<?php    
    $site_name  =   $this->db->get_where('config' , array('title'=>'site_name'))->row()->value;
    $description_meta  =   $this->db->get_where('config' , array('title'=>'description_meta'))->row()->value;
    $logo_site  =   $this->db->get_where('config' , array('title'=>'logo_site'))->row()->value;
    $live_tv_categories = $this->db->get('live_tv_category')->result_array();



        
if (isset($_COOKIE['userfavorite']) && ($this->session->userdata('admin_is_login') == 1 ||  $this->session->userdata('user_is_login') == 1)){
	
	//echo $_COOKIE['userfavorite'];
	
	$obj = json_decode($_COOKIE['userfavorite']);
	
	foreach($obj as $acsisCockie) {
		
                $user_id   = $this->session->userdata('admin_is_login') != 1 ||  $this->session->userdata('user_is_login') == 1? null : $this->session->userdata('user_id');
			
		if ($acsisCockie->action == "add") {
			
			$idItim = $acsisCockie->type == "anime"? $acsisCockie->id: 0;
			    $data['user_id']  = $user_id;
            $data['favorite_at']           = date('Y-m-d H:i:s');
          

            $data['anime_id']           = $idItim;

            if(empty($this->db->get_where('favorite' , array('anime_id' => $idItim, 'user_id' => $user_id) )->result_array())){
              $this->db->insert('favorite', $data);
            }
            
            
			
			setcookie('userfavorite', '', time() - 4500, '/');
			
		}else {
			
			if ( $acsisCockie->type == "anime" && isset($acsisCockie->id)) {
					// $userid = $_SESSION['uid'];
			
					// $stmt = $con->prepare("DELETE FROM favorite WHERE favorite.favorite_UserID = $userid   AND favorite.favorite_anime = :zuser");

					// $stmt->bindParam(":zuser", $acsisCockie->id);

          // $stmt->execute();
          
          $this->db->where('anime_id', $acsisCockie->id);
          $this->db->where('user_id', $user_id);
          $this->db->delete('favorite');

						setcookie('userfavorite', '', time() - 4500, '/');
				}
	}



}
}



$isUser = $this->session->userdata('admin_is_login') == 1 ||  $this->session->userdata('user_is_login') == 1? true : false;

    ?>
<!DOCTYPE html>
<html lang="ar">
	<head>
		<meta charset="UTF-8" />
		<!-- Chrome, Firefox OS and Opera -->
		<meta content='#441d67' name='theme-color'/>
		<!-- Windows Phone -->
		<meta content='#441d67' name='msapplication-navbutton-color'/>
		<title><?php echo $site_name ;  ?><?=isset($page_title)? ' | '. $page_title :""?> </title>
		<meta property="og:description" content="<?php echo $description_meta ?>">
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/layout/css/font-awesome.min.css" />
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/layout/css/normalize.css" />
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/layout/css/NotoArabic.css" />
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/layout/css/jquery.bxslider.css" />
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/layout/css/video.css" />
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/layout/css/alerts-css.min.css" />
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/layout/css/style.css?v=<?=time()?>" />
    <link rel="shortcut icon" href="<?php echo base_url(); ?>assets/images/favicon.ico">
        <meta content="width=device-width, initial-scale=1" name="viewport">
         <!--[if lt IE 9]>
            <script src="<?php echo base_url(); ?>assets/layout/js/html5shiv.js"></script>
        <![endif]-->
	</head>
	<body>
  	<!-- Start Login -->
		<div class="login-contenr">
	

<div class="container">
  <div class="frame">
  <div class="remve-login">
    <a href="#">
			<i class="fa fa-remove"></i>
      </a>
			</div>
    <div class="nav">
      <ul class="links">
        <li class="signin-active"><a class="btn">تسجيل الدخول</a></li>
        <li class="signup-inactive"><a class="btn">أنشاء حساب   </a></li>
      </ul>
    </div>
    <div ng-app ng-init="checked = false">
				  <form class="form-signin" action="" method="post" name="form">
            <div class="error-masg-login">
              
            </div>
            <label for="username">البريد</label>
            <input id="username-login" class="form-styling" type="text" name="username" placeholder="" required="required"/>
            <label for="password">كلمة المرور</label>
            <input id="password-login" class="form-styling" type="password" name="password" placeholder="" required="required"/>
            <input  type="checkbox" id="checkbox"/>
            <label for="checkbox" ><span class="ui"></span>حفظ تسجيل الدخول </label>
            <div class="btn-animate">
            <button  class="btn-signin liogin-button">تسجيل </button>
            </div>
				 </form>
        
				  <form id="signup_form" class="form-signup" action="" method="post" name="form">
            <div class="error-masg-signup"></div>
              <label for="fullname">أسم المستخدم</label>
              <input id="username-sign"  class="form-styling" type="text" name="username" placeholder="" required="required"/>
              <label for="fullname">الاسم الكامل</label>
              <input id="fullname-sign" class="form-styling" type="text" name="fullname" placeholder="" required="required">
              <label for="email">البريد </label>
              <input id="email-sign" class="form-styling" type="email" name="email" placeholder="" required="required"/>
              <label for="password">كلمة المرور</label>
              <div class="show-password">
                <i class="fa fa-eye-slash"></i>
                <input id="password-sign" class="form-styling" type="password" name="password" placeholder="" required="required"/>
              </div> 
              <!-- <a ng-click="checked = !checked" class="btn-signup" style="    display: none;"> أنشاء حساب</a> -->
              <button id="signup"  class="btn-signin ">أنشاء حساب </button>
				</form>
      
            <div  class="success">
              <svg width="270" height="270" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
       viewBox="0 0 60 60" id="check" ng-class="checked ? 'checked' : ''">
                 <path fill="#ffffff" d="M40.61,23.03L26.67,36.97L13.495,23.788c-1.146-1.147-1.359-2.936-0.504-4.314
                  c3.894-6.28,11.169-10.243,19.283-9.348c9.258,1.021,16.694,8.542,17.622,17.81c1.232,12.295-8.683,22.607-20.849,22.042
                  c-9.9-0.46-18.128-8.344-18.972-18.218c-0.292-3.416,0.276-6.673,1.51-9.578" />
                <div class="successtext">
                   <p> شكرا ’ لانشاء حساب يرجي مراجعة بريدك الالكتروني لتأكيد الحساب .</p>
                </div>
             </div>
      </div>
      
      <div class="forgot">
        <a href="#">هل نسيت كلمة المرور ؟</a>
      </div>
      
      <div>
        <div class="cover-photo"></div>
        <div class="profile-photo"></div>
        <h1 class="welcome">اهلا بك</h1>
        <a class="btn-goback" value="Refresh" onClick="history.go()">متابعة </a>
      </div>
  </div>
    

</div>
		</div>
	
  <!-- End Login -->


  <!-- Start header Bar -->
		<header>
			<div class="container">
        <div class="contnt-header">
				<a  class="logo" href="<?=base_url()?>">
          <div>
            <img src="<?=$logo_site?>" alt="<?php echo $description_meta ?>">
          </div>
      </a>
      
    <div class="sentr-form">
      <form method="get" action="<?=base_url()?>">
				<input type="search" name="title" placeholder="البحث ..."  value="<?=isset($_GET['title']) && !empty($_GET['title'])? $_GET['title'] : ""?>"/>
				<button><i class="fa fa-search"></i></button>
      </form>
      <?php 
     if($isUser){ ?>
      <div class="conter-not" >
           
              <div class="notifications" onclick="notifications()" href="#notifications"> 
              <?php 
              
              $notifications_count  = $this->db->get_where('notifications', array(
                'user_id' => $this->session->userdata('user_id'),
                'notifications_status' => '0'
                
                ))->result_array();
                
                if(count($notifications_count) > 0){
                    echo '<span class="cont">'.count($notifications_count).'</span>';

                    
                }
              ?>
              
                  <i class="fa   fa-bell fa-fw"></i>
              </div>
                <div class="text-not" style=" display: none; ">
                  <div class="sclor">
                    <ul>
                      <?php
                       $this->db->order_by('notifications_id','DESC');
                      $notifications  = $this->db->get_where('notifications', array(
                        'user_id' => $this->session->userdata('user_id')                  
                        ))->result_array();
                        if(!empty($notifications)){
                        foreach($notifications as $note){
                            if($note['notifications_status'] == "0"){
                          $this->db->update('notifications', array('notifications_status' => '1') , array(
                            'notifications_id' => $note['notifications_id']));
                          }
                       ?>
                      <li class="<?=$note['notifications_status'] == "0" ? "actve" : ""?>">
                          <?= $note['notifications']?>
                      </li>
                      <?php } } else {?>
                        <li class="actve empty">
                       لا يوجد لديك أي اشعار بعد ...
                    </li>
                       <?php } ?>
                    </ul>
                  </div>
                </div>
              </div>
                        <?php } ?>
    </div>

      <?php 
     if($isUser){ ?>
<div class="profile">
            <div id="show-profile" class="drn-ghan ">
              <div class="profile-info">
               <?php
               	$profile_info  = $this->db->get_where('user', array(
                  'user_id' => $this->session->userdata('user_id')))->result_array()[0];
           
               ?>
               	<img  src="<?php echo $this->common_model->get_img('user', $profile_info['user_id']).'?'.time(); ?>" class="thumb" alt="<?php echo $profile_info['name'];?>_photo" >
              </div>
              <ul class="drod">
              <li><a href="<?=base_url()?>profile">الملف</a></li>
              <li><a href="<?=base_url()?>favorite">المفضلة </a></li>
              <li><a href="<?=base_url()?>login/logout">تسجيل الخروج</a></li>
              </ul>
            </div>
            

      </div>
    <?php } else {?>
      <div class="login profile">
      <a href="#login">	<button> <i class="fa fa-sign-in"></i> تسجيل </button></a>

      </div>
  <?php  }
     ?>
			
        

       </div>
      </div>
      <div class="clearfix"></div>
		</header>
        <nav class="navbar">
                <div class="navbar-link">
					<div class="container">
             <div id="media-nav" class="media-nav-bar">
                 <i class="fa fa-bars"></i>
             </div>
                    <ul class="links">
                      <li class="<?=isset($page_name) &&  $page_name == 'heme'? "actve" :""?> "  href="<?=base_url()?>"><a href="<?=base_url()?>"> الرئيسية </a></li>
                      <li  class="<?=isset($page_name) &&  $page_name == 'tv'? "actve" :""?> "  ><a href="<?=base_url()?>?category=tv"> الانمي المجمع </a></li>
                      <li class="<?=isset($page_name) &&  $page_name == 'movies'? "actve" :""?> "  ><a href="<?=base_url()?>?category=movies"> افلام الانمي </a></li>
                      <li  class="<?=isset($page_name) &&  $page_name == 'request'? "actve" :""?> "><a href="<?=base_url()?>request"> طلباتكم </a></li>
                      <li  class="<?=isset($page_name) &&  $page_name == 'favorite'? "actve" :""?> "><a <?=!$isUser? 'onclick="detLogin(\'true\')"':''?>   href="<?=$isUser?base_url('favorite'): '#login'?>"> مفضلتي </a></li>
                    </ul>
                    <form class="form-media"  method="get" action="<?=base_url()?>">
                    <div class="media-search">
                      
                      <input type="search" name="title" placeholder="البحث ..."  value="<?=isset($_GET['title']) && !empty($_GET['title'])? $_GET['title'] : ""?>"/>
                    
                    <button id="media-clok" class="media-clok"><i class="fa fa-search"></i></button>
                    </form>
                  </div>

				</div>
                </div>			
                <div class="clearfix"></div>
        </nav>
      <!-- End header Bar -->
		
		<!-- Start 	asidebar -->
		
		<!-- End 	asidebar -->
<div class="container">
	
	<div class="widget-ads">
    <?php 
    
    $aps_web    = $this->db->get_where('aps_web' , array('aps_web_address' => 1) )->result_array();
            echo $aps_web[0]['aps_web_html'];
    ?>
  	</div>

</div>