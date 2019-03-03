<div class="col-md-12">
  <div class="panel panel-default">
    <div class="panel-heading">
      <div class="panel-btns">
        <a href="#" class="minimize">−</a>
      </div>
      <h4 class="panel-title">Form Add Role</h4>
      <p><code>(*)</code> Mandatory Field.</p>
    </div>
	<form method="post" action="<?php echo site_url('users/execute/role'); ?>" autocomplete="off" name="form-role" id="form-role" onSubmit="post_data('form-role'); return false;">
    	<div class="panel-body">
			<input type="hidden" name="action" value="<?php echo $action; ?>" readonly="true">
			<input type="hidden" name="id" value="<?php echo $data['id']; ?>" readonly="true">
			<div class="row">
				<div class="col-sm-4">
					<div class="form-group">
						<label class="control-label">Role Name <code>*</code></label>
						<input type="text" name="uraian" id="uraian" class="form-control" mandatory="yes" value="<?php echo $data['uraian']; ?>" <?php echo $disabled; ?>>
					</div>
				</div><!-- col-sm-4 -->
			</div><!-- row -->
			<div class="row">
				<div class="col-sm-12">
					<div class="form-group">
						<label class="control-label">Grant Menu</label>
						<?php  echo $menu; ?>
					</div>
				</div>
			</div>
		</div><!-- panel-body -->
		<div class="panel-footer">
			<button class="btn btn-primary btn-save" type="submit">Save</button>
		</div>
	</form>
  </div>
</div>