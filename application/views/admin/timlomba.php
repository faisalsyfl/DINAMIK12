			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Admin
						<small>Panel Informasi Data Pembayaran Tim Sekolah</small>
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
			                <th>Sekolah</th>
			                <th>Pembimbing</th>
			                <th>Link File</th>
			                <th>Tanggal File</th>
			                <th>Username</th>
			                <th>Act</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Nama Tim</th>
			                <th>Kategori Lomba</th>
			                <th>Sekolah</th>
			                <th>Pembimbing</th>
			                <th>Link File</th>
			                <th>Tanggal File</th>
			                <th>Username</th>
			                <th>Act</th>
 			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr class="<?php if($data['pay_status'] == 1) echo "success"; else echo "danger";?>">
			                <td><?php echo $i++;?></td>
			                <td><?php echo $data['sct_name'];?></td>
			                <td><?php echo $data['eve_name'];?></td>
			                <td><?php echo $data['sch_name'];?></td>
			                <td><?php echo $data['sct_coach_name'].'/'.$data['sct_coach_contact'];?></td>
			                <?php if($data['sct_file'] == NULL){?>
			                	<td style="color:red;">No Upload Yet.</td>
								<td><?php echo "N/A";?></td>
			                <?php }else{?>
			                	<td><a href="<?php echo $data['sct_file'];?>" title="">View Link</a></td>
								<td><?php echo $data['sct_file_log'];?></td>
			                <?php }?>
			                <td><?php echo $data['acc_username']; ?></td>
			                <td>
			                	<a class="btn btn-warning" href="javascript:void(0);" onclick="reset(<?php echo $data['acc_id']; ?>);"><span class="glyphicon glyphicon-repeat" aria-hidden="true" ></span></a>
			                </td>
			            </tr>
			        		<?php  }?>
			        		</tbody>
			        		<script type="text/javascript">
							    var url="<?php echo site_url();?>";
							    function reset(id){
									swal({
									  title: "Reset Password Paksa",
									  text: "Password baru akan Menjadi 'ADMIN'",
									  type: "warning",
									  showCancelButton: true,
									  confirmButtonColor: "#DD6B55",
									  confirmButtonText: "Ya, Ganti!",
									  closeOnConfirm: false
									},
									function(){
						          window.location = url+"dashboard/admin/resetpaksa/"+id;
									});
									}									
							</script>	
			   	</table>
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
