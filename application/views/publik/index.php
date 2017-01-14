			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Publik
						<small>Panel Informasi</small>
					</h1>
					<h3 class="section-dashboard">Daftar Peserta Acara</h3>
					<a href="<?php echo site_url('dashboard/publik/pendaftarantim/') ?>" class="btn-daftar">Daftar Acara DINAMIK</a>
				</section>
				<!-- Main content -->
				<section class="content">
					<table id="allAcc" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Nama Lengkap</th>
			                <th>Instansi</th>
			                <th>Email</th>
			                <th>Kontak</th>
			                <th>Nama Acara</th>
			                <th>Status Pembayaran</th>
			                <th>Kode Pembayaran</th>
			                <th>Aksi</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Nama Lengkap</th>
			                <th>Instansi</th>
			                <th>Email</th>
			                <th>Kontak</th>
			                <th>Nama Acara</th>
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
			        				echo "<td>".$data['pbt_name']."</td>";
			        				echo "<td>".$data['pbt_instance']."</td>";
			        				echo "<td>".$data['pbt_email']."</td>";
			        				echo "<td>".$data['pbt_contact']."</td>";
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
			        				// echo "<td >"."<a href='".site_url('dashboard/Sekolah/detailtim/'.$data['sct_id'])."'>Detail Tim</a>"."</td>";
			        		 ?>
		        				<td>	        				
		        				<button class="btn btn-warning" onclick="location.href='<?php echo site_url('dashboard/publik/publikAction/'.$data['pbt_id'].'/edit');?>'"><span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span></button>
							<?php if($data['pay_status'] != 1){?>
		        				<a class="btn btn-danger" href="javascript:void(0);" onclick="deletes(<?php echo $data['pbt_id'];?>);"><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></a>
		        				</td>
							<?php }?>	
			        		 
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

