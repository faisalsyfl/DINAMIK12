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
		$this->db->from($this->tableName);
		$this->db->where('account_id',$id);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}

	public function insert($data){
		$this->db->insert($this->tableName,$data);
	}
	
	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('account_id',$id);
		$this->db->update($this->tableName);
	}
	
	public function delete($id){
		$this->db->where('account_id',$id);
		$this->db->delete($this->tableName);
	}
	
	public function getId(){
		$this->db->select('account_id');
		$this->db->from($this->tableName);
		$this->db->order_by('account_id','DESC');

		$x = $this->db->get()->row()->account_id;
		return($x);
	}
	
	
	public function selectJoinCategory($cat = NULL){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->join('tb_category','account_category_id = category_id');
		if($cat != NULL){
			$this->db->where('account_category_id',$cat);
		}
		$this->db->order_by('account_id','DESC');
		return $this->db->get();
	}
	
	/* FIND ID FOR FORGOT PASSWORD */
	public function findForgotten($email){
		$this->db->select('account_id');
		$this->db->select('account_username');
		$this->db->from($this->tableName);
		$this->db->where('account_email',$email);

		$x = $this->db->get()->row_array();
		return($x);
	}
	
	/* GET CATEGORY NAME FOR SESSION DATA -> HEADER DASHBOARD DATA */
	public function getCategoryNameByID($id){
		$this->db->select('category_name');
		$this->db->from('tb_category');
		$this->db->where('category_id', $id);

		$x = $this->db->get()->row()->category_name;
		return($x);
	}
	
	/* GET ACCOUNT NAME (NOT ID) FOR SESSION DATA -> HEADER DASHBOARD DATA */
	public function getNameByID($id, $cat){
		if($cat == "ADM" || $cat == "ADMSU" || $cat == "COR"){
			$this->db->select('coordinator_name');
			$this->db->from('tb_coordinator');
			$this->db->where('coordinator_account_id', $id);
			$x = $this->db->get()->row()->coordinator_name;
		}else if($cat == "SCH"){
			$this->db->select('school_name');
			$this->db->from('tb_school');
			$this->db->where('school_account_id', $id);
			$x = $this->db->get()->row()->school_name;
		}else if($cat == "PUB"){
			$this->db->select('public_name');
			$this->db->from('tb_public');
			$this->db->where('public_account_id', $id);
			$x = $this->db->get()->row()->public_name;
		}else if($cat == "SCT"){
			$this->db->select('schteam_name');
			$this->db->from('tb_schteam');
			$this->db->where('schteam_account_id', $id);
			$x = $this->db->get()->row()->schteam_name;
			
		}
		
		return($x);
	}
}

/* End of file tb_account_model.php */
/* Location: ./application/models/tb_account_model.php */