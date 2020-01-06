<!-- Form - begin form section -->
<br /><br />
<h3 class="text-center space"><?php echo $this->lang->line('discussion_form_instruction');?></h3>

<?php echo validation_errors(); ?>
<?php echo form_open('discussions/create','role="form"'); ?>
    <div class="form-group col-md-6 col-lg-6">
      <label for="usr_name"><?php echo $this->lang->line('discussion_usr_name');?></label>
      <input type="text" name="usr_name" class="form-control" id="usr_name" value="<?php echo set_value('usr_name'); ?>">
    </div>
    <div class="form-group col-md-6 col-lg-6">
      <label for="usr_email"><?php echo $this->lang->line('discussion_usr_email');?></label>
      <input type="email" name="usr_email" class="form-control" id="usr_email" value="<?php echo set_value('usr_email'); ?>">
    </div>
    <div class="form-group .col-xs-12 col-md-12 col-lg-12">
      <label for="ds_title"><?php echo $this->lang->line('discussion_ds_title');?></label>
      <input type="text" name="ds_title" class="form-control" id="ds_title" value="<?php echo set_value('ds_title'); ?>">
    </div>    
    <div class="form-group .col-xs-12 col-md-12 col-lg-12">
      <label for="ds_body"><?php echo $this->lang->line('discussion_ds_body');?></label>
      <textarea class="form-control" rows="5" name="ds_body" id="ds_body" draggable="false"><?php echo set_value('ds_body'); ?></textarea>
    </div>
    <div class="form-group .col-xs-12 col-md-12">
      <button type="submit" class="btn btn-default"><?php echo $this->lang->line('common_form_elements_go');?></button>
    </div>
<?php echo form_close(); ?>