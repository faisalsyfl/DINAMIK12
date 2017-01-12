			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Profil Admin
						<small>Panel Informasi</small>
					</h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php
						if(isset($err)){ 
						if($err==1){
					 ?>
					<div class="alert alert-success alert-dismissible" role="alert">
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					  <strong>Sukses!</strong> Berhasil Ganti Password
					</div>					 
					 <?php 
						}else if($err==2){
					  ?>
					<div class="alert alert-danger alert-dismissible" role="alert">
					  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					  <strong>Gagal!</strong> Gagal Ganti Password.
					</div>		
					  <?php 
					}}
					  ?>
					<h3 class="section-dashboard">Ganti Password</h3>
					<?php echo form_open('dashboard/admin/editPass'); ?>
					<table class="school-info">
						<tr>
							<td class="p1">Password Lama</td>
							<td><input type="text" name="bef" class="form-control" placeholder="Password Lama"></td>
						</tr>
						<tr>
							<td class="p1">Password Baru</td>
							<td><input type="password" name="aft1" class="form-control" placeholder="Enter Password"></td>
						</tr>
						<tr>
							<td class="p1">Re-Enter Password</td>
							<td><input type="password" name="aft2" class="form-control" placeholder="Re-Enter Password"></td>
						</tr>						
					</table>
					<input type="submit" name="Pass" value="Ganti Password" class="btn-kembali">				
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

