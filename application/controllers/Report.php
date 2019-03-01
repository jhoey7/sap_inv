<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report extends CI_Controller {
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
			$footers .= '<script src="'.base_url().'assets/js/custom.js"></script>';
			$footers .= '<script>load_table_report();time_picker();</script>';
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

	function pemasukan() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->load->model('m_report','model');
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$columns = array("kd_dok","car","no_dok","tgl_dok","no_dok_internal","tgl_dok_internal","nm_supplier","kd_barang","nm_brg","kd_satuan","jml_satuan","hrg_barang");
	    	$aColumns = array("a.kd_dok","a.car","a.no_dok","a.tgl_dok","a.no_dok_internal","a.tgl_dok_internal","b.nm_supplier","c.nm_brg","a.kd_satuan","a.jml_satuan","a.hrg_barang");
	    
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
	    
			$rResult = $this->model->inout('IN',$columns, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_inout('IN',$sIndexColumn);
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
			$this->breadcrumbs = array("title"=>"Laporan","icon"=>"laptop","title_child"=>"Pemasukan","url"=>'report/pemasukan');
			$arrdata['kd_dok'] = $this->model->get_data('dokumen_pemasukan');
			$this->content = $this->load->view('report/pemasukan',$arrdata,true);
			$this->index();
		}
	}

	function pengeluaran() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->load->model('m_report','model');
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$columns = array("kd_dok","car","no_dok","tgl_dok","no_dok_internal","tgl_dok_internal","nm_supplier","kd_barang","nm_brg","kd_satuan","jml_satuan","hrg_barang");
	    	$aColumns = array("a.kd_dok","a.car","a.no_dok","a.tgl_dok","a.no_dok_internal","a.tgl_dok_internal","b.nm_supplier","c.nm_brg","a.kd_satuan","a.jml_satuan","a.hrg_barang");
	    
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
	    
			$rResult = $this->model->inout('OUT', $columns, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_inout('OUT', $sIndexColumn);
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
			$this->breadcrumbs = array("title"=>"Laporan","icon"=>"laptop","title_child"=>"Pengeluaran","url"=>'report/pengeluaran');
			$arrdata['kd_dok'] = $this->model->get_data('dokumen_pengeluaran');
			$this->content = $this->load->view('report/pengeluaran',$arrdata,true);
			$this->index();
		}
	}

	function wip() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->load->model('m_report','model');
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {
			$columns = array("no_proses","kd_barang","nm_brg","kd_satuan","jml_satuan","keterangan");
	    	$aColumns = array("a.no_proses","a.kd_barang","b.nm_brg","a.kd_satuan","a.jml_satuan","a.keterangan");
	    
	    	$sIndexColumn = $aColumns[0];
	    
	    	#paging & limit
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
	    
			$rResult = $this->model->wip($columns, $sLimit);
			$iFilteredTotal = 10;
			$rResultTotal = $this->model->total_wip($sIndexColumn);
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
			$this->breadcrumbs = array("title"=>"Laporan","icon"=>"laptop","title_child"=>"Laporan Posisi Barang Dalam Proses (WIP)","url"=>'report/wip');
			$this->content = $this->load->view('report/wip','',true);
			$this->index();
		}
	}

	function mutasi_bb() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->breadcrumbs = array("title"=>"Laporan","icon"=>"laptop","title_child"=>"Laporan Mutasi Bahan Baku","url"=>'report/mutasi_bb');
		$arrdata['title'] = 'Laporan Mutasi Bahan Baku';
		$arrdata['type'] = "mutasi_bb";
		$this->content = $this->load->view('report/mutasi',$arrdata,true);
		$this->index();
	}

	function mutasi_bp() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->breadcrumbs = array("title"=>"Laporan","icon"=>"laptop","title_child"=>"Laporan Mutasi Bahan Penolong","url"=>'report/mutasi_bp');
		$arrdata['title'] = 'Laporan Mutasi Bahan Penolong';
		$arrdata['type'] = "mutasi_bp";
		$this->content = $this->load->view('report/mutasi',$arrdata,true);
		$this->index();
	}

	function mutasi_hp() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->breadcrumbs = array("title"=>"Laporan","icon"=>"laptop","title_child"=>"Laporan Mutasi Hasil Produksi","url"=>'report/mutasi_hp');
		$arrdata['title'] = 'Laporan Mutasi Hasil Produksi';
		$arrdata['type'] = "mutasi_hp";
		$this->content = $this->load->view('report/mutasi',$arrdata,true);
		$this->index();
	}

	function mutasi_bm() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->breadcrumbs = array("title"=>"Laporan","icon"=>"laptop","title_child"=>"Laporan Mutasi Barang Modal","url"=>'report/mutasi_bm');
		$arrdata['title'] = 'Laporan Mutasi Barang Modal';
		$arrdata['type'] = "mutasi_bm";
		$this->content = $this->load->view('report/mutasi',$arrdata,true);
		$this->index();
	}

	function mutasi_pk() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->breadcrumbs = array("title"=>"Laporan","icon"=>"laptop","title_child"=>"Laporan Mutasi Peralatan Kantor","url"=>'report/mutasi_pk');
		$arrdata['title'] = 'Laporan Mutasi Peralatan Kantor';
		$arrdata['type'] = "mutasi_pk";
		$this->content = $this->load->view('report/mutasi',$arrdata,true);
		$this->index();
	}

	function mutasi_bs() {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		$this->breadcrumbs = array("title"=>"Laporan","icon"=>"laptop","title_child"=>"Laporan Mutasi Barang Sisa dan Scrap","url"=>'report/mutasi_bs');
		$arrdata['title'] = 'Laporan Mutasi Barang Sisa dan Scrap';
		$arrdata['type'] = "mutasi_bs";
		$this->content = $this->load->view('report/mutasi',$arrdata,true);
		$this->index();
	}

	function proses($tipe, $jns_file="") {
		if(!$this->session->userdata('LOGGED')) {
			$this->index();
			return;
		}
		if(strtolower($_SERVER['REQUEST_METHOD'])=="post") {			
	        ini_set("display_errors", 1);
	        ini_set('memory_limit', '-1');
	        set_time_limit(0);
	    	$tgl_awal = $this->input->post("tgl_awal");
	    	$tgl_akhir = $this->input->post("tgl_akhir");
	        $jml_page = $this->input->post("JUMPAGES");
	        $all = $this->input->post("all");

			$this->load->model('m_report','model');
			$sql = $this->model->mutasi($tipe, $tgl_awal, $tgl_akhir, $all);
            if ($sql) {				
				if($all) {
					$query = $this->db->query(str_replace("|","",$sql));	
					$rs = $query->result_array();
					foreach($rs as $dt) {
						$valin = $valin."'".$dt["kd_barang"]."'," ;
						$inarray[] = $dt["kd_barang"];
					}
					$indata = substr($valin,0,strlen($valin)-1);
					if(!$indata) $indata="''";
					if($tipe=="mutasi_bb") $jndata = " WHERE jns_brg = '1'";
					if($tipe=="mutasi_bp") $jndata = " WHERE jns_brg = '2'";
					if($tipe=="mutasi_hp") $jndata = " WHERE jns_brg = '6'";
					if($tipe=="mutasi_bm") $jndata = " WHERE jns_brg = '3'";
					if($tipe=="mutasi_pk") $jndata = " WHERE jns_brg = '4'";
					if($tipe=="mutasi_bs") $jndata = " WHERE jns_brg = '7'";
	
					$sql .= " UNION SELECT kd_brg as kd_barang | , jns_brg as jns_barang, nm_brg, kd_satuan, '' penyesuaian |
							  FROM tm_barang ".$jndata;
					if($indata!='') {
						$sql .= " AND kd_brg NOT IN(".$indata.") ";	
					}
				}
				#==================================================================================================
				$this->baris = 100;
				if(strpos(strtoupper($sql),"UNION") == false) {
					$SQL_EXP = explode("|",$sql);
					$SQL_EXP_TMP = $SQL_EXP[0].' '.$SQL_EXP[2];
				} else {
					$EXP_UNION = explode("UNION",$sql);
                    $SQL_EXP_TMP = "";
					foreach($EXP_UNION as $UNION) {
						$SQL_EXP = explode("|",$UNION);
						$SQL_EXP_TMP .= $SQL_EXP[0].' '.$SQL_EXP[2].' UNION ';
					}
					if(strpos(strtoupper($SQL_EXP_TMP),"ORDER") == false) {
						$SQL_EXP_TMP = substr($SQL_EXP_TMP,0,-6);	
					} else {			
						$SQL_EXP_TMP = substr_replace($SQL_EXP_TMP,'',strpos(strtoupper($SQL_EXP_TMP),"ORDER"));						
					}
				} 

				$table_count = $this->db->query("SELECT COUNT(kd_barang) AS JML FROM ($SQL_EXP_TMP) AS TBL");
				if($table_count){
					$table_count = $table_count->row();
					$total_record = $table_count = $table_count->JML;
				}else{
					$total_record = 0;
				}
				$table_count = ceil($table_count / $this->baris);
				$hal = $this->input->post('hal');
				if($hal < 1) $hal = 1;
				if($hal > $table_count) $hal = $table_count;
				if($hal<=1){
					$dari = 0;
					$sampai = $this->baris;
				}else{
					$dari = ($hal - 1) * $this->baris;
					$sampai = $this->baris;
				}
				$sql .= " LIMIT $dari, $sampai";

				$datast = ($hal - 1); 
				if($datast<1) $datast = 1;
				else $datast = $datast * $this->baris + 1;
				$dataen = $datast + $this->baris - 1;
				if($total_record < $dataen) $dataen = $total_record;
				if($total_record==0) $datast = 0;
				
				if($hal<=1)
					$no = 1;			
				else
					$no = ($hal - 1) * $this->baris + 1;
					
				$out .='<tr class="head">
							<th colspan="13">
							<input type="hidden" class="tb_text" id="tb_view" value="'.$this->baris.'" readonly/> 
							<span style="float:left; padding-top: 5px;">&nbsp;'.$this->baris.' Data Per Halaman. Menampilkan '.$datast.' - '.$dataen.' Dari '.number_format($total_record).' Data.</span>';
				
				if($total_record > $this->baris){ 
					$actions = site_url()."/report/proses/".$tipe;
					$prev = $hal-1;
					$next = $hal+1;
					$firsExec = "lap_pagging('".$actions."', 'view', '1', 'frm-laporan');";
					$prevExec = "lap_pagging('".$actions."', 'view', '".$prev."', 'frm-laporan');";
					$nextExec = "lap_pagging('".$actions."', 'view', '".$next."', 'frm-laporan');";
					$lastExec = "lap_pagging('".$actions."', 'view', '".$total_record."', 'frm-laporan');";
					$forgo = "lap_pagging('".$actions."', 'view', document.getElementById('tb_halfrm-laporan').value, 'frm-laporan');";
					$out .="<span style=\"float: right;\">";
					if ($hal != "1") {
						$out .="<a href=\"javascript:void(0)\" onclick=\"".$firsExec."\" class=\"btn btn-xs btn-default\">First</a>&nbsp;";
						$out .="<a href=\"javascript:void(0)\" onclick=\"".$prevExec."\" class=\"btn btn-xs btn-default\">Previous</a>&nbsp;";
					} else {
						$out .="<a href=\"javascript:void(0)\" class=\"btn btn-xs btn-default\" disabled=\"true\">First</a>&nbsp;";
						$out .="<a href=\"javascript:void(0)\" class=\"btn btn-xs btn-default\" disabled=\"true\">Previous</a>&nbsp;";
					}
					
					if ($hal != ($table_count)) {
						$out .="<a href=\"javascript:void(0)\" onclick=\"".$nextExec."\" class=\"btn btn-xs btn-default\">Next</a>&nbsp;";
						$out .="<a href=\"javascript:void(0)\" onclick=\"".$lastExec."\" class=\"btn btn-xs btn-default\">Last</a>&nbsp;";
					} else {
						$out .="<a href=\"javascript:void(0)\" class=\"btn btn-xs btn-default\" disabled=\"true\">Next</a>&nbsp;";
						$out .="<a href=\"javascript:void(0)\" class=\"btn btn-xs btn-default\" disabled=\"true\">Last</a>&nbsp;";
					}
					$out .="</span>";
				}else{
					$out .="<input type=\"hidden\" class=\"tb_text\" id=\"tb_halfrmLaporan\" value=\"".$hal."\" ".$disabled."  ondblclick=\"".$nextExec."\" style=\"width:30px;text-align:right;\"/>"; 	
				}
					
				$out .='</th></tr>';
				#==================================================================================================
				$rs = $this->db->query(str_replace("|","",$sql));	
				$resultRow = $rs->result_array();
            }
            $tgl_stock = $this->model->get_tgl_stock($tgl_akhir);
            $data = array(
            	"tipe" 				=> $tipe,
                "tgl_awal" 			=> $tgl_awal,
                "tgl_akhir" 		=> $tgl_akhir,
                "tgl_stock" 		=> $tgl_stock,
                "resultData" 		=> $resultRow,
                "all" 				=> $all,
                "indata" 			=> $indata,
                "inarray" 			=> $inarray,
			  	"PAGING_TOP"		=> $out,
			  	"PAGING_BOT"		=> $out,
			 	"no"				=> $no,
			 	"showpage" 			=> $showpage,
				"halaman"			=> $hal,
				"JUMPAGES"			=> $jml_page,
				"jns_file"			=> $jns_file
			);
			if($jns_file == "pdf") {
				error_reporting(E_ALL);
				ini_set("display_errors", 1);
				ini_set('memory_limit','-1');
				set_time_limit(0); 
				if($tipe = "mutasi_bb") $judul = "Mutasi Bahan Baku";
				elseif($tipe = "mutasi_bp") $judul = "Mutasi Bahan Penolong";
				elseif($tipe = "mutasi_hp") $judul = "Mutasi Hasil Produksi";
				elseif($tipe = "mutasi_bm") $judul = "Mutasi Barang Modal";
				elseif($tipe = "mutasi_pk") $judul = "Mutasi Peralatan Kantor";
				elseif($tipe = "mutasi_bs") $judul = "Mutasi Barang Sisa & Scrap";

				$html = $this->load->view('report/print', $data, true);
				$stylesheet = file_get_contents('assets/css/laporan.css');

				$mpdf = new \Mpdf\Mpdf(array("mode"=>"utf-8","format"=>"A4-L","margin_top"=>25, "default_font_size"=>10));
				$mpdf->ignore_invalid_utf8 = true; 
				$mpdf->SetProtection(array('print'));
				$mpdf->SetAuthor("kiteinventory");
				$mpdf->SetCreator("kiteinventory");
				$mpdf->list_indent_first_level = 0; 
				$mpdf->SetDisplayMode('fullpage');
				$mpdf->AliasNbPages('[pagetotal]');
				$mpdf->SetHTMLHeader('<div align="justify">PT Mutiara Laut Abadi <br />Laporan '.$judul.'<br />
					Periode '.date_format(date_create($tgl_awal), 'd-m-Y').' S.D '.date_format(date_create($tgl_akhir), 'd-m-Y').'<br />
					</div><div align="right" style="padding-top: -20px;">Halaman {PAGENO} dari [pagetotal]</div>','0',true);
				$mpdf->WriteHTML($stylesheet,1);
				$mpdf->WriteHTML($html);
				$mpdf->Output();
				exit();
			} elseif($jns_file=="xls") {
				$this->cetakexcell($JUDUL,$html);	
			} else {
            	$this->load->view('report/view', $data);
            }
		}
	}
}