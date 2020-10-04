<?php
if($param3 =="movie"){
    $comments    = $this->db->get_where('request' , array('request_id' => $param2) )->result_array();    
    echo form_open(base_url() . 'admin/request/notifications/'.$param2 , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));
}
foreach ( $comments as $row):
 ?><h4 class="text-center">Reply Request</h4>
<hr>
<div class="form-group">
  <label class="col-sm-3 control-label">Message</label>
  <div class="col-sm-6">
    <input type="hidden" value="<?=$row['user_id']?>" name="user_id">
    <textarea name="notifications" rows="5" class="form-control" placeholder="Enter user Reply Message"></textarea>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form group -->

<div class="form-group">
  <label class="col-sm-3 control-label">Action</label>
  <div class="col-sm-6 ">
    <select  class="form-control"  name="approve_request" required>
      <option value="1" <?php if($row['approve_request']=="1"){ echo "selected"; }?>>Approved</option>
      <option value="0"  <?php if($row['approve_request']=="0"){ echo "selected"; }?>>Unapproved</option>
      <option value="2"  <?php if($row['approve_request']=="2"){ echo "selected"; }?>>Mark as Spam</option>
      <option value="3"  <?php if($row['approve_request']=="3"){ echo "selected"; }?>>Move to Trash</option>
    </select>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->

<?php endforeach; ?>
<div class="form-group">
  <div class="col-sm-offset-3 col-sm-9 m-t-15">
    <button type="submit" class="btn btn-sm btn-primary waves-effect"><span class="btn-label"><i class="fa fa-floppy-o"></i></span>SEND </button>
    <button type="" class="btn btn-sm btn-white m-l-5 waves-effect" data-dismiss="modal">CLOSE </button>
  </div>
  <!-- End col-6 --> 
</div>
<!-- end form -group -->
</form>
<script>
        jQuery(document).ready(function() {
          $(".select2").select2();
          $('form').parsley();                            

          });
</script> 
