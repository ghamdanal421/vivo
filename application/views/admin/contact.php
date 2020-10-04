<?php 

$os_systeem = $this->agent->platforms;

/*get_browser_name in HTTP_USER_AGENT 
function v1.0

*/

function get_browser_name($user_agent){
	$t = strtolower($user_agent);
	$t = " " . $t;
	// Humans / Regular Users     
	if     (strpos($t, 'opera'     ) || strpos($t, 'opr/')     ) return 'Opera'            ;
	elseif (strpos($t, 'edge'      )                           ) return 'Edge'             ;
	elseif (strpos($t, 'chrome'    )                           ) return 'Chrome'           ;
	elseif (strpos($t, 'safari'    )                           ) return 'Safari'           ;
	elseif (strpos($t, 'firefox'   )                           ) return 'Firefox'          ;
	elseif (strpos($t, 'msie'      ) || strpos($t, 'trident/7')) return 'Internet Explorer';

	// Search Engines 
	elseif (strpos($t, 'google'    )                           ) return '[Bot] Googlebot'   ;
	elseif (strpos($t, 'bing'      )                           ) return '[Bot] Bingbot'     ;
	elseif (strpos($t, 'slurp'     )                           ) return '[Bot] Yahoo! Slurp';
	elseif (strpos($t, 'duckduckgo')                           ) return '[Bot] DuckDuckBot' ;
	elseif (strpos($t, 'baidu'     )                           ) return '[Bot] Baidu'       ;
	elseif (strpos($t, 'yandex'    )                           ) return '[Bot] Yandex'      ;
	elseif (strpos($t, 'sogou'     )                           ) return '[Bot] Sogou'       ;
	elseif (strpos($t, 'exabot'    )                           ) return '[Bot] Exabot'      ;
	elseif (strpos($t, 'msn'       )                           ) return '[Bot] MSN'         ;

	// Common Tools and Bots
	elseif (strpos($t, 'mj12bot'   )                           ) return '[Bot] Majestic'     ;
	elseif (strpos($t, 'ahrefs'    )                           ) return '[Bot] Ahrefs'       ;
	elseif (strpos($t, 'semrush'   )                           ) return '[Bot] SEMRush'      ;
	elseif (strpos($t, 'rogerbot'  ) || strpos($t, 'dotbot')   ) return '[Bot] Moz or OpenSiteExplorer';
	elseif (strpos($t, 'frog'      ) || strpos($t, 'screaming')) return '[Bot] Screaming Frog';
   
	// Miscellaneous
	elseif (strpos($t, 'facebook'  )                           ) return '[Bot] Facebook'     ;
	elseif (strpos($t, 'pinterest' )                           ) return '[Bot] Pinterest'    ;
   
	// Check for strings commonly used in bot user agents  
	elseif (strpos($t, 'crawler' ) || strpos($t, 'api'    ) ||
			strpos($t, 'spider'  ) || strpos($t, 'http'   ) ||
			strpos($t, 'bot'     ) || strpos($t, 'archive') ||
			strpos($t, 'info'    ) || strpos($t, 'data'   )    ) return '[Bot] Other'   ;
   
	return 'Other (Unknown)';
}


function getOS($user_agent) { 

  $os_platform    =   "Unknown OS";
  $os_array       =    $os_array       =   array(
    '/windows nt 10.0/i'     =>  'Windows 10',
    '/windows nt 6.2/i'     =>  'Windows 8',
    '/windows nt 6.1/i'     =>  'Windows 7',
    '/windows nt 6.0/i'     =>  'Windows Vista',
    '/windows nt 5.2/i'     =>  'Windows Server 2003/XP x64',
    '/windows nt 5.1/i'     =>  'Windows XP',
    '/windows xp/i'         =>  'Windows XP',
    '/windows nt 5.0/i'     =>  'Windows 2000',
    '/windows me/i'         =>  'Windows ME',
    '/win98/i'              =>  'Windows 98',
    '/win95/i'              =>  'Windows 95',
    '/win16/i'              =>  'Windows 3.11',
    '/macintosh|mac os x/i' =>  'Mac OS X',
    '/mac_powerpc/i'        =>  'Mac OS 9',
    '/linux/i'              =>  'Linux',
    '/ubuntu/i'             =>  'Ubuntu',
    '/iphone/i'             =>  'iPhone',
    '/ipod/i'               =>  'iPod',
    '/ipad/i'               =>  'iPad',
    '/android/i'            =>  'Android',
    '/blackberry/i'         =>  'BlackBerry',
    '/webos/i'              =>  'Mobile'
);

  foreach ($os_array as $regex => $value) { 

      if (preg_match($regex , $user_agent)) {
          $os_platform    =   $value;
      }

  }   

  return $os_platform;

}

?>

