<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inventory extends CI_Controller {
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
			#print_r($menu);die();
			$data = array(
				'_title_'		=> 'IT INVENTORY',
				'_headers_'		=> $headers,
				'_header_'		=> $this->load->view('header','',true),
				'_menus_'		=> $this->load->view('menu',$menu,true),
				'_breadcrumbs_' => $this->load->view('breadcrumbs',$this->breadcrumbs,true),
				'_content_' 	=> (grant()=="")?$this->load->view('error','',true):$this->content,
				// '_content_' 	=> $this->content,
				'_footers_' 	=> $footers
			);
			$this->parser->parse('main', $data);
		}else{
			redirect(base_url('index.php'),'refresh');
		}
	}

	function barang() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$this->load->model('m_inventory','model');
			$columns = array("kd_brg","uraian_barang","nm_brg","uraian_satuan","stock_akhir");
	    	$aColumns = array("a.kd_brg","b.uraian","a.nm_brg","c.uraian","a.stock_akhir");
	    
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
				$sOrder = "ORDER BY a.kd_brg ASC";
			}
	    
			$rResult = $this->model->barang($columns, $sWhere, $sOrder, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_barang($sIndexColumn, $sWhere, $sOrder);
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
			$this->breadcrumbs = array("title"=>"Inventory","icon"=>"suitcase","title_child"=>"Barang","url"=>'inventory/barang');
			$this->content = $this->load->view('inventory/barang','',true);
			$this->index();
		}
	}

	function stockopname() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$this->load->model('m_inventory','model');
			$columns = array("tgl_stock","jml_stock");
	    	$aColumns = array("tgl_stock");
	    
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
				$sOrder = "ORDER BY tgl_stock DESC";
			}
	    
			$rResult = $this->model->stockopname($columns, $sWhere, $sOrder, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_stockopname($sIndexColumn, $sWhere, $sOrder);
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
				$row[] = $aRow[$columns[6]];
				$row[] = $aRow[$columns[7]];
				$row[] = $aRow[$columns[8]];
				$page++;
				$output['aaData'][] = $row;
			}
			echo json_encode( $output );
		} else {
			$this->breadcrumbs = array("title"=>"Inventory","icon"=>"suitcase","title_child"=>"Stockopname","url"=>'inventory/stockopname');
			$this->content = $this->load->view('inventory/stockopname','',true);
			$this->index();
		}
	}
}