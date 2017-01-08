			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Upload Bukti Sekolah
						<small>Panel Informasi</small>
					</h1><br>
					<h1 class="nama-tim"><b><?php echo $school['school_name']; ?></b> - <span class="kategori"><?php echo $school['city_name']; ?></span></h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<?php echo form_open_multipart('dashboard/sekolah/uploadB'); ?>
					<p class="school-info">
						Pilih Pembayaran Tim<br>
					</p>
					<?php foreach($list as $data){ 
						if($data['pay_status'] == 0 && $data['pay_document']==NULL){?>
						<label class="checkbox-inline" style="font-size:18px;">
						  <input type="checkbox" id="inlineCheckbox1" value="<?php echo $data['pay_id']?>" name="pay_id[]	"> <?php echo $data['sct_name'];?>
						</label>									
					<?php }} ?>
					<p class="school-info">
						Silahkan masukan bukti pembayaran dibawah ini :
					</p>
					  <div class="form-group">
					    <label>File input</label>
					    <input type="file" name="payment_document">
					    <p class="help-block">Supported Ext: .jpg .pdf .rar .png .jpeg</p>
					  </div>
					  <textarea name="payment_description" class="form-control" placeholder="Deksripsikan Bukti Pembayaran anda, sertakan tanggal." rows=5></textarea>
					  <br>
						<input type="submit" class="btn-submit btn btn-primary" id="btn-submit" value="Submit"><br>
					</form>

				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