<div class="card">
  <div class="row">
    <div class="col-sm-12">
              <div class="btn-group dropdown pull-right">
          <button type="button" class="btn btn-primary btn-sm waves-effect waves-light text-capital">
          <?php
          // 0-Unapproved, 1 -Approved, 2-Spam, 3-Trash
            switch ($type) {
              case 'approved':
                echo 'Approved';
                break;
              case 'unapproved':
                echo 'Unapproved';
                break;
              case 'spam':
                echo 'Spam';
                break;
              case 'trash':
                echo 'Trash';
                break;
              case 'draft':
                echo 'Draft';
                break;                
              default:
                echo 'FILTER';
                break;
            }
            ?>
          </button>
          <button type="button" class="btn btn-primary dropdown-toggle waves-effect waves-light btn-sm" data-toggle="dropdown" aria-expanded="false"><i class="caret"></i></button>
          <ul class="dropdown-menu" role="menu">
            <li> <a class="dropdown-item" href="<?php echo base_url().'admin/contact/approved'?>">Approved</a></li>
            <li><a class="dropdown-item" href="<?php echo base_url().'admin/contact/unapproved'?>">Unapproved</a></li>
            <li><a class="dropdown-item" href="<?php echo base_url().'admin/contact/trash'?>">Trash</a></li>
            <li><a class="dropdown-item" href="<?php echo base_url().'admin/contact/spam'?>">Spam</a></li>
            <li><a class="dropdown-item" href="<?php echo base_url().'admin/contact/'?>">All</a></li>
          </ul>
        </div>
          <br><br>
          <table id="datatable" class="table table-striped">
          <thead>
            <tr>
              <th>#</th>
              <th>#</th>
              <th>Author</th>
              <th>Message</th>
              <th>Sender Information</th>
              <th>Submitted On</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
            <?php $sl = 1;
            // 0-Unapproved, 1 -Approved, 2-Spam, 3-Trash                                
            switch ($type) {
              case 'approved':
                $this->db->order_by('contact_id','DESC');
                $contact=$this->db->get_where('contact', array('approve_message' => '1'))->result_array();
                break;
              case 'unapproved':
                $this->db->order_by('contact_id','DESC');
                $contact=$this->db->get_where('contact', array('approve_message' => '0'))->result_array();
                break;
              case 'trash':
                $this->db->order_by('contact_id','DESC');
                $contact=$this->db->get_where('contact', array('approve_message' => '3'))->result_array();
                break;
              case 'spam':
                $this->db->order_by('contact_id','DESC');
                $contact=$this->db->get_where('contact', array('approve_message' => '2'))->result_array();
                break;
              default:
                  $this->db->order_by('contact_id','DESC');
                  $contact=$this->db->get('contact')->result_array();                  
                  break;
            }                                
            foreach ($contact as $con):                    

            ?>
            <tr id='row_<?php echo $con['contact_id'];?>'>                
              <td><div class="btn-group">
                  <button type="button" class="btn btn-white btn-sm dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></button>
                  <ul class="dropdown-menu" role="menu">
                    <?php if (!empty($con['user_id'])){?>
                    <li><a class="dropdown-item" data-toggle="modal" data-target="#mymodal" data-id="<?php echo base_url() . 'admin/view_modal/contact_edit/'. $con['contact_id'].'/movie';?>" id="menu" title="Edit" >Reply</a> </li>
                    <?php } ?>
                    <li><a class="dropdown-item" title="Delete>" href="#" onclick="delete_row(<?php echo " 'contact' ".','.$con['contact_id'];?>)">Delete</a> </li>
                  </ul>
                </div>
              </td>
              <td><?php echo $sl++;?></td>
              <td>
                <?php 
                
                  if(!empty($con['user_id'])){
                ?>
                <img  src="<?php echo $this->common_model->get_img('user', $con['user_id']).'?'.time();?>" class="img-circle " alt="photo" height="30">
                <strong><?php echo $this->common_model->get_name_by_id($con['user_id']);?></strong><br>
                <?php }else { ?>
                  <strong><?php echo $con['uesr_name'];?></strong>

              <?php  } ?>
              </td>                
              <td> <?php echo $con['message']; ?></td>
              <td>
              <details> 
                  <summary>Advanced Info</summary>
                    <ul>
                      <li> <strong>Subscribe: </strong>  <?=!empty($con['user_id'])&& $con['user_id'] != null ? "Yas": "No" ?> </li>
                      <li> <strong> Email: </strong>  <?=$con['email']?> </li>
                      <li> <strong> Number Phone: </strong>  <?=$con['number_phone']?> </li>
                      <li> <strong>URL Referer: </strong>  <a target="_blank"  href="<?=$con['referer']?>">Here</a> </li>
                      <li> <strong>Browser Type: </strong>  <?=get_browser_name($con['user_agent'])?> </li>
                      <li> <strong>System Type: </strong>  <?=getOS($con['user_agent'])?> </li>
                      <li> <strong>User IP: </strong>  <?=$con['user_ip']?> </li>
                      
                    </ul> 
              </details>    
            
            </td>
              <td><?php echo $con['contact_at']; ?></td>
              <td>
                <?php
                // 0-Unapproved, 1 -Approved, 2-Spam, 3-Trash
                    if($con['approve_message']=='1'){
                        echo '<span class="label label-success label-xs">Approved</span>';
                    }else if($con['approve_message']=='0'){
                        echo '<span class="label label-primary label-xs">Unapproved</span>';
                    }else if($con['approve_message']=='3'){
                        echo '<span class="label label-danger label-xs">Trash</span>';
                    }else if($con['approve_message']=='2'){
                        echo '<span class="label label-warning label-xs">Spam</span>';
                    }
                    else{
                        echo '<span class="label label-warning label-mini">Spam</span>';
                    }
                  ?>                      
              </td>
            </tr>
            <?php endforeach;?>
          </tbody>
        </table>
    </div>
</div>



        
      </div>
    </div>
  </div>

<script type="text/javascript" src="<?php echo base_url() ?>assets/plugins/parsleyjs/dist/parsley.min.js"></script> 
<script type="text/javascript">
    $(document).ready(function() {
        $('form').parsley();
    });
</script> 

<!-- date picker--> 
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script> 
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script> 
<!-- date picker--> 
<!-- file select--> 
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-filestyle/src/bootstrap-filestyle.min.js" type="text/javascript"></script> 
<!-- file select--> 
<!-- select2--> 
<script src="<?php echo base_url() ?>assets/plugins/bootstrap-select/dist/js/bootstrap-select.min.js" type="text/javascript"></script> 
<script src="<?php echo base_url() ?>assets/plugins/select2/select2.min.js" type="text/javascript"></script> 
<!-- select2--> 
