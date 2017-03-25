			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Publik
						<small>Panel Informasi</small>
					</h1>
				</section>
				<h3>Daftar Tim Acara</h3>

					<table id="allEve" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Id</th>
			                <th>Nama Tim</th>
			                <th>Kategori Lomba</th>
			                <th>Pembimbing</th>
			                <th>Status Pembayaran</th>
			                <th>Detail</th>
			                <th>Aksi</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Id</th>
			                <th>Nama Tim</th>
			                <th>Kategori Lomba</th>
			                <th>Pembimbing</th>
			                <th>Status Pembayaran</th>
			                <th>Detail</th>
			                <th>Aksi</th>	                
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr class="<?php if($data['event_status'] == 1) echo "success"; else echo "danger";?>">
			                <td><?php echo $i++;?></td>
			                <td><?php echo $data['event_code'];?></td>
			                <td><?php echo $data['event_name'];?></td>
			                <td><?php if($data['event_status']==0) echo "<b>Pendaftaran Ditutup</b>"; else echo "<b>Pendaftaran Dibuka</b>";?></td>
			                <td><?php echo $data['event_capacity'];?></td>
			                <td><?php echo $data['event_description'];?></td>
			                <td>	
			                 	<button title="<?php if($data['event_status'] == 0) echo "Aktifkan"; else echo "Non-aktifkan";?>" onclick="location.href='<?php echo site_url('dashboard/admin/eventAction/'.$data['event_id'].'/activate');?>'" class="btn btn-<?php if($data['event_status'] == 1) echo "danger"; else echo "success";?>">
			              		<span class="glyphicon glyphicon-<?php if($data['event_status'] == 0) echo "ok"; else echo "remove";?>" aria-hidden="true"></span></button>

								<button onclick="location.href='<?php echo site_url('dashboard/admin/eventAction/'.$data['event_id'].'/edit');?>'" class="btn btn-warning"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
			              		 
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

