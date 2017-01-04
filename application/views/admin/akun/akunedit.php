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
					<h2>Edit Akun</h2>
					<div class="row">
						<div class="col-md-4">
							<?php echo form_open('dashboard/admin/eventAction/'.$row['account_id'].'/editAct'); ?>
								<input type="text" name="email" class="form-control" value="<?php echo $row['account_email']; ?>">
								<input type="text" name="name" class="form-control" value="<?php echo $row['account_username']; ?>">
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

