<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Autocomplete extends CI_Controller{
	
	function index(){}
	
	function barang(){
		$key = strtolower($_REQUEST['q']);
		$data = "SELECT A.KD_BRG, A.JNS_BRG, A.NM_BRG, A.KD_SATUAN, B.URAIAN AS UR_JENIS
				FROM tm_barang A INNER JOIN reff_jns_barang B
				ON A.JNS_BRG = B.KD_JNS
				WHERE LOWER(A.KD_BRG) LIKE '%".$key."%'
				LIMIT 10";
		$res = $this->db->query($data);
		if($res->num_rows() > 0){
			foreach($res->result_array() as $row){
				echo "<b>".strtoupper($row['KD_BRG'])."</b><br>".strtoupper($row['NM_BRG'])."|".strtoupper($row['KD_BRG'])."|".strtoupper($row['NM_BRG'])."|".strtoupper($row['JNS_BRG'])."|".strtoupper($row['KD_SATUAN'])."|".strtoupper($row['UR_JENIS'])."\n";
			}
		}
		
	}
}