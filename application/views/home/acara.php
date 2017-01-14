
	<div id="event-detail" class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h3 class="title">
					<img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-left-or.png"); ?>">
					<b>DAFTAR ACARA</b>
					<img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-right-or.png"); ?>">
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<ul class="nav nav-tabs event-tabs">
					<li <?php if(!isset($activetab) || $activetab == "talkshow") echo "class='active'"; ?>><a data-toggle="tab" href="#talkshow">TALKSHOW</a></li>
					<li <?php if(isset($activetab) && $activetab == "semnas") echo "class='active'"; ?>><a data-toggle="tab" href="#semnas">SEMNAS</a></li>
					<li <?php if(isset($activetab) && $activetab == "felose") echo "class='active'"; ?>><a data-toggle="tab" href="#felose">FESTIVAL</a></li>
					<li <?php if(isset($activetab) && $activetab == "donor") echo "class='active'"; ?>><a data-toggle="tab" href="#donor">DONOR</a></li>
					<li <?php if(isset($activetab) && $activetab == "workshop") echo "class='active'"; ?>><a data-toggle="tab" href="#workshop">WORKSHOP</a></li>
					<li <?php if(isset($activetab) && $activetab == "d-star") echo "class='active'"; ?>><a data-toggle="tab" href="#d-star">D-STAR</a></li>
				</ul>
				
				<div class="tab-content event-detail-list">
					<!-- talkshow -->
					<div id="talkshow" class="tab-pane fade in <?php if(!isset($activetab) || $activetab == "talkshow") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/talkshow.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">TALKSHOW INSPIRATIF</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Minggu, 2 April 2017
					  </p>
					  <p class="event-detail-date">
						<?php echo "Rp. ".number_format($list[8]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gedung Ahmad Sanusi, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					 	<?php echo $list[8]['event_description']; ?>
					  </p>
					</div>
					
					<!-- semnas -->
					<div id="semnas" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "semnas") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/semnas.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">SEMINAR NASIONAL</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Sabtu, 1 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span> 08.00 - 15.00 WIB
					  </p>
					  <p class="event-detail-date">
						<?php echo "Rp. ".number_format($list[9]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Auditorium FPMIPA-A, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					 	<?php echo $list[9]['event_description']; ?>
					  </p>
					</div>
					
					<!-- felose -->
					<div id="felose" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "felose") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/felose.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">FESTIVAL TEKNOLOGI DAN SENI</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span> Pendaftaran Dibuka 1 Februari 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Jum’at - Minggu, 7 - 9 April 2017
					  </p>					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					 	<?php echo $list[10]['event_description']; ?>

					  </p>
					</div>
					
					<!-- donor -->
					<div id="donor" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "donor") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/donor.png"); ?>" class="img-contest brightness" align="center"><br><br>
					  <h3 class="event-detail-title">DONOR DARAH</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Sabtu, 8 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span> 08.00 – 12.00 WIB
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Halaman Depan Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					 	<?php echo $list[11]['event_description']; ?>
					  </p>
					</div>
					
					<!-- workshop -->
					<div id="workshop" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "workshop") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/workshop.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">WORKSHOP DIGITALISASI GURU</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Jum’at - Sabtu, 7 - 9  April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-time" aria-hidden="true"></span> 08.00 - 15.00 WIB
					  </p>
					  <p class="event-detail-date">
						<?php echo "Rp. ".number_format($list[12]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Isola Resort, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					 	<?php echo $list[12]['event_description']; ?>

					  </p>
					</div>
					
					<!-- dinamik star -->
					<div id="d-star" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "d-star") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/d-star.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">DINAMIK STAR</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Sabtu - Minggu, 1 - 2 April 2017
					  </p>
					  <p class="event-detail-date">
						<?php echo "Rp. ".number_format($list[13]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> FPMIPA-C, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					 	<?php echo $list[13]['event_description']; ?>
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-download" aria-hidden="true"></span> <a href="<?php echo $list[13]['event_rule']; ?>" title="" style="color:orange;" target="_blank">Download Booklet DSTAR</a>
					  </p>						  
					</div>
					
				</div>
			</div>

		</div>
	</div>
</div><!-- /.container -->