<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_inventory extends CI_Model {
	
	public function __construct(){
		parent::__construct();
	}

	function barang($aColumns, $sWhere, $sOrder, $sLimit) {
		$query = $this->db->query("
			SELECT a.kd_brg, b.uraian as uraian_barang, a.nm_brg, UPPER(c.uraian) as uraian_satuan, a.stock_akhir
			FROM tm_barang a INNER JOIN reff_jns_barang b ON a.jns_brg = b.kd_jns
			INNER JOIN reff_satuan c ON a.kd_satuan = c.kd_satuan 
			$sWhere
			$sOrder
			$sLimit
		");
		return $query;
	}

	function total_barang($sIndexColumn, $sWhere, $sOrder){
		$query = $this->db->query("
			SELECT $sIndexColumn
			FROM tm_barang a INNER JOIN reff_jns_barang b ON a.jns_brg = b.kd_jns
			INNER JOIN reff_satuan c ON a.kd_satuan = c.kd_satuan 
			$sWhere
			$sOrder
		");
		return $query;
	}

	function stockopname($aColumns, $sWhere, $sOrder, $sLimit) {
		$query = $this->db->query("
			SELECT DATE_FORMAT(tgl_stock,'%d %M %Y %H:%i:%s') as tgl_stock, COUNT(jml_stockopname) as jml_stock, tgl_stock as tanggal_stockopname
			FROM tm_stockopname
			$sWhere
			GROUP BY tgl_stock
			$sOrder
			$sLimit
		");
		return $query;
	}

	function total_stockopname($sIndexColumn, $sWhere, $sOrder){
		$query = $this->db->query("
			SELECT DATE_FORMAT(tgl_stock,'%d %M %Y %H:%i:%s') as tgl_stock, COUNT(jml_stockopname) as jml_stock, tgl_stock as tanggal_stockopname
			FROM tm_stockopname
			$sWhere
			GROUP BY tgl_stock
			$sOrder
		");
		return $query;
	}

	function get_data($type) {
		$this->load->library('Azdgcrypt');
		if($type == "stockopname") {
			$tgl_stock = $this->azdgcrypt->decrypt($this->input->post('id'));
			$query = "SELECT a.kd_brg, b.nm_brg, b.kd_satuan, c.uraian as jenis_barang, a.jml_stockopname
					  FROM tm_stockopname a 
					  INNER JOIN tm_barang b ON a.kd_brg = b.kd_brg and a.jns_brg = b.jns_brg
					  INNER JOIN reff_jns_barang c on c.kd_jns = a.jns_brg
					  WHERE a.tgl_stock = ".$this->db->escape($tgl_stock);
		}
		return $this->db->query($query)->result_array();
	}
}