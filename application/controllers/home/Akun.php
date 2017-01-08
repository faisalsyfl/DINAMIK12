<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Akun extends CI_Controller{

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
	 
	 /* 
		Index function
		Display the account page
	 */
	public function index($report=0)
	{
		$data['city'] = $this->CityModel->selectAll()->result_array();
		if($report==2){
			$data['color'] = "success";
			$data['h1'] = "Berhasil Daftar Akun!";
			$data['p'] = "Terimakasih telah membuat akun lomba/acara DINAMIK 12";
		}else if($report==3){
			$data['color'] = "danger";
			$data['h1'] = "Gagal Daftar Akun!";
			$data['p'] = "Gagal Daftar Akun DINAMIK12, Silahkan coba lagi atau hubungi kami";
		}else if($report==1){
			$data['color'] = "danger";
			$data['h1'] = "Gagal Masuk!";
			$data['p'] = "Username atau password salah, silahkan login kembali atau hubungi kami";			
		}else if($report==4){
			$data['color'] = "danger";
			$data['h1'] = "Akun belum diverifikasi";
			$data['p'] = "Akun tidak atau belum diverifikasi oleh admnisitrator, silahkan hubungi kami";	
		}
		// var_dump($data['city']);
		$this->load->view('layout/header');
		$this->load->view('home/akun',$data);
		$this->load->view('layout/footer');
		// var_dump($_COOKIE);
	}
	
	/* 
		Login function
		By username nor email
	*/
	public function login(){
		if(isset($_POST['btnLogin'])){
			$username = $_POST['username'];
			$password = $_POST['password'];
			$cb = $this->input->post('checkbox');


			/*Logging in via username nor email*/
			$data = $this->AccountModel->selectByUsername($username);
			if(!isset($data)){
				$data = $this->AccountModel->selectByEmail($username);
			}


			/*Checking Login*/
				if(md5($password) == $data['account_password']){
				/*Success Login*/
				
				$catename = $this->AccountModel->getCategoryNameByID($data['account_category_id']);
				$realname = $this->AccountModel->getNameByID($data['account_id'], $data['account_category_id']);
				
				/*Storing key value as session data*/
				$userdata = array(
					'userid'  => $data['account_id'],
					'username'  => $data['account_username'],
					'realname'  => $realname,
					'userimg'  => $data['account_image'],
					'email'     => $data['account_email'],
					'category'  => $data['account_category_id'],
					'catename'  => $catename,
					'status'  => $data['account_status'],
					'logged_in' => TRUE
					// 'key_value' => 'key_answer'
				);
				$this->session->set_userdata($userdata);

				/*if checkbox is checked*/
				if($cb == "on"){
					$cookie = array(
					    'name'   => 'username',
					    'value'  => $username,
					    'expire' => '1209600',  // Two weeks
					    'domain' => '',
					    'path'   => '/'
					);
					set_cookie($cookie);

					$cookie = array(
					    'name'   => 'password',
					    'value'  => $password,
					    'expire' => '1209600',  // Two weeks
					    'domain' => '',
					    'path'   => '/'
					);
					set_cookie($cookie);
				}
				
				/* SELECTING WHICH DASHBOARD SHOULD BE DIRECTED */
				if($userdata['category'] == 'ADMSU')	
					redirect(site_url('dashboard/admin'));
				else if($userdata['category'] == 'SCH' && $userdata['status'] == 1) 
					redirect(site_url('dashboard/sekolah'));
				else if($userdata['category'] == 'SCT' && $userdata['status'] == 1) 
					redirect(site_url('dashboard/tim'));
				else if($userdata['category'] == 'PUB' && $userdata['status'] == 1) 
					redirect(site_url('dashboard/publik'));
				else if($userdata['category'] == 'COR' && $userdata['status'] == 1) 
					redirect(site_url('dashboard/admin')); 
				else if($userdata['category'] == 'JDG' && $userdata['status'] == 1) 
					redirect(site_url('dashboard/admin'));
				else redirect(site_url('/akun/failedact'));
			}else{
				/*Failed Login*/
				// var_dump(md5($password)."---".$data['account_password']);
				redirect(site_url('/akun/failedlog'));
			}
		}
	}

	/**
	 * logout function
	 * @return [type] [description]
	 */
	public function logout(){
		$this->session->sess_destroy();
		redirect(site_url('/'));
	}

	/**
	 * register new member as school
	 * insert into account table
	 * also school table
	 * Automatically set status account FALSE, admin should verify their identity
	 * @return  
	 */
	public function regAsSchool(){
		if(isset($_POST['btnDaftarSekolah'])){
			$x =  count($this->AccountModel->selectByEmail($this->input->post('email')));
			$y =  count($this->AccountModel->selectByUsername(strtolower(implode("",explode(" ",$this->input->post('name'))))));
			if($x == 0 && $y == 0){

				$passgen = $this->UtilityModel->generatePassword();
				$passgen = implode("",$passgen);
				
				$acc['account_email'] = $this->input->post('email');
				$asd = explode(" ",$this->input->post('name'));
				$acc['account_username'] = strtolower(implode("",$asd));
				$acc['account_password'] = md5($passgen);
				$acc['account_image'] = "/assets/img/icon_dashboard/sekolah.jpg";
				$acc['account_category_id'] = "SCH";
				$acc['account_status'] = "1";
				$this->AccountModel->insert($acc);
				
				// var_dump($acc);
				
				$sch['school_name'] = $this->input->post('name');
				$sch['school_grade'] = $this->input->post('grade');
				$sch['school_contact'] = $this->input->post('contact');
				$sch['school_city_id'] = $this->input->post('city');
				$sch['school_account_id'] = $this->AccountModel->selectByUsername($acc['account_username'])['account_id'];
				// var_dump($sch);
				$this->SchoolModel->insert($sch);
				
				$data['account_username'] = $acc['account_username'];
				$data['account_password'] = $passgen;
				$email = $acc['account_email'];
				$this->sendmail("Akun DINAMIK12", $email, "Detail Pendaftaran Akun ".$sch['school_name'], $data, "reg");
				redirect(site_url('/akun/success'));
			}else{
				redirect(site_url('/akun/failedreg'));
			}
		}
	}

	/**
	 * Register as public
	 * Account for SEMNAS/TALKSHOW/DSTAR/DONOR
	 * Insert into: tbl_account and also tb_public
	 * Set account_status to TRUE, so user can login right after registration
	 * @return 
	 */
	public function regAsPublic(){
		if(isset($_POST['btnDaftarPublik'])){
			$x =  count($this->AccountModel->selectByEmail($this->input->post('email')));
			$y =  count($this->AccountModel->selectByUsername(strtolower(implode("",explode(" ",$this->input->post('name'))))));		
			if($x==0||$y==0){			
				$acc['account_email'] = $this->input->post('email');
				$asd = explode(" ",$this->input->post('name'));
				$acc['account_username'] = strtolower(implode("",$asd));
				$acc['account_password'] = md5($this->input->post('pass2'));
				$acc['account_image'] = "/assets/img/icon_dashboard/umum.jpg";
				$acc['account_category_id'] = "PUB";
				$acc['account_status'] = "1";
				$this->AccountModel->insert($acc);
				
				$pub['public_name'] = $this->input->post('name');
				$pub['public_contact'] = $this->input->post('contact');
				$pub['public_city_id'] = $this->input->post('city');
				$pub['public_account_id'] = $this->AccountModel->selectByUsername($acc['account_username'])['account_id'];
				$this->PublicModel->insert($pub);

				redirect(site_url('/akun/success'));			
			}else{
				redirect(site_url('/akun/failedreg'));
			}
		}
	}

	/**
	 * FORGOT PASSWORD
	 * generate new passw
	 * and sends email
	 * @return  
	 */
	public function forgotPass(){
		if(isset($_POST['btnForgot'])){
			$passgen = $this->UtilityModel->generatePassword();
			$passgen = implode("",$passgen);
			$email = $this->input->post('email');
			$edited['account_password'] = md5($passgen);
			
			$data = $this->AccountModel->findForgotten($email);
			print_r($edited);
			$id = $data['account_id'];
			print_r($id);
			$this->AccountModel->update($id, $edited);
			$data['account_password'] = $passgen;
			$data['account_username'] = $data['account_username'];
			$this->sendmail("Akun DINAMIK12", $email, "Lupa Password", $data, "for");
			redirect(site_url('/akun/success'));
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