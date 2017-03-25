			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Unggah Persyaratan
						<small>Berkas Dinamik Star</small>
					</h1><br>
					<h1 class="nama-tim">Nama Peserta : <b><?php echo $pbt['pubteam_name']; ?></b></h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<p class="school-info">						
						- Upload berkas hanya diperlukan untuk acara Dinamik-Star<br>
						- Acara yang tidak memerlukan upload file tidak perlu mengisi<br>
						- Untuk file/berkas yang harus diupload silahkan upload di google drive atau jasa penyedia layanan serupa.<br>
						- Pastikan file bisa di download melalui link yang dimasukan
					</p>
					<p class="school-info">
						Silahkan masukan link berkas yang sudah diupload dibawah ini :
					</p>
					<?php echo form_open('dashboard/Publik/uploadF'); ?>
						<input type="hidden" name="pubteam_id" value="<?php echo $pbt['pubteam_id']; ?>">
						<input type="text" class="daftar-tim form-control" onKeyup="checkform()" name="pubteam_file">
						<input type="submit" class="btn btn-success" id="btn-submit" value="Simpan" disabled><br>
						File saat ini : <br>
						<?php if($pbt['pubteam_file'] != NULL){ ?>
							<!-- file yang sudah diupload -->
							<input type="text" class="daftar-tim form-control" id="link-file" value="<?php echo $pbt['pubteam_file'] ?>" readonly> 
						<?php }else{ ?>
							<input type="text" class="daftar-tim form-control" id="link-file" value="No File Found" readonly>
						<?php 
						} ?>
						<input type="button" class="btn btn-warning" id="btn-edit" value="Ubah" onclick="enableSubmit()" <?php if($pbt['pubteam_file'] == NULL){ echo 'disabled';} ?>><br>
						<small class="keterangan">*jika ingin mengubah link, silahkan klik tombol Ubah dan masukan kembali link baru pada field diatas</small>
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

