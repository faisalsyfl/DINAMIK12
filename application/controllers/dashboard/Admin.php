<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

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
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/main');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/'));
		}
	}
	
	/* Event page */
	public function acaralomba()
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/acaralomba');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	/* Calendar page */
	public function kalender()
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/kalender');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	/* 
		Account page 
		Show per category if parameter is not NULL
	*/
	public function akun($category = NULL)
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/main_dashboard');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	/* 
		News page 
	*/
	public function berita()
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/acaralomba');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	/* 
		Scoring page (NOT IN PRIORITY)
	*/
	public function penjurian()
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/acaralomba');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	/* 
		Mailbox page 
	*/
	public function kotakpesan()
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/acaralomba');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	/* 
		Bazaar info and list page 
	*/
	public function bazaar()
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/acaralomba');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	/* 
		Participant list
	*/
	public function datapeserta()
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/acaralomba');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	/* 
		Public team list
		Show per category if param is not null
	*/
	public function timacara($category = NULL)
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/acaralomba');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	/* 
		School team list
		Show per category if param is not null
	*/
	public function timlomba($category = NULL)
	{
		if(isset($_SESSION['logged_in'])){
			/* if has session */
			$this->load->view('admin/acaralomba');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
}
