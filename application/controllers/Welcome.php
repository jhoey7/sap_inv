<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public $content;

	public function index()
	{
		if($this->session->userdata('LOGGED')) {
			$headers = '<link rel="shortcut icon" href="assets/images/favicon.png">';
			#Stylesheets
			$headers .= '<link rel="stylesheet" href="'.base_url().'assets/css/style.default.css">';
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
			$footers .= '<script src="'.base_url().'assets/js/bootstrap-timepicker.min.js"></script>';
			$footers .= '<script src="'.base_url().'assets/js/custom.js"></script>';
			if($this->content=="") {
				$this->content = $this->load->view('error');
			} 
			if($this->breadcrumbs == "") {
				$this->breadcrumbs = array("title"=>"Home","icon"=>"home","title_child"=>"Dashboard","url"=>'report/pemasukan');
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
			$this->load->view('login');
		}
	}
}
