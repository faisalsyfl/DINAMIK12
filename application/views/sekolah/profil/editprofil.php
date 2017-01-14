			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h3 class="section-dashboard">Edit Profil Sekolah</h3>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php echo form_open('dashboard/Sekolah/editSekolah'); ?>
					<table class="daftar-tim">
						<tr>
							<td class="p1">Nama Sekolah</td>
							<td>
								<input type="text" name="school_name" placeholder="Nama Sekolah">
							</td>
						</tr>
						<tr>
							<td class="p1">Kota</td>
							<td>
								<select name="school_city">
									<option value="Kota" selected>Kota</option>
								</select>
							</td>
						</tr>
						<tr>
							<td class="p1">Email</td>
							<td>
								<input type="text" name="school_name" placeholder="Email">
							</td>
						</tr>
						<tr>
							<td class="p1">Kontak</td>
							<td>	
								<input type="text" name="school_contact" placeholder="Kontak">
							</td>
						</tr>																			
					</table>
					<br>
					<input type="submit" name="submit" value="Selesai" class="btn-edit">
					<a href="<?php echo site_url('dashboard/sekolah/profil') ?>" class="btn-kembali">Kembali</a>
					<?php echo form_close(); ?>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

