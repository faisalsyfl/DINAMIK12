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
		$message="<table style='width:100%; font-family:arial; text-align: center; color:#6d6d6d; border: none; background-color: #d0d4dc;'>
			<tr style='height:30px;'></tr>
			<tr style='color:#fff; ; height: 100px; text-align: center;'>
				<td></td>
				<td style='width: 700px;background-color: #0a337f;border-bottom: 5px solid #ffa619;'><img src='https://s28.postimg.org/46tpgahzx/logo_white.png' style='width:250px;'></td>
				<td></td>
			</tr>
			<tr style='border-top:'>
				<td></td>
				<td style='width: 700px;background-color: #fff; border-top: none;'>
					<br>
					<h3 style='color: #0a337f'>Selamat Datang di DINAMIK12</h3>
					<hr style='width: 500px; border-top: 1px solid #d0d4dc;'>
					<p>
						<br>
						Terimakasih telah ikut serta dalam DINAMIK12,
						<br>
						Silahkan gunakan username dan password dibawah ini untuk login<br>
						<br>
						username: <b>admin</b><br>
						password: <b>admin</b><br>
						<br>
						<hr style='width: 500px; border-top: 1px solid #d0d4dc;'>
						<br>
						Informasi lebih lanjut:
						<a href='http://dinamik.cs.upi.edu' target='_blank' style='color:#007eff;'>dinamik.cs.upi.edu</a><br>
						Jika ada pertanyaan silahkan kirimkan melalui: <a href='mailto:dinamik.cs@upi.edu' style='color:#007eff;' target='_blank'>dinamik.cs@upi.edu</a>
						<br>
						<br>
					</p>
				</td>
				<td></td>
			</tr>
			<tr style='height:30px;'></tr>
		</table>";
		
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
