
<div class="container">
	<div class="content-wrapper">
		<div class="main-wrapper">
			<div class="videos">
				<ul class="filter-contnt-ul">
					<li><a  class="<?=!isset($_GET['rating']) && !isset($_GET['view'])? "actve" :""?> "  href="<?=base_url()?>">الكل</a></li>
					<li><a   class="<?=isset($_GET['rating'])? "actve" :""?> " href="?rating=ls">الاعلى تقيم</a></li>
					<li><a   class="<?=isset($_GET['view'])? "actve" :""?> "  href="?view=ls">الاكثر مشاهدة</a></li>
				</ul>
				<div class="main-info">
					<?php if(!empty($videos)): 
						$sl = 1;
				if($last_row_num)
				$sl = $last_row_num + 1;
				foreach ($videos as $videos):
					
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
					<?php
				$sl++;
				 endforeach;?>
					<?php else: ?>
						<div class="alert alert_warning" style="animation-delay: .2s">
							<div class="alert--icon">
								<i class="fa fa-exclamation-circle"></i>
							</div>
							<div class="alert--content">
								<strong>المعدرة ,</strong> لم يتم العثور على أي نتيجة 
							</div>
							
							</div>
					<?php endif; ?>
					
			</div>
		</div>
	
			<div class="azlist">
			<?php echo  $links; ?>
			

    
			</div>
		</div>
		<?php $this->load->view('web/includes/templates/sidebar'); ?>
	</div>  

</div>


