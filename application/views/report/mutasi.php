	<div class="panel panel-default">
	<div class="panel-heading">
	  <div class="panel-btns">
	    <a href="#" class="minimize">−</a>
	  </div>
	  <h4 class="panel-title"><?php echo $title; ?></h4>
	  <p>Menampilkan <?php echo $title; ?>.</p>
	</div>
	<div class="panel-body">
	  <form class="form-inline" method="post" action="<?php echo site_url('report/proses/'.$type); ?>" onSubmit="mutasi('frm_laporan'); return false;" id="frm_laporan" name="frm_laporan" autocomplete="off">
	    <div class="form-group">
	      <label class="sr-only" for="tgl_awal">Tanggal Awal</label>
	      <input type="text" class="form-control date" id="tgl_awal" name="tgl_awal" placeholder="Tanggal Awal">
	    </div>
	    <div class="form-group">
	      <label class="sr-only" for="tgl_akhir">Tanggal Akhir</label>
	      <input type="text" class="form-control date" id="tgl_akhir" name="tgl_akhir" placeholder="Tanggal Akhir">
	    </div>
	    <div class="form-group">
	      <label class="sr-only" for="kd_barang">Kode Barang</label>
	      <input type="text" class="form-control" id="kd_barang" name="kd_barang" placeholder="Kode Barang">
	    </div>
		<div class="ckbox checkbox ckbox-default">
			<input type="checkbox" id="all" name="all">
			<label for="all">Show All</label>
		</div>
	    <button type="submit" class="btn btn-info btn-search">Search</button>
	    <button type="reset" class="btn btn-default">Reset</button>
	    <div class="view" style="padding-top: 5px;"></div>
	  </form>
	</div><!-- panel-body -->
</div>