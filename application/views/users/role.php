<div class="panel panel-default">
	<div class="panel-heading">
	  <div class="panel-btns">
	    <a href="#" class="minimize">&minus;</a>
	  </div><!-- panel-btns -->
	  <h3 class="panel-title">Data User Role</h3>
	  <p>Menampilkan seluruh data user role yang terdapat di Users Role.</p>
	</div>
	<div class="panel-body">
		<div class="table-responsive">
			<table class="table table-hover mb30 data-table" width="100%" url="<?php echo site_url('users/role'); ?>" url-add="<?php echo site_url('users/add_role'); ?>">
				<thead>
					<tr>
						<th width="2%">#</th>
						<th width="20%">Kode Role</th>
						<th width="78%">Uraian Role</th>
					</tr>
				</thead>
			</table>
		</div><!-- table-responsive -->
	</div>
</div>