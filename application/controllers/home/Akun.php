<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Akun extends CI_Controller {

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
	public function index()
	{
		$this->load->view('layout/header');
		$this->load->view('home/akun');
		$this->load->view('layout/footer');
	}
	
	public function login(){
		if(isset($_POST['btnLogin'])){
		
			$username = $_POST['username'];
			$password = $_POST['password'];
			$options = [
				'cost' => 10,
				'salt' => "dinamik#12^accounts@upi%bdg",
			];
			$hash = password_hash($password, PASSWORD_DEFAULT, $options);
			/* Output hasil hash password	 	*/
			/* echo "<b><hr>".$hash."</b>"; 	*/
	}
		
	}
}