<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="<?php echo base_url("assets/img/logo/favicon.png"); ?>">
	
    <title>Dinamik 12</title>

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/bootstrap/bootstrap.min.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/other/ie10-viewport-bug-workaround.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/custom/main.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/other/font-awesome.min.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/carousel/owl.carousel.css"); ?>" rel="stylesheet">
    <link href="<?php echo base_url("assets/css/carousel/owl.theme.css"); ?>" rel="stylesheet">
	<script src="<?php echo base_url("assets/js/custom/main.js"); ?>"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <!--<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  
  <body>
    <nav class="headroom headroom--unpinned navbar navbar-inverse navbar-fixed-top nav" style="" id="nav-indicator">
      <div class="collapse navbar-collapse head" style="">
        <a href="<?php echo site_url('/'); ?>"><img class="img" src="<?php echo base_url("assets/img/logo/logo.png"); ?>"></a>
      </div>
      <div class="container" >
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="<?php echo site_url('/'); ?>"><img class="img-responsive" src="<?php echo base_url("assets/img/logo/logo-white.png"); ?>"></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li <?php if ( $this->uri->uri_string() == '' ) echo 'class="active"' ?>><a href="<?php echo site_url('/'); ?>">BERANDA</a></a></li>
            <li <?php if ( $this->uri->uri_string() == 'lomba' ) echo 'class="active"' ?>><a href="<?php echo site_url('/lomba'); ?>">LOMBA</a></li>
            <li <?php if ( $this->uri->uri_string() == 'acara' ) echo 'class="active"' ?>><a href="<?php echo site_url('/acara'); ?>">ACARA</a></li>
            <li <?php if ( $this->uri->uri_string() == 'berita' ) echo 'class="active"' ?>><a href="<?php echo site_url('/maintenance'); ?>">BERITA</a></li>
            <li <?php if ( $this->uri->uri_string() == 'galeri' ) echo 'class="active"' ?>><a href="<?php echo site_url('/maintenance'); ?>">GALERI</a></li>   <li <?php if ( $this->uri->uri_string() == 'akun' ) echo 'class="active"' ?>><a href="<?php echo site_url('/akun'); ?>">AKUN</a></li>
            <li <?php if ( $this->uri->uri_string() == 'unduhan' ) echo 'class="active"' ?>><a href="<?php echo site_url('/maintenance'); ?>">UNDUHAN</a></li>
			<li <?php if ( $this->uri->uri_string() == 'kontak' ) echo 'class="active"' ?>><a href="<?php echo site_url('/maintenance'); ?>">KONTAK</a></li>
            <li <?php if ( $this->uri->uri_string() == 'FAQ' ) echo 'class="active"' ?>><a href="<?php echo site_url('/maintenance'); ?>">FAQ</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>


