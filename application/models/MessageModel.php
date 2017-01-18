<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_news
*/
class MessageModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_message";
	}

	public function selectAll($from=0,$offset=0){
		$this->db->select('*,SUBSTRING(news_content, 1, 400) as headline',false);
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);
		$this->db->order_by('news_id', 'desc');
		return $this->db->get();
	}
	
	public function getLastId(){
		$this->db->where('TABLE_SCHEMA','db_dinamik12');
		$this->db->where('TABLE_NAME','tb_news');
		$this->db->select('AUTO_INCREMENT');
		return $this->db->get('INFORMATION_SCHEMA.TABLES')->row()->AUTO_INCREMENT;
	}
	
	
	public function selectHeadline($id){
		$this->db->select('SUBSTRING(news_content, 1, 100)',false);
		$this->db->from($this->tableName);
		$this->db->where('news_id',$id);
		return $this->db->get()->row_array();
	}
	
	public function selectByCategory($category,$from=0,$offset=0){
		$this->db->select('*,SUBSTRING(news_content, 1, 400) as headline',false);
		$this->db->from($this->tableName);
		$this->db->where('news_category',$category);
		$this->db->limit($from,$offset);
		$this->db->order_by('news_id', 'desc');
		return $this->db->get();
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