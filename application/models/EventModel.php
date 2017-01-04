<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_event
*/
class EventModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_event";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}
	public function selectByCode($code){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('event_code',$code);
		return $this->db->get()->row_array();
	}
	
	public function selectById($id,$from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('event_id',$id);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}

	public function insert($data){
		$this->db->insert($this->tableName,$data);
	}
	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('event_id',$id);
		$this->db->update($this->tableName);
	}
	public function delete($id){
		$this->db->where('event_id',$id);
		$this->db->delete($this->tableName);
	}
	
	public function getId(){
		$this->db->select('event_id');
		$this->db->from($this->tableName);
		$this->db->order_by('event_id','DESC');

		$x = $this->db->get()->row()->event_id;
		return($x);
	}

}

/* End of file tb_account_model.php */
/* Location: ./application/models/tb_account_model.php */