			<!-- =============================================== -->
			
			<style>
				body{
					background-color: black;
					font-family: tahoma;
					color: #000;
				}
			
				#points{
					border-radius:360px;
					border: 50px solid white;
					background-color: red;
					width: 300px;
					height: 300px;
					color: white;
					display: inline-block;
					position: fixed;
					  top: 20%;
					  left: 50%;
					  /* bring your own prefixes */
					  transform: translate(-50%, -20%);
				}
				
				.number{
					font-size: 7em;
					color: #14910d;
				}
				
				.btn-tambah {
					padding: 10px 10px 10px 10px;;
					margin: 5px 5px 5px 0px;
					border: #14910d 1px solid;
					background-color: #54c921;
					color: #fff;
					font-size: 18px;
				}
				
				.btn-tambah:hover {
					background-color: #14910d;
					color: #fff;
				}
				.btn-tambah:active {
					color: #fff;
				}
				.btn-tambah:visited {
					color: #fff;
				}
				
				.btn-redeem {
					padding: 10px 10px 10px 10px;;
					margin: 5px 5px 5px 0px;
					border: #002672 1px solid;
					background-color: #0a337f;
					color: #fff;
					font-size: 18px;
				}
				
				.btn-redeem:hover {
					background-color: #002672;
					color: #fff;
				}
				.btn-redeem:active {
					color: #fff;
				}
				.btn-redeem:visited {
					color: #fff;
				}
				
				.input{
					text-align: center;
					.
				}
				
				.message{
					color: #0a337f;
				}
			</style>
			
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Poin
						<small>Informasi Poin</small>
					</h1>
				</section>
				<!-- Main content -->
				<section class="content" style="text-align: center;">
					<h3>Poin anda:</h3>
					<h1 class="number">200</h1>
					<div class="message">
						<p>*Penambahan poin berhasil</p>
						<br>
					</div>
					<a href="<?php echo site_url('dashboard/publik/tambahpoint/') ?>" class="btn-tambah">Tambahkan Poin</a>
					<br>
					<br>
					<br>
					<a href="<?php echo site_url('dashboard/publik/redeem/') ?>" class="btn-redeem">Penukaran Poin</a>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

