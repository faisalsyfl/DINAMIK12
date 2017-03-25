<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * model ini bersifat general, methodnya berisi fungsi yang fleksibel
 */
class general_model extends CI_Model {

	/**
	 * mengambil semua data dari tabel
	 * @param table_name
	 * @return object
	 */
	function get_on_table($table_name)
	{
		$data = $this->db->get($table_name);
		$data = $data->result();
		return $data;
	}

	/**
	 * mengambil data dari tabel menggunakan where, jika where lebih dari satu
	 * maka akan otomatis menggunakan operator AND
	 * untuk field acuan (yang dijadikan where) wajib menggunakan array
	 * dengan nama index sama dengan nama field
	 * @param table name, field where
	 * @return object
	 */
	function get_where_on_table($table_name, $obj)
	{
		if (is_array($obj)) {
			foreach ($obj as $key => $value) {
				$this->db->where($key, $value);
			}
		}
		$data = $this->db->get($table_name);

		$data = $data->result();
		return $data;
	}

	/**
	 * mengambil data menggunakan where dari sebuah tabel dengan hanya menghasilkan 1 row
	 * @param table_name, field where
	 * @return object
	 */
	function get_where_on_table_row($table_name, $obj)
	{
		if (is_array($obj)) {
			foreach ($obj as $key => $value) {
				$this->db->where($key, $value);
			}
		}
		$data = $this->db->get($table_name);

		$data = $data->row();
		return $data;
	}

	/**
	 * untuk meng-insert data ke sebuah tabel. data yang akan diinsert harus ditampung di array
	 * nama array harus sesuai dengan nama field
	 * @param teble name, object
	 * @return affected row
	 */
	function insert_on_table($table_name, $obj)
	{
		$this->db->insert($table_name, $obj);
		return $this->db->affected_rows();
	}

	/**
	 * untuk mengupdate row pada sebuah tabel dengan acuan tertentu
	 * field yang menjadi acuan atau where harus ditampung kedalam array
	 * @param table name, object, field where
	 * @return affected row
	 */
	function update_on_table($table_name, $obj, $where)
	{
		if (is_array($where)) {
			foreach ($where as $key => $value) {
				$this->db->where($key, $value);
			}
		}
		$this->db->update($table_name, $obj);
		return $this->db->affected_rows();
	}

	/**
	 * menghapus row pada tabel
	 * @param table name, field where
	 * @return affected row
	 */
	function delete_on_table($table_name, $where)
	{
		if (is_array($where)) {
			foreach ($where as $key => $value) {
				$this->db->where($key, $value);
			}
		}
		$this->db->delete($table_name);

		return $this->db->affected_rows();
	}

}

/* End of file general_model.php */
/* Location: ./application/models/general_model.php */