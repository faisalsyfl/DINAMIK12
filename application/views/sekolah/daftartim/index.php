			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Sekolah
						<small>Panel Informasi</small>
					</h1>
					<h3 class="section-dashboard">Daftar Tim</h3>
					<a href="<?php echo site_url('dashboard/sekolah/pendaftarantim') ?>" class="btn-daftar">Daftarkan Tim</a>
				</section>
				<!-- Main content -->
				<section class="content">
					<table id="allAcc" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Nama Tim</th>
			                <th>Kategori Lomba</th>
			                <th>Pembimbing</th>
			                <th>Status Pembayaran</th>
			                <th>Detail</th>
			                <th>Aksi</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Nama Tim</th>
			                <th>Kategori Lomba</th>
			                <th>Pembimbing</th>
			                <th>Status Pembayaran</th>
			                <th>Detail</th>
			                <th>Aksi</th>
			            </tr>
			        </tfoot>
			        <tbody>
						<tr>
							<td>1</td>
							<td>Dinamiku</td>
							<td>CSPC</td>
							<td>Bambang Sanusi</td>
							<td style="color:green;"><b>Lunas</b></td>
							<td>
								<a href="<?php echo site_url('dashboard/sekolah/detailtim') ?>">Detail</a>
							</td>
						</tr>
						<tr>
							<td>2</td>
							<td>MoniPiyu</td>
							<td>PCA</td>
							<td>Ahmad Wijaya</td>
							<td style="color:red;"><b>Belum Lunas</b></td>
							<td>
								<a href="<?php echo site_url('dashboard/sekolah/detailtim') ?>">Detail</a>
							</td>
						</tr>
							
						</tr>
			        </tbody>
			   	</table>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

