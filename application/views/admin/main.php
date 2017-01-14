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
									<h3><?php echo $totalakun; ?></h3>
									<p>Jumlah Akun Pendaftar</p>
								</div>
								<div class="icon">
									<i class="fa fa-user"></i>
								</div>
								<a href="#" class="small-box-footer">Detail <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-4	 col-xs-6">
						<!-- small box -->
							<div class="small-box bg-green">
								<div class="inner">
									<h3><?php echo $totaltim; ?></h3>
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
									<h3>??</h3>
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
									<h3 class="box-title">Data Peserta Lomba</h3>
									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body with-border">
									<h4 class="box-title">Total Peserta Lomba </h4>
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
												<li><i class="fa fa-circle-o text-red"></i> LDG</li>
												<li><i class="fa fa-circle-o text-green"></i>  LCW</li>
												<li><i class="fa fa-circle-o text-yellow"></i> OTIK</li>
												<li><i class="fa fa-circle-o text-aqua"></i>  PCA</li>
												<li><i class="fa fa-circle-o text-light-blue"></i>  CSPC</li>
												<li><i class="fa fa-circle-o text-gray"></i>  LCA</li>
												<li><i class="fa fa-circle-o text-pink"></i>  RLF</li>
												<li><i class="fa fa-circle-o text-beige"></i>  KJ</li>
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
									<h3 class="box-title">Detail Jumlah Peserta Lomba</h3>

									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i></button>
									</div>
								</div>
								<div class="box-body collapsed-box">
									<ul class="nav nav-pills nav-stacked">
										<li><a href="#">Lomba Desain Grafis<span class="pull-right text-green"><?php echo $valid_ldg ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_ldg ?></span></a></li>
										<li><a href="#">Lomba Cipta Web<span class="pull-right text-green"><?php echo $valid_lcw ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_lcw ?></span></a></li>
										<li><a href="#">Olimpiade TIK<span class="pull-right text-green"><?php echo $valid_otik ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_otik ?></span></a></li>
										<li><a href="#">PC Assembling<span class="pull-right text-green"><?php echo $valid_pca ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_pca ?></span></a></li>
										<li><a href="#">CS Programming Contest<span class="pull-right text-green"></i><?php echo $valid_cspc ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_cspc ?></span></a></li>
										<li><a href="#">Lomba Cipta Animasi<span class="pull-right text-green"></i> <?php echo $valid_lca ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_lca ?></span></a></li>
										<li><a href="#">Robot Line Follower<span class="pull-right text-green"></i> <?php echo $valid_rlf ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_rlf ?></span></a></li>
										<li><a href="#">Kompetisi Jaringan<span class="pull-right text-green"><?php echo $valid_kj ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_kj ?></span></a></li>
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
									<h3 class="box-title">Peserta Acara</h3>
			
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
												<li><i class="fa fa-circle-o text-red"></i> Talkshow</li>
												<li><i class="fa fa-circle-o text-green"></i>  Seminar Nasional</li>
												<li><i class="fa fa-circle-o text-yellow"></i> Festival</li>
												<li><i class="fa fa-circle-o text-aqua"></i>  Donor</li>
												<li><i class="fa fa-circle-o text-light-blue"></i>  Workshop</li>
												<li><i class="fa fa-circle-o text-gray"></i>  Dinamik Star</li>
												<li><i class="fa"></i>  </li>
												<li><i class="fa"></i>  </li>

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
									<h3 class="box-title">Detail Jumlah Peserta Acara</h3>

									<div class="box-tools pull-right">
										<button type="button" class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-plus"></i>
										</button>
									</div>
								</div>
								<div class="box-body collapsed-box">
									<ul class="nav nav-pills nav-stacked">
										
										<li><a href="#">Talkshow<span class="pull-right text-green"><?php echo $valid_talkshow ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_talkshow ?></span></a></li>
										<li><a href="#">Seminar Nasional<span class="pull-right text-green"><?php echo $valid_semnas ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_semnas ?></span></a></li>
										<li><a href="#">Festival<span class="pull-right text-green"><?php echo $valid_felose ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_felose ?></span></a></li>
										<li><a href="#">Donor<span class="pull-right text-green"><?php echo $valid_donor ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_donor ?></span></a></li>
										<li><a href="#">Workshop<span class="pull-right text-green"></i><?php echo $valid_workshop ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_workshop ?></span></a></li>
										<li><a href="#">Dinamik Star<span class="pull-right text-green"></i> <?php echo $valid_dstar ?></span><span class="pull-right"> / </span> <span class="pull-right text-red"><?php echo $not_dstar ?></span></a></li>
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
			
			

