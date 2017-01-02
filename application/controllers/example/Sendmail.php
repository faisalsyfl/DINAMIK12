<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sendmail extends CI_Controller{

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	 
	 /* 
		Index function
		Display the account page
	 */
	public function index(){
		$this->send();		
	}
	
	public function send(){
		/*
			** SEND MAIL EXAMPLE **
		*/
		
		$config = Array(
			'protocol' => 'smtp',
			'smtp_host' => 'ssl://smtp.googlemail.com',
			'smtp_port' => 465,
			'smtp_user' => 'dinamik.cs@upi.edu',
			'smtp_pass' => '!dinamik12csupi#',
			'mailtype'  => 'html',
			'charset'   => 'iso-8859-1'
		);
		
		$this->load->library('email', $config);
		
		$this->email->set_newline("\r\n");


		/* sender  */
		$from_mail="dinamik.cs@upi.edu";
		$from_name="Humas DINAMIK12";
		
		/* dest */
		$to_mail="shelonboyz136@gmail.com";
		
		/*mail subject*/
		$subject="Email Test";
		
		/* mail body (html format)*/
		$message="<b>Testing the email class.</b>";
		
		$this->email->set_newline("\r\n");
		$this->email->from($from_mail, $from_name);
		$this->email->to($to_mail);
		$this->email->subject($subject);	
		$this->email->message($message);  	
		$result=$this->email->send();
		if($result){
			echo "success";
		}else{
			echo $this->email->print_debugger();
		}
	}
}
