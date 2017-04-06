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
					padding: 5px 15px 5px 15px;;
					margin: 20px 5px 5px 0px;
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
				
				.kode{
					text-align: center;
					width: 60%;
					font-size: 24px;
					padding: 10px;
				}
				.wrapkode{
					display: inline-block;
					text-align: center;
					font-size: 18px;
					padding-left: 10px;
				}
			</style>
			
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Point
						<small>Tambah Poin</small>
					</h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<br>
					<br>
					<br>
					<br>
					<div class="wrapkode">
						<?php echo form_open('dashboard/Publik/processDaftar'); ?>
							<p>Masukan kode dibawah ini:</p>
							<input type="text" class="kode" name="kode_point" placeholder="Kode">
							<br>
							<input type="submit" name="submit" value="Submit" class="btn-tambah">
						<?php echo form_close(); ?>
					</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

