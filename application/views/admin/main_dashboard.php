
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>DINAMIK12 | Administrator</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/adminlte/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/adminlte/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<!-- ADD THE CLASS fixed TO GET A FIXED HEADER AND SIDEBAR LAYOUT -->
<!-- the fixed layout is not compatible with sidebar-mini -->
<body class="hold-transition skin-blue fixed sidebar-mini">
<!-- Site wrapper -->
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="../../index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LT</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LTE</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
          <li class="dropdown messages-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <i class="fa fa-envelope-o"></i>
              <span class="label label-success">4</span>
            </a>
            <ul class="dropdown-menu">
              <li class="header">You have 4 messages</li>
              <li>
                <!-- inner menu: contains the actual data -->
                <ul class="menu">
                  <li><!-- start message -->
                    <a href="#">
                      <div class="pull-left">
                        <img src="../../dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                      </div>
                      <h4>
                        Support Team
                        <small><i class="fa fa-clock-o"></i> 5 mins</small>
                      </h4>
                      <p>Why not buy a new awesome theme?</p>
                    </a>
                  </li>
                  <!-- end message -->
                </ul>
              </li>
              <li class="footer"><a href="#">See All Messages</a></li>
            </ul>
          </li>
         
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="../assets/img/avatar/default.png" class="user-image" alt="User Image">
              <span class="hidden-xs">Bang Satyo</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="../assets/img/avatar/default.png" class="img-circle" alt="User Image">

                <p>
                  Bang Satyo - Administrator
                  <small>Dinamik12 Administrator</small>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="#" class="btn btn-default btn-flat">Profil</a>
                </div>
                <div class="pull-right">
                  <a href="<?php echo site_url('home/Akun/logout'); ?>" class="btn btn-default btn-flat">Keluar</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </nav>
  </header>

  <!-- =============================================== -->

  <!-- Left side column. contains the sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../assets/img/avatar/default.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Bang Satyo</p>
          <a href="#"><span class="fa fa-user fa-2x text-success"></span> Profil</a>
        </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">Admin Menu</li>
        <li class="active"><a href="#"><i class="fa fa-home"></i> <span>Beranda</span></a></li>
        <li><a href="#"><i class="fa fa-star"></i> <span>Acara & Lomba </span><span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
					</span></a></li>
        <li><a href="#"><i class="fa fa-calendar"></i> <span>Agenda Kalender</span><span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
					</span></a></li>
		
		<li class="">
			<a href="#"><i class="fa fa-users"></i> Akun
                <span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
              <ul class="treeview-menu" style="display: none;">
                <li><a href="#"><i class="fa fa-users"></i> Semua Akun<span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
					</span></a></li>
                <li class="">
					<a href="#"><i class="fa fa-user"></i> Kategori Akun
						<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
					<ul class="treeview-menu" style="display: none;">
						<li><a href="#">Akun Juri</a></li>
						<li><a href="#">Akun Koordinator</a></li>
						<li><a href="#">Akun Sekolah</a></li>
						<li><a href="#">Akun Umum</a></li>
					</ul>
                </li>
			</ul>
		</li>
		
        <li><a href="#"><i class="fa fa-newspaper-o"></i> <span>Berita</span><span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
					</span></a></li>
        <li><a href="#"><i class="fa fa-thumbs-up"></i> <span>Hasil Penjurian</span><span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
					</span></a></li>
        <li><a href="#"><i class="fa fa-envelope"></i> <span>Pesan Masuk</span><span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
						<small class="label pull-right bg-red">3</small>            
					</span></a></li>
        <li><a href="#"><i class="fa fa-users"></i> <span>Peserta Bazaar</span><span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
					</span></a></li>
        <li><a href="#"><i class="fa fa-user"></i><span>Data Individual Peserta</span><span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
					</span></a></li>
		<li class="">
			<a href="#"><i class="fa fa-users"></i> Tim Peserta Acara
                <span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
              <ul class="treeview-menu" style="display: none;">
                <li>
					<a href="#"><i class="fa fa-users"></i><span>Semua Tim</span>
					<span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
					</span></a>
				</li>
                <li class="">
					<a href="#"><i class="fa fa-user"></i> Kategori Acara
						<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
					<ul class="treeview-menu" style="display: none;">
						<li><a href="#">Dinamik STAR</a></li>
						<li><a href="#">Donor Darah</a></li>
						<li><a href="#">Festival</a></li>
						<li><a href="#">Seminar Nasional</a></li>
						<li><a href="#">Talkshow</a></li>
						<li><a href="#">Workshop Guru</a></li>
					</ul>
                </li>
			</ul>
		</li>
		<li class="">
			<a href="#"><i class="fa fa-users"></i> Tim Peserta Lomba
                <span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
              <ul class="treeview-menu" style="display: none;">
               <li>
					<a href="#"><i class="fa fa-users"></i><span>Semua Tim</span>
					<span class="pull-right-container">
						<small class="label pull-right bg-blue">777</small>            
					</span></a>
				</li>
                <li class="">
					<a href="#"><i class="fa fa-user"></i> Kategori Lomba
						<span class="pull-right-container">
						<i class="fa fa-angle-left pull-right"></i>
						</span>
					</a>
					<ul class="treeview-menu" style="display: none;">
						<li><a href="#">CS Programming Contest</a></li>
						<li><a href="#">Keamanan Jaringan</a></li>
						<li><a href="#">Lomba Cipta Animasi</a></li>
						<li><a href="#">Lomba Cipta Web</a></li>
						<li><a href="#">Lomba Desain Grafis</a></li>
						<li><a href="#">Olimpiade TIK</a></li>
						<li><a href="#">PC Assembling</a></li>
						<li><a href="#">Robot Line Follower</a></li>
					</ul>
                </li>
			</ul>
		</li>
        <li class="header">LABELS</li>
        <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>Penting</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>Peringatan</span></a></li>
        <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>Informasi</span></a></li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- =============================================== -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Beranda Admin
			<small>Panel Informasi</small>
		</h1>
	</section>

    <!-- Main content -->
    <section class="content">
		<div class="row">
			<div class="col-lg-4 col-xs-6">
			  <!-- small box -->
				<div class="small-box bg-aqua">
					<div class="inner">
						<h3>777</h3>

						<p>Jumlah Akun</p>
					</div>
					<div class="icon">
						<i class="fa fa-user"></i>
					</div>
					<a href="#" class="small-box-footer">Detail <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
			<!-- ./col -->
			<div class="col-lg-4 col-xs-6">
			  <!-- small box -->
				<div class="small-box bg-green">
					<div class="inner">
						<h3>666</h3>

						<p>Jumlah Tim Lomba & Peserta Acara</p>
					</div>
					<div class="icon">
						<i class="ion ion-stats-bars"></i>
					</div>
					<a href="#" class="small-box-footer">Detail <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
			<!-- ./col -->
			
			<!-- ./col -->
			<div class="col-lg-4 col-xs-6">
				<!-- small box -->
				<div class="small-box bg-red">
					<div class="inner">
						<h3>65</h3>

						<p>Pesan Baru</p>
					</div>
					<div class="icon">
						<i class="ion ion-email-unread"></i>
					</div>
					<a href="#" class="small-box-footer">Detail <i class="fa fa-arrow-circle-right"></i></a>
				</div>
			</div>
			<!-- ./col -->
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">Peserta Acara</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body with-border">
						<h4 class="box-title">Peserta Acara Terverifikasi</h4>
					</div>
					<div class="box-body collapsed-box">
						<div class="row">
							<div class="col-md-8">
								<div class="chart-responsive">
									<canvas id="pieChart" height="150"></canvas>
								</div>
								<!-- ./chart-responsive -->
							</div>
							<!-- /.col -->
							<div class="col-md-4">
								<ul class="chart-legend clearfix">
									<li><i class="fa fa-circle-o text-red"></i> Kategori 1</li>
									<li><i class="fa fa-circle-o text-green"></i>  Kategori 2</li>
									<li><i class="fa fa-circle-o text-yellow"></i>  Kategori 3</li>
									<li><i class="fa fa-circle-o text-aqua"></i>  Kategori 4</li>
									<li><i class="fa fa-circle-o text-light-blue"></i>  Kategori 5</li>
									<li><i class="fa fa-circle-o text-gray"></i>  Kategori 6</li>
								</ul>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->
					
					<!-- /.footer -->
				</div>
				<div class="box collapsed-box">
					<div class="box-header with-border">
						<h3 class="box-title">Peserta Acara Belum Verifikasi</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
						</div>
					</div>
					<div class="box-body collapsed-box">
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">Kategori 1<span class="pull-right text-red">12</span></a></li>
							<li><a href="#">Kategori 2<span class="pull-right text-red">12</span></a></li>
							<li><a href="#">Kategori 3<span class="pull-right text-red">12</span></a></li>
							<li><a href="#">Kategori 4<span class="pull-right text-red">12</span></a></li>
							<li><a href="#">Kategori 5<span class="pull-right text-red"></i> 12</span></a></li>
							<li><a href="#">Kategori 6<span class="pull-right text-red"></i> 12</span></a></li>
							<li><a href="#">Kategori 7<span class="pull-right text-red"></i> 12</span></a></li>
							<li><a href="#">Kategori 8<span class="pull-right text-red">12</span></a></li>
							
						</ul>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->			
					<!-- /.footer -->
				</div>
			  <!-- /.box -->
			</div>
			<div class="col-md-6">
				<div class="box box-default">
					<div class="box-header with-border">
						<h3 class="box-title">Peserta Lomba</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body with-border">
						<h4 class="box-title">Peserta Lomba Terverifikasi</h4>
					</div>
					<div class="box-body collapsed-box">
						<div class="row">
							<div class="col-md-8">
								<div class="chart-responsive">
									<canvas id="pieChart2" height="150"></canvas>
								</div>
								<!-- ./chart-responsive -->
							</div>
							<!-- /.col -->
							<div class="col-md-4">
								<ul class="chart-legend clearfix">
									<li><i class="fa fa-circle-o text-red"></i> Kategori 1</li>
									<li><i class="fa fa-circle-o text-green"></i>  Kategori 2</li>
									<li><i class="fa fa-circle-o text-yellow"></i>  Kategori 3</li>
									<li><i class="fa fa-circle-o text-aqua"></i>  Kategori 4</li>
									<li><i class="fa fa-circle-o text-light-blue"></i>  Kategori 5</li>
									<li><i class="fa fa-circle-o text-gray"></i>  Kategori 6</li>
									<li><i class="fa fa-circle-o text-gray"></i>  Kategori 7</li>
									<li><i class="fa fa-circle-o text-gray"></i>  Kategori 8</li>
								</ul>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					
					<!-- /.box-body -->
					<!-- /.footer -->
				</div>
				<div class="box collapsed-box">
					<div class="box-header with-border">
						<h3 class="box-title">Peserta Lomba Belum Verifikasi</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
						</div>
					</div>
					<div class="box-body collapsed-box">
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">Kategori 1<span class="pull-right text-red">12</span></a></li>
							<li><a href="#">Kategori 2<span class="pull-right text-red">12</span></a></li>
							<li><a href="#">Kategori 3<span class="pull-right text-red">12</span></a></li>
							<li><a href="#">Kategori 4<span class="pull-right text-red">12</span></a></li>
							<li><a href="#">Kategori 5<span class="pull-right text-red"></i> 12</span></a></li>
							<li><a href="#">Kategori 6<span class="pull-right text-red"></i> 12</span></a></li>
							<li><a href="#">Kategori 7<span class="pull-right text-red"></i> 12</span></a></li>
							<li><a href="#">Kategori 8<span class="pull-right text-red">12</span></a></li>
							
						</ul>
						<!-- /.row -->
					</div>
					<!-- /.box-body -->
					<div class="box-body with-border">
						
					</div>
					<div class="box-footer no-padding">
						
					</div>
					<!-- /.footer -->
				</div>
			  <!-- /.box -->
			</div>
		</div>
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      Didukung oleh<b> CodeIgniter dan AdminLTE</b>
    </div>
    <strong>Copyright &copy; 2016 <a href="http://almsaeedstudio.com">Tim Pengembang Dinamik12</a></strong>
  </footer>

  
</div>
<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url(); ?>/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url(); ?>assets/js/bootstrap/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="<?php echo base_url(); ?>plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="<?php echo base_url(); ?>plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url(); ?>assets/js/adminlte/app.min.js"></script>
<!-- ChartJS 1.0.1 -->
<script src="<?php echo base_url(); ?>plugins/chartjs/Chart.min.js"></script>
<!-- Sparkline -->
<script src="<?php echo base_url(); ?>plugins/sparkline/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="<?php echo base_url(); ?>plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?php echo base_url(); ?>plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- Chart JS -->
<script src="<?php echo base_url(); ?>assets/js/custom/piechart.js"></script>
<script src="<?php echo base_url(); ?>assets/js/custom/piechart2.js"></script>
</body>
</html>
