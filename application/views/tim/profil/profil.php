			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Profil Tim
						<small>Panel Informasi</small>
					</h1>
					<h3 class="section-dashboard">Informasi Tim</h3>
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
							<td class="p1">Kategori Lomba</td>
							<td><?php echo $anggota[0]['eve_name']; ?></td>
						</tr>
						<tr>
							<td class="p1">Nama Tim</td>
							<td><?php echo $anggota[0]['sct_name']; ?></td>
						</tr>
						<tr>
							<td class="p1">Nama Pembimbing</td>
							<td><?php echo $anggota[0]['sct_coach_name']; ?></td>
						</tr>
						<?php 
							foreach($anggota as $key){
								echo "<tr>";
								echo "<td class='p1'>Anggota</td>";
								echo "<td>".$key['schparticipant_name']."</td>";
							}
						 ?>
						<tr>
							<td class="p1">Kode Pembayaran</td>
							<td class="kode"><?php echo $anggota[0]['pay_unique_code']; ?></td>
						</tr>
						<tr>
							<td class="p1">Status Pembayaran</td>
							<?php if ($anggota[0]['pay_status']==1){ ?>
							<td class="kode" style="color: green">Lunas</td>
							<?php }else{ ?>
							<td class="kode" style="color: red">Belum Lunas</td>
							<?php } ?>
						</tr>
					</table>
					<br>
					<!--<a href="<?php echo site_url('dashboard/tim/') ?>" class="btn-edit">Edit</a>-->
					<!-- <a href="<?php echo site_url('dashboard/tim/') ?>" class="btn-kembali">Kembali</a> -->
					<!-- <br> -->
					<h3 class="section-dashboard">Ganti Password</h3>
					<?php echo form_open('dashboard/tim/editPass'); ?>
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

