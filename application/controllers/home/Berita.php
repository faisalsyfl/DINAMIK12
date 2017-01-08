<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Berita extends CI_Controller {

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
		$data['list'] = $this->NewsModel->selectAll()->result_array();
		$data['row'] = $this->NewsModel->selectAll()->num_rows();
		// var_dump($data['list']);
		$this->load->view('layout/header');
		$this->load->view('home/berita',$data);
		$this->load->view('layout/footer');
	}
	
	public function detail($id){
		
		$data['list']=$this->NewsModel->selectById($id)->row_array();
		$this->load->view('layout/header');
		$this->load->view('home/detail_news',$data);
		$this->load->view('layout/footer');
		
		
	}
}
