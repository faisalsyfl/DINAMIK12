
	<div id="event-detail" class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h3 class="title">
					<img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-left-or.png"); ?>">
					<b>DAFTAR LOMBA</b>
					<img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-right-or.png"); ?>">
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<ul class="nav nav-tabs event-tabs">
					<li class="active"><a data-toggle="tab" href="#ldg">LDG</a></li>
					<li><a data-toggle="tab" href="#lcw">LCW</a></li>
					<li><a data-toggle="tab" href="#ocs">OTIK</a></li>
					<li><a data-toggle="tab" href="#pca">PCA</a></li>
					<li><a data-toggle="tab" href="#cspc">CSPC</a></li>
					<li><a data-toggle="tab" href="#lca">LCA</a></li>
					<li><a data-toggle="tab" href="#linefollower">LF</a></li>
					<li><a data-toggle="tab" href="#kompetisijaringan">KJ</a></li>
				</ul>
				
				<div class="tab-content event-detail-list">
					<!-- ldg -->
					<div id="ldg" class="tab-pane fade in active">
					  <img src="<?php echo base_url("assets/img/icon_white/ldg.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">LOMBA DESAIN GRAFIS</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> <br>
						Babak Penyisihan : 14-18 Maret 2017<br>
						Babak Final      : 8 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Online
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[0]['event_description']; ?>
					  </p>
					</div>
					
					<!-- lcw -->
					<div id="lcw" class="tab-pane fade in">
					  <img src="<?php echo base_url("assets/img/icon_white/lcw.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">LOMBA CIPTA WEB</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Rabu - Sabtu, 01 - 04 Maret 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[1]['event_description']; ?>

					  </p>
					</div>
					
					<!-- ocs -->
					<div id="ocs" class="tab-pane fade in">
					  <img src="<?php echo base_url("assets/img/icon_white/opk.png"); ?>" class="img-contest brightness" align="center"><br><br>
					  <h3 class="event-detail-title">OLIMPIADE TIK</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> 7-8 Maret 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> FPMIPA C, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[2]['event_description']; ?>
					  </p>
					</div>
					
					<!-- pca -->
					<div id="pca" class="tab-pane fade in">
					  <img src="<?php echo base_url("assets/img/icon_white/pca.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">PERSONAL COMPUTER ASSEMBLING</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Sabtu, 08 April 2017
					  </p>
					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[3]['event_description']; ?>
					  </p>
					</div>
					
					<!-- cspc -->
					<div id="cspc" class="tab-pane fade in">
					  <img src="<?php echo base_url("assets/img/icon_white/cspc.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">COMPUTER SCIENCE PROGRAMMING COMPETITION</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Selasa, 21 Maret 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Online
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[4]['event_description']; ?>
					  </p>
					</div>
					
					<!-- lca -->
					<div id="lca" class="tab-pane fade in">
					  <img src="<?php echo base_url("assets/img/icon_white/lca.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">LOMBA CIPTA ANIMASI</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Selasa- Sabtu, 14-18 Maret 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Online
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[5]['event_description']; ?>
					  </p>
					</div>
					
					
					<!-- linefollower -->
					<div id="linefollower" class="tab-pane fade in">
					  <img src="<?php echo base_url("assets/img/icon_white/lf.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">LINE FOLLOWER</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Jum’at - Sabtu, 07 - 08 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[6]['event_description']; ?>

					  </p>
					</div>
					
					<!-- kompetisijaringan -->
					<div id="kompetisijaringan" class="tab-pane fade in">
					  <img src="<?php echo base_url("assets/img/icon_white/network.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">KOMPETISI JARINGAN</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Jum’at, 07 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Ruang A Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[7]['event_description']; ?>
					  </p>
					</div>
					
				  </div>
				</div>

			</div>
		</div>
    </div><!-- /.container -->