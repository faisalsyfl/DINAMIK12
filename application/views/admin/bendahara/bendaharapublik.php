			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Admin
						<small>Panel Pembayaran</small>
					</h1>
					<h3 class="section-dashboard">Verifikasi Peserta Acara</h3>
				<!-- Main content -->
				<section class="content">
					<table id="allAcc" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Nama Lengkap</th>
			                <th>Instansi</th>
			                <th>Nama Acara</th>
			                <th>Status Pembayaran</th>
			                <th>Kode Pembayaran</th>
			                <th>Deskripsi</th>
			                <th>Lihat Bukti</th>
			                <th>Aksi</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Nama Lengkap</th>
			                <th>Instansi</th>
			                <th>Nama Acara</th>
			                <th>Status Pembayaran</th>
			                <th>Kode Pembayaran</th>
			                <th>Deskripsi</th>
			                <th>Lihat Bukti</th>
			                <th>Aksi</th>
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php 
			        			$i=1;
			        			foreach($list as $data){
			        				if($data['pay_document'] != NULL){
			        				if($data['pay_status'] == 1){
			        					echo "<tr class='success'>";
			        				}else{
			        					echo "<tr>";
			        				}
			        				echo "<td>".$i++."</td>";
			        				echo "<td>".$data['pbt_name']."</td>";
			        				echo "<td>".$data['pbt_instance']."</td>";
			        				echo "<td>".$data['eve_name']."</td>";
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
			        				echo "<td>".$data['pay_desc']."</td>";			        				
			        				// echo "<td >"."<a href='".site_url('dashboard/Sekolah/detailtim/'.$data['sct_id'])."'>Detail Tim</a>"."</td>";
			        		 ?>
			        		 	<td><a title="Lihat Bukti" target="_blank" class="btn btn-primary" href="<?php echo base_url('uploads/'.$data['pay_document']);?>"><span class="glyphicon glyphicon-fullscreen"></span></a></td>
		        				<td>	        				
		                 	<button title="<?php if($data['pay_status'] == 0) echo "Verifikasi"; else echo "Batal Verifikasi";?>" onclick="location.href='<?php echo site_url('dashboard/admin/bpAction/'.$data['pay_id']);?>'" class="btn btn-<?php if($data['pay_status'] == 1) echo "danger"; else echo "success";?>">
		              		<span class="glyphicon glyphicon-<?php if($data['pay_status'] == 0) echo "ok"; else echo "remove";?>" aria-hidden="true"></span></button> 	
			        		 
		        			<?php 
		        				}}
		        			?>
							<script type="text/javascript">
							    var url="<?php echo site_url();?>";
							    function deletes(id){
									swal({
										title: "Are you sure?",
										text: "You will not be able to recover this team again!",
										type: "warning",
										showCancelButton: true,
										confirmButtonColor: "#DD6B55",
										confirmButtonText: "Yes, delete it!",
										closeOnConfirm: false
									},
									function(){
										window.location = url+"dashboard/publik/publikAction/"+id+"/del";
									});
									}
							</script>		        			
			        </tbody>
			   	</table>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

