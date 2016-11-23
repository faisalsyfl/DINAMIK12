<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<?php echo base_url("assets/img/favicon.png"); ?>">
	
    <title>Dinamik 12</title>

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/bootstrap.min.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/ie10-viewport-bug-workaround.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/main.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/font-awesome.min.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/owl.carousel.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/owl.theme.css"); ?>" rel="stylesheet">
	<script src="<?php echo base_url("assets/js/main.js"); ?>"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <nav class="headroom headroom--unpinned navbar navbar-inverse navbar-fixed-top nav" style="">
      <div class="collapse navbar-collapse head" style="">
        <img class="img" src="<?php echo base_url("assets/img/logo.png"); ?>">
      </div>
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand"><img class="img-responsive" src="<?php echo base_url("assets/img/logo-white.png"); ?>"></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li <?php if ( $this->uri->uri_string() == '' ) echo 'class="active"' ?>><a href="<?php echo site_url('/'); ?>">BERANDA</a></a></li>
            <li <?php if ( $this->uri->uri_string() == 'Lomba' ) echo 'class="active"' ?>><a href="<?php echo site_url('/Lomba'); ?>">LOMBA</a></li>
            <li <?php if ( $this->uri->uri_string() == 'Acara' ) echo 'class="active"' ?>><a href="<?php echo site_url('/Acara'); ?>">ACARA</a></li>
            <li <?php if ( $this->uri->uri_string() == 'Berita' ) echo 'class="active"' ?>><a href="<?php echo site_url('/Maintenance'); ?>">BERITA</a></li>
            <li <?php if ( $this->uri->uri_string() == 'Galeri' ) echo 'class="active"' ?>><a href="<?php echo site_url('/Maintenance'); ?>">GALERI</a></li>
            <li <?php if ( $this->uri->uri_string() == 'Unduhan' ) echo 'class="active"' ?>><a href="<?php echo site_url('/Maintenance'); ?>">UNDUHAN</a></li>
			<li <?php if ( $this->uri->uri_string() == 'Kontak' ) echo 'class="active"' ?>><a href="<?php echo site_url('/Maintenance'); ?>">KONTAK</a></li>
            <li <?php if ( $this->uri->uri_string() == 'FAQ' ) echo 'class="active"' ?>><a href="<?php echo site_url('/Maintenance'); ?>">FAQ</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

