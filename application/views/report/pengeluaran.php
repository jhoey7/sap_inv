<div class="panel panel-default">
	<div class="panel-heading">
	  <div class="panel-btns">
	    <a href="#" class="minimize">−</a>
	  </div>
	  <h4 class="panel-title">Laporan Pengeluaran Barang Perdokumen Pabean</h4>
	  <p>List data yang ditampilkan adalah yang pengeluaran yang terjadi di bulan berjalan. Cari berdasarkan tanggal untuk mencari data lainnya.</p>
	</div>
	<div class="panel-body">
	  	<form method="post" action="<?php echo site_url('report/pengeluaran'); ?>" onSubmit="view_report('frm_laporan'); return false;" id="frm_laporan" name="frm_laporan" autocomplete="off">
		    <div class="row row-pad-5">
				<div class="col-lg-2">
					<div class="ckbox checkbox ckbox-success">
						<input type="checkbox" id="all" name="all">
						<label for="all">Search By Document</label>
					</div>
				</div>
				<div class="col-lg-2">
					<input type="text" class="form-control date" id="tgl-awal" name="tgl_awal" placeholder="Tanggal Awal">
				</div>
				<div class="col-lg-2">
					<input type="text" class="form-control date" id="tgl-akhir" name="tgl_akhir" placeholder="Tanggal Akhir">
				</div>
				<div class="col-lg-3">
					<input type="text" class="form-control" id="nomor_aju" name="nomor_aju" placeholder="Nomor Aju">
				</div>
				<div class="col-lg-2">
					<?php echo form_dropdown('kd_dok', $kd_dok, "", 'id="kd_dok" class="from-control" style="width: 120px;'); ?>
				</div>
			</div>
		    <div class="btn-group">
			    <button type="submit" class="btn btn-default"><i class="fa fa-search"></i>&nbsp;Search</button>
			    <button type="reset" class="btn btn-default"><i class="fa fa-undo"></i>&nbsp;Reset</button>
			    <div class="btn-group">
			        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
			            Action <span class="caret"></span>
			        </button>
			        <ul class="dropdown-menu" role="menu">
			            <li><a href="javascript:void(0);" onClick="print_report('pemasukan','pdf')">Export to PDF</a></li>
			            <li><a href="javascript:void(0);" onClick="print_report('pemasukan','xls')">Export to XLS</a></li>
			        </ul>
			    </div>
		    </div>
			<div class="table-responsive" style="padding-top: 10px;">
				<table class="table table-bordered mb30 data-table-report" width="100%" url="<?php echo site_url('report/pengeluaran'); ?>" style="font-size: 10px;">
					<thead>
						<tr>
							<th width="2%" style="text-align:center !important;" rowspan="2">#</th>
							<th width="8%" style="text-align:center !important;" rowspan="2">Jenis Dok.</th>
							<th width="5%" style="text-align:center !important;" rowspan="2">Aju</th>
							<th width="10%" style="text-align:center !important;" colspan="2">Dok. Pabean</th>
							<th width="12%" style="text-align:center !important;" colspan="2">Dok. Pengeluaran</th>
							<th width="10%" style="text-align:center !important;" rowspan="2">Pembeli/Penerima</th>
							<th width="10%" style="text-align:center !important;" rowspan="2">Kode Barang</th>
							<th width="22%" style="text-align:center !important;" rowspan="2">Nama Barang</th>
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