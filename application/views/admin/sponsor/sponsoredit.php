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
						<div class="col-md-12">
							<table width="100%">
							<?php if(isset($upd)) echo form_open_multipart('dashboard/admin/sponsorAction/'.$upd['sponsor_id'].'/editAct'); else echo form_open_multipart('dashboard/admin/sponsorAction/NULL/addAct');  ?>
								<tr>
									<td width="200px">Nama Sponsor </td>
									<td><input type="text" name="sponsor_name" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_name']; ?>" placeholder="Nama Sponsor"></td>
								</tr>
								<tr>
									<td>Tipe Sponsor</td>
									<td><input type="text" name="sponsor_type" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_type']; ?>" placeholder="Tipe Sponsor">	</td>
								</tr>
								<tr>
									<td>Alamat Sponsor</td>
									<td><input type="text" name="sponsor_address" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_address']; ?>" placeholder="Alamat Sponsor"></td>
								</tr>
								<tr>
									<td>Kontak Sponsor</td>
									<td><input type="text" name="sponsor_contact" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_contact']; ?>" placeholder="Kontak Sponsor"></td>
								</tr>
								<tr>
									<td>Gambar/Logo Sponsor</td>
									<td><input type="file" name="sponsor_image" value="" placeholder="Sponsor Logo"></td>
								</tr>
								<tr>
									<td>Website Sponsor (Jika ada)</td>
									<td><input type="text" name="sponsor_link" class="form-control" value="<?php if(isset($upd)) echo $upd['sponsor_link']; ?>" placeholder="Link website sponsor"></td>
								</tr>				
							</table>
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

