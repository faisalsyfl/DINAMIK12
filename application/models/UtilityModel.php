<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 * class khusus model utilitas
*/
class UtilityModel extends CI_Model {
	public $tableName;

	public function __construct(){
		parent::__construct();
	}

	public function generatePassword(){
		$data = [
		'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','0','1','2','3','4','5','6','7','8','9'
		];
		$pass = array();
		for($i=0;$i<6;$i++){
			$temp = mt_rand(0,35);
			$pass[$i] = $data[$temp];
		}

		return $pass;

	}	
}

/* End of file UtilityModel.php */
/* Location: ./application/models/UtilityModel.php */