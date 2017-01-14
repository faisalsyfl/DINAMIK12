			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Ubah Acara
						<small><?php echo $row['event_name']; ?></small>
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">
					<h2>Edit Event</h2>
					<div class="row">
						<div class="col-md-12">
							<?php echo form_open('dashboard/admin/eventAction/'.$row['event_id'].'/editAct'); ?>
							<table width="100%">
								<tr>
									<td width="150px">Nama Acara </td>
									<td><input type="text" readonly name="event_name" class="form-control" value="<?php echo $row['event_name']; ?>"></td>
								</tr>
								<tr>
									<td>Kapasitas <small><br>(Belum Diimplementasikan)</small></td>
									<td><input type="number" name="event_capacity" class="form-control" value="<?php echo $row['event_capacity']; ?>"></td>
								</tr>
								<tr>
									<td>Deskripsi Acara</td>
									<td><textarea class="form-control" name="event_description" rows=10><?php echo $row['event_description']; ?></textarea></td>
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

