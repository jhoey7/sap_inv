<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pemusnahan extends CI_Controller {
	public $content, $breadcrumbs;

	public function index()
	{
		if($this->session->userdata('LOGGED')) {
			$headers = '<link rel="shortcut icon" href="'.base_url().'assets/images/favicon.png">';
			#Stylesheets
			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/style.default.css">';
  			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/jquery.datatables.css">';
  			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/bootstrap-timepicker.min.css" />';

			$footers  = '<script src="'.base_url().'assets/js/jquery-1.10.2.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery-migrate-1.2.1.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery-ui-1.10.3.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/bootstrap.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/modernizr.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery.sparkline.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/toggles.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/retina.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery.cookies.js"></script>';
			$footers .= '<script src="'.base_url().'assets/plugin/datatables/js/jquery.datatables.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/chosen.jquery.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/bootstrap-timepicker.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/autocomplete.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/custom.js"></script>';
			$footers .= '<script>load_table();time_picker();</script>';

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
				'_content_' 	=> (grant()=="")?$this->load->view('error','',true):$this->content,
				'_footers_' 	=> $footers
			);
			$this->parser->parse('main', $data);
		}else{
			$this->load->view('login');
		}
	}

	function daftar($type="") {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$this->load->model('m_pemusnahan','model');
			$columns = array("no_surat","tgl_surat","kd_kantor_tujuan","perihal","nm_pemohon","id_pemohon","no_surat_tugas");
	    	$aColumns = array("a.no_surat","a.tgl_surat","a.kd_kantor_tujuan","a.perihal","a.nm_pemohon","a.id_pemohon","a.no_surat_tugas");
	    
	    	$sIndexColumn = $aColumns[0];
	    
	    	/* Paging & Limit */
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
	 
			/* Search Filter */
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
				$sOrder = "ORDER BY a.no_surat ASC";
			}
	    
			$rResult = $this->model->pemusnahan($columns, $sWhere, $sOrder, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_pemusnahan($sIndexColumn, $sWhere, $sOrder);
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
				$page++;
				$output['aaData'][] = $row;
			}
			echo json_encode( $output );
		} else {
			if(in_array($type, array("add","update"))) {
				$data['action'] = "save";
				$this->breadcrumbs = array("title"=>"Pemusnahan","icon"=>"trash-o","title_child"=>"Add Pemusnahan","url"=>'pemusnahan/daftar/add');
				$this->content = $this->load->view('pemusnahan/form-pemusnahan','',true);
			} else {
				$this->breadcrumbs = array("title"=>"Pemusnahan","icon"=>"trash-o","title_child"=>"Barang","url"=>'pemusnahan/daftar');
				$this->content = $this->load->view('pemusnahan/daftar','',true);
			}
			$this->index();
		}
	}

	function process($type) {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {

		}
	}
}