<div class="panel panel-default">
	<div class="panel-heading">
	  <div class="panel-btns">
	    <a href="#" class="minimize">&minus;</a>
	  </div><!-- panel-btns -->
	  <h3 class="panel-title">Data User</h3>
	  <p>Menampilkan seluruh data User yang terdapat di Data User.</p>
	</div>
	<div class="panel-body">
		<div class="table-responsive">
			<table class="table table-hover mb30 data-table table-user" width="100%" url="<?php echo site_url('users/user'); ?>" url-add="<?php echo site_url('users/user/add'); ?>">
				<thead>
					<tr>
						<th width="2%">#</th>
						<th width="10%">Username</th>
						<th width="10%">Nama</th>
						<th width="18%">Alamat</th>
						<th width="10%">Telepon</th>
						<th width="15%">Email</th>
						<th width="10%">Status</th>
						<th width="10%">Role</th>
						<th width="10%" class="action"></th>
					</tr>
				</thead>
			</table>
		</div><!-- table-responsive -->
	</div>
</div>