			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Sekolah
						<small>Pendaftaran Tim</small>
					</h1>
					<h3 class="section-dashboard">Form Pendaftaran Tim</h3>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php echo form_open('dashboard/Sekolah/processDaftar'); ?>
					<table class="daftar-tim">
						<tr>
							<td class="p1">Kategori Lomba</td>
							<td>
								<select name="schteam_event_id" id="event-id" onchange="checkform()">
									<option value="" disabled selected>- Kategori Lomba -</option>
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
							<td class="p1">Email Ketua Tim</td>
							<td>	
								<input type="email" name="account_email" value="" placeholder="Email Ketua">
							</td>	
							<td style="color:red;">Email ini dapat digunakan untuk masuk sebagai tim lomba dan fitur lupa password akun tim. <br>
							Akun akan aktif dan dapat digunakan ketika pembayaran sudah <b style="color:green;">LUNAS</b>. <br>
							Email harus valid dan berbeda dengan email resmi sekolah.</td>

						</tr>	
						<tr>
							<td class="p1">Password</td>
							<td>
								<input type="password" name="account_password" placeholder="Enter password">
							</td>
							<td style="color:red;">Password ini digunakan untuk login sebagai Tim.</td>
						</tr>						
						<tr>
							<td class="p1">Nama Pembimbing</td>
							<td>
								<input type="text" name="schteam_coach_name" placeholder="Nama Pembimbing" id="nama-p">
							</td>
							<td style="">Jika ada</td>
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
								<div id="btn-add-m"><a href="#" class="btn-add" id="addanggota">+</a></div>
							</td>
						</tr>
						<tr style="" class="tdanggota1">
							<td class="p1"  >NISN</td>
							<td>
								<input type="text" name="nisn[]" placeholder="NISN Anggota 1">
							</td>
							<td>
								Harap daftarkan anggota tim sesuai dengan syarat yang ada di dalam booklet lomba terkait.
							</td>
						</tr>	
						<tr style="display:none;" class="tdanggota2" id="member-2-name">
							<td class="p1"  >Anggota2</td>
							<td>
								<input type="text" name="anggota[]" placeholder="Nama Anggota">
							</td>
						</tr>
						<tr style="display:none;" class="tdanggota2" id="member-2-id">
							<td class="p1"  >NISN</td>
							<td>
								<input type="text" name="nisn[]" placeholder="NISN Anggota 2">
							</td>
						</tr>							
						<tr style="display:none;" class="tdanggota3" id="member-3-name">
							<td class="p1" >Anggota3</td>
							<td>
								<input type="text" name="anggota[]" placeholder="Nama Anggota">
							</td>
						</tr>
						<tr style="display:none;" class="tdanggota3" id="member-3-id">
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
					
					<script type="text/javascript" language="javascript">
						function checkform()
						{
							var e = document.getElementById("event-id");
							var index = e.options[e.selectedIndex].value;
							//alert(index);
							if (index == "1" || index == "4" || index == "5") {
								document.getElementById("btn-add-m").style.display = 'none';
							}
							else {
								document.getElementById("btn-add-m").style.display = 'block';
							}
						}
					</script> 
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

