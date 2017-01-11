<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_event
*/
class BazaarModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_bazaar";
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
		$this->db->where('bazaar_id',$id);
		return $this->db->get();
	}

	public function insert($data){
		$this->db->insert($this->tableName,$data);
	}
	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('bazaar_id',$id);
		$this->db->update($this->tableName);
	}
	public function delete($id){
		$this->db->where('bazaar_id',$id);
		$this->db->delete($this->tableName);
	}
	

}

/* End of file tb_account_model.php */
/* Location: ./application/models/tb_account_model.php */