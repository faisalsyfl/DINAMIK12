<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Acara extends CI_Controller {

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
		$data['list'] = $this->EventModel->selectAll()->result_array();
		// var_dump($data['list']);
		$this->load->view('layout/header');
		$this->load->view('home/acara',$data);
		$this->load->view('layout/footer');
	}
	public function view($view)
	{
		$data['list'] = $this->EventModel->selectAll()->result_array();		
		// var_dump($data['list']);
		$data['activetab'] = $view;
		$this->load->view('layout/header');
		$this->load->view('home/acara',$data);
		$this->load->view('layout/footer');
	}
}
