
<div class="container">
	<div class="content-wrapper">
		<div class="main-wrapper">
			<div class="videos">
				<h3 class="tite-video">	مفضلاتي </h3>
				<div class="main-info">
					<?php if(count($favorite )>0): 
						$sl = 1;
				
				foreach ($favorite as $fav):
				$videos = 	$this->db->get_where('videos' , array('videos_id' => $fav['anime_id'], 'publication' => 1) )->result_array()[0];
					
			?>
					<article>
						<a  href="#" class="categorie"><?=$videos['video_quality']?></a>
						<a  href="<?php echo base_url('movies/')  .  $videos['videos_id'] . '-' . $videos['slug'];?>">
						<div tooltipster="right"  class="tooltip-trigger " data-tooltip-content="#tooltip_content<?=$sl?>">
						<div class="imgs">
							<img data-src="<?php echo $this->common_model->get_video_thumb_url($videos['videos_id']);?>" />
							<div class="heart">
							<i class="fa fa-heart"></i>
							<?php echo $videos['imdb_rating'];?>
							</div>
							<div class="play-video"><i class="fa fa-play"></i></div>
						</div>
						<h2><?php echo $videos['title'];?></h2>
						</div>
						</a>
						 <div  id="tooltip_content<?=$sl?>" style="display: none;"><?php echo $videos['description'] ;?></div> 
					</article>
					<?php endforeach;?>
					<?php else: ?>
						<div class="alert alert_warning" style="animation-delay: .2s">
							<div class="alert--icon">
								<i class="fa fa-exclamation-circle"></i>
							</div>
							<div class="alert--content">
								<strong>المعدرة ,</strong> لم تم بأضافة أي انمي مفضل لذيك بعد
							</div>
							
							</div>
					<?php endif; ?>
					
			</div>
		</div>
	
		</div>
		<?php $this->load->view('web/includes/templates/sidebar');
		?>
	</div>  

</div>




