<div class="panel panel-default">
	<div class="panel-heading">
	  <div class="panel-btns">
	    <a href="#" class="minimize">&minus;</a>
	  </div><!-- panel-btns -->
	  <h3 class="panel-title">Data Barang</h3>
	  <p>Menampilkan seluruh data barang yang terdapat di Inventory Data Barang.</p>
	</div>
	<div class="panel-body">
		<div class="table-responsive">
			<table class="table table-hover mb30 data-table" width="100%" url="<?php echo site_url('inventory/barang'); ?>" style="font-size: 12px;">
				<thead>
					<tr>
						<th width="2%">#</th>
						<th width="15%">Kode Barang</th>
						<th width="20%">Jenis Barang</th>
						<th width="35%">Nama Barang</th>
						<th width="15%">Satuan Barang</th>
						<th width="13%">Stock Barang</th>
					</tr>
				</thead>
			</table>
		</div><!-- table-responsive -->
	</div>
</div>