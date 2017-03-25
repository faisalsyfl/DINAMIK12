			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Publik
						<small>Panel Informasi Data Tim Peserta Acara</small>
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">
				<h3>Daftar Tim Acara</h3>
					<table id="allEve" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Nama Tim</th>
			                <th>Instansi</th>
			                <th>Kategori Acara</th>
			                <th>Email</th>
			                <th>Kontak</th>
			                <th>Status Pembayaran</th>
							<?php if($link == true){
								?>
								<th>Berkas</th>
								<?php
							}
							?>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Nama Tim</th>
			                <th>Instansi</th>
			                <th>Kategori Acara</th>
			                <th>Email</th>
			                <th>Kontak</th>
			                <th>Status Pembayaran</th>
							<?php if($link == true){
								?>
								<th>Berkas</th>
								<?php
							}
							?>
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr class="<?php if($data['pay_status'] == 1) echo "success"; else echo "danger";?>">
			                <td><?php echo $i++;?></td>
			                <td><?php echo $data['pbt_name'];?></td>
			                <td><?php echo $data['pbt_instance'];?></td>
			                <td><?php echo $data['eve_name'];?></td>
			                <td><?php echo $data['pbt_email'];?></td>
			                <td><?php echo $data['pbt_contact'];?></td>
			                <?php
			        				if($data['pay_status'] == 1){
			        					echo "<td style='color:green;font-weight:bold;'>"."Lunas"."(Rp.".number_format($data['eve_price'],0,',','.').")</td>";
			        				}else{
		        						if($data['pay_document']==NULL){
			        					echo "<td style='color:red;font-weight:bold;'>"."Belum Lunas"."(Rp.".number_format($data['eve_price'],0,',','.').")</td>";
				        				}else{
				        					echo "<td style='color:blue;font-weight:bold;'>"."Dalam Konfirmasi"."(Rp.".number_format($data['eve_price'],0,',','.').")</td>";
				        				}
			        				}
			                ?>
							<?php if($link == true){
								if($data['pbt_file'] != NULL){
									?>
										<td><a href="<?php echo $data['pbt_file'];?>" target="_blank">Lengkap (Tautan)</a></td>
									<?php
								}else{
									?>
										<td>Belum Lengkap</td>
									<?php
								}
								
							}
							?>
							
			            </tr>
			        		<?php  }?>
			   	</table>
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
