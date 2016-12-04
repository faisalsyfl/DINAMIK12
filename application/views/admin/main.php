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

				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-lg-4 col-xs-6">
						<!-- small box -->
							<div class="small-box bg-aqua">
								<div class="inner">
									<h3><?php echo $total; ?></h3>
									<p>Jumlah Akun</p>
								</div>
								<div class="icon">
									<i class="fa fa-user"></i>
								</div>
								<a href="#" class="small-box-footer">Detail <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-4 col-xs-6">
						<!-- small box -->
							<div class="small-box bg-green">
								<div class="inner">
									<h3>666</h3>
									<p>Jumlah Tim Lomba & Peserta Acara</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
								<a href="#" class="small-box-footer">Detail <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
					
						<!-- ./col -->
						<div class="col-lg-4 col-xs-6">
							<!-- small box -->
							<div class="small-box bg-red">
								<div class="inner">
									<h3>65</h3>
									<p>Pesan Baru</p>
								</div>
								<div class="icon">
									<i class="ion ion-email-unread"></i>
								</div>
								<a href="#" class="small-box-footer">Detail <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="box box-default">
								<div class="box-header with-border">
									<h3 class="box-title">Peserta Acara</h3>
									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body with-border">
									<h4 class="box-title">Peserta Acara Terverifikasi</h4>
								</div>
								<div class="box-body collapsed-box">
									<div class="row">
										<div class="col-md-8">
											<div class="chart-responsive">
												<canvas id="pieChart" height="150"></canvas>
											</div>
											<!-- ./chart-responsive -->
										</div>
										<!-- /.col -->
										<div class="col-md-4">
											<ul class="chart-legend clearfix">
												<li><i class="fa fa-circle-o text-red"></i> Kategori 1</li>
												<li><i class="fa fa-circle-o text-green"></i>  Kategori 2</li>
												<li><i class="fa fa-circle-o text-yellow"></i>  Kategori 3</li>
												<li><i class="fa fa-circle-o text-aqua"></i>  Kategori 4</li>
												<li><i class="fa fa-circle-o text-light-blue"></i>  Kategori 5</li>
												<li><i class="fa fa-circle-o text-gray"></i>  Kategori 6</li>
											</ul>
										</div>
										<!-- /.col -->
									</div>
									<!-- /.row -->
								</div>
								<!-- /.box-body -->
							
							<!-- /.footer -->
							</div>
							<div class="box collapsed-box">
								<div class="box-header with-border">
									<h3 class="box-title">Peserta Acara Belum Verifikasi</h3>

									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
									</div>
								</div>
								<div class="box-body collapsed-box">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#">Kategori 1<span class="pull-right text-red">12</span></a></li>
										<li><a href="#">Kategori 2<span class="pull-right text-red">12</span></a></li>
										<li><a href="#">Kategori 3<span class="pull-right text-red">12</span></a></li>
										<li><a href="#">Kategori 4<span class="pull-right text-red">12</span></a></li>
										<li><a href="#">Kategori 5<span class="pull-right text-red"></i> 12</span></a></li>
										<li><a href="#">Kategori 6<span class="pull-right text-red"></i> 12</span></a></li>
										<li><a href="#">Kategori 7<span class="pull-right text-red"></i> 12</span></a></li>
										<li><a href="#">Kategori 8<span class="pull-right text-red">12</span></a></li>
									</ul>
									<!-- /.row -->
								</div>
								<!-- /.box-body -->							
							</div>
							<!-- /.box-box default -->
						</div>
						<!-- /.box -->
						<div class="col-md-6">
							<div class="box box-default">
								<div class="box-header with-border">
									<h3 class="box-title">Peserta Lomba</h3>
			
									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body with-border">
									<h4 class="box-title">Peserta Lomba Terverifikasi</h4>
								</div>
								<div class="box-body collapsed-box">
									<div class="row">
										<div class="col-md-8">
											<div class="chart-responsive">
												<canvas id="pieChart2" height="150"></canvas>
											</div>
											<!-- ./chart-responsive -->
										</div>
										<!-- /.col -->
										<div class="col-md-4">
											<ul class="chart-legend clearfix">
												<li><i class="fa fa-circle-o text-red"></i> Kategori 1</li>
												<li><i class="fa fa-circle-o text-green"></i>  Kategori 2</li>
												<li><i class="fa fa-circle-o text-yellow"></i>  Kategori 3</li>
												<li><i class="fa fa-circle-o text-aqua"></i>  Kategori 4</li>
												<li><i class="fa fa-circle-o text-light-blue"></i>  Kategori 5</li>
												<li><i class="fa fa-circle-o text-gray"></i>  Kategori 6</li>
												<li><i class="fa fa-circle-o text-gray"></i>  Kategori 7</li>
												<li><i class="fa fa-circle-o text-gray"></i>  Kategori 8</li>
											</ul>
										</div>
										<!-- /.col -->
									</div>
									<!-- /.row -->
								</div>
								<!-- /.box-body -->
							</div>
							<!-- /.box-box default -->
							<div class="box collapsed-box">
								<div class="box-header with-border">
									<h3 class="box-title">Peserta Lomba Belum Verifikasi</h3>

									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
								<div class="box-body collapsed-box">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#">Kategori 1<span class="pull-right text-red">12</span></a></li>
										<li><a href="#">Kategori 2<span class="pull-right text-red">12</span></a></li>
										<li><a href="#">Kategori 3<span class="pull-right text-red">12</span></a></li>
										<li><a href="#">Kategori 4<span class="pull-right text-red">12</span></a></li>
										<li><a href="#">Kategori 5<span class="pull-right text-red"></i> 12</span></a></li>
										<li><a href="#">Kategori 6<span class="pull-right text-red"></i> 12</span></a></li>
										<li><a href="#">Kategori 7<span class="pull-right text-red"></i> 12</span></a></li>
										<li><a href="#">Kategori 8<span class="pull-right text-red">12</span></a></li>
									</ul>
									<!-- /.row -->
								</div>
								<!-- /.box-body -->
								<div class="box-body with-border">
								
								</div>
								<div class="box-footer no-padding">
								
								</div>
								<!-- /.footer -->
							</div>
						<!-- /.box -->
						</div>
					</div>
				</section>
				<!-- /.content -->
			</div>
			<!-- /.content-wrapper -->

