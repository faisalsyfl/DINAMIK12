			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Daftar Acara
						<small>Panel Informasi</small>
					</h1>
					<h3 class="section-dashboard">Form Pendaftaran Acara</h3>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php echo form_open('dashboard/Publik/processDaftar'); ?>
					<table class="daftar-tim">
						<tr>
							<td class="p1">Pilihan Acara</td>
							<td>
								<select name="pubteam_event_id">
									<?php 
										foreach($list as $eve){
											if($eve['event_status'] == 1 && $eve['event_id'] != 12){
												echo "<option value='".$eve['event_id']."'>".$eve['event_name']."</option>";
											}
										}
									 ?>
								</select>
							</td>
						</tr>
						<tr>
							<td class="p1">Nama Peserta</td>
							<td>
								<input type="text" name="pubteam_name" placeholder="Nama Lengkap">
							</td>
						</tr>
						<tr>
							<td class="p1">Instansi</td>
							<td>
								<input type="text" name="pubteam_instance" placeholder="Instansi">
							</td>
						</tr>						
						<tr>
							<td class="p1">Email</td>
							<td>
								<input type="email" name="pubteam_email" placeholder="Email">
							</td>
						</tr>	
						<tr>
							<td class="p1">Nomor Kontak</td>
							<td>
								<input type="text" name="pubteam_contact" placeholder="Contact">
							</td>
						</tr>																	
																								
					</table>
					<br>
					<input type="submit" name="submit" value="Daftar" class="btn-edit">
					<a href="<?php echo site_url('dashboard/publik/') ?>" class="btn-kembali">Kembali</a>
					<?php echo form_close(); ?>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

