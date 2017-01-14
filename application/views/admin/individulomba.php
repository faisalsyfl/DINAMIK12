			<!-- =============================================== -->

			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
				<section class="content-header">
					<h1>
						Beranda Admin
						<small>Panel Informasi Data Individu Peserta</small>
					</h1>
				</section>

				<!-- Main content -->
				<section class="content">
					<table id="allEve" class="table table-bordered" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			                <th>No</th>
			                <th>Nama Sekolah</th>
			                <th>NISN</th>
			                <th>Nama Peserta</th>
			                <th>Nama Tim</th>
			                <th>Kategori Lomba</th>
			            </tr>
			        </thead>
			        <tfoot>
			            <tr>
			                <th>No</th>
			                <th>Nama Sekolah</th>
			                <th>NISN</th>
			                <th>Nama Peserta</th>
			                <th>Nama Tim</th>
			                <th>Kategori Lomba</th>
			            </tr>
			        </tfoot>
			        <tbody>
			        		<?php $i=1;foreach($list as $data){ ?>
			            <tr class="<?php if($data['pay_status'] == 1) echo "success"; else echo "danger";?>">
			                <td><?php echo $i++;?></td>
			                <td><?php echo $data['sch_name'];?></td>
			                <td><?php echo $data['schparticipant_nisn'];?></td>
			                <td><?php echo $data['schparticipant_name'];?></td>
			                <td><?php echo $data['sct_name'];?></td>
			                <td><?php echo $data['eve_name'];?></td>
			            </tr>
			        		<?php  }?>
			   	</table>
					
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->
