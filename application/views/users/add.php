<div class="col-md-12">
  <div class="panel panel-default">
    <div class="panel-heading">
      <div class="panel-btns">
        <a href="#" class="minimize">−</a>
      </div>
      <h4 class="panel-title">Form Add User</h4>
      <p><code>(*)</code> Mandatory Field.</p>
    </div>
    <div class="panel-body">
    	<form method="post" action="<?php site_url('users/execute/user'); ?>" autocomplete="off" name="form-user" id="form-user" onSubmit="post_data('form-user'); return false;">
    	  <input type="hidden" name="action" value="<?php echo $action; ?>" readonly="true">
	      <div class="row">
	        <div class="col-sm-4">
	          <div class="form-group">
	            <label class="control-label">Username <code>*</code></label>
	            <input type="text" name="data[username]" id="username" class="form-control" mandatory="yes" value="<?php echo $data['username']; ?>">
	          </div>
	        </div><!-- col-sm-4 -->
	        <div class="col-sm-4">
	          <div class="form-group">
	            <label class="control-label">Nama <code>*</code></label>
	            <input type="text" name="data[nama]" id="nama" class="form-control" mandatory="yes" value="<?php echo $data['username']; ?>">
	          </div>
	        </div><!-- col-sm-4 -->
	        <div class="col-sm-4">
	          <div class="form-group">
	            <label class="control-label">Email <code>*</code></label>
	            <input type="text" name="data[email]" id="email" class="form-control" mandatory="yes" value="<?php echo $data['username']; ?>">
	          </div>
	        </div><!-- col-sm-4 -->
	      </div><!-- row -->
	      
	      <div class="row">
	        <div class="col-sm-4">
	          <div class="form-group">
	            <label class="control-label">Telepon</label>
	            <input type="text" name="data[telepon]" id="telepon" class="form-control" value="<?php echo $data['username']; ?>">
	          </div>
	        </div><!-- col-sm-4 -->
	        <div class="col-sm-4">
	          <div class="form-group">
	            <label class="control-label">Status <code>*</code></label>
	            <select class="form-control" name="data[status]" id="status_user" mandatory="yes">
	            	<option value=""></option>
	            	<option value="1">ACTIVE</option>
	            	<option value="0">NON ACTIVE</option>
	            </select>
	          </div>
	        </div><!-- col-sm-4 -->
	        <div class="col-sm-4">
	          <div class="form-group">
	            <label class="control-label">Role <code>*</code></label>
	            <select class="form-control" name="data[user_role]" id="role" mandatory="yes">
	            	<option value=""></option>
	            	<?php 
	            		foreach ($role as $data) {
	            			echo '<option value="'.$data['code'].'">'.$data['description'].'</option>';
	            		}
	            	?>
	            </select>
	          </div>
	        </div><!-- col-sm-4 -->
	      </div><!-- row -->
	      <div class="row">
	        <div class="col-sm-12">
	          <div class="form-group">
	            <label class="control-label">Alamat</label>
	            <textarea class="form-control" name="data[alamat]" id="alamat"><?php echo $data['alamat']; ?></textarea>
	          </div>
	        </div><!-- col-sm-12 -->
	      </div>
	    </div><!-- panel-body -->
	    <div class="panel-footer">
	      <button class="btn btn-primary btn-save" type="submit">Save</button>
	    </div>
	   </form>
  </div>
</div>