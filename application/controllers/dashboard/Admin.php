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
			/* if has session */
		if(isset($_SESSION['logged_in'])){
			$head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();
			$data['total'] = $this->AccountModel->selectAll()->num_rows();
			$this->load->view('admin/layout/header',$head);
			$this->load->view('admin/main',$data);
			$this->load->view('admin/layout/footer');
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	

	/* 
		Account page 
		Show per category if parameter is not NULL
		ADM Admin
		JDG Juri
		COR koor
		PBT Peserta Acara
		SCH sekolah
		PUB umum
		SCT Tim sekolah
	*/
	public function akun($category = NULL)
	{
		/* if has session */
		if(isset($_SESSION['logged_in'])){
			if($category == NULL){
				$head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();

				$data['list'] = $this->AccountModel->selectJoinCategory()->result_array();
				// var_dump($data['list']);
				$this->load->view('admin/layout/header',$head);
				$this->load->view('admin/akun',$data);
				$this->load->view('admin/layout/footer');
			}else{
				$head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();
				$data['list'] = $this->AccountModel->selectJoinCategory($category)->result_array();
				// var_dump($data['list']);
				$this->load->view('admin/layout/header',$head);
				$this->load->view('admin/akun',$data);
				$this->load->view('admin/layout/footer');
			}
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}

	/**
	 * Account action on table
	 * 1. Verif account
	 * 2. Watch as Account
	 * 3. Edit Account
	 * 4. Delete Account
	 * @param  int $id   account id to be edited
	 * @param  string $aksi action
	 * @return        
	 */
	public function akunAction($id,$aksi){
		if($aksi == "verif"){
			$row = $this->AccountModel->selectById($id)->row_array();
			if($row['account_status'] == 1) 
				$upd['account_status'] = 0;
			else $upd['account_status'] = 1;
			$this->AccountModel->update($id,$upd);
			redirect(site_url('dashboard/admin/akun'));
		}else if($aksi == "watch"){
			/*Action Watch as*/
			/*SOON*/
		}else if($aksi == "edit"){
			$head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();
			$data['row'] = $this->AccountModel->selectById($id)->row_array();

			$this->load->view('admin/layout/header',$head);
			$this->load->view('admin/akunedit',$data);
			$this->load->view('admin/layout/footer');
		}else if($aksi == "editAct"){
			$upd['account_email'] = $this->input->post('email');
			$upd['account_username'] = $this->input->post('name');
			$this->AccountModel->update($id,$upd);
			redirect(site_url('dashboard/admin/akun'));
		}else if($aksi == "del"){
			/*We have to delete school/public query first, then account*/
			// $this->AccountModel->selectById($id)->row_array();
			$suc = $this->PublicModel->delete($this->PublicModel->selectByAccId($id)->row_array()['public_id']);
			if(!$suc){
				$this->SchoolModel->delete($this->SchoolModel->selectByAccId($id)->row_array()['school_id']);
			}
			$this->AccountModel->delete($id);
			redirect(site_url('dashboard/admin/akun'));
		}
	}
	
}
