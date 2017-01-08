			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Profil Tim
						<small>Panel Informasi</small>
					</h1>
					<h3 class="section-dashboard">Informasi Tim</h3>
				</section>
				<!-- Main content -->
				<section class="content">
					<table class="school-info">
						<tr>
							<td class="p1">Kategori Lomba</td>
							<td><?php echo $anggota[0]['eve_name']; ?></td>
						</tr>
						<tr>
							<td class="p1">Nama Tim</td>
							<td><?php echo $anggota[0]['sct_name']; ?></td>
						</tr>
						<tr>
							<td class="p1">Nama Pembimbing</td>
							<td><?php echo $anggota[0]['sct_coach_name']; ?></td>
						</tr>
						<?php 
							foreach($anggota as $key){
								echo "<tr>";
								echo "<td class='p1'>Anggota</td>";
								echo "<td>".$key['schparticipant_name']."</td>";
							}
						 ?>
						<tr>
							<td class="p1">Kode Pembayaran</td>
							<td class="kode"><?php echo $anggota[0]['pay_unique_code']; ?></td>
						</tr>
						<tr>
							<td class="p1">Status Pembayaran</td>
							<?php if ($anggota[0]['pay_status']==1){ ?>
							<td class="kode" style="color: green">Lunas</td>
							<?php }else{ ?>
							<td class="kode" style="color: red">Belum Lunas</td>
							<?php } ?>
						</tr>
					</table>
					<br>
					<!--<a href="<?php echo site_url('dashboard/tim/') ?>" class="btn-edit">Edit</a>-->
					<a href="<?php echo site_url('dashboard/tim/') ?>" class="btn-kembali">Kembali</a>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

