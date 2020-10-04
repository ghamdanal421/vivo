<?php
header("HTTP/1.0 404 Not Found");

?>
			
		<!-- Start Pages -->
		<div class="clearfix"></div>
		<div class="container">
        <div id="Pages" class="pages erorr-page">
            <div class="container">
                <h2 class="post-title"> الصفحة غير موجودة</h2>
				<div class="error404">
					<h3>404</h3>
					<p>عفوا،ربما تم إزالة الصفحة أو تم إعادة تسميتها أو غير متاحة مؤقتا. إبحث مجددا .</p>
					<form method="get" action="<?=base_url()?>">
						<div class="contol-form">
							<input type="search" name="search" placeholder="البحث ..."  />
							<button><i class="fa fa-search"></i></button>
						</div>
					</form>
					<a class="homepage" href="<?=base_url()?>"><i class="fa fa-home"></i> الصفحة الرئيسية</a>
				</div>
            </div>
		</div>
		</div>
      <!-- End   Pages -->
	<?php

?>