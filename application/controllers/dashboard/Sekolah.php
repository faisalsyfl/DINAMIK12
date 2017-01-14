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
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCH'){

			$data['list'] = $this->SchoolTModel->viewSchtDash($this->SchoolModel->selectByAccId($_SESSION['userid'])->row_array()['school_id'])->result_array();
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
	public function profil($err = NULL)
	{
		/* if has session */
		if(isset($_SESSION['logged_in']) && $_SESSION['category'] == 'SCH'){
				$data['list'] = $this->SchoolModel->selectByAccIdJoin($_SESSION['userid'])->row_array();
				if($err!=NULL){
					$data['err'] = $err;
				}
				$this->load->view('sekolah/layout/header');
				$this->load->view('sekolah/profil/profil',$data);
				$this->load->view('sekolah/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function editPass(){
		if(isset($_SESSION['logged_in']) && $_SESSION['category'] == 'SCH'){
			$data = $this->input->post();
			if($this->AccountModel->selectById($_SESSION['userid'])->row_array()['account_password'] == md5($data['bef'])){
				if($data['aft1']==$data['aft2']){
					$edited['account_password'] = md5($data['aft1']);
					$this->AccountModel->update($_SESSION['userid'],$edited);
					redirect(site_url('dashboard/Sekolah/profil/1'));
				}else{
					redirect(site_url('dashboard/Sekolah/profil/2'));
				}
			}else{
				redirect(site_url('dashboard/Sekolah/profil/2'));
			}
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function pendaftarantim(){
		/* if has session */
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCH'){
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
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCH'){
			$school = $this->SchoolModel->selectByAccId($_SESSION['userid'])->row_array();
			$data = $this->input->post();
			$asd = explode(" ",$this->input->post('schteam_name'));
			$acc['account_username'] = strtolower(implode("",$asd));
			$acc['account_email'] = $data['account_email'];
			$acc['account_password'] = md5($data['account_password']);
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
			unset($data['account_email']);
			unset($data['account_password']);
			$insert['schparticipant_schteam_id'] = $this->SchoolTModel->insert($data);
			
			for($i=0;$i<3;$i++){
				if($cAnggota[$i] != ""){
					$insert['schparticipant_name'] = $cAnggota[$i];
					$insert['schparticipant_nisn'] = $cNISN[$i];
					$this->SchoolPModel->insert($insert);
				}
			}
			redirect(site_url('dashboard/Sekolah/'));
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}
	
	public function processEdit(){
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCH'){
			$school = $this->SchoolModel->selectByAccId($_SESSION['userid'])->row_array();
			$data = $this->input->post();
			$asd = explode(" ",$this->input->post('schteam_name'));
			$acc['account_username'] = strtolower(implode("",$asd));
			$acc['account_email'] = $_SESSION['email'];
			$acc['account_password'] = md5($data['account_password']);
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
			unset($data['account_password']);
			$insert['schparticipant_schteam_id'] = $this->SchoolTModel->insert($data);
			
			for($i=0;$i<3;$i++){
				if($cAnggota[$i] != ""){
					$insert['schparticipant_name'] = $cAnggota[$i];
					$insert['schparticipant_nisn'] = $cNISN[$i];
					$this->SchoolPModel->insert($insert);
				}
			}
			redirect(site_url('dashboard/Sekolah/'));
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}	

	public function detailtim($id){
		/* if has session */
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCH'){
				$data['anggota'] = $this->SchoolPModel->selectJoinVSchTDash($id)->result_array();
				// var_dump($data['anggota']);
				$data['account'] = $this->AccountModel->selectById($data['anggota'][0]['acc_id'])->row_array();
				$this->load->view('sekolah/layout/header');
				$this->load->view('sekolah/detailtim/detailtim',$data);
				$this->load->view('sekolah/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function sekolahAction($id,$string){
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCH'){
			if($string == "edit"){
				/* EDIT SEKOLAH TJOI */
			}else if($string == "del"){
				$this->SchoolPModel->delete($id);
				$accid = $this->SchoolTModel->selectById($id)->row_array()['schteam_account_id'];
				$payid = $this->SchoolTModel->selectById($id)->row_array()['schteam_payment_id'];
				$this->SchoolTModel->delete($id);
				// unlink('./uploads/'.$this->PaymentModel->selectById($pay_id))
				$this->PaymentModel->delete($payid);
				$this->AccountModel->delete($accid);

				redirect(site_url('dashboard/sekolah/'));
			}
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function uploadBukti(){
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCH'){			
			$data['school'] = $this->SchoolModel->selectByAccIdJoin($_SESSION['userid'])->row_array();
			$data['list'] = $this->SchoolTModel->viewSchtDash($this->SchoolModel->selectByAccId($_SESSION['userid'])->row_array()['school_id'], 0)->result_array();		
			// var_dump($data);
			$this->load->view('sekolah/layout/header');
			$this->load->view('sekolah/uploadbayar',$data);
			$this->load->view('sekolah/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function uploadB(){
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCH'){			
			$x = 	$this->input->post();
			var_dump($x);
			$config['upload_path']          = './uploads/';
			$config['allowed_types']        = 'jpg|png|pdf|rar';
			$config['max_size']             = 0;
			$config['max_width']            = 0;
			$config['max_height']           = 0;
			date_default_timezone_set("Asia/Bangkok");		
			$config['file_name']				  = $_SESSION['username']."-".time();
			echo $config['file_name'];
			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('payment_document')){
				//gagal
				redirect(site_url('dashboard/sekolah/uploadBukti'));
			}else{
				//sukses
				$upload['payment_document'] = $config['file_name'].$this->upload->data('file_ext');
				$upload['payment_description'] = $x['payment_description'];			
				foreach($x['pay_id'] as $id){
					$this->PaymentModel->update($id,$upload);
				}
				redirect(site_url('dashboard/sekolah/'));
			}	
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}

	public function editprofil(){
		/* if has session */
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'SCH'){
			$data['list'] = $this->EventModel->selectAll(8,0)->result_array();
			$this->load->view('sekolah/layout/header');
			$this->load->view('sekolah/profil/editprofil',$data);
			$this->load->view('sekolah/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}
}
