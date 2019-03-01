<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Referensi extends CI_Controller {
	public $content, $breadcrumbs;

	public function index()
	{
		if($this->session->userdata('LOGGED')) {
			$headers = '<link rel="shortcut icon" href="'.base_url().'assets/images/favicon.png">';
			#Stylesheets
			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/style.default.css">';
  			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/jquery.datatables.css">';

			$footers  = '<script src="'.base_url().'assets/js/jquery-1.10.2.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery-migrate-1.2.1.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/bootstrap.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/modernizr.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery.sparkline.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/toggles.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/retina.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/jquery.cookies.js"></script>';
			$footers .= '<script src="'.base_url().'assets/plugin/datatables/js/jquery.datatables.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/chosen.jquery.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/custom.js"></script>';
			$footers .= '<script>load_table();</script>';
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

	function supplier() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$this->load->model('m_referensi','model');
			$columns = array("kd_supplier","nm_supplier","almt_supplier","uraian_negara","npwp_supplier");
	    	$aColumns = array("a.kd_supplier","a.nm_supplier","a.almt_supplier","b.uraian_negara","a.npwp_supplier");
	    
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
				$sOrder = "ORDER BY a.kd_supplier ASC";
			}

			$rResult = $this->model->supplier($columns, $sWhere, $sOrder, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_supplier($sIndexColumn, $sWhere, $sOrder);
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
			$this->breadcrumbs = array("title"=>"Referensi","icon"=>"gear","title_child"=>"Supplier","url"=>'referensi/supplier');
			$this->content = $this->load->view('referensi/supplier',$arrdata,true);
			$this->index();
		}
	}

	function satuan() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$this->load->model('m_referensi','model');
			$columns = array("kd_satuan","uraian");
	    	$aColumns = array("kd_satuan","uraian");
	    
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
				$sOrder = "ORDER BY kd_satuan ASC";
			}

			$rResult = $this->model->satuan($columns, $sWhere, $sOrder, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_satuan($sIndexColumn, $sWhere, $sOrder);
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
			$this->breadcrumbs = array("title"=>"Referensi","icon"=>"gear","title_child"=>"Satuan","url"=>'referensi/satuan');
			$this->content = $this->load->view('referensi/satuan',$arrdata,true);
			$this->index();
		}
	}

	function negara() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$this->load->model('m_referensi','model');
			$columns = array("kd_negara","uraian_negara");
	    	$aColumns = array("kd_negara","uraian_negara");
	    
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
				$sOrder = "ORDER BY kd_negara ASC";
			}

			$rResult = $this->model->negara($columns, $sWhere, $sOrder, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_negara($sIndexColumn, $sWhere, $sOrder);
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
			$this->breadcrumbs = array("title"=>"Referensi","icon"=>"gear","title_child"=>"Negara","url"=>'referensi/negara');
			$this->content = $this->load->view('referensi/negara',$arrdata,true);
			$this->index();
		}
	}
}