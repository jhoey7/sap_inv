<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {
	public $content, $breadcrumbs;

	public function index()
	{
		if($this->session->userdata('LOGGED')) {
			$headers = '<link rel="shortcut icon" href="'.base_url().'assets/images/favicon.png">';
			#Stylesheets
			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/style.default.css">';
 	 		$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/jquery.gritter.css">';
  			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/jquery.datatables.css">';
  			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/sweetalert/sweetalert.css">';
  			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/treeview.css">';
  			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/laporan.css">';

			$footers  = '<script src="'.base_url().'assets/js/jquery-1.10.2.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery-migrate-1.2.1.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/bootstrap.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/modernizr.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery.sparkline.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/toggles.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/retina.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/sweetalert/sweetalert.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery.cookies.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery.gritter.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/plugin/datatables/js/jquery.datatables.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/chosen.jquery.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/treeview.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/custom.js"></script>';
			$footers .= '<script>load_table();</script>';

			$footers .= '<script type="text/javascript">jQuery(document).ready(function(){jQuery("#treeView").treeTable();});</script>';
			$footers .= '<script type="text/javascript">jQuery(document).ready(function(){';
			$footers .= 'jQuery(".akses_w").attr(\'checked\',true);';
			$footers .= 'menucheckAll(\'fuser\')';
			$footers .= '});</script>';

			if($this->content=="") {
				$this->content = $this->load->view('error');
			}
			$this->load->model("m_menu");
			$menu['menu'] = $this->m_menu->drawMenu();
			$data = array(
				'_title_'		=> 'IT INVENTORY',
				'_headers_'		=> $headers,
				'_header_'		=> $this->load->view('header','',true),
				'_menus_'		=> $this->load->view('menu',$menu,true),
				'_breadcrumbs_' => $this->load->view('breadcrumbs',$this->breadcrumbs,true),
				// '_content_' 	=> (grant()=="")?$this->load->view('error','',true):$this->content,
				'_content_' 	=> $this->content,
				'_footers_' 	=> $footers
			);
			$this->parser->parse('main', $data);
		}else{
			redirect(base_url(),'refresh');
		}
	}

	function user($type="", $id="") {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$this->load->library('Azdgcrypt');
			$this->load->model('m_users','model');
			$columns = array("username","nama","alamat","telepon","email","status","user_role", "id");
	    	$aColumns = array("a.username","a.nama","a.alamat","a.telepon","a.email","b.reff_description");
	    
	    	$sIndexColumn = $aColumns[0];
	    
	    	// paging & limit
			if (isset($_POST['length'])) {
	            $_POST['length'] = $_POST['length'];
	            $_POST['start']  = $_POST['start'];
	        } else {
	            $_POST['length'] = 10;
	            $_POST['start']  = 0;
	        }

	    	$sLimit = "";
	   		if (isset( $_POST['length'] ) && $_POST['start'] != '-1' ) {
	        	$sLimit = "LIMIT ".$_POST['start'].", ".$_POST['length'];
	    	}
	    	$numbering = $_POST['start'];
	 
			// buat filter search
			$sWhere = "";
			if ( $_POST['search']['value'] != "" ) {
				$sWhere = "WHERE (";
				for ( $i=0 ; $i<count($aColumns) ; $i++ ) {
					$sWhere .= $aColumns[$i]." LIKE ".$this->db->escape('%'.$_POST['search']['value'].'%')." OR ";
				}
				$sWhere = substr_replace( $sWhere, "", -3 );
				$sWhere .= ')';
			}

			$sOrder = "";
			if( $_POST['order'][0]['column'] != "" && $_POST['order'][0]['dir']) {
				$sIndexColumn = $aColumns[$_POST['order'][0]['column'] - 1];
				$sOrder = "ORDER BY ".$sIndexColumn." ".$_POST['order'][0]['dir'];
			} else {
				$sOrder = "ORDER BY a.username ASC";
			}
	    
			$rResult = $this->model->user($columns, $sWhere, $sOrder, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_user($sIndexColumn, $sWhere, $sOrder);
			$iTotal = $rResultTotal->num_rows();
			$iFilteredTotal = $iTotal;
			
			$output = array(
				"sEcho" 				=> intval($_GET['sEcho']),
				"iTotalRecords" 		=> $iTotal,
				"iTotalDisplayRecords" 	=> $iFilteredTotal,
				"aaData" 				=> array()
			);
			
			$no = $numbering;
			foreach ($rResult->result_array() as $aRow){
				$no++;
				$row = array();
				$row[] = $no;
				for ( $i=0 ; $i<count($columns) ; $i++ ){
					$row[] = $aRow[ $columns[$i] ];
				}
				if($row[8] != "") {
					$row[8] = '<div class="table-action"><a href="javascript:void(0);" onClick="edit_data(\''.$this->azdgcrypt->crypt(''.$row[8].'').'\',\'users/user/edit\')"><i class="fa fa-pencil"></i></a><a href="javascript:void(0);" class="delete-row" onClick="delete_data(\''.$this->azdgcrypt->crypt(''.$row[8].'').'\',\'users/execute/user\',\'data-table\')"><i class="fa fa-trash-o"></i></a></div>';
				}
				$page++;
				$output['aaData'][] = $row;
			}
			echo json_encode( $output );
		} else if(in_array($type, array("add","edit"))) {
			$this->load->library('Azdgcrypt');
			$this->load->model('m_users','model');
			$this->breadcrumbs = array("title"=>"Users","icon"=>"users","title_child"=>ucwords($type)." User","url"=>'users/user/add');
			$arrdata['role'] = $this->model->get_data('user_role');
			if($type == "add") {
				$arrdata['action']	= 'save';
				$arrdata['disabled']	= '';
			} elseif($type == "edit") {
				$arrdata['data'] = $this->model->get_data('user', $id);
				$arrdata['action']	= 'update';
				$arrdata['disabled']	= 'disabled="true"';
			}
			$this->content = $this->load->view('users/add',$arrdata,true);
			$this->index();
		} else {
			$this->breadcrumbs = array("title"=>"Users","icon"=>"users","title_child"=>"User","url"=>'users/user');
			$this->content = $this->load->view('users/user','',true);
			$this->index();
		}
	}

	function role($type="", $id="") {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$this->load->library('Azdgcrypt');
			$this->load->model('m_users','model');
			$columns = array("kode_role","uraian");
	    	$aColumns = array("kode_role","uraian");
	    
	    	$sIndexColumn = $aColumns[0];
	    
	    	// paging & limit
			if (isset($_POST['length'])) {
	            $_POST['length'] = $_POST['length'];
	            $_POST['start']  = $_POST['start'];
	        } else {
	            $_POST['length'] = 10;
	            $_POST['start']  = 0;
	        }

	    	$sLimit = "";
	   		if (isset( $_POST['length'] ) && $_POST['start'] != '-1' ) {
	        	$sLimit = "LIMIT ".$_POST['start'].", ".$_POST['length'];
	    	}
	    	$numbering = $_POST['start'];
	 
			// buat filter search
			$sWhere = "";
			if ( $_POST['search']['value'] != "" ) {
				$sWhere = "WHERE (";
				for ( $i=0 ; $i<count($aColumns) ; $i++ ) {
					$sWhere .= $aColumns[$i]." LIKE ".$this->db->escape('%'.$_POST['search']['value'].'%')." OR ";
				}
				$sWhere = substr_replace( $sWhere, "", -3 );
				$sWhere .= ')';
			}

			$sOrder = "";
			if( $_POST['order'][0]['column'] != "" && $_POST['order'][0]['dir']) {
				$sIndexColumn = $aColumns[$_POST['order'][0]['column'] - 1];
				$sOrder = "ORDER BY ".$_POST['order'][0]['column']." ".$_POST['order'][0]['dir'];
			} else {
				$sOrder = "ORDER BY kode_role ASC";
			}
	    
			$rResult = $this->model->role($columns, $sWhere, $sOrder, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_role($sIndexColumn, $sWhere, $sOrder);
			$iTotal = $rResultTotal->num_rows();
			$iFilteredTotal = $iTotal;
			
			$output = array(
				"sEcho" 				=> intval($_GET['sEcho']),
				"iTotalRecords" 		=> $iTotal,
				"iTotalDisplayRecords" 	=> $iFilteredTotal,
				"aaData" 				=> array()
			);
			
			$no = $numbering;
			foreach ($rResult->result_array() as $aRow){
				$no++;
				$row = array();
				$row[] = $no;
				for ( $i=0 ; $i<count($columns) ; $i++ ){
					$row[] = $aRow[ $columns[$i] ];
				}
				$row[3] = '<div class="table-action"><a href="javascript:void(0);" onClick="edit_data(\''.$this->azdgcrypt->crypt(''.$row[1].'').'\',\'users/role/edit\')"><i class="fa fa-pencil"></i></a><a href="javascript:void(0);" class="delete-row" onClick="delete_data(\''.$this->azdgcrypt->crypt(''.$row[1].'').'\',\'users/execute/role\',\'data-table\')"><i class="fa fa-trash-o"></i></a></div>';
				$page++;
				$output['aaData'][] = $row;
			}
			echo json_encode( $output );
		}  else if(in_array($type, array("add","edit"))) {
			$this->load->library('Azdgcrypt');
			$this->load->model('m_users','model');
			$this->breadcrumbs = array("title"=>"Users","icon"=>"users","title_child"=>ucwords($type)." Role","url"=>'users/role/add');
			if($type == "add") {
				$arrdata['menu'] = $this->model->get_data('menu');
				$arrdata['action']	= 'save';
				$arrdata['disabled']	= '';
			} elseif($type == "edit") {
				$arrdata['data'] = $this->model->get_data('role', $id);
				$arrdata['menu'] = $this->model->get_data('menu', $id);
				$arrdata['action']	= 'update';
				$arrdata['disabled']	= 'disabled="true"';
			}
			$this->content = $this->load->view('users/add_role',$arrdata,true);
			$this->index();
		} else {
			$this->breadcrumbs = array("title"=>"Users","icon"=>"users","title_child"=>"Role","url"=>'users/role');
			$this->content = $this->load->view('users/role','',true);
			$this->index();
		}
	}

	function execute($type) {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->load->model('m_users','model');
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$arrdata = $this->model->execute($type,$this->input->post('action'));
			echo json_encode($arrdata);
		}
	}
}