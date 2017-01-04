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
					<h2>Edit Event</h2>
					<div class="row">
						<div class="col-md-4">
							<?php echo form_open('dashboard/admin/eventAction/'.$row['event_id'].'/editAct'); ?>
								<input type="text" name="event_name" class="form-control" value="<?php echo $row['event_name']; ?>">
								<input type="number" name="event_capacity" class="form-control" value="<?php echo $row['event_capacity']; ?>">
								<textarea class="form-control" name="event_description" rows=10><?php echo $row['event_description']; ?>
									
								</textarea>
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

