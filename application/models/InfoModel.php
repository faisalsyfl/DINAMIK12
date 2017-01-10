<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_account
*/
class InfoModel extends CI_Model {
	public $tableName;
	
	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_message";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);
		return $this->db->get();
	}

	
	public function insert($data){
		$this->db->insert($this->tableName,$data);
	}
	
	public function delete($id){
		$this->db->where('school_id',$id);
		$this->db->delete($this->tableName);
	}
}
