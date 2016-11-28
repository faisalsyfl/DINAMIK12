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
					<div id="talkshow" class="tab-pane fade in active">
						<div class="register-box">
							<div class="register-logo">
								<a href="#"><b>DINAMIK</b>12</a>
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
						<!-- /.register-box -->
					</div>
					
					<!-- semnas -->
					<div id="semnas" class="tab-pane fade in">
					  <img src="<?php echo base_url("assets/img/icon_white/semnas.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">SEMINAR NASIONAL</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Sabtu, 01 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span> 08.00 - 15.00 WIB
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gedung Ahmad Sanusi, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  Seminar Nasional (Semnas) merupakan suatu kegiatan pertemuan skala nasional untuk membahas, menyikapi suatu topik bahasan dan menampilkan satu atau beberapa pembicara. Seminar nasional ini memiliki tema “Penerapan teknologi ‘Big data’ Dalam Transformasi Pendidikan dan Pembelajaran”. Peserta seminar yang hadir harus berpartisipasi secara aktif dan diharapakan terjadi interaksi dua arah antara pembicara dan peserta seminar.
					  </p>
					</div>
					
					<!-- felose -->
					<div id="felose" class="tab-pane fade in">
					  <img src="<?php echo base_url("assets/img/icon_white/felose.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">FESTIVAL TEKNOLOGI DAN SENI</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Jum’at - Minggu, 07 - 09 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  Festival Teknologi dan Seni atau disebut juga FELOSE merupakan salah satu dari rangkaian acara di DINAMIK 12 yang bertajuk unjuk karya mahasiswa/i ilmu komputer dan pendidikan ilmu computer, mahasiswa/i seJawa Barat dan kerjasama IT dengan berbagai komunitas di Bandung. FELOSE ini juga merupakan bentuk perkembangan dari pameran karya pada dinamik 11 maupun dinamik 10 yang didalamnya dibagi menjadi 2 kategori yaitu Seni murni seperti digital art, kriya, komic, ilustrasi dsb dan Teknologi seperti robot, aplikasi, game dsb. Tema yang diusungkan adalah “Mahakarya Teknologi dan Seni Indonesia”. Sasaran dari kegiatan ini adalah Mahasiswa/i se-Nasional.
					  </p>
					</div>
				</div>	
			</div>
		</div>
	</div>
<!-- </div>/.container -->

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