<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_report extends CI_Model {
	
	public function __construct(){
		parent::__construct();
	}

	function inout($type, $aColumns, $sLimit) {
		$param = $this->input->post('form');
		if(count($param) > 0) {
			for($i=0; $i < count($param); $i++) {
				$search[$param[$i]['name']] = $param[$i]['value'];
			}
		}
		$where = "";
		if($type == "IN") {
			$where .= "WHERE a.tipe = 'GATE-IN'";
		} elseif($type == "OUT") {
			$where .= "WHERE a.tipe = 'GATE-OUT'";
		}
		if($search['tgl_awal'] != "" && $search['tgl_akhir'] != "") {
			$tgl = " AND STR_TO_DATE(a.tgl_realisasi, '%Y-%m-%d')";
			if($search['tgl_awal'] == "on") {
				$tgl = ' AND a.tgl_dok';
			}
			$where .= $tgl." BETWEEN ".$this->db->escape($search['tgl_awal'])." AND ".$this->db->escape($search['tgl_akhir']);
		} else {
			$where .= " AND MONTH(a.tgl_dok) = MONTH(CURRENT_DATE()) AND YEAR(a.tgl_dok) = YEAR(CURRENT_DATE())";
		}
		if($search['kd_dok'] != "" && $search['kd_dok'] != "ALL") {
			$where .= " AND a.kd_dok = ".$this->db->escape($search['kd_dok']);	
		}
		if($search['nomor_aju'] != "") {
			$where .= " AND a.car LIKE '%".$search['nomor_aju']."%'";
		}
		$query = $this->db->query("
			SELECT CONCAT('BC ',a.kd_dok) as kd_dok, a.car, a.no_dok, a.tgl_dok, a.no_dok_internal, a.tgl_dok_internal, b.nm_supplier,
			a.kd_barang, c.nm_brg, a.kd_satuan, a.jml_satuan, FORMAT(a.hrg_barang,2) AS hrg_barang
			FROM tr_inout a INNER JOIN reff_supplier b ON a.kd_supplier = b.kd_supplier
			INNER JOIN tm_barang c ON a.kd_barang = c.kd_brg
			$where
			$sLimit
		");
		return $query;
	}

	function total_inout($type, $sIndexColumn){
		$param = $this->input->post('form');
		if(count($param) > 0) {
			for($i=0; $i < count($param); $i++) {
				$search[$param[$i]['name']] = $param[$i]['value'];
			}
		}

		$where = "";
		if($type == "IN") {
			$where .= "WHERE a.tipe = 'GATE-IN'";
		} elseif($type == "OUT") {
			$where .= "WHERE a.tipe = 'GATE-OUT'";
		}
		if($search['tgl_awal'] != "" && $search['tgl_akhir'] != "") {
			$where .= " AND a.tgl_dok BETWEEN ".$this->db->escape($search['tgl_awal'])." AND ".$this->db->escape($search['tgl_akhir']);
		} else {
			$where .= " AND MONTH(a.tgl_dok) = MONTH(CURRENT_DATE()) AND YEAR(a.tgl_dok) = YEAR(CURRENT_DATE())";
		}
		if($search['kd_dok'] != "" && $search['kd_dok'] != "ALL") {
			$where .= " AND a.kd_dok = ".$this->db->escape($search['kd_dok']);	
		}
		$query = $this->db->query("
			SELECT $sIndexColumn
			FROM tr_inout a INNER JOIN reff_supplier b ON a.kd_supplier = b.kd_supplier
			INNER JOIN tm_barang c ON a.kd_barang = c.kd_brg
			$where
		");
		return $query;
	}

	function get_data($type) {
		$func = get_instance();
        $func->load->model("m_main", "main", true);
		if($type == "dokumen_pemasukan" || $type == "dokumen_pengeluaran") {
			$where = "";
			if($type == "dokumen_pemasukan") {
				$where = "AND reff_code IN('ALL','23','262','27','40')";
			} else {
				$where = "AND reff_code IN('ALL','25','261','27','41','30')";
			}
			$sql = "SELECT reff_code, reff_description 
					FROM reff_table 
					WHERE reff_type = 'DOK_PABEAN' ".$where;
			$return = $func->main->get_combobox($sql,"reff_code","reff_description",TRUE);
		} elseif($type == "pemasukan" || $type == "pengeluaran") {
			$tgl_awal = $this->input->post('tgl_awal');
			$tgl_akhir = $this->input->post('tgl_akhir');
			$kd_dok = $this->input->post('kd_dok');

			$where = "";
			if($type == "pemasukan") {
				$where .= "WHERE a.tipe = 'GATE-IN'";
			} elseif($type == "pengeluaran") {
				$where .= "WHERE a.tipe = 'GATE-OUT'";
			}
			if($tgl_awal != "" && $tgl_akhir != "") {
				$where .= " AND a.tgl_dok BETWEEN ".$this->db->escape($tgl_awal)." AND ".$this->db->escape($tgl_akhir);
			} else {
				$where .= " AND MONTH(a.tgl_dok) = MONTH(CURRENT_DATE()) AND YEAR(a.tgl_dok) = YEAR(CURRENT_DATE())";
			}
			if($kd_dok != "") {
				$where .= " AND a.kd_dok = ".$this->db->escape($kd_dok);	
			}
			
			$sql = "SELECT CONCAT('BC ',a.kd_dok) as kd_dok, a.car, a.no_dok, a.tgl_dok, a.no_dok_internal, a.tgl_dok_internal, b.nm_supplier,
					a.kd_barang, c.nm_brg, a.kd_satuan, a.jml_satuan, a.hrg_barang
					FROM tr_inout a INNER JOIN reff_supplier b ON a.kd_supplier = b.kd_supplier
					INNER JOIN tm_barang c ON a.kd_barang = c.kd_brg ".$where;
			$return = $this->db->query($sql)->result_array();
		}
		return $return;
	}

	function wip($aColumns, $sLimit) {
		$param = $this->input->post('form');
		if(count($param) > 0) {
			for($i=0; $i < count($param); $i++) {
				$search[$param[$i]['name']] = $param[$i]['value'];
			}
		}
		$where = "";
		if($search['tgl_awal'] != "" && $search['tgl_akhir'] != "") {
			$where .= " AND a.tgl_realisasi BETWEEN ".$this->db->escape($search['tgl_awal'])." AND ".$this->db->escape($search['tgl_akhir']);
		} else {
			$where .= " AND MONTH(a.tgl_realisasi) = MONTH(CURRENT_DATE()) AND YEAR(a.tgl_realisasi) = YEAR(CURRENT_DATE())";
		}

		$query = $this->db->query("
			SELECT a.no_proses, a.kd_barang, b.nm_brg, a.kd_satuan, a.jml_satuan, a.keterangan
			FROM tr_inout a INNER JOIN tm_barang b ON a.kd_barang = b.kd_brg AND a.jns_barang = b.jns_brg
			WHERE a.jns_barang IN('1','2','10')
			AND LOWER(a.jns_proses) IN ('masuk','proses_wip')
			AND a.flag_proses = '0'
			$where
			$sLimit
		");
		return $query;
	}

	function total_wip($sIndexColumn){
		$param = $this->input->post('form');
		if(count($param) > 0) {
			for($i=0; $i < count($param); $i++) {
				$search[$param[$i]['name']] = $param[$i]['value'];
			}
		}

		$where = "";
		if($search['tgl_awal'] != "" && $search['tgl_akhir'] != "") {
			$where .= " AND a.tgl_realisasi BETWEEN ".$this->db->escape($search['tgl_awal'])." AND ".$this->db->escape($search['tgl_akhir']);
		} else {
			$where .= " AND MONTH(a.tgl_realisasi) = MONTH(CURRENT_DATE()) AND YEAR(a.tgl_realisasi) = YEAR(CURRENT_DATE())";
		}

		$query = $this->db->query("
			SELECT $sIndexColumn
			FROM tr_inout a INNER JOIN tm_barang b ON a.kd_barang = b.kd_brg AND a.jns_barang = b.jns_brg
			WHERE a.jns_barang IN('1','2','10')
			AND LOWER(a.jns_proses) IN ('masuk','proses_wip')
			AND a.flag_proses = '0'
			$where
		");
		return $query;
	}

	function mutasi($tipe, $tgl_awal, $tgl_akhir, $all, $kd_barang) {
		if (in_array($tipe, array("mutasi_bb", "mutasi_hp", "mutasi_bs", "mutasi_ms","mutasi_bp"))) {
            switch ($tipe) {
                case "mutasi_bb":
                    $jns_brg = " AND a.jns_barang = '1'
								 AND A.tipe IN ('GATE-IN','GATE-OUT','PROCESS_IN','MUSNAH','RUSAK','SCRAP','PROCESS_OUT','MOVE-IN','MOVE-OUT')";
                    break;
				case "mutasi_bp":
                    $jns_brg = " AND a.jns_barang = '2'
								 AND A.tipe IN ('GATE-IN','GATE-OUT','PROCESS_IN','MUSNAH','RUSAK','SCRAP','PROCESS_OUT','MOVE-IN','MOVE-OUT')";
                    break;
                case "mutasi_hp":
                    $jns_brg = " AND A.jns_barang = '6' AND A.tipe IN ('GATE-OUT','PROCESS_OUT','MUSNAH','RUSAK','MOVE-IN','MOVE-OUT')";
                    break;
                case "mutasi_bm":
                    $jns_brg = " AND A.jns_barang = '3' AND A.tipe IN ('GATE-IN','GATE-OUT','MUSNAH','RUSAK','MOVE-IN')";
                    break;
                case "mutasi_pk":
                    $jns_brg = " AND A.jns_barang = '4' AND A.tipe IN ('GATE-IN','GATE-OUT','MUSNAH','RUSAK','MOVE-IN')";
                    break;
                case "mutasi_bs":
                    $jns_brg = " AND A.jns_barang = '7' AND A.tipe IN ('GATE-OUT','PROCESS_OUT','SCRAP','MUSNAH','RUSAK','GATE-IN','MOVE-IN')";
                    break;
                case "mutasi_sp":
                    $jns_brg = " AND A.jns_barang = '3A' AND A.tipe IN ('GATE-IN','GATE-OUT','MUSNAH','RUSAK','MOVE-IN')";
                    break;
                case "mutasi_wip":
                    $jns_brg = " AND A.jns_barang = '10' AND A.tipe IN ('GATE-IN','GATE-OUT','MUSNAH','RUSAK','MOVE-IN')";
                    break;
            }
            $sql = "SELECT a.kd_barang |, a.jns_barang, b.nm_brg, a.kd_satuan, '' penyesuaian |
                    FROM tr_inout a, tm_barang b
                    WHERE a.kd_barang = b.kd_brg 
                    AND a.jns_barang = b.jns_brg
					AND DATE_FORMAT(a.tgl_realisasi,'%Y-%m-%d') BETWEEN ".$this->db->escape($tgl_awal)." AND ".$this->db->escape($tgl_akhir);
            $sql .= $jns_brg;
            if($kd_barang) {
            	$sql .= " AND a.kd_barang = ".$this->db->escape($kd_barang);
            }

			$sql .= " GROUP BY a.kd_barang, a.jns_barang";
            if (!$all){
                $sql .= " ORDER BY A.kd_barang, A.jns_barang";
            }				 
			return $sql;	
        }
	}

	function get_tgl_stock($tglAkhir) {
        $ARRTGLSTOCK = "";
        $sql = "SELECT DATE_FORMAT(tgl_stock, '%Y-%m-%d') as tgl_stock
				FROM tm_stockopname
				WHERE DATE_FORMAT(tgl_stock, '%Y-%m-%d') = '" . $tglAkhir . "' 
				ORDER BY tgl_stock DESC limit 1";
        $data = $this->db->query($sql)->row();
        $ARRTGLSTOCK = $data->tgl_stock;
        return $ARRTGLSTOCK;
    }
}