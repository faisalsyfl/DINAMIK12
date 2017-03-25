			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Upload Bukti Pembayaran Acara
						<small>Panel Informasi</small>
					</h1><br>
					<h1 class="nama-tim"><b><?php echo $_SESSION['username']; ?></b></h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php echo form_open_multipart('dashboard/publik/uploadB'); ?>
					<p class="school-info">
						<b>Pilih Pembayaran Acara</b><br>
					</p>
					<?php foreach($list as $data){ 
						if($data['pay_status'] == 0 && $data['pay_document']==NULL){?>
						<label class="checkbox-inline" style="font-size:18px;">
						  <input type="checkbox" id="inlineCheckbox1" class="cbbayar" value="<?php echo $data['pay_id']?>" name="pay_id[]"> <?php echo $data['pbt_name']."-".$data['eve_name'];?>
						</label>									
					<?php }} ?>
					<?php if((count($list)==0)) echo "<h3 style='color:red;'>Anda belum mendaftar acara ,silahkan daftar <a href='".site_url('dashboard/publik/pendaftarantim')."'>Disini</a></h3>";  ?>
					<<p class="school-info">
						<b>Harap periksa kembali informasi tim yang akan dibayarkan, karena data tim sama sekali tidak dapat diubah dan dihapus setelah statusnya sudah dianggap lunas.</b><br>
					</p>
					  <div class="form-group">
					    <label>Kirim bukti pembayaran <br>(ukuran file harus kurang dari 2 MB)</label>
					    <input type="file" name="payment_document">
					    <p class="help-block">Supported Ext: .jpg .pdf .rar .png .jpeg</p>
					  </div>
					  <textarea name="payment_description" class="form-control" placeholder="Deksripsikan Bukti Pembayaran anda, sertakan tanggal." rows=5></textarea>
					  <br>
						<input type="submit" class="btn-submit btn btn-primary" id="btn-upload" value="Submit" style="display:none;"><br>
					</form>	
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

