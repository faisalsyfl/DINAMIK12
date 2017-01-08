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
					<a href="<?php echo site_url('dashboard/sekolah/pendaftarantim/') ?>" class="btn-daftar">Daftarkan Tim</a>
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
			                <th>Kode Pembayaran</th>
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
			                <th>Kode Pembayaran</th>
			                <th>Aksi</th>
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php 
			        			$i=1;
			        			foreach($list as $data){
			        				echo "<tr>";
			        				echo "<td>".$i++."</td>";
			        				echo "<td>".$data['sct_name']."</td>";
			        				echo "<td>".$data['eve_name']."</td>";
			        				echo "<td>".$data['sct_coach_name']."</td>";
			        				if($data['pay_status'] == 1){
			        					echo "<td style='color:green;font-weight:bold;'>"."Lunas"."(Rp.".number_format($data['eve_price'],0,',','.').")</td>";
			        				}else{
		        						if($data['pay_document']==NULL){
			        					echo "<td style='color:red;font-weight:bold;'>"."Belum Lunas"."(Rp.".number_format($data['eve_price'],0,',','.').")</td>";
				        				}else{
				        					echo "<td style='color:blue;font-weight:bold;'>"."Dalam Konfirmasi"."(Rp.".number_format($data['eve_price'],0,',','.').")</td>";
				        				}
			        				}
			        				echo "<td style='color:green;font-weight:bold;'>".$data['pay_unique_code']."</td>";
			        				// echo "<td >"."<a href='".site_url('dashboard/Sekolah/detailtim/'.$data['sct_id'])."'>Detail Tim</a>"."</td>";
			        		 ?>
		        				<td>
	        		 			<button type="" class="btn btn-primary" onclick="location.href='<?php echo site_url('dashboard/sekolah/detailtim/'.$data['sct_id']);?>'"><span class="glyphicon glyphicon-info-sign" aria-hidden="true" ></span></button>		        				
		        				<button type="" class="btn btn-warning" onclick="location.href='<?php echo site_url('dashboard/sekolah/sekolahAction/'.$data['sct_id'].'/edit');?>'"><span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span></button>
		        				<button type="" class="btn btn-danger" onclick="location.href='<?php echo site_url('dashboard/sekolah/sekolahAction/'.$data['sct_id'].'/del');?>'"><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></button>
		        				</td>
			        		 
		        			<?php 
		        				}
		        			?>
			        </tbody>
			   	</table>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

