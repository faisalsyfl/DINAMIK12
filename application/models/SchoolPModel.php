<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_account
*/
class SchoolPModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_schparticipant";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);
		return $this->db->get();
	}

	public function selectBySchPId($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('schparticipant_account_id',$id);
		// $this->db->limit($from,$offset);
		return $this->db->get();
	}

	public function selectBySchTId($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('schparticipant_schteam_id',$id);
		// $this->db->limit($from,$offset);
		return $this->db->get();
	}

	public function selectJoinVSchTDash($id=NULL){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->join('v_schteam_dash','sct_id = schparticipant_schteam_id');
		if($id!=NULL){
			$this->db->where('schparticipant_schteam_id',$id);
		}
		// $this->db->order_by('sct_name',)
		return $this->db->get();
	}

	public function insert($data){
		$this->db->insert($this->tableName,$data);
	}
	public function delete($id){
		$this->db->where('schparticipant_schteam_id',$id);
		$this->db->delete($this->tableName);
	}
}
