<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_account
*/
class PublicTModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_pubteam";
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
		$this->db->where('pubteam_id',$id);
		// $this->db->limit($from,$offset);
		return $this->db->get();
	}
	public function selectByAccId($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('pubteam_account_id',$id);
		// $this->db->limit($from,$offset);
		return $this->db->get();
	}

	public function insert($data){
		$this->db->insert($this->tableName,$data);

		return $this->db->insert_id();
	}
	public function delete($id){
		$this->db->where('pubteam_id',$id);
		$this->db->delete($this->tableName);
	}
	public function viewPubtDash(){
		$this->db->select('*');
		$this->db->from('v_pubteam_dash');

		return $this->db->get();
	}
}
