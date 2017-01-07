			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Tim
						<small>Panel Informasi</small>
					</h1><br>
					<h1 class="nama-tim"><b>Dinamiku</b> - <span class="kategori">CSPC</span></h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<p class="school-info">
						Peraturan lomba secara lengkap bisa di download <a href="#"><b>disini</b></a><br>
						Untuk file/berkas yang harus diupload silahkan upload di google drive atau jasa penyedia layanan serupa.<br>
						<small class="keterangan">*Pastikan file bisa di download melalui link yang dimasukan</small>
					</p>
					<p class="school-info">
						Silahkan masukan link berkas yang sudah diupload dibawah ini :
					</p>
					<form method="post" action="#" class="form-tim" name="form-tim">
						<input type="text" class="daftar-tim" onKeyup="checkform()">
						<input type="submit" class="btn-submit" id="btn-submit" value="Submit" disabled><br>
						File saat ini : <br>
						<input type="text" class="daftar-tim" id="link-file" value="aaa" disabled>
						<input type="button" class="btn-edit" id="btn-edit" value="Edit" onclick="enableSubmit()"><br>
						<small class="keterangan">*jika ingin mengubah link, silahkan klik tombol Edit dan masukan kembali link baru pada field diatas</small>
					</form>
					
					
					<script type="text/javascript" language="javascript">
						function checkform()
						{
							if (document.getElementById("link-file").value.length == 0) {
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

