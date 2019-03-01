<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function signin() {
		$arrayReturn = array();
		$returnData = "";
		if(strtolower($_SERVER['REQUEST_METHOD'])!="post") {
			$returnData = "0|Login failed, please refresh page";
		} else {
			$uid = $this->input->post('username');
			$pwd = $this->input->post('password');
			$this->load->model('m_home');
			$result = $this->m_home->signin($uid, $pwd);
			if($result == 0 || $result == 2) {
				$returnData = "0|Username atau Password Anda Salah.<br>Check Kembali Username dan Password Anda.";
			}else if($result == 3) {
				$returnData = "0|Username Anda Sudah Tidak Aktif. Silahkan Hubungi Administrator Anda.";
			} else { 
				$returnData = "1|Login Berhasil.|".base_url();
			}
		}
		$arrayReturn['returnData'] = $returnData;
		echo json_encode($arrayReturn);
	}

	function signout(){
		$this->session->sess_destroy();
		redirect(base_url());	
	}
}