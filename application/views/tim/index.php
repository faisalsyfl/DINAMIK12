			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Tim
						<small>Panel Informasi</small>
					</h1><br>
					<h1 class="nama-tim"><b><?php echo $schteam['schteam_name']; ?></b> - <span class="kategori"><?php echo $schteam['event_name']; ?></span></h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<p class="school-info">
						- Peraturan lomba secara lengkap bisa di download <a href="#"><b><a href="<?php echo $schteam['event_rule']; ?>" title="">disini</a></b></a><br>
						- Untuk file/berkas yang harus diupload silahkan upload di google drive atau jasa penyedia layanan serupa.<br>
						- Lomba yang tidak memerlukan upload file tidak perlu mengisi<br>
						- Pastikan file bisa di download melalui link yang dimasukan
					</p>
					<p class="school-info">
						Silahkan masukan link berkas yang sudah diupload dibawah ini :
					</p>
					<?php echo form_open('dashboard/Tim/uploadF'); ?>
						<input type="hidden" name="schteam_id" value="<?php echo $schteam['schteam_id']; ?>">
						<input type="text" class="daftar-tim form-control" onKeyup="checkform()" name="schteam_file">
						<input type="submit" class="btn-submit" id="btn-submit" value="Submit" disabled><br>
						File saat ini : <br>
						<?php if($schteam['schteam_file'] != NULL){ ?>
							<input type="text" class="daftar-tim form-control" id="link-file" value="<?php echo $schteam['schteam_file']; ?>" readonly>
						<?php }else{ ?>
							<input type="text" class="daftar-tim form-control" id="link-file" value="No File Found" readonly>
						<?php 
						} ?>
						<input type="button" class="btn-edit" id="btn-edit" value="Edit" onclick="enableSubmit()"><br>
						<small class="keterangan">*jika ingin mengubah link, silahkan klik tombol Edit dan masukan kembali link baru pada field diatas</small>
					</form>
					
					
					<script type="text/javascript" language="javascript">
						function checkform()
						{
							if (document.getElementById("link-file").value == "No File Found") {
								document.getElementById("btn-submit").disabled = false;
							}
						}
						
						function enableSubmit()
						{
							document.getElementById("btn-submit").disabled = false;
						}
					</script> 
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

