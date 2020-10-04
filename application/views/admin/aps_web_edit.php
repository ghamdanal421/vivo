<?php
  $aps_web    = $this->db->get_where('aps_web' , array('aps_web_id' => $param2) )->result_array();
  foreach ( $aps_web as $row):
?>

<?php echo form_open(base_url() . 'admin/aps_web/update/'.$param2 , array('class' => 'form-horizontal group-border-dashed', 'enctype' => 'multipart/form-data'));?>

<h4 class="text-center">Edit APS</h4>
    <input type="hidden" name="aps_web_address" value="<?php echo $row['aps_web_address']?>" />
<div class="form-group row">
  <label class="col-sm-3 control-label">Content</label>
  <div class="col-sm-9">
    <textarea  name="aps_web_html"   class="form-control"  ><?php echo $row['aps_web_html']; ?></textarea>
  </div>
</div>

<div class="form-group row">
  <div class="col-sm-offset-3 col-sm-6 m-t-15">
    <button type="submit" class="btn btn-sm btn-primary waves-effect"> <span class="btn-label"><i class="fa fa-floppy-o"></i></span>Save </button>
    
  </div>
</div>
<?php echo form_close(); ?>
<?php endforeach; ?>
<script>
  jQuery(document).ready(function() {
    $('form').parsley(); 
  });
</script> 