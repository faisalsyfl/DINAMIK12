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
	private $head;
	public function __construct(){
		parent::__construct();
		$this->head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();
		$this->head['totalNews'] = $this->NewsModel->selectAll()->num_rows();
		$this->head['totalPubTeam'] = $this->PublicTModel->selectAll()->num_rows();
		$this->head['totalSchTeam'] = $this->SchoolTModel->selectAll()->num_rows();
		$this->head['totalSchPart'] = $this->SchoolPModel->selectAll()->num_rows();
		$this->head['totalbazaar'] = $this->BazaarModel->selectAll()->num_rows();
		$this->head['totalsponsor'] = $this->SponsorModel->selectAll()->num_rows();
		$totalPaySch = $this->PaymentModel->viewSchtDash()->result();
		$this->head['totalPaySch'] = 0;
		foreach($totalPaySch as $tps){
			if($tps->pay_document != NULL)
				$this->head['totalPaySch']+=1;
		}
		$totalPayPub = $this->PaymentModel->viewPubtDash()->result();
		$this->head['totalPayPub'] = 0;
		foreach($totalPayPub as $tps){
			if($tps->pay_document != NULL)
				$this->head['totalPayPub']+=1;
		}		
		// var_dump($head);	
		
	}
	/* INDEX FUNCTION */
	public function index()
	{
			/* if has session */
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			$data['totalakun'] = $this->AccountModel->selectAll()->num_rows()-22;
			$data['totaltim'] = $this->SchoolTModel->selectAll()->num_rows() + $this->PublicTModel->selectAll()->num_rows();
			
			$footer['lomba_ldg'] = $this->SchoolTModel->viewSchtDashByEvent(1)->num_rows();
			$data['valid_ldg'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(1, 1)->num_rows();
			$data['not_ldg'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(1, 0)->num_rows();
			
			$footer['lomba_lcw'] = $this->SchoolTModel->viewSchtDashByEvent(2)->num_rows(); 
			$data['valid_lcw'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(2, 1)->num_rows();
			$data['not_lcw'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(2, 0)->num_rows();
			
			$footer['lomba_otik'] = $this->SchoolTModel->viewSchtDashByEvent(3)->num_rows(); 
			$data['valid_otik'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(3, 1)->num_rows();
			$data['not_otik'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(3, 0)->num_rows();
			
			$footer['lomba_pca'] = $this->SchoolTModel->viewSchtDashByEvent(4)->num_rows(); 
			$data['valid_pca'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(4, 1)->num_rows();
			$data['not_pca'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(4, 0)->num_rows();
			
			$footer['lomba_cspc'] = $this->SchoolTModel->viewSchtDashByEvent(5)->num_rows(); 
			$data['valid_cspc'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(5, 1)->num_rows();
			$data['not_cspc'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(5, 0)->num_rows();
			
			$footer['lomba_lca'] = $this->SchoolTModel->viewSchtDashByEvent(6)->num_rows(); 
			$data['valid_lca'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(6, 1)->num_rows();
			$data['not_lca'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(6, 0)->num_rows();
			
			$footer['lomba_rlf'] = $this->SchoolTModel->viewSchtDashByEvent(7)->num_rows(); 
			$data['valid_rlf'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(7, 1)->num_rows();
			$data['not_rlf'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(7, 0)->num_rows();
			
			$footer['lomba_kj'] = $this->SchoolTModel->viewSchtDashByEvent(8)->num_rows(); 
			$data['valid_kj'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(8, 1)->num_rows();
			$data['not_kj'] = $this->SchoolTModel->viewSchtDashByPayAndEvent(8, 0)->num_rows();
			
			$footer['acara_talkshow'] = $this->PublicTModel->viewPubtDashByEvent(9)->num_rows();
			$data['valid_talkshow'] = $this->PublicTModel->viewPubtDashByPayAndEvent(9, 1)->num_rows();
			$data['not_talkshow'] = $this->PublicTModel->viewPubtDashByPayAndEvent(9, 0)->num_rows();
			
			$footer['acara_semnas'] = $this->PublicTModel->viewPubtDashByEvent(10)->num_rows();
			$data['valid_semnas'] = $this->PublicTModel->viewPubtDashByPayAndEvent(10, 1)->num_rows();
			$data['not_semnas'] = $this->PublicTModel->viewPubtDashByPayAndEvent(10, 0)->num_rows();
			
			$footer['acara_felose'] = $this->PublicTModel->viewPubtDashByEvent(11)->num_rows();
			$data['valid_felose'] = $this->PublicTModel->viewPubtDashByPayAndEvent(11, 1)->num_rows();
			$data['not_felose'] = $this->PublicTModel->viewPubtDashByPayAndEvent(11, 0)->num_rows();
			
			$footer['acara_donor'] = $this->PublicTModel->viewPubtDashByEvent(12)->num_rows();
			$data['valid_donor'] = $this->PublicTModel->viewPubtDashByPayAndEvent(12, 1)->num_rows();
			$data['not_donor'] = $this->PublicTModel->viewPubtDashByPayAndEvent(12, 0)->num_rows();
			
			$footer['acara_workshop'] = $this->PublicTModel->viewPubtDashByEvent(13)->num_rows();
			$data['valid_workshop'] = $this->PublicTModel->viewPubtDashByPayAndEvent(13, 1)->num_rows();
			$data['not_workshop'] = $this->PublicTModel->viewPubtDashByPayAndEvent(13, 0)->num_rows();
			
			$footer['acara_dstar'] = $this->PublicTModel->viewPubtDashByEvent(14)->num_rows();
			$data['valid_dstar'] = $this->PublicTModel->viewPubtDashByPayAndEvent(14, 1)->num_rows();
			$data['not_dstar'] = $this->PublicTModel->viewPubtDashByPayAndEvent(14, 0)->num_rows();
			
			$footer['status'] = 1;
			
			// var_dump($_SESSION['category']);
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/main',$data);
			$this->load->view('admin/layout/footer', $footer);
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
	public function akun($category = NULL)
	{
		/* if has session */
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			if($category == NULL){
				$data['list'] = $this->AccountModel->selectJoinCategory()->result_array();
				// var_dump($data['list']);
				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/akun/akun',$data);
				$this->load->view('admin/layout/footer');
			}else{
				$data['list'] = $this->AccountModel->selectJoinCategory($category)->result_array();
				// var_dump($data['list']);
				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/akun/akun',$data);
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
	public function akunAction($id, $aksi, $cat = NULL){
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			if($aksi == "verif"){
				$row = $this->AccountModel->selectById($id)->row_array();
				if($row['account_status'] == 1) 
					$upd['account_status'] = 0;
				else $upd['account_status'] = 1;
				$this->AccountModel->update($id,$upd);
				redirect(site_url('dashboard/admin/akun'));
			}else if($aksi == "watch"){
				/*Action Watch */
				
				/* 
				SET WATCH SESSION DATA
				$watchuserdata = array(
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
				$this->session->set_userdata($userdata); */
				
				/* 
				LOAD THE MAIN PAGE OF THAT ACCOUNT CATEGORY AND DATA
				$this->load->view('admin/layout/header',$head);
				$this->load->view('admin/akun/akunedit',$data);
				$this->load->view('admin/layout/footer'); 
				*/
				
			}else if($aksi == "edit"){
				// $head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();
				$data['row'] = $this->AccountModel->selectById($id)->row_array();

				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/akun/akunedit',$data);
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
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}

	public function acaralomba(){
			/* if has session */
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
				// $head['totalAcc'] = $this->AccountModel->selectAll()->num_rows();
				// $head['data'] = $this->AccountModel->selectById($_SESSION['userid'])->result_array();
				$data['list'] = $this->EventModel->selectAll()->result_array();
				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/acaralomba/index',$data);
				$this->load->view('admin/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}


	public function eventAction($id,$aksi){
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			if($aksi == "activate"){
				$row = $this->EventModel->selectById($id)->row_array();
				if($row['event_status'] == 1) 
					$upd['event_status'] = 0;
				else $upd['event_status'] = 1;
				$this->EventModel->update($id,$upd);
				redirect(site_url('dashboard/admin/acaralomba'));			
			}else if($aksi == "edit"){
				$data['row'] = $this->EventModel->selectById($id)->row_array();

				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/acaralomba/eventedit',$data);
				$this->load->view('admin/layout/footer');
			}else if($aksi == "editAct"){
				$data = $this->input->post();
				unset($data['btnEdit']);
				$this->EventModel->update($id,$data);
				redirect(site_url('dashboard/admin/acaralomba'));
			}
		}else{
			redirect(site_url('/akun'));		
		}
	}
	
	public function timacara($cat=NULL){
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			if($cat==NULL){
				$data['list'] = $this->PublicTModel->viewPubtDash()->result_array();
				$data['link'] = NULL;
				// var_dump($data);
				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/timacara/index',$data);
				$this->load->view('admin/layout/footer');
			}else{
				$data['list'] = $this->PublicTModel->viewPubtDashByEvent($cat)->result_array();
				$data['link'] = true;
				// var_dump($data);
				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/timacara/index',$data);
				$this->load->view('admin/layout/footer');				
			}
		}else{
				redirect(site_url('/akun'));		
		}
	}
	public function timlomba($cat=NULL){
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			if($cat==NULL){
				$data['list'] = $this->SchoolTModel->viewSchtDash()->result_array();
				// var_dump($data);
				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/timlomba',$data);
				$this->load->view('admin/layout/footer');
			}else{
				$data['list'] = $this->SchoolTModel->viewSchtDashByEvent($cat)->result_array();
				// var_dump($data);
				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/timlomba',$data);
				$this->load->view('admin/layout/footer');				
			}
		}else{
				redirect(site_url('/akun'));		
		}
	}	


	public function berita(){
			/* if has session */
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
				$data['list'] = $this->NewsModel->selectJoinEvent()->result_array();
				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/berita/index',$data);
				$this->load->view('admin/layout/footer');		
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}
	
	public function newsAction($aksi,$id=NULL){	
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			if($aksi == "edit"){
				$data['event_list'] = $this->EventModel->selectAll()->result_array();
				$data['row'] = $this->NewsModel->selectById($id)->row_array();

				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/berita/newsedit',$data);
				$this->load->view('admin/layout/footer');
			}else if($aksi=="add"){
				$data['event_list'] = $this->EventModel->selectAll()->result_array();
				$this->load->view('admin/layout/header',$this->head);
				$this->load->view('admin/berita/newsadd',$data);
				$this->load->view('admin/layout/footer');
			}else if($aksi == "editAct"){
				$data = $this->input->post();
				if (empty($_FILES['news_image']['name'])) {
					unset($data['news_image']);
					unset($data['btnEdit']);		
					$this->NewsModel->update($id,$data);
					redirect(site_url('dashboard/admin/berita'));
				}else{
					$config['upload_path']          = './uploads/news/';
					$config['allowed_types']        = 'gif|jpg|png|jpeg';
					$config['overwrite']			= TRUE;
					$config['max_size']             = 0;
					$config['max_width']            = 0;
					$config['max_height']           = 0;
					date_default_timezone_set("Asia/Bangkok");		
					$config['file_name']				  = "news-".$id;
					echo $config['file_name'];
					$this->load->library('upload', $config);
					if(!$this->upload->do_upload('news_image')){
						// gagal
						echo $this->upload->display_errors();
						redirect(site_url('dashboard/admin/newsAction/add'));
					}else{
						// sukses
						unset($data['news_image']);
						unset($data['btnEdit']);
						$data['news_image'] = $config['file_name'].$this->upload->data('file_ext');		
						$this->NewsModel->update($id,$data);
						redirect(site_url('dashboard/admin/berita'));
					}
				}
				
			}else if($aksi=="addAct"){
				$lastId=$this->NewsModel->getLastId();
				$data = $this->input->post();
				var_dump($data);
				
				
				if (empty($_FILES['news_image']['name'])) {
					unset($data['news_image']);
					unset($data['btnAdd']);
					$data['news_image'] = "default.jpg";		
					$this->NewsModel->insert($data);
					redirect(site_url('dashboard/admin/berita'));
				}else{
					$config['upload_path']          = './uploads/news/';
					$config['allowed_types']        = 'gif|jpg|png|jpeg';
					$config['overwrite']			= TRUE;
					$config['max_size']             = 0;
					$config['max_width']            = 0;
					$config['max_height']           = 0;
					date_default_timezone_set("Asia/Bangkok");		
					$config['file_name']				  = "news-".$lastId;
					echo $config['file_name'];
					$this->load->library('upload', $config);
					if(!$this->upload->do_upload('news_image')){
						// gagal
						echo $this->upload->display_errors();
						redirect(site_url('dashboard/admin/newsAction/add'));
					}else{
						// sukses
						unset($data['news_image']);
						unset($data['btnAdd']);
						$data['news_image'] = $config['file_name'].$this->upload->data('file_ext');		
						$this->NewsModel->insert($data);
						redirect(site_url('dashboard/admin/berita'));
					}
				}
				
				
				
			}else if($aksi=="delete"){
				$this->NewsModel->delete($id);
				redirect(site_url('dashboard/admin/berita'));
			}
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}
	public function bendaharasekolah(){
		if(isset($_SESSION['logged_in'])  && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			$data['list'] = $this->PaymentModel->viewSchtDash()->result_array();
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/bendahara/bendaharasekolah',$data);
			$this->load->view('admin/layout/footer');				
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	
	public function bsAction($id,$accid){
		$curr = $this->PaymentModel->selectById($id)->row_array()['payment_status'];
		if($curr == "0"){
			var_dump($curr);
			$upd['payment_status'] = 1;
			$acc['account_status'] = 1;
		}
		else {
			$upd['payment_status'] = 0;
			$acc['account_status'] = 0;
		}
		$this->PaymentModel->update($id,$upd);
		$this->AccountModel->update($accid,$acc);
		redirect(site_url('dashboard/admin/bendaharasekolah'));
	}
	
	public function bendaharapublik(){
		if(isset($_SESSION['logged_in'])  && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			$data['list'] = $this->PaymentModel->viewPubtDash()->result_array();
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/bendahara/bendaharapublik',$data);
			$this->load->view('admin/layout/footer');				
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}
	}
	public function bpAction($id){
		$curr = $this->PaymentModel->selectById($id)->row_array()['payment_status'];
		if($curr == "0"){
		var_dump($curr);
			$upd['payment_status'] = 1;
		}
		else {
			$upd['payment_status'] = 0;
		}
		$this->PaymentModel->update($id,$upd);
		redirect(site_url('dashboard/admin/bendaharapublik'));
	}		

	public function individu(){
		if(isset($_SESSION['logged_in'])  && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
			$data['list'] = $this->SchoolPModel->selectJoinVSchTDash()->result_array();
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/individulomba',$data);
			$this->load->view('admin/layout/footer');	
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));			
		}					
	}

	public function bazaar(){
		if(isset($_SESSION['logged_in'])  && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){

			$data['list'] = $this->BazaarModel->selectAll()->result_array();
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/bazaar/bazaar',$data);
			$this->load->view('admin/layout/footer');						
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));					
		}
	}		
	public function bazaarAction($id,$act){
		if($act == "edit"){
			$data['upd'] = $this->BazaarModel->selectById($id)->row_array();
			// var_dump($data['upd']);
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/bazaar/bazaaredit',$data);
			$this->load->view('admin/layout/footer');						

		}else if($act == "del"){
			$this->BazaarModel->delete($id);
			redirect(site_url('dashboard/admin/bazaar'));
		}else if($act == "editAct"){
			$data = $this->input->post();
			$this->BazaarModel->update($id,$data);
			redirect(site_url('dashboard/admin/bazaar'));
		}else if($act == "add"){
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/bazaar/bazaaredit');
			$this->load->view('admin/layout/footer');							
		}else if($act == "addAct"){
			$data = $this->input->post();
			$this->BazaarModel->insert($data);
			redirect(site_url('dashboard/admin/bazaar'));
		}
	}				
	public function sponsor(){
		if(isset($_SESSION['logged_in'])  && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){		
			$data['list'] = $this->SponsorModel->selectAll()->result_array();
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/sponsor/sponsor',$data);
			$this->load->view('admin/layout/footer');					
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));					
		}	
	}	
	public function sponsorAction($id,$act){
		if($act == "edit"){
			$data['upd'] = $this->SponsorModel->selectById($id)->row_array();
			// var_dump($data['upd']);
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/sponsor/sponsoredit',$data);
			$this->load->view('admin/layout/footer');						
		}else if($act == "del"){
			$this->SponsorModel->delete($id);
			redirect(site_url('dashboard/admin/sponsor'));
		}else if($act == "editAct"){
			$data = $this->input->post();

			$config['upload_path']          = './uploads/';
			$config['allowed_types']        = 'jpg|png|gif|rar';
			$config['max_size']             = 0;
			$config['max_width']            = 0;
			$config['max_height']           = 0;
			date_default_timezone_set("Asia/Bangkok");		
			$config['file_name']				  = $data['sponsor_name']."-".time();
			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('sponsor_image')){
				//gagal
				unset($data['sponsor_image']);
				var_dump($data);
				$this->SponsorModel->update($id,$data);
				redirect(site_url('dashboard/admin/sponsor'));
			}else{
				//sukses
				$uri = "uploads/".$this->SponsorModel->selectById($id)->row()->sponsor_image;
				// $auri = explode("://",$uri);
				unlink($uri);
				$data['sponsor_image'] = $config['file_name'].$this->upload->data('file_ext');
				// var_dump($auri);
				$this->SponsorModel->update($id,$data);
				redirect(site_url('dashboard/admin/sponsor'));
			}				
			
			// redirect(site_url('dashboard/admin/sponsor'));
		}else if($act == "add"){
			$this->load->view('admin/layout/header',$this->head);
			$this->load->view('admin/sponsor/sponsoredit');
			$this->load->view('admin/layout/footer');							
		}else if($act == "addAct"){
			$data = $this->input->post();

			$config['upload_path']          = './uploads/';
			$config['allowed_types']        = 'jpg|png|gif|rar';
			$config['max_size']             = 0;
			$config['max_width']            = 0;
			$config['max_height']           = 0;
			date_default_timezone_set("Asia/Bangkok");		
			$config['file_name']				  = $data['sponsor_name']."-".time();
			$this->load->library('upload', $config);
			if(!$this->upload->do_upload('sponsor_image')){
				//gagal
				redirect(site_url('dashboard/admin/sponsor'));
			}else{
				//sukses
				$data['sponsor_image'] = $config['file_name'].$this->upload->data('file_ext');

				$this->SponsorModel->insert($data);
				redirect(site_url('dashboard/admin/sponsor'));
			}				


		}
	}
	public function profil($err = NULL)
	{
			/* if has session */
		if(isset($_SESSION['logged_in']) && ($_SESSION['category'] == 'ADMSU' || $_SESSION['category'] == 'ADM' || $_SESSION['category'] == 'COR')){
				if($err!=NULL){
					$data['err'] = $err;
					$this->load->view('admin/layout/header',$this->head);
					$this->load->view('admin/profil',$data);
					$this->load->view('admin/layout/footer');		
				}else{
					$this->load->view('admin/layout/header',$this->head);
					$this->load->view('admin/profil');
					$this->load->view('admin/layout/footer');							
				}
		}else{
			/* if no session a.k.a tresspassing*/
			redirect(site_url('/akun'));
		}	
	}	
	public function editPass(){
		$data = $this->input->post();
		if($this->AccountModel->selectById($_SESSION['userid'])->row_array()['account_password'] == md5($data['bef'])){
			if($data['aft1']==$data['aft2']){
				$edited['account_password'] = md5($data['aft1']);
				$this->AccountModel->update($_SESSION['userid'],$edited);
				redirect(site_url('dashboard/admin/profil/1'));
			}else{
				redirect(site_url('dashboard/admin/profil/2'));
			}
		}else{
			redirect(site_url('dashboard/admin/profil/2'));
		}
	}
	public function resetpaksa($id){
		$new['account_password'] = md5("admin");
		$this->AccountModel->update($id,$new);
		redirect('dashboard/admin/timlomba/');
	}					
}
	
