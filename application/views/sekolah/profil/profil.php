			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Profil Sekolah
						<small>Panel Informasi</small>
					</h1>
					<h3 class="section-dashboard">Informasi Sekolah</h3>
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
					<table class="school-info">
						<tr>
							<td class="p1">Nama Sekolah</td>
							<td><?php echo $list['school_name']; ?></td>
						</tr>
						<tr>
							<td class="p1">Kota</td>
							<td><?php echo $list['city_name']; ?></td>
						</tr>
						<tr>
							<td class="p1">Alamat</td>
							<td><?php echo $list['school_address']; ?></td>
						</tr>
						<tr>
							<td class="p1">Email</td>
							<td><?php echo $_SESSION['email']; ?></td>
						</tr>
					</table>
					<br>
					<a href="<?php echo site_url('dashboard/sekolah/') ?>" class="btn-edit">Edit</a>
					<a href="<?php echo site_url('dashboard/sekolah/') ?>" class="btn-kembali">Kembali
					</a>
					<br>
					<br>
					<h3 class="section-dashboard">Ganti Password</h3>
					<?php echo form_open('dashboard/sekolah/editPass'); ?>
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

