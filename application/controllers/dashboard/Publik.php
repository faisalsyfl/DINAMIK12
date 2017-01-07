	<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Publik extends CI_Controller {

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
			$data['list'] = $this->PublicTModel->viewPubtDash()->result_array();
			$this->load->view('publik/layout/header');
			$this->load->view('publik/index',$data);
			$this->load->view('publik/layout/footer');				
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
		if(isset($_SESSION['logged_in'])){
			if($err!=NULL){
				$data['err'] = $err;
			}			
			$data['list'] = $this->PublicModel->selectByAccIdJoin($_SESSION['userid'])->row_array();
			$this->load->view('publik/layout/header');
			$this->load->view('publik/profil',$data);
			$this->load->view('publik/layout/footer');		
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
				redirect(site_url('dashboard/Publik/profil/1'));
			}else{
				redirect(site_url('dashboard/Publik/profil/2'));
			}
		}else{
			redirect(site_url('dashboard/Publik/profil/2'));
		}
	}	

	public function pendaftarantim(){
		/* if has session */
		if(isset($_SESSION['logged_in'])){
			$data['list'] = $this->EventModel->selectAll(9,8)->result_array();
			$this->load->view('publik/layout/header');
			$this->load->view('publik/pendaftarantim',$data);
			$this->load->view('publik/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function processDaftar(){
		$public = $this->PublicModel->selectByAccId($_SESSION['userid'])->row_array();
		$data = $this->input->post();

		$pay['payment_amount'] = $this->EventModel->selectById($data['pubteam_event_id'])->row_array()['event_price'];
		$pay['payment_unique_code'] = implode("",$this->PaymentModel->generate());
		$data['pubteam_payment_id'] = $this->PaymentModel->insert($pay);
		$data['pubteam_public_id'] = $public['public_id'];
		unset($data['submit']);
		// var_dump($data);
		$x = $this->PublicTModel->insert($data);
		
		redirect(site_url('dashboard/Publik/'));
	}

	public function detailtim($id){
			/* if has session */
		if(isset($_SESSION['logged_in'])){
				$data['anggota'] = $this->SchoolPModel->selectJoinVSchTDash($id)->result_array();
				$this->load->view('public/layout/header');
				$this->load->view('public/detailtim',$data);
				$this->load->view('public/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function publikAction($id,$string){
		if($string == "edit"){
			
		}else if($string == "del"){
			$payid = $this->PublicTModel->selectById($id)->row_array()['schteam_payment_id'];
			$this->PublicTModel->delete($id);
			$this->PaymentModel->delete($payid);

			redirect(site_url('dashboard/publik/'));
		}
	}
}
