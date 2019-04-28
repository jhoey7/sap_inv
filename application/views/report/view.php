<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');
error_reporting(E_ERROR);

function getKeterangan($jml) {
    if ((is_array($jml) && empty($jml)) || strlen($jml) === 0) {
        return "";
    } else {
        if ($jml < 0) {
            return "SELISIH KURANG";
        } elseif ($jml > 0) {
            return "SELISIH LEBIH";
        } elseif ($jml == 0) {
            return "SESUAI";
        }
    }
} 
if (in_array($tipe, array("mutasi_bb", "mutasi_hp", "mutasi_bs", "mutasi_pk","mutasi_bp","mutasi_bm","mutasi_sp"))) { ?>
    <div class="btn-group">
        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
            Action <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu">
            <li><a href="javascript:void(0);" onClick="print_report('<?php echo $tipe; ?>','pdf')">Export to PDF</a></li>
            <li><a href="javascript:void(0);" onClick="print_report('<?php echo $tipe; ?>','xls')">Export to XLS</a></li>
        </ul>
    </div>
    <table class="table table-bordered mb30" width="100%" style="font-size: 12px;">
        <thead>
            <tr>
                <th rowspan="2" align="center" width="1%">No</th>
                <th rowspan="2" width="7%">Kode&nbsp;Barang</th>
                <th rowspan="2" width="22%">Nama&nbsp;Barang</th>
                <th rowspan="2" width="4%">Satuan</th>
                <th width="8%">Saldo&nbsp;Awal</th>
                <th rowspan="2" width="8%">Pemasukan</th>
                <th rowspan="2" width="8%">Pengeluaran</th>
                <th rowspan="2" width="8%">Penyesuaian</th>
                <th width="8%">Saldo&nbsp;Akhir</th>
                <th width="8%">Stock&nbsp;Opname</th>
                <th rowspan="2" width="8%">Selisih</th>
                <th rowspan="2" width="10%">Keterangan</th>
            </tr>
            <tr>
                <th><?php echo date_format(date_create($tgl_awal), 'd-m-Y'); ?><input type="hidden" name="tgl_awal" value="<?php echo $tgl_awal; ?>" readonly="true" /></th>
                <th><?php echo date_format(date_create($tgl_akhir), 'd-m-Y'); ?><input type="hidden" name="tgl_akhir" value="<?php echo $tgl_akhir; ?>" readonly="true" /></th>
                <th style="text-align: center;"><?php echo $tgl_stock ? date_format(date_create($tgl_stock), 'd-m-Y') : "-"; ?><input type="hidden" name="PERIODE_STOCK_OPNAME" value="<?php echo $tgl_stock; ?>" readonly="true" /></th>
            </tr>
        </thead>
        <tbody>
            <?php $banyakData = count($resultData); ?>
            <input type="hidden" name="BANYAKDATA" value="<?php echo $banyakData; ?>" />
            <?php
            if ($banyakData > 0) {
                $SaldoAwl = 0;
                foreach ($resultData as $listData) {
                    #KOLOM PEMASUKAN
                    $sqlGetMasuk = "SELECT REPLACE(FORMAT(SUM(jml_satuan),2),',','') AS PEMASUKAN
    					   FROM tr_inout
    					   WHERE STR_TO_DATE(tgl_realisasi,'%Y-%m-%d') BETWEEN '".$tgl_awal."' AND '".$tgl_akhir."' 
    					   AND kd_barang ='".$listData['kd_barang']."' 
    					   AND jns_barang ='".$listData['jns_barang']."'
    					   AND TIPE IN ('GATE-IN','PROCESS_OUT','SCRAP','MOVE-IN')";
                    $sqlGetMasuk .= " GROUP BY kd_barang, jns_barang";

                    $MASUK = $this->db->query($sqlGetMasuk)->row();
                    $MASUK = $MASUK->PEMASUKAN;

                    #KOLOM SALDO AWAL
                    $tglAwalInOut = date('Y-m-d', strtotime($tgl_stock . "+1 day"));
                    $tglAkhirInOut = date('Y-m-d', strtotime($tgl_awal . "-1 day"));
                    $sqlGetSaldoStock = "SELECT jml_stockopname AS 'JUMLAH_STOCK', DATE_FORMAT(tgl_stock, '%Y-%m-%d') AS TANGGAL_STOCK
    								FROM tm_stockopname
    								WHERE DATE_FORMAT(tgl_stock, '%Y-%m-%d') <= '".$tgl_awal."'
    								AND kd_brg ='".$listData['kd_barang']."' 
    								AND jns_brg ='".$listData['jns_barang']."'";
                    $sqlGetSaldoStock .= " ORDER BY tgl_stock DESC LIMIT 1";

                    $RSSTOCKOPNAME = $this->db->query($sqlGetSaldoStock)->row();
                    $GETSALDOAWALSTOCK = $RSSTOCKOPNAME->JUMLAH_STOCK;

                    $TGSTK = "";
                    if ($RSSTOCKOPNAME->TANGGAL_STOCK != "") {
                        $TGSTK = " BETWEEN '" . date('Y-m-d', strtotime($RSSTOCKOPNAME->TANGGAL_STOCK.'+1 day')) . "' AND '" . $tglAkhirInOut . "'";
                    } else {
                        $TGSTK = " <= '" . $tglAkhirInOut . "'";
                    }

                    $sqlGetSaldoIn = "SELECT SUM(jml_satuan) AS 'AWAL_SALDO_IN', STR_TO_DATE(MAX(tgl_realisasi),'%Y-%m-%d') 'TGL_IN'
    							  FROM tr_inout
    							  WHERE STR_TO_DATE(tgl_realisasi,'%Y-%m-%d') ".$TGSTK."
    							  AND kd_barang = '".$listData['kd_barang']."' 
                                  AND jns_barang = '".$listData['jns_barang']."'
    							  AND tipe IN ('GATE-IN','PROCESS_OUT','SCRAP','MOVE-IN')";
                    $sqlGetSaldoIn .= " GROUP BY kd_barang, jns_barang";

                    $sqlGetSaldoOut = "SELECT SUM(jml_satuan) AS 'AWAL_SALDO_OUT', STR_TO_DATE(MAX(tgl_realisasi),'%Y-%m-%d') 'TGL_OUT'
    							  FROM tr_inout
    							  WHERE STR_TO_DATE(tgl_realisasi,'%Y-%m-%d') ".$TGSTK."
    							  AND kd_barang = '".$listData['kd_barang']."' 
                                  AND jns_barang = '".$listData['jns_barang']."'
    							  AND tipe IN ('GATE-OUT','PROCESS_IN','MOVE-OUT','MUSNAH','RUSAK')";
                    $sqlGetSaldoOut .= " GROUP BY kd_barang, jns_barang";

                    $RSGETSALDOAWALIN = $this->db->query($sqlGetSaldoIn)->row();
                    $GETSALDOAWALIN = $RSGETSALDOAWALIN->AWAL_SALDO_IN;

                    $RSGETSALDOAWALOUT = $this->db->query($sqlGetSaldoOut)->row();
                    $GETSALDOAWALOUT = $RSGETSALDOAWALOUT->AWAL_SALDO_OUT;

                    $GETADJUSTMENT = 0;

                    if ($GETSALDOAWALSTOCK == "") {
                        $SALDOAWLGET = $GETSALDOAWALSTOCK + $GETSALDOAWALIN - $GETSALDOAWALOUT + $GETADJUSTMENT;
                    } else {
                        if ($RSSTOCKOPNAME->TANGGAL_STOCK == $tglAkhirInOut) { 
                            $SALDOAWLGET = $GETSALDOAWALSTOCK;
                        } else {
                            if ($RSSTOCKOPNAME->TANGGAL_STOCK == $RSGETSALDOAWALIN->TGL_IN || $RSSTOCKOPNAME->TANGGAL_STOCK == $RSGETSALDOAWALOUT->TGL_OUT) { 
                                $SALDOAWLGET = $GETSALDOAWALSTOCK;
                            } else { 
                                $SALDOAWLGET = $GETSALDOAWALSTOCK + $GETSALDOAWALIN - $GETSALDOAWALOUT + $GETADJUSTMENT;
                            }
                        }
                    }
                    $SALDOAWL = $SALDOAWLGET;

                    #KOLOM PENGELUARAN		  
                    $sqlGetKeluar = "SELECT REPLACE(FORMAT(SUM(jml_satuan),2),',','') AS PENGELUARAN
    					FROM tr_inout
    					WHERE STR_TO_DATE(tgl_realisasi,'%Y-%m-%d') BETWEEN '" . $tgl_awal . "' AND '" . $tgl_akhir . "'
    					AND kd_barang = '".$listData['kd_barang']."' 
                        AND jns_barang = '".$listData['jns_barang']."'
    					AND tipe IN ('GATE-OUT','MUSNAH','RUSAK','PROCESS_IN','MOVE-OUT','MUSNAH','RUSAK')";
                    $sqlGetKeluar .= " GROUP BY kd_barang, jns_barang";
                    
                    $KELUAR = $this->db->query($sqlGetKeluar)->row();
                    $KELUAR = $KELUAR->PENGELUARAN;

                    #KOLOM PENYESUAIAN
                    $PENYESUAIAN = 0;

                    #KOLOM SALDO AKHIR
                    $SALDOAKHR = $SALDOAWL + $MASUK - $KELUAR + $PENYESUAIAN;

                    #KOLOM STOCKOPNAME
                    $sqlGetStock = "SELECT jml_stockopname AS JUMLAH
    							FROM tm_stockopname
    							WHERE DATE_FORMAT(tgl_stock, '%Y-%m-%d') = '".$tgl_stock."' 
    							AND kd_brg = '".$listData['kd_barang']."' 
    							AND jns_brg = '".$listData['jns_barang']."'";
                    $STOCK = $this->db->query($sqlGetStock);
                    if ($STOCK->num_rows() > 0) {
                        $STOCK = $STOCK->row();
                        $STOCK = $STOCK->JUMLAH;
                    } else {
                        $STOCK = "";
                    }

                    #UNTUK MENAMPILKAN SEMUA BARANG BAIK YG DIMUTASI ATAU TIDAK
                    if ($all) {
                        if (!in_array($listData['kd_barang'], $inaray)) {
    						$tglAkhirInOut = date('Y-m-d', strtotime($tgl_awal . "-1 day"));
    						$sqlGetSaldoStock = "SELECT jml_stockopname AS 'JUMLAH_STOCK', DATE_FORMAT(tgl_stock, '%Y-%m-%d') AS TANGGAL_STOCK
    									FROM tm_stockopname
    									WHERE DATE_FORMAT(tgl_stock, '%Y-%m-%d') <= '" . $tgl_awal . "'
    									AND kd_brg ='" . $listData['kd_barang'] . "' 
    									AND jns_brg ='" . $listData['jns_barang'] . "'";
    						$sqlGetSaldoStock .= " ORDER BY tgl_stock DESC LIMIT 1";

    						$RSSTOCKOPNAME = $this->db->query($sqlGetSaldoStock)->row();
    						$GETSALDOAWALSTOCK = $RSSTOCKOPNAME->JUMLAH_STOCK;

    						$TGSTK = "";
    						if ($RSSTOCKOPNAME->TANGGAL_STOCK != "") {
    							$TGSTK = " BETWEEN '" . date('Y-m-d', strtotime($RSSTOCKOPNAME->TANGGAL_STOCK.'+1 day')) . "' AND '" . $tglAkhirInOut . "'";
    						} else {
    							$TGSTK = " <= '" . $tglAkhirInOut . "'";
    						}

    						$sqlGetSaldoIn = "SELECT SUM(jml_satuan) AS 'AWAL_SALDO_IN', STR_TO_DATE(MAX(tgl_realisasi),'%Y-%m-%d') 'TGL_IN'
    									  FROM tr_inout
    									  WHERE STR_TO_DATE(tgl_realisasi,'%Y-%m-%d') " . $TGSTK . "
    									  AND kd_barang ='" . $listData['kd_barang'] . "' 
                                          AND jns_barang ='" . $listData['jns_barang'] . "'
    									  AND tipe IN ('GATE-IN','PROCESS_OUT','SCRAP','MOVE-IN')";
    						$sqlGetSaldoIn .= " GROUP BY kd_barang, jns_barang";

    						$sqlGetSaldoOut = "SELECT SUM(jml_satuan) AS 'AWAL_SALDO_OUT', STR_TO_DATE(MAX(tgl_realisasi),'%Y-%m-%d') 'TGL_OUT'
    									  FROM tr_inout
    									  WHERE STR_TO_DATE(tgl_realisasi,'%Y-%m-%d') " . $TGSTK . "
    									  AND kd_barang ='" . $listData['kd_barang'] . "' 
                                          AND jns_barang ='" . $listData['jns_barang'] . "'
    									  AND tipe IN ('GATE-OUT','PROCESS_IN','MOVE-OUT','MUSNAH','RUSAK')";
                            $sqlGetSaldoOut .= " GROUP BY kd_barang, jns_barang";

    						$RSGETSALDOAWALIN = $this->db->query($sqlGetSaldoIn)->row();
                            $GETSALDOAWALIN = $RSGETSALDOAWALIN->AWAL_SALDO_IN;
                            
    						$RSGETSALDOAWALOUT = $this->db->query($sqlGetSaldoOut)->row();
                            $GETSALDOAWALOUT = $RSGETSALDOAWALOUT->AWAL_SALDO_OUT;

                            $GETADJUSTMENT = 0;

    						if ($GETSALDOAWALSTOCK == "") {
    							$SALDOAWLGET = $GETSALDOAWALSTOCK + $GETSALDOAWALIN - $GETSALDOAWALOUT + $GETADJUSTMENT;
    						} else {
    							if ($RSSTOCKOPNAME->TANGGAL_STOCK == $tglAkhirInOut) { 
    								$SALDOAWLGET = $GETSALDOAWALSTOCK;
    							} else {
    								if ($RSSTOCKOPNAME->TANGGAL_STOCK == $RSGETSALDOAWALIN->TGL_IN || $RSSTOCKOPNAME->TANGGAL_STOCK == $RSGETSALDOAWALOUT->TGL_OUT) {
    									$SALDOAWLGET = $GETSALDOAWALSTOCK;
    								} else { 
    									$SALDOAWLGET = $GETSALDOAWALSTOCK + $GETSALDOAWALIN - $GETSALDOAWALOUT + $GETADJUSTMENT;
    								}
    							}
    						}

                            $sqlGetMasuk = "SELECT REPLACE(FORMAT(SUM(jml_satuan),2),',','') AS PEMASUKAN
    						        FROM tr_inout
    						        WHERE STR_TO_DATE(tgl_realisasi,'%Y-%m-%d') BETWEEN '" . $tgl_awal . "' AND '" . $tgl_akhir . "'
    						        AND kd_barang ='" . $listData['kd_barang'] . "' 
    						        AND jns_barang ='" . $listData['jns_barang'] . "'
    						        AND tipe IN ('GATE-IN','PROCESS_OUT','SCRAP','MOVE-IN')";
                            $sqlGetMasuk .= " GROUP BY kd_barang, jns_barang";

                            $MASUK = $this->db->query($sqlGetMasuk)->row();
                            $MASUK = $MASUK->PEMASUKAN;

                            #KOLOM PENGELUARAN
                            $sqlGetKeluar = "SELECT REPLACE(FORMAT(SUM(jml_satuan),2),',','') AS PENGELUARAN
    							   FROM tr_inout
    							   WHERE STR_TO_DATE(tgl_realisasi,'%Y-%m-%d') BETWEEN '" . $tgl_awal . "' AND '" . $tgl_akhir . "'
    							   AND kd_barang = '" . $listData['kd_barang'] . "' 
                                   AND jns_barang = '" . $listData['jns_barang'] . "'
    							   AND tipe IN ('GATE-OUT','MUSNAH','RUSAK','PROCESS_IN','MOVE-OUT','MUSNAH','RUSAK')";
                            $sqlGetKeluar .= " GROUP BY kd_barang, jns_barang";

                            $KELUAR = $this->db->query($sqlGetKeluar)->row();
                            $KELUAR = $KELUAR->PENGELUARAN;

                            #PENYESUAIAN
                            $PENYESUAIAN = 0;

                            $SALDOAWL = $SALDOAWLGET;
                            $SALDOAKHR = $SALDOAWL + $MASUK - $KELUAR + $PENYESUAIAN;

                            #KOLOM STOCKOPNAME
                            $sqlGetStock = "SELECT jml_stockopname AS JUMLAH
    							FROM tm_stockopname
    							WHERE DATE_FORMAT(tgl_stock,'%Y-%m-%d') = '" . $tgl_stock . "'
    							AND kd_brg = '" . $listData['kd_barang'] . "' 
    							AND jns_brg = '" . $listData['jns_barang'] . "'";
                            $STOCK = $this->db->query($sqlGetStock);
                            if ($STOCK->num_rows() > 0) {
                                $STOCK = $STOCK->row();
                                $STOCK = $STOCK->JUMLAH;
                            } else {
                                $STOCK = "";
                            }
                        }
                    } 

                    #KOLOM SELISIH
                    $SELISIH = "";
                    if ((is_array($STOCK) && empty($STOCK)) || strlen($STOCK) === 0) {
                        $SELISIH = "";
                    } else {
                        $SELISIH = $STOCK - $SALDOAKHR;
                    }

                    if ($SELISIH) {
                        if (number_format($SELISIH, 2) == '-0.00') {
                            $SELISIH = 0;
                        }
                    }

                    if ($SALDOAKHR) {
                        if (number_format($SALDOAKHR, 2) == '-0.00') {
                            $SALDOAKHR = 0;
                        }
                    }

                    if ($SALDOAWL) {
                        if (number_format($SALDOAWL, 2) == '-0.00') {
                            $SALDOAWL = 0;
                        }
                    }
                    ?>
                    <tr>
                        <td align="center"><?= $no; ?></td>
                        <td><?= $listData['kd_barang']; ?></td>
                        <td><?= $listData['nm_brg']; ?></td>
                        <td><?= $listData['kd_satuan']; ?></td>
                        <td><?= number_format($SALDOAWL, 2); ?></td>
                        <td><?= $MASUK ? number_format($MASUK, 2) : 0; ?></td>
                        <td><?= $KELUAR ? number_format($KELUAR, 2) : 0; ?></td>
                        <td><?= number_format($PENYESUAIAN, 2); ?></td>
                        <td><?= number_format($SALDOAKHR, 2); ?></td>
                        <td><?= $STOCK ? number_format($STOCK, 2) : ""; ?></td>
                        <td><?= number_format($SELISIH, 2); ?></td>
                        <td><?= getKeterangan($SELISIH); ?></td>
                    </tr>
                    <?php $no++;
                }
            } else { ?>
                <tr>
                    <td colspan="12" align="center">Nihil</td>
                </tr>
            <?php } echo $PAGING_BOT; ?>
        </tbody>
    </table>
<?php } ?>
