<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_account
*/
class AccountModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_account";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}
	public function selectByUsername($uname){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('account_username',$uname);
		return $this->db->get()->row_array();
	}

	public function selectByEmail($email){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('account_email',$email);
		return $this->db->get()->row_array();
	}
	
	public function selectById($id,$from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($tableName);
		$this->db->where('account_id',$id);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}

	public function insert($data){
		$this->db->insert($this->tableName,$data);
	}
	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('id',$id);
		$this->db->update($this->tableName);
	}

	public function getId(){
		$this->db->select('account_id');
		$this->db->from($this->tableName);
		$this->db->order_by('account_id','DESC');

		$x = $this->db->get()->row()->account_id;
		return($x);
	}
	public function selectJoinCategory(){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->join('tb_category','account_category_id = category_id');

		return $this->db->get();
	}
}

/* End of file tb_account_model.php */
/* Location: ./application/models/tb_account_model.php */