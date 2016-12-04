<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	 
	/* INDEX FUNCTION */
	public function index()
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/layout/header');
			$this->load->view('admin/main');
			$this->load->view('admin/layout/footer');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	

	/* 
		Account page 
		Show per category if parameter is not NULL
		ADM Admin
		JDG Juri
		COR koor
		PBT Peserta Acara
		SCH sekolah
		PUB umum
		SCT Tim sekolah
	*/
	public function akun($category = NULL)
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$data['list'] = $this->AccountModel->selectJoinCategory()->result_array();
			// var_dump($data['list']);
			$this->load->view('admin/layout/header');
			$this->load->view('admin/akun',$data);
			$this->load->view('admin/layout/footer');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
}
