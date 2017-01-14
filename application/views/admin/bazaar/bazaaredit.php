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
					<h2><?php if(isset($upd)) echo "Edit"; else echo "Tambah"; ?> Bazaar</h2>
					<div class="row">
						<div class="col-md-12">
							<table width="100%">
							<?php if(isset($upd)) echo form_open('dashboard/admin/bazaarAction/'.$upd['bazaar_id'].'/editAct'); else echo form_open('dashboard/admin/bazaarAction/NULL/addAct');  ?>
								<tr>
									<td width="200px">Nama Bazaar </td>
									<td><input type="text" name="bazaar_name" class="form-control" value="<?php if(isset($upd)) echo $upd['bazaar_name']; ?>" placeholder="Nama Bazaar"></td>
								</tr>
								<tr>
									<td>Tipe Bazaar</td>
									<td><input type="text" name="bazaar_type" class="form-control" value="<?php if(isset($upd)) echo $upd['bazaar_type']; ?>" placeholder="Tipe Bazaar"></td>
								</tr>
								<tr>
									<td>Alamat Bazaar</td>
									<td><input type="text" name="bazaar_address" class="form-control" value="<?php if(isset($upd)) echo $upd['bazaar_address']; ?>" placeholder="Alamat Bazaar"></td>
								</tr>
								<tr>
									<td>Kontak Bazaar</td>
									<td><input type="text" name="bazaar_contact" class="form-control" value="<?php if(isset($upd)) echo $upd['bazaar_contact']; ?>" placeholder="Kontak Bazaar"></td>
								</tr>
								<tr>
									<td>Deskripsi Pengisi Bazaar</td>
									<td><input type="text" name="bazaar_description" class="form-control" value="<?php if(isset($upd)) echo $upd['bazaar_description']; ?>" placeholder="Deksripsi (Lokasi,Dll)"></td>
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

