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
	public function index()
	{
		$this->load->view('layout/header');
		$this->load->view('home/akun');
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

				/*Storing key value as session data*/
				$userdata = array(
					'username'  => $data['account_username'],
					'email'     => $data['account_email'],
					'category'  => $data['account_category'],
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
				if($userdata['category'] == 'ADM')	redirect(site_url('dashboard/admin'));
				
			}else{
				/*Failed Login*/
				redirect(site_url('/akun'));
			}
		}
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect(site_url('/'));
	}
}
