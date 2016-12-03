<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<!-- RECONFIG THE STYLE TO MATCH THE HOME -->
<!-- THIS SETTINGS OVERRIDING THE HOME PAGE STYLES -->
<link rel="stylesheet" href="<?php echo base_url("/assets/css/adminlte/AdminLTE.min.css"); ?>">
<!-- iCheck -->
<link rel="stylesheet" href="<?php echo base_url("/plugins/iCheck/square/blue.css"); ?>">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="<?php echo base_url("/plugins/iCheck/all.css"); ?>">

<style>
	body{
		font-family: 'Lato';
	}
</style>
  
	<div id="event-detail" class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h3 class="title">
					<img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-left-or.png"); ?>">
					<b>AKUN</b>
					<img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-right-or.png"); ?>">
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<ul class="nav nav-tabs event-tabs">
					<li class="active"><a data-toggle="tab" href="#masuk">Masuk</a></li>
					<li><a data-toggle="tab" href="#daftar">Daftar</a></li>
					<li><a data-toggle="tab" href="#lupasandi">Lupa Kata Sandi</a></li>
				</ul>
				
				<div class="tab-content event-detail-list">
					<!-- Login -->
					<div id="masuk" class="tab-pane fade in active">
						<div class="login-box">
							<!-- /.login-logo -->
							<div class="register-logo">
								<img class="dinamik-foot" src="<?php echo base_url("assets/img/logo/logo-white.png"); ?>">
							</div>
							<div class="login-box-body">
								<p class="login-box-msg">Masuk untuk melanjutkan</p>

								<?php echo form_open('home/Akun/login'); ?>
								<div class="form-group has-feedback">
									<input type="text" class="form-control" placeholder="E-mail/Nama pengguna" name="username" value="">
									<?php  
										/* THIS FIELD VALUE, NOT USED AS FOR NOW */
										// if($this->input->cookie('username')) echo $this->input->cookie('username'); 
									?>
									<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
									
								</div>
								<div class="form-group has-feedback">
									<input type="password" class="form-control" placeholder="Kata sandi" name="password" value="">
									<?php 
										/* THIS FIELD VALUE, NOT USED AS FOR NOW */
										if(isset($_COOKIE['password'])) echo $_COOKIE['password']; 
									?>
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="row">
									<div class="col-xs-8">
										<!-- CURRENTLY NOT USED -->
										<!--<div class="checkbox icheck">
											<label>
												<input type="checkbox" name="checkbox"> Remember Me
											</label>
										</div>-->
									</div>
									<!-- /.col -->
									<div class="col-xs-4">
										<button type="submit" class="btn btn-primary btn-block btn-flat" name="btnLogin">
											Masuk
										</button>
									</div>
									<!-- /.col -->
								</div>
								</form>

								<!-- CURRENTLY NOT USED -->
								<!--
								<div class="social-auth-links text-center">
									<p>- OR -</p>
									<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
									<a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
								</div>
								-->
								<!-- /.social-auth-links -->

								<a data-toggle="tab" href="#lupasandi">Lupa kata sandi</a><br>
								<a data-toggle="tab" href="#daftar" class="text-center">Daftar akun baru</a>

							</div>
							<!-- /.login-box-body -->
						</div>
						<!-- /.login-box -->
					</div>
					
					<!-- Register -->
					<div id="daftar" class="tab-pane fade in">
						<div class="register-box">
							<div class="register-logo">
								<img class="dinamik-foot" src="<?php echo base_url("assets/img/logo/logo-white.png"); ?>">
							</div>

							<div class="register-box-body">
							<p class="login-box-msg">Mendaftar akun baru</p>

								<form action="<?php /* INSERT CONTROLLER HERE */ ?>" method="post">
									<div class="form-group has-feedback">
										<input type="text" class="form-control" placeholder="Nama akun">
										<span class="glyphicon glyphicon-user form-control-feedback"></span>
									</div>
									<div class="form-group has-feedback">
										<input type="email" class="form-control" placeholder="E-mail">
										<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
									</div>
									<div class="form-group has-feedback">
										<input type="password" class="form-control" placeholder="Kata sandi">
											<span class="glyphicon glyphicon-lock form-control-feedback"></span>
									</div>
									<div class="form-group has-feedback">
										<input type="password" class="form-control" placeholder="Konfirmasi kata sandi">
										<span class="glyphicon glyphicon-log-in form-control-feedback"></span>
									</div>
									<!-- radio -->
									<!--NOT FIX
									<div class="form-group">
										<label>
											<input type="radio" name="r3" class="flat-red" checked>
										</label>
										<label>
											<input type="radio" name="r3" class="flat-red">
										</label>
										<label>
											<input type="radio" name="r3" class="flat-red" disabled>
											Flat green skin radio
										</label>
									</div>
									-->
									<div class="row">
										<div class="col-xs-8">
											<div class="checkbox icheck">
												<label>
													<input type="checkbox"> Saya setuju terhadap <br>
													<a href="#">syarat dan ketentuan.</a>
												</label>
											</div>
										</div>
									<!-- /.col -->
										<div class="col-xs-4">
											<button type="submit" class="btn btn-primary btn-block btn-flat">Daftar</button>
										</div>
									<!-- /.col -->
									</div>
								</form>
								
								<!-- CURRENTLY NOT USED
								<div class="social-auth-links text-center">
									<p>- OR -</p>
									<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
										Facebook</a>
									<a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
										Google+</a>
								</div>
								-->
								<a data-toggle="tab" href="#masuk" class="text-center">Saya sudah mempunyai akun</a>
							</div>
							<!-- /.form-box -->
						</div>
					</div>
					
					<!-- Forgot Pass -->
					<div id="lupasandi" class="tab-pane fade in">
						<div class="login-box">
							<div class="login-logo">
								<img class="dinamik-foot" src="<?php echo base_url("assets/img/logo/logo-white.png"); ?>">
							</div>
							<!-- /.login-logo -->
							<div class="login-box-body">
								<p class="login-box-msg">Kirim kata sandi baru</p>

								<form action="<?php /* INSERT CONTROLLER HERE */ ?>" method="post">
								<div class="form-group has-feedback">
									<input type="text" class="form-control" placeholder="Nama pengguna">
									<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<input type="email" class="form-control" placeholder="E-mail">
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="row">
									<div class="col-xs-8">
										<!-- NOT USED FOR NOW
										<div class="checkbox icheck">
											<label>
												<input type="checkbox"> Remember Me
											</label>
										</div>
										-->
									</div>
									<!-- /.col -->
									<div class="col-xs-4">
										<button type="submit" class="btn btn-primary btn-block btn-flat">Kirim</button>
									</div>
									<!-- /.col -->
								</div>
								</form>

								<!-- CURRENTLY NOT USED
								<div class="social-auth-links text-center">
									<p>- OR -</p>
									<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
								<a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
								</div>
								<!-- /.social-auth-links -->

								<a data-toggle="tab" href="#masuk">Sudah ingat kata sandi?</a><br>
								<a data-toggle="tab" href="#daftar" class="text-center">Daftar akun baru</a>

							</div>
							<!-- /.login-box-body -->
						</div>
						<!-- /.login-box -->
					</div>	
				</div>
			</div>
		</div>
	<!--/.container -->
	</div>
</div>

<script>
	//iCheck for checkbox and radio inputs
    $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
      checkboxClass: 'icheckbox_minimal-blue',
      radioClass: 'iradio_minimal-blue'
    });
    //Red color scheme for iCheck
    $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
      checkboxClass: 'icheckbox_minimal-red',
      radioClass: 'iradio_minimal-red'
    });
    //Flat red color scheme for iCheck
    $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
      checkboxClass: 'icheckbox_flat-green',
      radioClass: 'iradio_flat-green'
    });
</script>