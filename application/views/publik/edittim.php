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
					<?php echo form_open('dashboard/Publik/processEdit'); ?>
					<table class="daftar-tim">
						<tr>
							<td class="p1">Nama Acara</td>
							<td>
								<select name="pubteam_event_id" readonly disabled>
									<?php 
										foreach($list as $eve){
											if($eve['event_status'] == 1){
												if($eve['event_id'] == $data['pubteam_event_id']){
													echo "<option value='".$eve['event_id']."' selected>".$eve['event_name']."</option>";
												}
											}
										}
									 ?>
								</select>
							</td>
						</tr>
						<tr>
							<td class="p1">Nama Lengkap</td>
							<td>
								<input type="hidden" name="pubteam_id" value="<?php echo $data['pubteam_id']; ?>">
								<input type="text" name="pubteam_name" placeholder="Nama Lengkap" value="<?php echo $data['pubteam_name']; ?>">
							</td>
						</tr>
						<tr>
							<td class="p1">Instansi</td>
							<td>
								<input type="text" name="pubteam_instance" placeholder="Instansi" value="<?php echo $data['pubteam_instance']; ?>">
							</td>
						</tr>						
						<tr>
							<td class="p1">Email</td>
							<td>
								<input type="email" name="pubteam_email" placeholder="Email" value="<?php echo $data['pubteam_email']; ?>">
							</td>
						</tr>	
						<tr>
							<td class="p1">Nomor Kontak</td>
							<td>
								<input type="text" name="pubteam_contact" placeholder="Contact" value="<?php echo $data['pubteam_contact']; ?>">
							</td>
						</tr>																	
																								
					</table>
					<br>
					<input type="submit" name="submit" value="Edit" class="btn-edit">
					<a href="<?php echo site_url('dashboard/publik/') ?>" class="btn-kembali">Kembali</a>
					<?php echo form_close(); ?>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

