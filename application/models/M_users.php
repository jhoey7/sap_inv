<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_users extends CI_Model {
	
	public function __construct(){
		parent::__construct();
	}

	function user($aColumns, $sWhere, $sOrder, $sLimit) {
		$query = $this->db->query("
			SELECT a.username, a.nama, a.alamat, a.telepon, a.email, b.reff_description as status, c.uraian as user_role, 
			CONCAT('<div class=\"table-action\"><a href=\"javascript:void(0);\" onClick=(\'".$this->azdgcrypt->crypt(',a.id,')."\')><i class=\"fa fa-pencil\"></i></a><a href=\"#\" class=\"delete-row\"><i class=\"fa fa-trash-o\"></i></a></div>') as action
			FROM tm_user a INNER JOIN reff_table b ON a.status = b.reff_code AND b.reff_type = 'USER_STATUS'
			INNER JOIN tm_role c ON a.user_role = c.kode_role
			$sWhere
			$sOrder
			$sLimit
		");
		return $query;
	}

	function total_user($sIndexColumn, $sWhere, $sOrder){
		$query = $this->db->query("
			SELECT $sIndexColumn
			FROM tm_user a INNER JOIN reff_table b ON a.status = b.reff_code AND b.reff_type = 'USER_STATUS'
			INNER JOIN tm_role c ON a.user_role = c.kode_role
			$sWhere
			$sOrder
		");
		return $query;
	}

	function role($aColumns, $sWhere, $sOrder, $sLimit) {
		$query = $this->db->query("
			SELECT kode_role, uraian
			FROM tm_role
			$sWhere
			$sOrder
			$sLimit
		");
		return $query;
	}

	function total_role($sIndexColumn, $sWhere, $sOrder){
		$query = $this->db->query("
			SELECT $sIndexColumn
			FROM tm_role
			$sWhere
			$sOrder
		");
		return $query;
	}

	function get_data($type) {
		$func = get_instance();
        $func->load->model("m_main", "main", true);
		if($type == "user_role") {
			$sql = "SELECT kode_role as code, uraian as description
					FROM tm_role";
			$return = $this->db->query($sql)->result_array();
		}
		return $return;
	}

	function execute($type, $action) {
		if($action == "save") {
			foreach ($this->input->post('data') as $key => $value) {
				$val[$key] = $value;
			}
			if($type == "user") {
				$sql = "SELECT username FROM tm_user WHERE username = ".$this->db->escape($val['username']);
				$arr_result = $this->db->query($sql)->result_array();
				if(count($arr_result) > 0) {
					$return = array("status"=>"error","message"=>"Username Sudah  Digunakan.","titlte"=>"Error !!!");
				} else {
					$val['password'] = password_hash('123abc', PASSWORD_BCRYPT);
					$ecex = $this->db->insert("tm_user", $val);
					$return = array("status"=>"success","message"=>"User Berhasil Ditambahkan.","titlte"=>"Success !!!","url"=>site_url('users/user'));
				}
			}
		}
		return $return;
	}
}