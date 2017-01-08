<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_account
*/
class SchoolTModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_schteam";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);
		return $this->db->get();
	}
	public function selectById($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('schteam_id',$id);
		// $this->db->limit($from,$offset);
		return $this->db->get();
	}
	public function selectByAccId($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('schteam_account_id',$id);
		// $this->db->limit($from,$offset);
		return $this->db->get();
	}

	public function insert($data){
		$this->db->insert($this->tableName,$data);

		return $this->db->insert_id();
	}
	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('schteam_id',$id);
		$this->db->update($this->tableName);
	}	
	public function delete($id){
		$this->db->where('schteam_id',$id);
		$this->db->delete($this->tableName);
	}
	public function viewSchtDash($id){
		$this->db->select('*');
		$this->db->from('v_schteam_dash');
		$this->db->where('sch_id',$id);
		return $this->db->get();
	}
	public function selectByAccIdJoin($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('schteam_account_id',$id);
		$this->db->join('tb_event','schteam_event_id = event_id');
		return $this->db->get();
	}
}
