<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="<?php echo base_url("/assets/css/adminlte/AdminLTE.min.css"); ?>">
<!-- iCheck -->
<link rel="stylesheet" href="<?php echo base_url("/plugins/iCheck/square/blue.css"); ?>">
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
					<!-- talkshow -->
					<div id="masuk" class="tab-pane fade in active">
						<div class="login-box">
							<div class="login-logo">
								<a href="../../index2.html"><b>Admin</b>LTE</a>
							</div>
							<!-- /.login-logo -->
							<div class="login-box-body">
								<p class="login-box-msg">Sign in to start your session</p>

								<form action="../../index2.html" method="post">
								<div class="form-group has-feedback">
									<input type="email" class="form-control" placeholder="Email">
									<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<input type="password" class="form-control" placeholder="Password">
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="row">
									<div class="col-xs-8">
										<div class="checkbox icheck">
											<label>
												<input type="checkbox"> Remember Me
											</label>
										</div>
									</div>
									<!-- /.col -->
									<div class="col-xs-4">
										<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
									</div>
									<!-- /.col -->
								</div>
								</form>

								<div class="social-auth-links text-center">
									<p>- OR -</p>
									<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
								<a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
								</div>
								<!-- /.social-auth-links -->

								<a href="#">I forgot my password</a><br>
								<a href="register.html" class="text-center">Register a new membership</a>

							</div>
							<!-- /.login-box-body -->
						</div>
						<!-- /.login-box -->
					</div>
					
					<!-- semnas -->
					<div id="daftar" class="tab-pane fade in">
						<div class="register-box">
							<div class="register-logo">
								<img class="dinamik-foot" src="<?php echo base_url("assets/img/logo/logo-white.png"); ?>">
							</div>

							<div class="register-box-body">
							<p class="login-box-msg">Register a new membership</p>

								<form action="../../index.html" method="post">
									<div class="form-group has-feedback">
										<input type="text" class="form-control" placeholder="Full name">
										<span class="glyphicon glyphicon-user form-control-feedback"></span>
									</div>
									<div class="form-group has-feedback">
										<input type="email" class="form-control" placeholder="Email">
										<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
									</div>
									<div class="form-group has-feedback">
										<input type="password" class="form-control" placeholder="Password">
											<span class="glyphicon glyphicon-lock form-control-feedback"></span>
									</div>
									<div class="form-group has-feedback">
										<input type="password" class="form-control" placeholder="Retype password">
										<span class="glyphicon glyphicon-log-in form-control-feedback"></span>
									</div>
									<div class="row">
										<div class="col-xs-8">
											<div class="checkbox icheck">
												<label>
													<input type="checkbox"> I agree to the <a href="#">terms</a>
												</label>
											</div>
										</div>
									<!-- /.col -->
										<div class="col-xs-4">
											<button type="submit" class="btn btn-primary btn-block btn-flat">Register</button>
										</div>
									<!-- /.col -->
									</div>
								</form>

								<div class="social-auth-links text-center">
									<p>- OR -</p>
									<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign up using
										Facebook</a>
									<a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign up using
										Google+</a>
								</div>

								<a href="login.html" class="text-center">I already have a membership</a>
							</div>
							<!-- /.form-box -->
						</div>
					</div>
					
					<!-- felose -->
					<div id="lupasandi" class="tab-pane fade in">
						<div class="login-box">
							<div class="login-logo">
								<a href="../../index2.html"><b>Admin</b>LTE</a>
							</div>
							<!-- /.login-logo -->
							<div class="login-box-body">
								<p class="login-box-msg">Sign in to start your session</p>

								<form action="../../index2.html" method="post">
								<div class="form-group has-feedback">
									<input type="email" class="form-control" placeholder="Email">
									<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<input type="password" class="form-control" placeholder="Password">
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="row">
									<div class="col-xs-8">
										<div class="checkbox icheck">
											<label>
												<input type="checkbox"> Remember Me
											</label>
										</div>
									</div>
									<!-- /.col -->
									<div class="col-xs-4">
										<button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
									</div>
									<!-- /.col -->
								</div>
								</form>

								<div class="social-auth-links text-center">
									<p>- OR -</p>
									<a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using Facebook</a>
								<a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using Google+</a>
								</div>
								<!-- /.social-auth-links -->

								<a href="#">I forgot my password</a><br>
								<a href="register.html" class="text-center">Register a new membership</a>

							</div>
							<!-- /.login-box-body -->
						</div>
						<!-- /.login-box -->
					</div>	
				</div>
			</div>
		</div>
<!--/.container -->
<!--</div>

<!-- iCheck -->
<script src="<?php echo base_url("/plugins/iCheck/icheck.min.js"); ?>"></script>
<script>
$(function () {
	$('input').iCheck({
	checkboxClass: 'icheckbox_square-blue',
	radioClass: 'iradio_square-blue',
	increaseArea: '20%' // optional
	});
});
</script>