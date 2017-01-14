<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_payment
*/
class PaymentModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
		$this->tableName = "tb_payment";
	}

	public function selectAll($from=0,$offset=0){
		
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->limit($from,$offset);

		return $this->db->get();
	}
	
	public function selectByAccID($accid){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('acc_id', $accid);
		return $this->db->get()->row_array();
	}
	public function selectById($id){
		$this->db->select('*');
		$this->db->from($this->tableName);
		$this->db->where('payment_id', $id);
		return $this->db->get();
	}	

	public function insert($data){
		$this->db->insert($this->tableName,$data);

		return $this->db->insert_id();
	}
	public function update($id,$data){
		$this->db->set($data);
		$this->db->where('payment_id',$id);
		$this->db->update($this->tableName);
	}		

	public function generate(){
		$data = [
		'0','1','2','3','4','5','6','7','8','9'
		];
		$coupon = array();
		for($i=0;$i<6;$i++){
			$temp = mt_rand(0,9);
			$coupon[$i] = $data[$temp];
		}

		return $coupon;

	}
	public function delete($id){
		$this->db->where('payment_id',$id);
		$this->db->delete($this->tableName);
	}

	public function viewSchtDash(){
		$this->db->select('*');
		$this->db->from('v_schteam_dash');
		$this->db->order_by('pay_status',"ASC");
		// $this->db->where('sch_id',$id);
		return $this->db->get();
	}
	public function viewPubtDash(){
		$this->db->select('*');
		$this->db->from('v_pubteam_dash');
		$this->db->order_by('pay_status',"ASC");

		return $this->db->get();
	}				
}

/* End of file tb_account_model.php */
/* Location: ./application/models/tb_account_model.php */