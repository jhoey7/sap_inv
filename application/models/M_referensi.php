<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_referensi extends CI_Model {
	
	public function __construct(){
		parent::__construct();
	}

	function supplier($aColumns, $sWhere, $sOrder, $sLimit) {
		$query = $this->db->query("
			SELECT a.kd_supplier, a.nm_supplier, a.almt_supplier, b.uraian_negara, a.npwp_supplier
			FROM reff_supplier a INNER JOIN reff_negara b on a.kd_negara = b.kd_negara
			$sWhere
			$sOrder
			$sLimit
		");
		return $query;
	}

	function total_supplier($sIndexColumn, $sWhere, $sOrder){
		$query = $this->db->query("
			SELECT $sIndexColumn
			FROM reff_supplier a INNER JOIN reff_negara b on a.kd_negara = b.kd_negara
			$sWhere
			$sOrder
		");
		return $query;
	}

	function satuan($aColumns, $sWhere, $sOrder, $sLimit) {
		$query = $this->db->query("
			SELECT kd_satuan, UPPER(uraian) as uraian
			FROM reff_satuan
			$sWhere
			$sOrder
			$sLimit
		");
		return $query;
	}

	function total_satuan($sIndexColumn, $sWhere, $sOrder){
		$query = $this->db->query("
			SELECT $sIndexColumn
			FROM reff_satuan
			$sWhere
			$sOrder
		");
		return $query;
	}

	function negara($aColumns, $sWhere, $sOrder, $sLimit) {
		$query = $this->db->query("
			SELECT kd_negara, uraian_negara
			FROM reff_negara
			$sWhere
			$sOrder
			$sLimit
		");
		return $query;
	}

	function total_negara($sIndexColumn, $sWhere, $sOrder){
		$query = $this->db->query("
			SELECT $sIndexColumn
			FROM reff_negara
			$sWhere
			$sOrder
		");
		return $query;
	}
}