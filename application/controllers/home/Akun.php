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
					redirect(site_url('dashboard/admin'));
				else if($userdata['category'] == 'SCT' && $userdata['status'] == 1) 
					redirect(site_url('dashboard/admin'));
				else if($userdata['category'] == 'PUB' && $userdata['status'] == 1) 
					redirect(site_url('dashboard/admin'));
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
			
			$acc['account_email'] = $this->input->post('email');
			$asd = explode(" ",$this->input->post('name'));
			$acc['account_username'] = strtolower(implode("",$asd));
			$acc['account_password'] = md5($acc['account_username']);
			$acc['account_image'] = "/assets/img/icon_dashboard/sekolah.jpg";
			$acc['account_category_id'] = "SCH";
			$this->AccountModel->insert($acc);
			
			// var_dump($acc);
			
			$sch['school_name'] = $this->input->post('name');
			$sch['school_grade'] = $this->input->post('grade');
			$sch['school_contact'] = $this->input->post('contact');
			$sch['school_city_id'] = $this->input->post('city');
			$sch['school_account_id'] = $this->AccountModel->selectByUsername($acc['account_username'])['account_id'];
			// var_dump($sch);
			$this->SchoolModel->insert($sch);

			redirect(site_url('/akun/success'));
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
		}
	}
}	
