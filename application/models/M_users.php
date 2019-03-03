<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class M_users extends CI_Model {
	
	public function __construct(){
		parent::__construct();
	}

	function user($aColumns, $sWhere, $sOrder, $sLimit) {
		$query = $this->db->query("
			SELECT a.username, a.nama, a.alamat, a.telepon, a.email, b.reff_description as status, c.uraian as user_role, a.id
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

	function get_data($type="", $id="") {
		$func = get_instance();
        $func->load->model("m_main", "main", true);
		if($type == "user_role") {
			$sql = "SELECT kode_role as code, uraian as description
					FROM tm_role";
			$return = $this->db->query($sql)->result_array();
		} elseif($type == "user") {
			$sql = "SELECT id, username, nama, alamat, telepon, email, email, status, user_role
					FROM tm_user WHERE id = ".$this->azdgcrypt->decrypt($id);
			$return = $this->db->query($sql)->row_array();
		} elseif($type == "role") {
			$sql = "SELECT kode_role as id, uraian
					FROM tm_role WHERE kode_role = ".$this->azdgcrypt->decrypt($id);
			$return = $this->db->query($sql)->row_array();
		} elseif($type == "menu") {
			$return = $this->menu_management($this->azdgcrypt->decrypt($id));
		}
		return $return;
	}

	function execute($type, $action) {
		if($action == "save") {
			if($type == "user") {
				foreach ($this->input->post('data') as $key => $value) {
					$val[$key] = $value;
				}
				$sql = "SELECT username FROM tm_user WHERE username = ".$this->db->escape($val['username']);
				$arr_result = $this->db->query($sql)->result_array();
				if(count($arr_result) > 0) {
					$return = array("status"=>"error","message"=>"Username Sudah  Digunakan.","titlte"=>"Error !!!");
				} else {
					$val['password'] = password_hash('123abc', PASSWORD_BCRYPT);
					$ecex = $this->db->insert("tm_user", $val);
					$return = array("status"=>"success","message"=>"User Berhasil Ditambahkan.","titlte"=>"Success !!!","url"=>site_url('users/user'));
				}
			} elseif($type == "role") {
				$query = "SELECT uraian FROM tm_role WHERE uraian = '".$this->input->post("uraian")."'";
				$Exec = $this->db->query($query);
				if($Exec->num_rows() > 0) {
					$return = array("status"=>"error","message"=>"Uraian Role Sudah Ada.","titlte"=>"Error !!!");
				} else {
					$role['uraian'] = $this->input->post("uraian");
					if($this->db->insert('tm_role', $role)) {
						$role_id = $this->db->insert_id();
						foreach($this->input->post('checkmenu') as $index=>$val){
							$AKSES = $this->input->post('akses_'.$val);
							$GROP_MENU["GRANT_TYPE"] 	= strtoupper($AKSES[0]);
							$GROP_MENU["MENU_ID"] 		= $val;
							$GROP_MENU["ROLE_ID"] 		= $role_id;
							$this->db->insert("tm_role_menu", $GROP_MENU);
						}
						$return = array("status"=>"success","message"=>"Role Berhasil Ditambahkan.","titlte"=>"Success !!!","url"=>site_url('users/role'));
					}
				}
			}
		} elseif ($action == "update") {
			if($type == "user") {
				foreach ($this->input->post('data') as $key => $value) {
					$val[$key] = $value;
				}
				$this->db->where(array('id'=>$this->input->post('id')));
				$ecex = $this->db->update("tm_user", $val);
				$return = array("status"=>"success","message"=>"User Berhasil Diupdate.","titlte"=>"Success !!!","url"=>site_url('users/user'));
			}
		} elseif ($action == "delete") {
			$this->load->library('Azdgcrypt');
			if($type == "user") {
				$id = $this->input->post('id');
				$this->db->where(array('id'=>$this->azdgcrypt->decrypt($id)));
				$ecex = $this->db->delete("tm_user");
				$return = array("status"=>"success","message"=>"User Berhasil Dihapus.","titlte"=>"Success !!!","url"=>site_url('users/user'));
			}
		}
		return $return;
	}

	function menu_management($groupid=""){
		$func = get_instance();
		$func->load->model("main");
		if($groupid) {
			$SQL= "SELECT A.MENU_ID, A.MENU_TITTLE, A.MENU_PARENT_ID, A.MENU_HAVE_CHILD, B.GRANT_TYPE,
					f_menuchecked(A.MENU_ID,'".$groupid."') AS CHECKED
					FROM TM_MENU A 
					LEFT JOIN TM_ROLE_MENU B 
						ON B.MENU_ID = A.MENU_ID AND A.MENU_TYPE = 'A' AND B.ROLE_ID = '".$groupid."' 
					WHERE A.MENU_PARENT_ID = '0' 
					ORDER BY A.MENU_ID ASC";
		} else {
			$SQL= "SELECT MENU_ID, MENU_TITTLE, MENU_PARENT_ID, MENU_HAVE_CHILD 
				   FROM TM_MENU 
				   WHERE MENU_PARENT_ID = '0' 
				   	AND MENU_TYPE = 'A' 
				   ORDER BY MENU_ID ASC";
		}
		if($func->main->get_result($SQL)){
			$first=1;
			$second=2;
			$html = '<table class="tabelPopUp" width="100%" id="treeView">';
			$html.= '<thead>';
			$html.= '<tr>';
			$html.= '	<th width="2%"><input type="checkbox" name="checkAllmenu" id="checkAllmenu" class="tb_chk" onclick="menucheckAll(\'form-role\')"/></th>';
			$html.= '	<th width="35%">GRANT NAME</th>';
			$html.= '	<th width="10%">GRANT TYPE</th>';
			$html.= '</tr>';
			$html.= '</thead>';
			$html.= '</tbody>';
			$akses="";
			$child_w="";$child_r="";
			foreach($SQL->result_array() as $parent){
				$html .= '<tr id="node-'.$first.'">';
				$html .= '<td><input type="checkbox" name="checkmenu[]" id="checkmenuParent_'.$parent["MENU_ID"].'" class="tb_chk" value="'.$parent["MENU_ID"].'" onclick="menucheckParent(\'form-role\',\''.$parent["MENU_ID"].'\')" '.$parent["CHECKED"].'/></td>';	
				$html .= '<td>'.strtoupper($parent["MENU_TITTLE"]).'</td>';	
				if($parent['MENU_HAVE_CHILD'] == "Y"){
					$html .= '<td><input type="hidden" name="akses_'.$parent["MENU_ID"].'[]" id="akses'.$parent["MENU_ID"].'" class="akses_w" value="rw" /></td>';
				} else {
					$html .= '<td><input type="radio" name="akses_'.$parent["MENU_ID"].'[]" id="akses'.$parent["MENU_ID"].'" class="akses_w" value="w" '.$child_w.'/> Write';	
					$html .= '&nbsp;';
					$html .= '<input type="radio" name="akses_'.$parent["MENU_ID"].'[]" id="akses'.$parent["MENU_ID"].'" class="akses_r" value="r" '.$child_r.'/> Read</td>';	
				}
				$html .= '</tr>';
				
				if($groupid) {
					$query = "SELECT A.MENU_ID, A.MENU_TITTLE, A.MENU_PARENT_ID, B.GRANT_TYPE,
							  f_menuchecked(A.MENU_ID,'".$groupid."') AS CHECKED
							  FROM TM_MENU A 
							  LEFT JOIN TM_ROLE_MENU B 
							  	ON B.MENU_ID = A.MENU_ID AND A.MENU_TYPE = 'A' AND B.ROLE_ID = '".$groupid."' 
							  WHERE A.MENU_PARENT_ID='".$parent["MENU_ID"]."' 
							  ORDER BY A.MENU_PARENT_ID, A.MENU_ORDER ASC";
				} else {
					$query = "SELECT MENU_ID, MENU_TITTLE, MENU_PARENT_ID 
							  FROM TM_MENU WHERE MENU_PARENT_ID = ".$parent["MENU_ID"]." 
							  ORDER BY MENU_PARENT_ID, MENU_ORDER ASC";	
				}  												  							
				if($func->main->get_result($query)){
					foreach($query->result_array() as $child){
						if($first>1) $second = $second+1;
						$html .= '<tr id="node-'.$second.'" class="child-of-node-'.$first.'">';		
						$html .= '<td><input type="checkbox" name="checkmenu[]" id="checkmenuChild_'.$child["MENU_PARENT_ID"].'" class="checkmenuChild_'.$child["MENU_PARENT_ID"].'" value="'.$child["MENU_ID"].'" onclick="menucheckChild(\'form-role\',\''.$child["MENU_PARENT_ID"].'\')"  '.$child["CHECKED"].'/></td>';				
						$html .= '<td style="background-color:#FFFFCC"><span class="file">&nbsp;&nbsp;'.strtoupper($child["MENU_TITTLE"]).'</span></td>';
						$html .= '<td><input type="radio" name="akses_'.$child["MENU_ID"].'[]" id="akses'.$child["MENU_ID"].'" class="akses_w" value="w" '.$child_w.'/> Write';	
						$html .= '&nbsp;';
						$html .= '<input type="radio" name="akses_'.$child["MENU_ID"].'[]" id="akses'.$child["MENU_ID"].'" class="akses_r" value="r" '.$child_r.'/> Read</td>';	
						$html .= '</tr>';
						$second++;
					}
				}
				$first = $second-1;
				$first++;
			}			
			$html .= '</tbody>';
			$html .= '</table>';
		}
		return $html;
	}
}