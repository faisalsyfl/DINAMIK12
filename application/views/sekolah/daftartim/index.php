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
			        				if($data['pay_status'] == 1){
			        					echo "<tr class='success'>";
			        				}else{
			        					echo "<tr>";
			        				}
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
		        				<!--<button type="" class="btn btn-warning" onclick="location.href='<?php echo site_url('dashboard/sekolah/sekolahAction/'.$data['sct_id'].'/edit');?>'"><span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span></button>-->
							<?php if($data['pay_status'] != 1){?>
		        				<a class="btn btn-danger" href="javascript:void(0);" onclick="deletes(<?php echo $data['sct_id'];?>);"><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></a>
		        				</td>
							<?php }else{?>
		        				<a class="btn btn-warning" href="javascript:void(0);" onclick="reset(<?php echo "'".$data['sct_name']."','".$_SESSION['email']."',".$data['sct_id'].",".$data['acc_id'];?>);"><span class="glyphicon glyphicon-lock" aria-hidden="true" ></span></a>
		        				</td>								
							<?php } ?>
			        		 
		        			<?php 
		        				}
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
						          window.location = url+"dashboard/sekolah/sekolahAction/"+id+"/del";
									});
									}
							    function reset(tim,em,id,ida){
									swal({
									  title: "Lupa Password akun tim "+tim+"?",
									  text: "Password baru akan dikirimkan ke EMAIL RESMI SEKOLAH( "+em+" ) Segera Cek Email ini!",
									  type: "warning",
									  showCancelButton: true,
									  confirmButtonColor: "#DD6B55",
									  confirmButtonText: "Ya, Kirimkan!",
									  closeOnConfirm: false
									},
									function(){
						          window.location = url+"dashboard/sekolah/sekolahAction/"+id+"/lp/"+ida;
									});
									}									
							</script>				        			
			        </tbody>
			   	</table>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

