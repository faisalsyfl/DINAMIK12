<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>DINAMIK12 | <?php echo $this->session->username; ?></title>
		<link rel="icon" href="<?php echo base_url("assets/img/logo/favicon.png"); ?>">
		<!-- Tell the browser to be responsive to screen width -->
		<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
		<!-- Bootstrap 3.3.6 -->
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/bootstrap/bootstrap.min.css">
		<!-- Custom -->
		<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/custom/main.css">
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
		<!-- Data Tables -->
		<link rel="stylesheet" href="<?php echo base_url(); ?>plugins/datatables/dataTables.bootstrap.css">

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
				<a href="#" class="logo">
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini"><img class="icon-toggle" src="<?php echo base_url('/assets/img/logo/icon-white.png');?>"></span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg"><img class="logo-toggle" src="<?php echo base_url('/assets/img/logo/logo-white.png');?>"></span>
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
														<img src="<?php echo base_url('/assets/img/icon_dashboard/admin.jpg');?>" class="img-circle" alt="User Image">
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
									<img src="<?php echo base_url('/assets/img/icon_dashboard/admin.jpg');?>" class="user-image" alt="User Image">
									<span class="hidden-xs">Bang Satyo</span>
								</a>
								<ul class="dropdown-menu">
									<!-- User image -->
									<li class="user-header">
										<img src="<?php echo base_url('/assets/img/icon_dashboard/admin.jpg');?>" class="img-circle" alt="User Image">
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
							<img src="<?php echo base_url('/assets/img/icon_dashboard/admin.jpg');?>" class="img-circle" alt="User Image">
						</div>
						<div class="pull-left info">
							<p>Bang Satyo</p>
							<a href="#"><span class="fa fa-user fa-2x text-success"></span> Profil</a>
						</div>
					</div>
					<!-- sidebar menu: : style can be found in sidebar.less -->
					<ul class="sidebar-menu">
						<li class="header">Admin Menu</li>
						<li class="active"><a href="<?php echo site_url('dashboard/admin/') ?>"><i class="fa fa-home"></i> <span>Beranda</span></a></li>
						<li>
							<a href="#"><i class="fa fa-star"></i> 
								<span>Acara & Lomba </span>
								<span class="pull-right-container">
									<small class="label pull-right bg-blue">777</small>            
								</span>
							</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-calendar"></i> 
								<span>Agenda Kalender</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-blue">777</small>            
								</span>
							</a>
						</li>
				
						<li class="">
							<a href="#"><i class="fa fa-users"></i> Akun
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu" style="display: none;">
								<li>
									<a href="<?php echo site_url('dashboard/admin/akun') ?>">
										<i class="fa fa-users"></i> Semua Akun
										<span class="pull-right-container">
											<small class="label pull-right bg-blue"><?php echo $totalAcc; ?></small>            
										</span>
									</a>
								</li>
								<li class="">
									<a href="#"><i class="fa fa-user"></i> Kategori Akun
										<span class="pull-right-container">
											<i class="fa fa-angle-left pull-right"></i>
										</span>
									</a>
									<ul class="treeview-menu" style="display: none;">
										<li><a href="<?php echo site_url('dashboard/admin/akun/SCH') ?>">Akun Sekolah</a></li>
										<li><a href="<?php echo site_url('dashboard/admin/akun/SCT') ?>">Akun Tim Sekolah</a></li>
										<li><a href="<?php echo site_url('dashboard/admin/akun/PUB') ?>">Akun Umum</a></li>
										<li><a href="<?php echo site_url('dashboard/admin/akun/PBT') ?>">Akun Tim Umum</a></li>										
										<li><a href="<?php echo site_url('dashboard/admin/akun/COR') ?>">Akun Koordinator</a></li>
										<li><a href="<?php echo site_url('dashboard/admin/akun/JDG') ?>">Akun Juri</a></li>
									</ul>
								</li>
							</ul>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-newspaper-o"></i> 
								<span>Berita</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-blue">777</small>            
								</span>
							</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-thumbs-up"></i> 
								<span>Hasil Penjurian</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-blue">777</small>            
								</span>
							</a>
						</li>
						<li>
							<a href="#"><i class="fa fa-envelope"></i> 
								<span>Pesan Masuk</span><span class="pull-right-container">
									<small class="label pull-right bg-blue">777</small>            
									<small class="label pull-right bg-red">3</small>            
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-users"></i> 
								<span>Peserta Bazaar</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-blue">777</small>            
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<i class="fa fa-user"></i>
								<span>Data Individual Peserta</span>
								<span class="pull-right-container">
									<small class="label pull-right bg-blue">777</small>            
								</span>
							</a>
						</li>
						<li class="">
							<a href="#"><i class="fa fa-users"></i> Tim Peserta Acara
								<span class="pull-right-container">
									<i class="fa fa-angle-left pull-right"></i>
								</span>
							</a>
							<ul class="treeview-menu" style="display: none;">
								<li>
									<a href="#"><i class="fa fa-users"></i>
										<span>Semua Tim</span>
										<span class="pull-right-container">
											<small class="label pull-right bg-blue">777</small>            
										</span>
									</a>
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
										</span>
									</a>
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