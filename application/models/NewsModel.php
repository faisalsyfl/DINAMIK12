<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_event
*/
class NewsModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_news";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*,SUBSTRING(news_content, 1, 400) as headline',false);
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}
	
	public function selectHeadline($id){
		$this->db->select('SUBSTRING(news_content, 1, 100)',false);
		$this->db->from($this->tableName);
		$this->db->where('news_id',$id);
		return $this->db->get()->row_array();
	}
	
	public function selectByCategory($category){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('news_category',$category);
		return $this->db->get()->row_array();
	}
	public function selectJoinEvent($event = NULL){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->join('tb_event','news_event_id = event_id');
		if($event != NULL){
			$this->db->where('news_event_id',$event);
		}
		return $this->db->get();
	}
	public function selectByTitle($title){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('news_title',$title);
		return $this->db->get()->row_array();
	}
	
	public function selectByEventId($event_id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('news_event_id',$event_id);
		return $this->db->get()->row_array();
	}
	
	public function selectById($id,$from=0,$offset=0){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('news_id',$id);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}

	public function insert($data){
		$this->db->insert($this->tableName,$data);
	}
	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('news_id',$id);
		$this->db->update($this->tableName);
	}
	public function delete($id){
		$this->db->where('news_id',$id);
		$this->db->delete($this->tableName);
	}
	
	public function getId(){
		$this->db->select('news_id');
		$this->db->from($this->tableName);
		$this->db->order_by('news_id_id','DESC');

		$x = $this->db->get()->row()->event_id;
		return($x);
	}

}

/* End of file tb_account_model.php */
/* Location: ./application/models/tb_account_model.php */