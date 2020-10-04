<?php 



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
            <li> <a class="dropdown-item" href="<?php echo base_url().'admin/request/approved'?>">Approved</a></li>
            <li><a class="dropdown-item" href="<?php echo base_url().'admin/request/unapproved'?>">Unapproved</a></li>
            <li><a class="dropdown-item" href="<?php echo base_url().'admin/request/trash'?>">Trash</a></li>
            <li><a class="dropdown-item" href="<?php echo base_url().'admin/request/spam'?>">Spam</a></li>
            <li><a class="dropdown-item" href="<?php echo base_url().'admin/request/'?>">All</a></li>
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
              <th>Name Anime</th>
              <th>Name Season</th>
              <th>Submitted On</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
            <?php $sl = 1;
            // 0-Unapproved, 1 -Approved, 2-Spam, 3-Trash                                
            switch ($type) {
              case 'approved':
                $this->db->order_by('request_id','DESC');
                $request=$this->db->get_where('request', array('approve_request' => '1'))->result_array();
                break;
              case 'unapproved':
                $this->db->order_by('request_id','DESC');
                $request=$this->db->get_where('request', array('approve_request' => '0'))->result_array();
                break;
              case 'trash':
                $this->db->order_by('request_id','DESC');
                $request=$this->db->get_where('request', array('approve_request' => '3'))->result_array();
                break;
              case 'spam':
                $this->db->order_by('request_id','DESC');
                $request=$this->db->get_where('request', array('approve_request' => '2'))->result_array();
                break;
              default:
                  $this->db->order_by('request_id','DESC');
                  $request=$this->db->get('request')->result_array();                  
                  break;
            }                                
            foreach ($request as $con):                    

            ?>
            <tr id='row_<?php echo $con['request_id'];?>'>                
              <td><div class="btn-group">
                  <button type="button" class="btn btn-white btn-sm dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-h" aria-hidden="true"></i></button>
                  <ul class="dropdown-menu" role="menu">
                    <?php if (!empty($con['user_id'])){?>
                    <li><a class="dropdown-item" data-toggle="modal" data-target="#mymodal" data-id="<?php echo base_url() . 'admin/view_modal/request_edit/'. $con['request_id'].'/movie';?>" id="menu" title="Edit" >Reply</a> </li>
                    <?php } ?>
                    <li><a class="dropdown-item" title="Delete>" href="#" onclick="delete_row(<?php echo " 'request' ".','.$con['request_id'];?>)">Delete</a> </li>
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
              <?php echo $con['name_anime']; ?>
            
            </td>
            <td><?php echo $con['season']; ?></td>
            <td><?php echo $con['request_at']; ?></td>
              <td>
                <?php
                // 0-Unapproved, 1 -Approved, 2-Spam, 3-Trash
                    if($con['approve_request']=='1'){
                        echo '<span class="label label-success label-xs">Approved</span>';
                    }else if($con['approve_request']=='0'){
                        echo '<span class="label label-primary label-xs">Unapproved</span>';
                    }else if($con['approve_request']=='3'){
                        echo '<span class="label label-danger label-xs">Trash</span>';
                    }else if($con['approve_request']=='2'){
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
