<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_home extends CI_Model {
	
	public function __construct(){
		parent::__construct();
	}
	
	function signin($uid_, $pwd_){
		$query="SELECT a.id, a.username, a.nama, a.alamat, a.telepon, a.email, a.status, a.user_role, b.uraian, a.password
				FROM tm_user a 
					LEFT JOIN tm_role b ON a.user_role = b.kode_role
				WHERE a.username = ".$this->db->escape($uid_);
		$data = $this->db->query($query);
		if($data->num_rows() > 0) {
			$hash = $data->row();
			if(password_verify($pwd_, $hash->password)) {
				if($hash->status == '0') {
					return 3;
				} else {
					foreach($data->result_array() as $row){
						$datses['LOGGED'] = true;
						$datses['IP'] = $_SERVER['REMOTE_ADDR'];
						$datses['ID'] = $row['id'];
						$datses['USERNAME'] = $row['username'];
						$datses['NAMA'] = $row['nama'];
						$datses['ALAMAT'] = $row['alamat'];
						$datses['TELEPON'] = $row['telepon'];
						$datses['EMAIL'] = $row['email'];
						$datses['STATUS'] = $row['status'];
						$datses['USER_ROLE'] = $row['user_role'];
						$datses['URAIAN_ROLE'] = $row['uraian'];
						$datses['PASSWORD'] = $pwd_;
					}
					date_default_timezone_set('Asia/Jakarta');
					$this->session->set_userdata($datses);
					return 1;
				}
			} else {
				return 2;
			}
		}else{
			return 0;
		}
	}
}