<?php
$anmi_id =0;
if (strstr($param1, "-") ) {
	$anmi_id = explode('-', $param1, 2)[0];
	$anmi_id = filter_var($anmi_id, FILTER_VALIDATE_INT);
}
 if(empty($anmi_id)){
	$anmi_id = 0;
}



$user_id   = $this->session->userdata('admin_is_login') != 1 ||  $this->session->userdata('user_is_login') == 1? null : $this->session->userdata('user_id');

$favorite = $this->db->get_where('favorite' , array('anime_id' => $anmi_id, 'user_id' => $user_id) )->result_array();
$videos   = $this->db->get_where('videos' , array('videos_id' => $anmi_id, 'publication' => 1) )->result_array();

foreach ( $videos as $video):
	$actors     = explode(",", $video['stars']);
	$directors  = explode(",", $video['director']);
	$writers    = explode(",", $video['writer']);
	$actual_links = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
	$data['videos_id'] = $anmi_id;
	$data['publication'] = 1;
	$data['total_view'] = number_format($video['total_view']) + 1;
	
	$this->db->update('videos', $data, array('videos_id'=> $anmi_id));
	if($this->session->userdata('admin_is_login') == 1 ||  $this->session->userdata('user_is_login') == 1){
	$this->db->update('user', array('another_watch' => $actual_links) , array(
		'user_id' =>$this->session->userdata('user_id')));
	}



	// VIDEO LIST
	$video_files = $this->common_model->get_video_file_by_videos_id($anmi_id);

	function get_contnunt($video_file, $thist, $anmi_id){
		switch ($video_file['file_source']) {
			  
			case 'youtube':
				return  '<iframe width="100%" height="315" src="'.$video_file['file_url'].'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
					 break;  
			case 'vimeo':
			return  '<iframe width="100%" height="315" src="'.$video_file['file_url'].'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
				break;
		   case 'amazone':
			  return  '<iframe width="100%" height="315" src="'.$video_file['file_url'].'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
			   break;
			   case 'mp4':
				   
					  return   '<video id="my-player"	class="video-js" controls preload="auto" width="790" height="364" poster="'.$thist->common_model->get_video_poster_admin_url($anmi_id).'"
					   data-setup="{}">
				   <source src="'.$video_file['file_url'].'"/>
				   <p class="vjs-no-js">	المتصفح الخاص بك قديم لا يدعم عرض الفيديو	<a href="/" target="_blank">
					   الصفحة الرئيسية
					   </a>
				   </p>
				   </video>';
   
				   break;
		   case 'mkv':
			  return   '<video id="my-player" type="video/x-matroska"	class="video-js" controls preload="auto" width="790" height="364" poster="'.$thist->common_model->get_video_poster_admin_url($anmi_id).'"
					   data-setup="{}">
				   <source src="'.$video_file['file_url'].'"/>
				   <p class="vjs-no-js">	المتصفح الخاص بك قديم لا يدعم عرض الفيديو	<a href="/" target="_blank">
					   الصفحة الرئيسية
					   </a>
				   </p>
				   </video>';
			   break;
		   case 'webm':
			  return  '<video id="my-player" type="video/webm"	class="video-js" controls preload="auto" width="790" height="364" poster="'.$thist->common_model->get_video_poster_admin_url($anmi_id).'"
			   data-setup="{}">
		   <source src="'.$video_file['file_url'].'"/>
		   <p class="vjs-no-js">	المتصفح الخاص بك قديم لا يدعم عرض الفيديو	<a href="/" target="_blank">
			   الصفحة الرئيسية
			   </a>
		   </p>
		   </video>';
				   break;
		   case 'm3u8':
			  return  '<video id="my-player" type="application/vnd.apple.mpegurl"	class="video-js" controls preload="auto" width="790" height="364" poster="'.$thist->common_model->get_video_poster_admin_url($anmi_id).'"
			   data-setup="{}">
		   <source src="'.$video_file['file_url'].'"/>
		   <p class="vjs-no-js">	المتصفح الخاص بك قديم لا يدعم عرض الفيديو	<a href="/" target="_blank">
			   الصفحة الرئيسية
			   </a>
		   </p>
		   </video>';
				   break;
		   case 'embed':
			  return  '<iframe width="100%" height="315" src="'.$video_file['file_url'].'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
				   break;
																			 
		   default:
		  return   '<iframe width="100%" height="315" src="'.$video_file['file_url'].'" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>';
			 break;
		 }
	}


	$server_id = isset($param2) && !empty($param2) ? $param2 : 0;
	if($video['is_tvseries'] != "0"){
		$this->db->order_by('order',"ASC");
		$seasons = $this->db->get_where('seasons', array('videos_id'=>$param1))->result_array();
	}
	

