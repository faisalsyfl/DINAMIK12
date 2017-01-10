			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Berita
						<small>Panel Berita</small>
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
			              		 
			                </td>
			            </tr>
			        		<?php  }?>
			   	</table>
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

