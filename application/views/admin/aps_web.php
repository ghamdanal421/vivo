<div class="card">
  <div class="row">
 
    <div class="col-sm-12">
      <h4 class="text-center">APS Web List</h4>
        <hr>
        <table id="datatable-buttons" class="table table-striped">
          <thead>
            <tr>
              <th>#</th>
              <th>Area APS</th>
              <th>Content</th>
              <th>Option</th>
            </tr>
          </thead>
          <tbody>
            <?php $sl = 1;
                  foreach ($aps_web as $aps):              

            ?>
            <tr id='row_<?php echo $aps['aps_web_id'];?>'>
              <td><?php echo $sl++;?></td>
              <td><strong><?php 
              if($aps['aps_web_address'] == "1"){
                echo "In Header";
              }else if($aps['aps_web_address'] == "2"){
                echo "In  Sidebar ";
              }else  if($aps['aps_web_address'] == "3"){
                echo "In Content";
          }else {
            echo "Erorr ";
          }
              
              
              ?></strong></td>
              <td><textarea disabled style="min-width: 500px;"><?php echo $aps['aps_web_html'];?></textarea> </td>
              <td>
                <div class="btn-group m-b-20"> <a data-toggle="modal" data-target="#mymodal" data-id="<?php echo base_url() . 'admin/view_modal/aps_web_edit/'. $aps['aps_web_id'];?>" id="menu" title="edit" class="btn btn-sm btn-icon"><i class="fa fa-pencil"></i></a> </div>
              </td>
            </tr>
            <?php endforeach;?>
          </tbody>
        </table>
    </div>
  </div>
</div>

<script src="<?php echo base_url() ?>assets/plugins/parsleyjs/dist/parsley.min.js"></script> 
<script type="text/javascript">
  $(document).ready(function() {
      $('form').parsley();
  });
</script> 
