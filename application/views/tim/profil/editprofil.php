			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h3 class="section-dashboard">Edit Profil Tim</h3>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php echo form_open('dashboard/Tim/editSekolah'); ?>
					<table class="daftar-tim">
						<tr>
							<td class="p1">Nama Tim</td>
							<td>
								<input type="text" name="schteam_name" placeholder="Nama TIm">
							</td>
						</tr>
						<tr>
							<td class="p1">Nama Pembimbing</td>
							<td>
								<input type="text" name="school_name" placeholder="Nama Pembimbing">
							</td>
						</tr>
						<tr>
							<td class="p1">Anggota</td>
							<td>	
								<input type="text" name="schparticipant_name" placeholder="Nama Anggota">
							</td>
						</tr>																			
					</table>
					<br>
					<input type="submit" name="submit" value="Selesai" class="btn-edit">
					<a href="<?php echo site_url('dashboard/tim/profil') ?>" class="btn-kembali">Kembali</a>
					<?php echo form_close(); ?>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

