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
		if(isset($_SESSION['logged_in'])  && $_SESSION['category'] == 'PUB'){
			$data['list'] = $this->PublicTModel->viewPubtDash($this->PublicModel->selectByAccId($_SESSION['userid'])->row_array()['public_id'])->result_array();
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

	public function processEdit(){
		$data = $this->input->post();
		$id = $data['pubteam_id'];
		unset($data['pubteam_id']);
		unset($data['submit']);
		// var_dump($data);
		$this->PublicTModel->update($id,$data);
		redirect(site_url('dashboard/Publik/'));
		
		// redirect(site_url('dashboard/Publik/'));
	}	

	public function publikAction($id,$string){
		if($string == "edit"){
			$data['list'] = $this->EventModel->selectAll(9,8)->result_array();	
			$data['data'] = $this->PublicTModel->selectById($id)->row_array();
			$this->load->view('publik/layout/header');
			$this->load->view('publik/edittim',$data);
			$this->load->view('publik/layout/footer');	
		}else if($string == "del"){
			$payid = $this->PublicTModel->selectById($id)->row_array()['pubteam_payment_id'];
			$this->PublicTModel->delete($id);
			$this->PaymentModel->delete($payid);
			redirect(site_url('dashboard/publik/'));
		}
	}
	public function uploadBukti(){
		// $data['public'] = $this->PublicModel->selectByAccIdJoin($_SESSION['userid'])->row_array();
		$data['list'] = $this->PublicTModel->viewPubtDash($this->PublicModel->selectByAccId($_SESSION['userid'])->row_array()['public_id'])->result_array();		
		// var_dump($data);
		$this->load->view('publik/layout/header');
		$this->load->view('publik/uploadbayar',$data);
		$this->load->view('publik/layout/footer');		
	}	

	public function uploadB(){
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
			redirect(site_url('dashboard/publik/uploadBukti'));
		}else{
			//sukses
			$upload['payment_document'] = $config['file_name'].$this->upload->data('file_ext');
			$upload['payment_description'] = $x['payment_description'];
			var_dump($upload);
			foreach($x['pay_id'] as $id){
				$this->PaymentModel->update($id,$upload);
			}
			redirect(site_url('dashboard/publik/'));
		}	
	}		
}
