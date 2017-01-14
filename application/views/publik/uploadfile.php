			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Publik
						<small>Panel Informasi</small>
					</h1><br>
					<h1 class="nama-tim"><b><?php echo $this->session->realname; ?></b></h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<p class="school-info">
						- Ketentuan lomba secara lengkap bisa didownload <b><a href="<?php echo base_url('info/view/unduhan') ?>" target="_blank">disini</a></b><br>
						- Logo DINAMIK12 bisa didownload <b><a href="<?php echo base_url('assets/img/logo/logo.png');?>" target="_blank">disini</a></b></a><br>
						- Upload berkas hanya diperlukan untuk acara Dinamik-Star<br>
						- Acara yang tidak memerlukan upload file tidak perlu mengisi<br>
						- Untuk file/berkas yang harus diupload silahkan upload di google drive atau jasa penyedia layanan serupa.<br>
						- Pastikan file bisa di download melalui link yang dimasukan
					</p>
					<p class="school-info">
						Silahkan masukan link berkas yang sudah diupload dibawah ini :
					</p>
					<?php echo form_open('dashboard/Tim/uploadF'); ?>
						<input type="hidden" name="schteam_id" value="<?php echo $this->session->realname; ?>">
						<input type="text" class="daftar-tim form-control" onKeyup="checkform()" name="schteam_file">
						<input type="submit" class="btn-submit" id="btn-submit" value="Submit" disabled><br>
						File saat ini : <br>
						<?php if($this->session->realname != NULL){ ?>
							<!-- file yang sudah diupload -->
							<input type="text" class="daftar-tim form-control" id="link-file" value="<?php echo 'No File Found' ?>" readonly> 
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

