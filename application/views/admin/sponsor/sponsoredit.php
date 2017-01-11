			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Admin
						<small>Panel Semua Akun</small>
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">
					<h2><?php if(isset($upd)) echo "Edit"; else echo "Tambah"; ?> Sponsor</h2>
					<div class="row">
						<div class="col-md-4">

							<?php if(isset($upd)) echo form_open_multipart('dashboard/admin/sponsorAction/'.$upd['sponsor_id'].'/editAct'); else echo form_open_multipart('dashboard/admin/sponsorAction/NULL/addAct');  ?>
								<input type="text" name="sponsor_name" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_name']; ?>" placeholder="Nama Sponsor">
								<input type="text" name="sponsor_type" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_type']; ?>" placeholder="Tipe Sponsor">		
								<input type="text" name="sponsor_address" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_address']; ?>" placeholder="Alamat Sponsor">		
								<input type="text" name="sponsor_contact" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_contact']; ?>" placeholder="Kontak Sponsor">
								<label>Sponsor Logo</label>
								
								<input type="file" name="sponsor_image" value="" placeholder="Sponsor Logo">		
								<input type="text" name="sponsor_link" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_link']; ?>" placeholder="Link website sponsor">																																
								<input type="submit" value="<?php if(isset($upd)) echo "Edit"; else echo "Tambah"; ?>" class="btn btn-primary">
							</form>
						</div>
					</div>
				</section>
				<!-- /.content -->
			</div>
			<script>
				
			</script>
			<!-- /.content-wrapper -->

