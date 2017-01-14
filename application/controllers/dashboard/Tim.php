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
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCT'){
			$data['schteam'] = $this->SchoolTModel->selectByAccIdJoin($_SESSION['userid'])->row_array();
			// var_dump($_SESSION);
			$this->load->view('tim/layout/header');
			$this->load->view('tim/index',$data);
			$this->load->view('tim/layout/footer');				
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
	public function profil($err = NULL)
	{
			/* if has session */
		if(isset($_SESSION['logged_in']) && $_SESSION['category'] == 'SCT'){
			$data['anggota'] = $this->SchoolPModel->selectJoinVSchTDash($this->SchoolTModel->selectByAccId($_SESSION['userid'])->row_array()['schteam_id'])->result_array();
			if($err!=NULL){
				$data['err'] = $err;
			}						
			$this->load->view('tim/layout/header');
			$this->load->view('tim/profil/profil',$data);
			$this->load->view('tim/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}
	public function editPass(){
		$data = $this->input->post();
		if($this->AccountModel->selectById($_SESSION['userid'])->row_array()['account_password'] == md5($data['bef'])){
			if($data['aft1']==$data['aft2']){
				$edited['account_password'] = md5($data['aft1']);
				$this->AccountModel->update($_SESSION['userid'],$edited);
				redirect(site_url('dashboard/tim/profil/1'));
			}else{
				redirect(site_url('dashboard/tim/profil/2'));
			}
		}else{
			redirect(site_url('dashboard/tim/profil/2'));
		}
	}		

	public function uploadF(){
		// var_dump($this->input->post(''));
		if(isset($_SESSION['logged_in']) && $_SESSION['category'] == 'SCT'){
			$data['schteam_file'] = $this->input->post('schteam_file');
			date_default_timezone_set("Asia/Bangkok");		
			$data['schteam_file_log'] = date("Y-m-d H:i:s");
			$this->SchoolTModel->update($this->input->post('schteam_id'),$data);
			redirect(site_url('dashboard/Tim/'));
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}
	
	public function editprofil($err = NULL)
	{
			/* if has session */
		if(isset($_SESSION['logged_in']) && $_SESSION['category'] == 'SCT'){
			$data['anggota'] = $this->SchoolPModel->selectJoinVSchTDash($this->SchoolTModel->selectByAccId($_SESSION['userid'])->row_array()['schteam_id'])->result_array();
			if($err!=NULL){
				$data['err'] = $err;
			}						
			$this->load->view('tim/layout/header');
			$this->load->view('tim/profil/editprofil',$data);
			$this->load->view('tim/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}
}
