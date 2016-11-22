<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus tabel tb_account
 */
class tb_account_model extends CI_Model {

	/**
	 * untuk mengambil semua data yang ada di tabel tb_account
	 * @param no
	 * @return object
	 */
	function get_all()
	{
		$data = $this->db->get('tb_account');
		$data = $data->result();
		return $data;
	}

	/**
	 * mengambil data berdasarkan ID account
	 * @param account_id
	 * @return object row
	 */
	function get_by_id($account_id)
	{
		$this->db->where('account_id', $account_id);
		$data = $this->db->get('tb_account');
		$data = $data->row();
		return $data;
	}

	/**
	 * untuk mengambil data berdasarkan username dan password
	 * bisa untuk keperluan auth login
	 * @param username and password
	 * @return object 1 row
	 */
	function get_by_username_password($username, $password)
	{
		$this->db->where('account_username', $username);
		$this->db->where('account_password', $password);
		$data = $this->db->get('tb_account');
		$data = $data->row();
		return $data;
	}

	/**
	 * mengambil data berdasarkan kategori akun
	 * @param account_category
	 * @return object
	 */
	function get_by_category($account_category)
	{
		$this->db->where('account_category', $account_category);
		$data = $this->db->get('tb_account');
		$data = $data->row();
		return $data;
	}

}

/* End of file tb_account_model.php */
/* Location: ./application/models/tb_account_model.php */