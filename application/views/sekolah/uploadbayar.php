			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Upload Bukti Pembayaran 
						<small>Tim Sekolah</small>
					</h1><br>
					<h1 class="nama-tim"><b><?php echo $school['school_name']; ?></b> - <span class="kategori"><?php echo $school['city_name']; ?></span></h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php echo form_open_multipart('dashboard/sekolah/uploadB'); ?>
					<p class="school-info">
						Pilih Pembayaran Tim<br>
					</p>
					<?php 
						$i = 0;
						foreach($list as $data){
						
						if($data['pay_status'] == 0 && $data['pay_document']==NULL){
							$i++;
							?>
						<label class="checkbox-inline" style="font-size:18px;">
						  <input type="checkbox" id="inlineCheckbox1" class="cbbayar" value="<?php echo $data['pay_id']?>" name="pay_id[]	"> <?php echo $data['sct_name'];?>
						</label>									
					<?php }} ?>
					<?php if((count($list)==0)) echo "<h3 style='color:red;'>Anda belum mendaftarkan tim, silahkan daftar <a href='".site_url('dashboard/sekolah/pendaftarantim')."'>Disini</a></h3>";  ?>					
					<?php if(($i==0)) echo "<h5 style=''>Semua tim anda sudah lunas, untuk mendaftar tim lainnya silahkan kunjungi <a href='".site_url('dashboard/sekolah/pendaftarantim')."'>halaman ini</a></h5>";  ?>					
					<p class="school-info">
						<b>Harap periksa kembali informasi tim yang akan dibayarkan, karena data tim sama sekali tidak dapat diubah dan dihapus setelah statusnya sudah dianggap lunas.</b><br>
					</p>
					  <div class="form-group">
					    <label>Kirim bukti pembayaran <br>(ukuran file harus kurang dari 2 MB)</label>
					    <input type="file" name="payment_document">
					    <p class="help-block">Supported Ext: .jpg .pdf .png .jpeg .rar</p>
					  </div>
					  <textarea name="payment_description" class="form-control" placeholder="Deksripsikan bukti pembayaran anda, sertakan tanggal." rows=5></textarea>
					  <br>
						<input type="submit" class="btn-submit btn btn-primary" id="btn-upload" value="Submit" style="display:none;"><br>
					</form>

				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

