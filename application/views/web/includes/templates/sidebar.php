<?php

$isUser = $this->session->userdata('admin_is_login') == 1 ||  $this->session->userdata('user_is_login') == 1? true : false;
?>
<aside class="sidebar-wrapper">
		
		
	
	<section class="filter">
		<h3>فلاتر سريعة </h3>
		<?php 
		$stars  = $this->common_model->get_stars();
		?>
		<ul>
			<form action="<?=base_url()?>">
				<li>
					<select name="category">
						<option  value="">التصنيف</option>
						<option <?=isset($_GET['category']) && !empty($_GET['category']) && $_GET['category'] == "movies"? "selected" : ""?>   value="movies"> افلام الانمي </option>
						<option  <?=isset($_GET['category']) && !empty($_GET['category']) && $_GET['category'] == "tv"? "selected" : ""?>   value="tv"> الانمي المجمع </option>
					</select>
				</li>
				
			<li> 
				<select name="genre">
					<option  value="">النوع</option>
					<?php
					$genres =	$this->db->get('genre')->result_array(); 
					foreach ($genres  as $genre):
						?>
						
                    <option   <?=isset($_GET['genre']) && !empty($_GET['genre']) && $_GET['genre'] == $genre['genre_id'] ? "selected" : ""?>  value="<?php echo $genre['genre_id']; ?>" ><?php echo  $genre['name']; ?></option>
                <?php endforeach; ?>
					?>
				
				</select>
			 </li>
			 <li> 
				<select name="country">
					<option  value="">الدولة</option>
					<?php
					$countrys =	$this->db->get('country')->result_array(); 
					foreach ($countrys  as $country):
						?>
						
                    <option   <?=isset($_GET['country']) && !empty($_GET['country']) && $_GET['country'] == $country['country_id'] ? "selected" : ""?>  value="<?php echo $country['country_id']; ?>" ><?php echo  $country['name']; ?></option>
                <?php endforeach; ?>
					
				</select>
			 </li>
				<li> 
				<select name="release">
					<option  value="">السنة</option>
					<?php 
					$yers =$this->common_model->get_videos();

					// print_r($yers);
					$pageNos = array();
					foreach($yers as $el) {
						$pageno = preg_replace('/-\d{2}.+$/', '', $el['release']);
						if(!in_array($pageno, $pageNos))	{?>
							<option   <?=isset($_GET['release']) && !empty($_GET['release']) && $_GET['release'] == $pageno ? "selected" : ""?>  value="<?= $pageno?>"><?= $pageno?></option>
						<?php	array_push($pageNos,$pageno);
						}
						}
				
					
						?>
				</select>
				</li>
				<li class="search">
				<input type="search" name="title" placeholder="البحث ..."  value="<?=isset($_GET['title']) && !empty($_GET['title'])? $_GET['title'] : ""?>"/>

				</li>
				<button >تنقيح <i class="fa fa-filter"></i></button>
			</form>	
		</ul>	
			 
	</section>			
	<?php 
	$aps_web    = $this->db->get_where('aps_web' , array('aps_web_address' => 2) )->result_array();
	if(!empty($aps_web[0]['aps_web_html'])){
	?>
	<section class="section-ads">
		<?= $aps_web[0]['aps_web_html']?>
	</section>	
	<?php } ?>		
	<section class="option">
		<h3>مكتبتي </h3>
		<ul>
			<?php 
				$profile_info ="#login";
			if($isUser ){
				
			$profile_info  = $this->db->get_where('user', array(
				'user_id' => $this->session->userdata('user_id')))->result_array()[0]['another_watch'];
			}
			?>			
		<li><a <?=!$isUser? 'onclick="detLogin(\'true\')"':''?>   href="<?=$profile_info?>"><i class="fa fa-play-circle"></i> متابعة المشاهدة </a></li>
		<li><a href="<?=base_url()?>support"><i class="fa fa-fa"></i> دعم الموقع </a></li>
			<li><a href="<?=base_url()?>spaces"><i class="fa fa-trophy"></i> ترقية حسابك  </a> </li>
		</ul>
	</section>		

	<!-- <section class="option">
		<h3>ترقية حسابي  </h3>
		<ul>
			<li><i class="fa fa-heart"></i> مفضلاتي </li>
			<li><i class="fa fa-play-circle"></i> أكمل المشاهدة </li>
			<li><i class="fa fa-clock-o"></i> المشاهدة لاحقا </li>
			<li><i class="fa fa-comments-o"></i> رسائل </li>
			<li><i class="fa fa-trophy"></i> ترقية حسابك  </li>
		</ul>
	</section> -->
</aside>