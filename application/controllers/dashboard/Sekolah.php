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
			// var_dump($data['list']);
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

	public function sekolahAction($id,$string,$ida=null){
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
			}else if($string == "lp"){
				$passgen = $this->UtilityModel->generatePassword();
				$passgen = implode("",$passgen);
				$email = $_SESSION['email'];
				$edited['account_password'] = md5($passgen);
				
				$data = $this->AccountModel->selectById($ida)->row_array();

				$this->AccountModel->update($ida, $edited);
				$data['account_password'] = $passgen;
				$data['account_username'] = $data['account_username'];
				print_r($data);
				$this->sendmail("Akun DINAMIK12", $email, "Lupa Password", $data, "for");
				redirect(site_url('/akun/success'));

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
	/**
	 * SENDS EMAIL
	 * for forgot pass & regist
	 * @return  
	 */
	public function sendmail($sendername, $receiver, $subj, $data, $param){
		/*
			** SEND MAIL **
		*/
		$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_port' => 465,
			'smtp_user' => 'dinamik.cs@upi.edu',
			'smtp_pass' => '!dinamik12csupi#',
			'mailtype'  => 'html',
			'charset'   => 'iso-8859-1'
		);
		
		$this->load->library('email', $config);
		$this->email->set_newline("\r\n");

		/* sender  */
		$from_mail="dinamik.cs@upi.edu";
		$from_name=$sendername;
		
		/* dest */
		$to_mail = $receiver;	
		
		/*mail subject*/
		$subject = $subj;
		
		/* mail body (html format)*/
		$message="<table style='width:100%; font-family:arial; text-align: center; color:#6d6d6d; border: none; background-color: #d0d4dc;'>
			<tr style='height:30px;'></tr>
			<tr style='color:#fff; ; height: 100px; text-align: center;'>
				<td></td>
				<td style='width: 700px;background-color: #0a337f;border-bottom: 5px solid #ffa619;'><img src='https://s28.postimg.org/46tpgahzx/logo_white.png' style='width:250px;'></td>
				<td></td>
			</tr>
			<tr style='border-top:'>
				<td></td>
				<td style='width: 700px;background-color: #fff; border-top: none;'>
					<br>
					<h3 style='color: #0a337f'>Selamat Datang di DINAMIK12</h3>
					<hr style='width: 500px; border-top: 1px solid #d0d4dc;'>
					<p>";
					
		if($param == "reg"){
			$message .="
					<br>
					Terimakasih telah ikut serta dan mendaftarkan sekolah anda dalam acara DINAMIK12,
					<br>
					Silahkan gunakan username dan password dibawah ini untuk masuk<br>
					<br>
					Username: <b>".$data['account_username']."</b><br>
					Password: <b>".$data['account_password']."</b><br>
					<br>
					Harap segera ubah password anda ketika anda sudah berhasil masuk.
					<br>
					<hr style='width: 500px; border-top: 1px solid #d0d4dc;'>
					<br>
					Informasi lebih lanjut :
					<a href='http://dinamik.cs.upi.edu' target='_blank' style='color:#007eff;'>dinamik.cs.upi.edu</a><br>
					Jika ada pertanyaan silahkan kirimkan melalui pesan baru ke alamat <a href='mailto:dinamik.cs@upi.edu' style='color:#007eff;' target='_blank'>dinamik.cs@upi.edu</a>
					<br>
					Pesan ini dibuat secara otomatis oleh sistem DINAMIK12. Harap tidak membalas pesan ini, terima kasih.
					<br>
					<br>";
		}else{
			$message .="
					<br>
					Atas permintaan anda, kami telah membuat password baru untuk akun anda,
					<br>
					detail baru akun anda saat ini adalah : <br>
					<br>
					Username: <b>".$data['account_username']."</b><br>
					Password: <b>".$data['account_password']."</b><br>
					<br>
					Harap segera ubah password anda ketika anda sudah berhasil masuk.
					<br>
					<hr style='width: 500px; border-top: 1px solid #d0d4dc;'>
					<br>
					Informasi lebih lanjut :
					<a href='http://dinamik.cs.upi.edu' target='_blank' style='color:#007eff;'>dinamik.cs.upi.edu</a><br>
					Jika ada pertanyaan silahkan kirimkan melalui pesan baru ke alamat <a href='mailto:dinamik.cs@upi.edu' style='color:#007eff;' target='_blank'>dinamik.cs@upi.edu</a>
					<br>
					Pesan ini dibuat secara otomatis oleh sistem DINAMIK12. Harap tidak membalas pesan ini, terima kasih.
					<br>
					<br>";
		}
		
		$message .="
					</p>
				</td>
				<td></td>
			</tr>
			<tr style='height:30px;'></tr>
		</table>";
		
		$this->email->set_newline("\r\n");
		$this->email->from($from_mail, $from_name);
		$this->email->to($to_mail);
		$this->email->subject($subject);	
		$this->email->message($message);  	
		$this->email->send();
		
		/* 
		DEBUGGING PURPOSE
		if($result){
			echo "success";
		}else{
			echo $this->email->print_debugger();
		} 
		*/
	}	
}
