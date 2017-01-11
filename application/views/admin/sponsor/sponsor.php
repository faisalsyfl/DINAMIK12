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
				<h3>Rekapitulasi Sponsor</h3>
					<a href="<?php echo site_url('dashboard/admin/sponsorAction/NULL/add'); ?>" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true" ></span>&nbsp;Daftarkan Sponsor</a>				 <br>
					<table id="allEve" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Nama Sponsor</th>
			                <th>Tipe</th>
			                <th>Alamat</th>
			                <th>Contact</th>
			                <th>Image</th>
			                <th>Link</th>
			                <th>Aksi</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Nama Sponsor</th>
			                <th>Tipe</th>
			                <th>Alamat</th>
			                <th>Contact</th>
			                <th>Image</th>
			                <th>Link</th>
			                <th>Aksi</th>
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr>
			                <td><?php echo $i++;?></td>
			                <td><?php echo $data['sponsor_name'];?></td>
			                <td><?php echo $data['sponsor_type'];?></td>
			                <td><?php echo $data['sponsor_address'];?></td>
			                <td><?php echo $data['sponsor_contact'];?></td>
			                <td><?php echo $data['sponsor_image'];?></td>
			                <td><?php echo $data['sponsor_link'];?></td>
			                <td>
									<button class="btn btn-warning" onclick="location.href='<?php echo site_url('dashboard/admin/sponsorAction/'.$data['sponsor_id'].'/edit');?>'"><span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span></button>		
									 <a class="btn btn-danger" href="javascript:void(0);" onclick="deletes(<?php echo $data['sponsor_id'];?>);"><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></a>

			                </td>

			            </tr>
			        		<?php  }?>
			   		</tbody>
							<script type="text/javascript">
							    var url="<?php echo site_url();?>";
							    function deletes(id){
swal({
  title: "Are you sure?",
  text: "You will not be able to recover this data again!",
  type: "warning",
  showCancelButton: true,
  confirmButtonColor: "#DD6B55",
  confirmButtonText: "Yes, delete it!",
  closeOnConfirm: false
},
function(){
    window.location = url+"dashboard/admin/sponsorAction/"+id+"/del";
});
}
							</script>			   		
			   	</table>
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
