			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Admin
						<small>Panel Semua Akun</small>
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">
					<table id="allAcc" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Email</th>
			                <th>Username</th>
			                <th>Password</th>
			                <th>Category</th>
			                <th>Log</th>
			                <th>Status</th>
			                <th>Aksi</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Email</th>
			                <th>Username</th>
			                <th>Password</th>
			                <th>Category</th>
			                <th>Log</th>
			                <th>Status</th>
			                <th>Aksi</th>
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr class="<?php if($data['account_status'] == 1) echo "success"; else echo "danger";?>">
			                <td><?php echo $i++;?></td>
			                <td><?php echo $data['account_email'];?></td>
			                <td><?php echo $data['account_username'];?></td>
			                <td><?php if($data['account_password'] == md5($data['account_username'])) echo "Default Password"; else echo "Safe Password";?></td>
			                <td><?php echo $data['category_name'];?></td>
			                <td><?php echo $data['account_log'];?></td>
			                <td>
			                <?php if($data['account_status'] == 1) echo "Active"; else echo "Inactive";?>
			                </td>
			                <td>	
			                 	 <button class="btn btn-<?php if($data['account_status'] == 1) echo "danger"; else echo "success";?>">
			              		 <span class="glyphicon glyphicon-<?php if($data['account_status'] == 0) echo "ok"; else echo "remove";?>" aria-hidden="true"></span></button>
			              		 <button type="" class="btn btn-info"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></button>
			              		 <button type="" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
			              		 <button type="" class="btn btn-danger"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></button>
			                </td>
			            </tr>
			        		<?php  }?>
			   	</table>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

