<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_pemusnahan extends CI_Model {
	
	public function __construct(){
		parent::__construct();
	}

	function pemusnahan($aColumns, $sWhere, $sOrder, $sLimit) {
		$query = $this->db->query("
			SELECT a.no_surat, DATE_FORMAT(a.tgl_surat, '%d %m %Y') as tgl_surat, a.kd_kantor_tujuan, a.perihal, a.nm_pemohon, 
			a.id_pemohon, a.no_surat_tugas
			FROM tr_pemusnahan_hdr a  
			$sWhere
			$sOrder
			$sLimit
		");
		return $query;
	}

	function total_pemusnahan($sIndexColumn, $sWhere, $sOrder){
		$query = $this->db->query("
			SELECT $sIndexColumn
			FROM tr_pemusnahan_hdr a  
			$sWhere
			$sOrder
		");
		return $query;
	}
}