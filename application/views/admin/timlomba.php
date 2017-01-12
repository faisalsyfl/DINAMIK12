			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Admin
						<small>Panel Informasi</small>
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">
				<h3>Daftar Tim Sekolah</h3>
					<table id="allEve" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Nama Tim</th>
			                <th>Kategori Lomba</th>
			                <th>Link File</th>
			                <th>Status Pembayaran</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Nama Tim</th>
			                <th>Link File</th>
			                <th>Status Pembayaran</th>
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr class="<?php if($data['pay_status'] == 1) echo "success"; else echo "danger";?>">
			                <td><?php echo $i++;?></td>
			                <td><?php echo $data['sct_name'];?></td>
			                <td><?php echo $data['eve_name'];?></td>
			                <?php if($data['sct_file'] == NULL){?>
			                	<td style="color:red;">No Upload Yet.</td>
			                <?php }else{?>
			                	<td><a href="<?php echo $data['sct_file'];?>" title="">View Link</a></td>
			                <?php }?>
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
			            </tr>
			        		<?php  }?>
			   	</table>
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
