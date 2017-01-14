<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_pubteam
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
	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('pubteam_id',$id);
		$this->db->update($this->tableName);
	}		
	public function delete($id){
		$this->db->where('pubteam_id',$id);
		$this->db->delete($this->tableName);
	}
	// public function selectViewPubtDash(){
	// 	$this->db->select('*');
	// 	$this->db->from('v_pubteam_dash');
	// 	$this->db->where('pub_id',$id);

	// 	return $this->db->get();		
	// }
	public function viewPubtDash($id=NULL){
		$this->db->select('*');
		$this->db->from('v_pubteam_dash');
		if($id != NULL){
			$this->db->where('pub_id',$id);
		}

		return $this->db->get();
	}

	public function viewPubtDashByEvent($id){
		$this->db->select('*');
		$this->db->from('v_pubteam_dash');
		$this->db->where('eve_id',$id);

		return $this->db->get();		
	}
	
	public function viewPubtDashByPayAndEvent($id, $status){
		$this->db->select('*');
		$this->db->from('v_pubteam_dash');
		$this->db->where('eve_id',$id);
		$this->db->where('pay_status',$status);
		return $this->db->get();		
	}
}