?>
	
<div class="container">
	<div class="content-wrapper">
		
		<div class="main-playr">
			
			<div class="contenr-playr">
					<h3 class="tite-video"> <?php echo $video['title'] ?> <a href='<?=base_url('contact')?>?url=<?=$actual_links?>' class="exclamation" ><i class="fa fa-exclamation-circle"></i> ابلاغ عن مشكلة </a> </h3>
					
					<?php 
					if($video['is_tvseries'] == "0"){
				$def_video_file   = $this->db->get_where('video_file' , array('video_file_id' => $server_id ) )->result_array();
			
					if(!empty($def_video_file )){
						echo get_contnunt($def_video_file[0], $this, $anmi_id);
					}else {
						if(isset($video_files[0])){
							echo get_contnunt($video_files[0], $this, $anmi_id);
							$server_id = $video_files[0]['video_file_id'];
						}else{	?>
						
						<div class="bak-img" style="background-image: url('<?=$this->common_model->get_video_poster_admin_url($anmi_id) ?>');">
							<div class="no-vide">
							<button class="vjs-big-play-button" type="button" title="">
								<span class="vjs-icon-placeholder"></span>
								<i class="fa fa-frown-o"></i>
							</button>
							<div class="err-vide">
																		<p>المعدرة , لا يوجد سرفر متاح  </p>
										
																	</div>
						</div>
					</div>
					<?php	}
						
					}
				}else {
					
					if(!empty($seasons)){
						if(!isset($_GET['seasons'])){
						$ls = 0;
						for($ls = 0; $ls < count($seasons); $ls++){
							if(!empty($this->common_model->get_episodes_by_videos_id_and_season_id( $anmi_id,$seasons[$ls]['seasons_id']))){

								$episodes = $this->common_model->get_episodes_by_videos_id_and_season_id( $anmi_id,$seasons[$ls]['seasons_id']);
							break;
							}else {
								$episodes = "";
							}
							
						}
					}else {
						$episodes = $this->common_model->get_episodes_by_videos_id_and_season_id( $anmi_id,$_GET['seasons']);
					}
					
						if(!empty($episodes)){
							if(isset($_GET['episode']) && !empty($_GET['episode'])){
								foreach($episodes as $episode){
										if($episode['episodes_id'] == $_GET['episode']){
											
											$cotve_episodes = $episode;
											echo get_contnunt($episode, $this, $anmi_id);
											
									break;
										}else{
											// $cotve_episodes = $episodes[0];
											// echo get_contnunt($episodes[0], $this, $anmi_id);
										}
								}
								
								
							}else {
								$cotve_episodes = $episodes[0];
								echo get_contnunt($episodes[0], $this, $anmi_id);
							}
						}else {
							echo "no is episodes";
						}
						
						
					}
						
				}
				 ?>
				
						

				</div>	
				<?php if($video['is_tvseries'] == "0"){?>
			<div class="contenr-playr">
				<div class="wiget-contenr">
					<ul id="setClasstr">
						<li class="actief" data-vler="text">السيرفرات</li>
						<li data-vler="vest" class="">روابط التحميل </li>
					</ul>
					<div class="info-aput">
						<div class="vispled" data-vler="text">
							<div class="server">
								<?php if(!empty($video_files)){?>
								<ul>
									<?php 
							foreach($video_files as $video_file){
									$contnt_video_file =  get_contnunt($video_file, $this, $anmi_id);
								
	

									?>
								<li>
								
										<a  class="button <?= $server_id ==  $video_file['video_file_id'] ? "actve " : ""?>" href="<?php echo base_url('movies/')  .  $video['videos_id'] . '-' . $video['slug'];?>/<?=$video_file['video_file_id']?>" role="button">
											<div class="icon">
												<span><?= $video_file['label']?></span>
											</div>
										</a>
									</li>
							<?php } ?>
								</ul>
								<?php }else { ?>
									<div class="alert alert_warning margin" style="animation-delay: .5s">
										<div class="alert--icon">
											<i class="fa fa-exclamation-circle"></i>
										</div>
										<div class="alert--content">
											<strong>المعدرة ,</strong> لا يوجد أي سيرفر هنا .
										</div>
										
									</div>
									<?php } ?>
							</div>
						</div>
						<div data-vler="vest" class="">
						<div class="server download">
							<?php 
							$download_links = $this->db->get_where('download_link', array('videos_id'=> $anmi_id))->result_array();
								if(!empty($download_links)){
							?>
								<ul>
					<?php 
                    foreach($download_links as $download_link){
               ?>
									<li>
										<a target="_blank" class="button" href="<?=$download_link['download_url']?>" role="button">
											<div class="icon">
												<span> <?=$download_link['link_title']?> </span>
												<div class="quality"><i class="fa fa-download"></i></div>
											</div>
										</a>
									</li>
									<?php } ?>
								</ul>
							<?php }else{ ?>
								<div class="alert alert_warning margin" style="animation-delay: .5s">
										<div class="alert--icon">
											<i class="fa fa-exclamation-circle"></i>
										</div>
										<div class="alert--content">
											<strong>المعدرة ,</strong> لا يوجد أي رابط تحميل هنا.
										</div>
										
									</div>
								<?php } ?>
							</div>
						</div>
						
					</div>
				</div>
			</div>
			<?php }else { ?>

				<div class="contenr-playr">
					<div class="list-tv">
						<div class="our-row">
							<div class="home-cats-selection ">
								<ul>
									<?php
									$lst_seasons = $seasons;
									foreach ($lst_seasons as $season): 
										?>
										<li><a class="term-item <?=isset($cotve_episodes['seasons_id']) && $cotve_episodes['seasons_id'] == $season['seasons_id'] || (isset($_GET['seasons']) && $_GET['seasons'] == $season['seasons_id'])? "active" :"" ?> " data-term=".term-<?php echo $season['seasons_id']; ?>" href="<?php echo base_url('tv/')  .  $video['videos_id'] . '-' . $video['slug'];?>?seasons=<?php echo $season['seasons_id']; ?>"><?php echo $season['seasons_name'];?></a></li>
								<?php endforeach;?>
								</ul>
							</div>
							<div class="home-posts">
								<?php
							foreach ($seasons as $seasons): 
								$episodes = $this->common_model->get_episodes_by_videos_id_and_season_id( $anmi_id,$seasons['seasons_id']);

								foreach ($episodes as $episode): 
								?>
								<a href="<?php echo base_url('tv/')  .  $video['videos_id'] . '-' . $video['slug'];?>?seasons=<?php echo $episode['seasons_id']; ?>&episode=<?=$episode['episodes_id']?>" class="archive-post-box term-<?= $episode['seasons_id']?>  <?=isset($cotve_episodes['episodes_id']) && $cotve_episodes['episodes_id'] == $episode['episodes_id'] || (isset($_GET['episode']) && $_GET['episode'] == $episode['episodes_id'])? "active" :"" ?> ">
									<div class="img-episode">
									<img src="<?php echo $this->common_model->get_episode_image_url($anmi_id,$episode['episodes_id']); ?>" alt="d"/>
									<div class="hovr-img"></div>
										<h4><?=$episode['episodes_name']?></h4>
									</div>
								</a>
								<?php endforeach;?>
								
								<?php endforeach;?>
							</div>
						</div>
					</div>
				</div>

		<?php	} ?>
			<div class="contenr-playr">
				<div class="contnt-info-anime">
					<span  id="addfavorite" data-id="<?=$anmi_id?>" data-type="anime" class='<?=!empty($favorite)? "actve":""?> views'>
						<i class="fa fa-heart-o"></i>
					</span>
					<div class="imeges">
						<img src="<?php echo $this->common_model->get_video_thumb_url($anmi_id);?>" alt="<?=$video['title']?>" />
						<div class="views-gh">
							<?php
							

							
							?>
							<strong><?php echo $video['imdb_rating']; ?></strong>/	<small><?php echo $video['total_view']; ?> مشاهد</small>
							<div class="total_view"><div class="lin-view" style="width:<?=number_format($video['imdb_rating']) * 10?>%"></div></div>
						</div>
					</div>
					<div class="info">
						<h3><?=$video['title']?>	</h3>
						<div class="description"><?php echo $video['description'] ?>	</div>
					<div class="contenr-media">
					
						<div class="contoner-ul">
								
							<ul class="left-ul">
							<li> النوع :
								<?php $genre = $this->db->get('genre')->result_array();
								foreach ($genre as $v_genre):?>
								<?php  if(preg_match('/\b'.$v_genre['genre_id'].'\b/', $video['genre'])){ echo 
								
							'<a href="'.base_url().'?genre='.$v_genre['genre_id'].'">'.	$v_genre['name'] . '</a>';} 
								?>
					
									<?php endforeach; ?>
								</li>							
								<!-- <li> الممثلون :
								<?php foreach ($actors as $actor):?>
									<a href="<?=base_url()?>?genre=<?=$actor?>">	<?php echo $this->common_model->get_star_name_by_id($actor); ?> </a>
									<?php endforeach; ?>
								</li>
								</li> -->
								<li> الوقت :
									<a><?php echo $video['runtime']; ?> دقيقية</a>
								</li>
								<li> الجودة  :
								<?php $quality = $this->db->get_where('quality', array('status'=>'1'))->result_array();
											foreach ($quality as $quality):?>
									 <?php if($quality['quality']==$video['video_quality']){
										 echo '<a >' .$quality['quality'].'</a>';
										 
										 } ?>
										 
									<?php endforeach; ?>
								</li>
								</ul>
								<ul class="right-ul">
								<li> الدولة :
								<?php $country = $this->db->get('country')->result_array();
								foreach ($country as $v_country):?>
							<?php  if(preg_match('/\b'.$v_country['country_id'].'\b/', $video['country'])){ 

								echo 	'<a href="'.base_url().'?country='.$v_country['country_id'].'">'. $v_country['name'] . '</a>';}
									?>
						<?php endforeach; ?>
								</li>
								
							
								<li title="">تقيم  IMDb   : <a> <?php echo $video['imdb_rating']; ?></a></li>
								<li title="">التاريخ : <a> <?php echo $video['release']; ?></a></li>
							</ul>
						</div>
						<div class="imeges imeges-media">
						<img src="<?php echo $this->common_model->get_video_thumb_url($anmi_id);?>" alt="<?=$video['title']?>" />
						<div class="views-gh">
							<strong><?php echo $video['imdb_rating']; ?></strong>/	<small><?php echo $video['total_view']; ?> مشاهد</small>
							<div class="total_view"><div class="lin-view" style="width:<?=number_format($video['imdb_rating']) * 10?>%"></div></div>
						</div>
					</div>
					</div>
						<div class="post_share">
				<span class="post_share_label"> <i class="fa fa-share-alt fa-fw"></i> مشاركة :</span>
						<ul class="post_share_buttons">
							<li>
								<a class="facebook" href="https://www.facebook.com/sharer/sharer.php?u= <?=$actual_links?> "  role="button" >
								<i class="fa fa-facebook-f"></i>
							</a>
							</li>
					<li>
						<a class="twitter" href="https://twitter.com/intent/tweet?text= <?= $video['title'] ?> |=> <?= $actual_links?> ">
							<i class="fa fa-twitter"></i>
						</a>
				</li>
				<li><a class="pinterest" href="https://pinterest.com/pin/create/button/?description= <?= $video['title'] ?>&amp;media= <?= $video['title'] ?>&amp;url= <?=$actual_links?> " >
						<i class="fa fa-pinterest-p"></i>
					</a>
				</li>
				<li><a class="linkedin" href="https://www.linkedin.com/shareArticle?title= <?= $video['title'] ?>&amp;url= <?=$actual_links?> " >
					<i class="fa fa-linkedin"></i>
				</a>
				</li>
				<li><a class="whatsapp" href="https://wa.me/?text= <?= $video['title'] ?> |=>  <?=$actual_links?> " >
						<i class="fa fa-whatsapp"></i>
					</a>
				</li>
				<li><a class="envelope" href="mailto:?subject= <?= $video['title'] ?>&body= <?=$actual_links?> ">
					<i class="fa fa-envelope-o"></i>

					</a>
				</li>
			</ul>
			</div>
					</div>
				</div>

			</div>
			<!-- <div class="contenr-playr">
				<div class="aps-content">
					<h4 class="content-info-aps">
						تمتع بكل جديد ومشاهدة افضل الانمي بافضل جودة وسرفرات خاصة عند اشتراكك معنا 
						<a href=" $actual_link spaces" target="_blank">أشتراك الان   </a>
					</h4>
				</div>
			</div> -->
			<div class="contenr-playr">
				<h3>التعليقات </h3>

				


				<div id='main'>
					<div class="comments" id="comments"></div>
					<script type='text/javascript'>
					var disqus_shortname = 'ibranime-1';
					var disqus_blogger_current_url = " $actual_links ";
					if (!disqus_blogger_current_url.length) {
					disqus_blogger_current_url = " $actual_links ";
					}
					var disqus_blogger_homepage_url = "$actual_link";
					var disqus_blogger_canonical_homepage_url = "$actual_link";
					</script>
					<style type='text/css'>
					#comments {display:none;}
					</style>
					<script type='text/javascript'>
					// (function() {
					// 	var bloggerjs = document.createElement('script');
					// 	bloggerjs.type = 'text/javascript';
					// 	bloggerjs.async = true;
					// 	bloggerjs.src = '//' + disqus_shortname + '.disqus.com/blogger_item.js';
					// 	(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(bloggerjs);
					// })();
					</script>
					<style type='text/css'>
					.post-comment-link { visibility: hidden; }
					</style>
				</div>
			</div>
			
		</div>
		
	
		<!-- <div class="main-playr">
			<div class="contenr-playr">
				<div class="uk-alert uk-alert-warning">
					<p><i class="fa fa-warning"></i>
						المعدرة , رابط الانمي او أسمة  لم يعد موجودا
					</p>
				</div>
			</div>
		</div> -->
			
		<?php $this->load->view('web/includes/templates/sidebar'); ?>
		
	</div>  
