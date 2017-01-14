			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h3 class="section-dashboard">Edit Profil Publik</h3>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php echo form_open('dashboard/Sekolah/editPublik'); ?>
					<table class="daftar-tim">
						<tr>
							<td class="p1">Nama</td>
							<td>
								<input type="text" name="public_name" placeholder="Nama">
							</td>
						</tr>
						<tr>
							<td class="p1">Email</td>
							<td>
								<input type="text" name="public_email" placeholder="Email">
							</td>
						</tr>
						<tr>
							<td class="p1">Kontak</td>
							<td>	
								<input type="email" name="public_contact" value="" placeholder="Kontak">
							</td>
						</tr>																			
					</table>
					<br>
					<input type="submit" name="submit" value="Selesai" class="btn-edit">
					<a href="<?php echo site_url('dashboard/publik/profil') ?>" class="btn-kembali">Kembali</a>
					<?php echo form_close(); ?>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

