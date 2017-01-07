	<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sekolah extends CI_Controller {

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
			$data['list'] = $this->SchoolTModel->viewSchtDash()->result_array();
			$this->load->view('sekolah/layout/header');
			$this->load->view('sekolah/daftartim/index',$data);
			$this->load->view('sekolah/layout/footer');				
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
				$data['list'] = $this->SchoolModel->selectByAccIdJoin($_SESSION['userid'])->row_array();
				$this->load->view('sekolah/layout/header');
				$this->load->view('sekolah/profil/profil',$data);
				$this->load->view('sekolah/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function pendaftarantim(){
			/* if has session */
		if(isset($_SESSION['logged_in'])){
				$data['list'] = $this->EventModel->selectAll(8,0)->result_array();
				$this->load->view('sekolah/layout/header');
				$this->load->view('sekolah/pendaftarantim/pendaftarantim',$data);
				$this->load->view('sekolah/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function processDaftar(){
		$school = $this->SchoolModel->selectByAccId($_SESSION['userid'])->row_array();
		$data = $this->input->post();
		$asd = explode(" ",$this->input->post('schteam_name'));
		$acc['account_username'] = strtolower(implode("",$asd));
		$acc['account_email'] = $_SESSION['email'];
		$acc['account_password'] = md5($acc['account_username']);
		$acc['account_image'] = "/assets/img/icon_dashboard/tim.jpg";
		$acc['account_category_id'] = "SCT";
		$this->AccountModel->insert($acc);

		$pay['payment_amount'] = $this->EventModel->selectById($data['schteam_event_id'])->row_array()['event_price'];
		$pay['payment_unique_code'] = implode("",$this->PaymentModel->generate());
		$data['schteam_payment_id'] = $this->PaymentModel->insert($pay);

		$data['schteam_account_id'] = $this->AccountModel->selectByUsername(strtolower(implode("",$asd)))['account_id'];
		$data['schteam_school_id'] = $school['school_id'];
		unset($data['submit']);
		$cAnggota = $data['anggota'];
		$cNISN = $data['nisn'];
		unset($data['anggota']);
		unset($data['nisn']);
		$insert['schparticipant_schteam_id'] = $this->SchoolTModel->insert($data);
		
		for($i=0;$i<3;$i++){
			if($cAnggota[$i] != ""){
				$insert['schparticipant_name'] = $cAnggota[$i];
				$insert['schparticipant_nisn'] = $cNISN[$i];
				$this->SchoolPModel->insert($insert);
			}
		}
		redirect(site_url('dashboard/Sekolah/'));
	}

	public function detailtim($id){
			/* if has session */
		if(isset($_SESSION['logged_in'])){
				$data['anggota'] = $this->SchoolPModel->selectJoinVSchTDash($id)->result_array();
				$this->load->view('sekolah/layout/header');
				$this->load->view('sekolah/detailtim/detailtim',$data);
				$this->load->view('sekolah/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function sekolahAction($id,$string){
		if($string == "edit"){
			
		}else if($string == "del"){
			$this->SchoolPModel->delete($id);
			$accid = $this->SchoolTModel->selectById($id)->row_array()['schteam_account_id'];
			$payid = $this->SchoolTModel->selectById($id)->row_array()['schteam_payment_id'];
			$this->SchoolTModel->delete($id);
			$this->PaymentModel->delete($payid);
			$this->AccountModel->delete($accid);

			redirect(site_url('dashboard/sekolah/'));
		}
	}
}
