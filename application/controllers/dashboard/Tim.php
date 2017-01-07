	<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Tim extends CI_Controller {

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
			/* if has session */
		if(isset($_SESSION['logged_in'])){
			if($_SESSION['category']=='ADM' || $_SESSION['category']=='ADMSU' || $_SESSION['category']=='COOR' || $_SESSION['category']=='SCH'){
				$head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();
				$data['total'] = $this->AccountModel->selectAll()->num_rows();
				// var_dump($_SESSION['category']);
				$this->load->view('tim/layout/header',$head);
				$this->load->view('tim/index',$data);
				$this->load->view('tim/layout/footer');
			}else{
				$head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();
				$data['total'] = $this->AccountModel->selectAll()->num_rows();
				// var_dump($_SESSION);
				$this->load->view('tim/layout/header',$head);
				$this->load->view('tim/index',$data);
				$this->load->view('tim/layout/footer');				
			}
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	

	/* 
		Account page 
		Show per category if parameter is not NULL
		ADMSU Super Admin
		ADM Admin
		JDG Juri
		COR koor
		PBT Peserta Acara
		SCH sekolah
		PUB umum
		SCT Tim sekolah
	*/
	public function profil($category = NULL)
	{
			/* if has session */
		if(isset($_SESSION['logged_in'])){
				$head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();
				$head['data'] = $this->AccountModel->selectById($_SESSION['userid'])->result_array();
				$data['list'] = $this->EventModel->selectAll()->result_array();
				$this->load->view('tim/layout/header',$head);
				$this->load->view('tim/profil/profil',$data);
				$this->load->view('tim/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}
}
