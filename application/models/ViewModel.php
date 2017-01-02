<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_account
*/
class ViewModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->viewCoorAcc = "v_cor_acc";
	}

	public function selectAllCoorAcc($from=0,$offset=0){
		
		$this->db->select('*');
		$this->db->from($this->viewCoorAcc);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}
	
	public function selectCoorAccByAccID($accid){
		$this->db->select('*');
		$this->db->from($this->viewCoorAcc);
		$this->db->where('acc_id', $accid);
		return $this->db->get()->row_array();
	}
}

/* End of file tb_account_model.php */
/* Location: ./application/models/tb_account_model.php */