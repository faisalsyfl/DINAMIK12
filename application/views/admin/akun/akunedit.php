			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Ubah Data Akun
						<small><?php echo $row['account_username']; ?></small>
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<?php echo form_open('dashboard/admin/akunAction/'.$row['account_id'].'/editAct'); ?>
							<table width="100%">
									<tr>
										<td width="250px">Email Akun</td>
										<td><input type="text" name="email" class="form-control" value="<?php echo $row['account_email']; ?>"></td>
									</tr>
									<tr>
										<td>Username <small><br>(Ubah hanya jika ada situasi darurat)</small></td>
										<td><input type="text" name="name" class="form-control" value="<?php echo $row['account_username']; ?>"></td>
									</tr>
								</table>
								<input type="submit" name="btnEdit" value="Edit" class="btn btn-primary">
							</form>
						</div>
					</div>
				</section>
				<!-- /.content -->
			</div>
			<script>
				
			</script>
			<!-- /.content-wrapper -->

