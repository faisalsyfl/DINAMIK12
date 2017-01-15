<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Galeri extends CI_Controller {

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
	 
	private function fetchData($url){
		 $ch = curl_init();
		 curl_setopt($ch, CURLOPT_URL, $url);
		 curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		 curl_setopt($ch, CURLOPT_TIMEOUT, 20);
		 $result = curl_exec($ch);
		 curl_close($ch); 
		 return $result;
	}
	 
	public function index()
	{
		$userid = "2123678738";
		$accessToken = "2123678738.1ba89ec.abff9d6bc16c42d890e53343191b2572";
		$result = $this->fetchData("https://api.instagram.com/v1/users/{$userid}/media/recent/?access_token={$accessToken}");
		$result = json_decode($result);
		$data['result']=$result;
		$this->load->view('layout/header');
		$this->load->view('home/galeri',$data);
		$this->load->view('layout/footer');
		
	}
	
		
}