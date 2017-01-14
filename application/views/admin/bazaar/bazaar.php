			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Detail Data 
						<small>Bazaar</small>
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">
					<a href="<?php echo site_url('dashboard/admin/bazaarAction/NULL/add'); ?>" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true" ></span>&nbsp;Daftarkan Bazaar</a>
					<hr>
					<table id="allEve" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Nama Bazaar</th>
			                <th>Tipe</th>
			                <th>Alamat</th>
			                <th>Contact</th>
			                <th>Deskripsi</th>
			                <th>Aksi</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Nama Bazaar</th>
			                <th>Tipe</th>
			                <th>Alamat</th>
			                <th>Contact</th>
			                <th>Deskripsi</th>
			                <th>Aksi</th>
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr>
			                <td><?php echo $i++;?></td>
			                <td><?php echo $data['bazaar_name'];?></td>
			                <td><?php echo $data['bazaar_type'];?></td>
			                <td><?php echo $data['bazaar_address'];?></td>
			                <td><?php echo $data['bazaar_contact'];?></td>
			                <td><?php echo $data['bazaar_description'];?></td>
			                <td>
									<button class="btn btn-warning" onclick="location.href='<?php echo site_url('dashboard/admin/bazaarAction/'.$data['bazaar_id'].'/edit');?>'"><span class="glyphicon glyphicon-pencil" aria-hidden="true" ></span></button>		
									 <a class="btn btn-danger" href="javascript:void(0);" onclick="deletes(<?php echo $data['bazaar_id'];?>);"><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></a>

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
    window.location = url+"dashboard/admin/bazaarAction/"+id+"/del";
});
}
							</script>			   		
			   	</table>
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
