			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Admin
						<small>Panel Informasi</small>
					</h1>
				</section>
				<h3>Daftar Pesan Masuk</h3>

					<table id="allEve" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Id</th>
			                <th>Nama Pengirim</th>
			                <th>E-mail Pengirim</th>
			                <th>Isi Pesan</th>
			                <th>Status</th>
			                <th>Aksi</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Id</th>
			                <th>Nama Pengirim</th>
			                <th>E-mail Pengirim</th>
			                <th>Isi Pesan</th>
			                <th>Status</th>
			                <th>Aksi</th>
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr class="<?php if($data['message_status'] == 1) echo "success"; else echo "danger";?>">
			                <td><?php echo $i++;?></td>
			                <td><?php echo $data['message_id'];?></td>
			                <td><?php echo $data['message_name'];?></td>
			                <td><?php echo $data['message_email'];?></td>
			                <td><?php echo $data['message_content'];?></td>
			                <td><?php if($data['message_status']==0) echo "<b>Pesan belum dibalas</b>"; else echo "<b>Pesan sudah dibalas</b>";?></td>
			                
			                <td>	
			                 	<button title="<?php if($data['message_status'] == 0) echo "Tandai selesai"; else echo "Tandai belum selesai dibalas";?>" onclick="location.href='<?php echo site_url('dashboard/admin/eventAction/'.$data['event_id'].'/activate');?>'" class="btn btn-<?php if($data['event_status'] == 1) echo "danger"; else echo "success";?>">
			              		<span class="glyphicon glyphicon-<?php if($data['event_status'] == 0) echo "ok"; else echo "remove";?>" aria-hidden="true"></span></button>

								<button onclick="location.href='<?php echo site_url('dashboard/admin/messageAction/'.$data['event_id'].'/del');?>'" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
								<button onclick="location.href='<?php echo site_url('dashboard/admin/messageAction/'.$data['event_id'].'/reply');?>'" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
			              		 
			                </td>
			            </tr>
			        		<?php  }?>
			   	</table>
				<!-- Main content -->
				<section class="content">
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

