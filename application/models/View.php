<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_account
*/
class View extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
	}

	public function selectAll($from=0,$offset=0){
		$this->tableName = "v_cor_acc";
		
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}
	
		public function selectByAccID($accid){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('acc_id', $accid);
		return $this->db->get()->row_array();
	}
}

/* End of file tb_account_model.php */
/* Location: ./application/models/tb_account_model.php */