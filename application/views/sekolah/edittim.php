			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Profil Sekolah
						<small>Panel Informasi</small>
					</h1>
					<h3 class="section-dashboard">Form Pendaftaran Tim</h3>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php echo form_open('dashboard/Sekolah/processEdit'); ?>
					<table class="daftar-tim">
						<tr>
							<td class="p1">Kategori Lomba</td>
							<td>
								<select name="schteam_event_id">
									<?php 
										foreach($list as $eve){
											if($eve['event_status'] == 1){
												echo "<option value='".$eve['event_id']."'>".$eve['event_name']."</option>";
											}
										}
									 ?>
								</select>
							</td>
						</tr>
						<tr>
							<td class="p1">Nama Tim</td>
							<td>
								<input type="text" name="schteam_name" placeholder="Nama Tim">
							</td>
						</tr>
						<tr>
							<td class="p1">Password</td>
							<td>
								<input type="password" name="account_password" placeholder="Enter password">
							</td>
						</tr>						
						<tr>
							<td class="p1">Nama Pembimbing</td>
							<td>
								<input type="text" name="schteam_coach_name" placeholder="Nama Pembimbing">
							</td>
						</tr>
						<tr>
							<td class="p1">Kontak Pembimbing</td>
							<td>
								<input type="text" name="schteam_coach_contact" placeholder="Kontak Pembimbing">
							</td>
						</tr>						
						<tr>
							<td class="p1" class="tdanggota1">Anggota1</td>
							<td>
								<input type="text" name="anggota[]" placeholder="Nama Anggota">
							</td>
							<td>
								<a href="#" class="btn-add" id="addanggota">+</a>
							</td>
						</tr>
						<tr style="" class="tdanggota1">
							<td class="p1"  >NISN</td>
							<td>
								<input type="text" name="nisn[]" placeholder="NISN Anggota 1">
							</td>
						</tr>	
						<tr style="display:none;" class="tdanggota2">
							<td class="p1"  >Anggota2</td>
							<td>
								<input type="text" name="anggota[]" placeholder="Nama Anggota">
							</td>
						</tr>
						<tr style="display:none;" class="tdanggota2">
							<td class="p1"  >NISN</td>
							<td>
								<input type="text" name="nisn[]" placeholder="NISN Anggota 2">
							</td>
						</tr>							
						<tr style="display:none;" class="tdanggota3">
							<td class="p1" >Anggota3</td>
							<td>
								<input type="text" name="anggota[]" placeholder="Nama Anggota">
							</td>
						</tr>
						<tr style="display:none;" class="tdanggota3"	>
							<td class="p1"  >NISN</td>
							<td>
								<input type="text" name="nisn[]" placeholder="NISN Anggota 3">
							</td>
						</tr>																				
					</table>
					<br>
					<input type="submit" name="submit" value="Daftar" class="btn-edit">
					<a href="<?php echo site_url('dashboard/sekolah/') ?>" class="btn-kembali">Kembali</a>
					<?php echo form_close(); ?>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