</div>

<script>



if(document.querySelectorAll('#addfavorite')[0] != undefined){

let allElmentAdd = document.querySelectorAll('#addfavorite')[0];
var myAll = " ";
	allElmentAdd.onclick =  function() {
		let myID = this.getAttribute('data-id');
		let myType = this.getAttribute('data-type');
		var myData = '"id": "'+ myID + '", "type": "'+ myType+'"';
		if (this.classList.contains('actve')){
			this.classList.remove('actve');
			 myAll = myData;
		document.cookie = 'userfavorite=[{'+myAll+', "action": "remove"}]; expires=Thu, 18 Dec 2022 12:00:00 UTC; path=/';

		}else {
		
		
		 myAll = myData;
		document.cookie = 'userfavorite=[{'+myAll+', "action": "add"}]; expires=Thu, 18 Dec 2022 12:00:00 UTC; path=/';

		this.classList.add('actve');
		}
		
		
		
	};

}



        var myULSet = document.querySelectorAll('#setClasstr li');
        var myTextSet = document.querySelectorAll('.info-aput div');
        
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
            }
        });
        


		if(document.querySelectorAll('#addfavorite')[0] != undefined){

let allElmentAdd = document.querySelectorAll('#addfavorite')[0];
var myAll = " ";
	allElmentAdd.onclick =  function() {
		let myID = this.getAttribute('data-id');
		let myType = this.getAttribute('data-type');
		var myData = '"id": "'+ myID + '", "type": "'+ myType+'"';
		if (this.classList.contains('actve')){
			this.classList.remove('actve');
			 myAll = myData;
		document.cookie = 'userfavorite=[{'+myAll+', "action": "remove"}]; expires=Thu, 18 Dec 2022 12:00:00 UTC; path=/';

		}else {
		
		
		 myAll = myData;
		document.cookie = 'userfavorite=[{'+myAll+', "action": "add"}]; expires=Thu, 18 Dec 2022 12:00:00 UTC; path=/';

		this.classList.add('actve');
		}
		
		
		
	};

}

    </script>

<?php endforeach; ?>
