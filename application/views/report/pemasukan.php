<div class="panel panel-default">
	<div class="panel-heading">
	  <div class="panel-btns">
	    <a href="#" class="minimize">−</a>
	  </div>
	  <h4 class="panel-title">Laporan Pemasukan Barang Perdokumen Pabean</h4>
	  <p>List data yang ditampilkan adalah data pemasukan yang terjadi di bulan berjalan. Cari berdasarkan tanggal untuk mencari data lainnya.</p>
	</div>
	<div class="panel-body">
	  <form class="form-inline" method="post" action="<?php echo site_url('report/pemasukan'); ?>" onSubmit="view_report('frm_laporan'); return false;" id="frm_laporan" name="frm_laporan" autocomplete="off">
	    <div class="form-group">
	      <label class="sr-only" for="tgl-awal">Tanggal Awal</label>
	      <input type="text" class="form-control date" id="tgl-awal" name="tgl_awal" placeholder="Tanggal Awal">
	    </div>
	    <div class="form-group">
	      <label class="sr-only" for="tgl-akhir">Tanggal Akhir</label>
	      <input type="text" class="form-control date" id="tgl-akhir" name="tgl_akhir" placeholder="Tanggal Akhir">
	    </div>
	    <div class="form-group">
	    	<label class="sr-only" for="kd_dok">Kode Dokuumen</label>
	    	<?php echo form_dropdown('kd_dok', $kd_dok, "", 'id="kd_dok" class="from-control mb30" style="width: 100px;"'); ?>
	    </div>
	    <button type="submit" class="btn btn-primary">Search</button>
	    <button type="reset" class="btn btn-default">Reset</button>
		  <div class="table-responsive" style="padding-top: 10px;">
			    <div class="btn-group">
			        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
			            Action <span class="caret"></span>
			        </button>
			        <ul class="dropdown-menu" role="menu">
			            <li><a href="javascript:void(0);" onClick="print_report('pemasukan','pdf')">Export to PDF</a></li>
			            <li><a href="javascript:void(0);" onClick="print_report('pemasukan','xls')">Export to XLS</a></li>
			        </ul>
			    </div>
				<table class="table table-bordered mb30 data-table-report" width="100%" url="<?php echo site_url('report/pemasukan'); ?>" style="font-size: 10px;">
					<thead>
						<tr>
							<th width="2%" style="text-align:center !important;" rowspan="2">#</th>
							<th width="8%" style="text-align:center !important;" rowspan="2">Jenis Dok.</th>
							<th width="5%" style="text-align:center !important;" rowspan="2">Nomor Aju</th>
							<th width="12%" style="text-align:center !important;" colspan="2">Dok. Pabean</th>
							<th width="12%" style="text-align:center !important;" colspan="2">Dok. Penerimaan</th>
							<th width="10%" style="text-align:center !important;" rowspan="2">Pemasok/Pengirim</th>
							<th width="10%" style="text-align:center !important;" rowspan="2">Kode Barang</th>
							<th width="31%" style="text-align:center !important;" rowspan="2">Nama Barang</th>
							<th width="5%" style="text-align:center !important;" rowspan="2">Satuan</th>
							<th width="8%" style="text-align:center !important;" rowspan="2">Jumlah</th>
							<th width="8%" style="text-align:center !important;" rowspan="2">Nilai Barang</th>
						</tr>
						<tr>
							<th>No</th>
							<th>Tgl</th>
							<th>No</th>
							<th>Tgl</th>
						</tr>
					</thead>
				</table>
			</div><!-- table-responsive -->
	  	</form>
	</div><!-- panel-body -->
</div>