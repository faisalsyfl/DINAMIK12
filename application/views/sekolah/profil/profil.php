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
					<table class="school-info">
						<tr>
							<td class="p1">Nama Sekolah</td>
							<td><?php echo $list['school_name']; ?></td>
						</tr>
						<tr>
							<td class="p1">Kota</td>
							<td>Bandung</td>
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
					<a href="<?php echo site_url('dashboard/sekolah/') ?>" class="btn-kembali">Kembali</a>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

