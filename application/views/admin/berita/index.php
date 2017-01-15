			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Berita
						<small>Panel Data Berita</small>
					</h1>
				</section>
				<!-- Main content -->
				<section class="content">
					<button onclick="location.href='<?php echo site_url('dashboard/admin/newsAction/add');?>'" class="btn btn-success"><span class="glyphicon glyphicon-plus" aria-hidden="true"> Tambah Berita</span></button><br><br>
					<table id="allEve" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>News Title</th>
							<th>News Category</th>
			                <th>Event</th>
			                <th>Action</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
							<th>News Title</th>
			                <th>News Category</th>
			                <th>Event</th>
			                <th>Action</th>	                
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr class="success">
			                <td><?php echo $i++;?></td>
							 <td><?php echo $data['news_title'];?></td>
			                <td><?php echo $data['news_category'];?></td>
			               			                
			                <td><?php echo $data['event_name'];?></td>
			              
			                <td>
								<button onclick="location.href='<?php echo site_url('dashboard/admin/newsAction/edit/'.$data['news_id']);?>'" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
			              		<a class="btn btn-danger" href="javascript:void(0);" onclick="deletes(<?php echo $data['news_id'];?>);"><span class="glyphicon glyphicon-trash" aria-hidden="true" ></span></a>
			                </td>
			            </tr>
			        		<?php  }?>
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
										window.location = url+"dashboard/admin/newsAction/delete/"+id;
									});
								}
							</script>		
			   	</table>
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

