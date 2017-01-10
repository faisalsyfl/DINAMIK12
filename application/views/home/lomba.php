
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
					<li <?php if(!isset($activetab) || $activetab == "ldg") echo "class='active'"; ?>><a data-toggle="tab" href="#ldg">LDG</a></li>
					<li <?php if(isset($activetab) && $activetab == "lcw") echo "class='active'"; ?>><a data-toggle="tab" href="#lcw">LCW</a></li>
					<li <?php if(isset($activetab) && $activetab == "otik") echo "class='active'"; ?>><a data-toggle="tab" href="#ocs">OTIK</a></li>
					<li <?php if(isset($activetab) && $activetab == "pca") echo "class='active'"; ?>><a data-toggle="tab" href="#pca">PCA</a></li>
					<li <?php if(isset($activetab) && $activetab == "cspc") echo "class='active'"; ?>><a data-toggle="tab" href="#cspc">CSPC</a></li>
					<li <?php if(isset($activetab) && $activetab == "lca") echo "class='active'"; ?>><a data-toggle="tab" href="#lca">LCA</a></li>
					<li <?php if(isset($activetab) && $activetab == "lf") echo "class='active'"; ?>><a data-toggle="tab" href="#linefollower">LF</a></li>
					<li <?php if(isset($activetab) && $activetab == "kj") echo "class='active'"; ?>><a data-toggle="tab" href="#kompetisijaringan">KJ</a></li>
				</ul>
				
				<div class="tab-content event-detail-list">
					<!-- ldg -->
					<div id="ldg" class="tab-pane fade in <?php if(!isset($activetab) || $activetab == "ldg") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/ldg.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">LOMBA DESAIN GRAFIS</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
						Babak Penyisihan : 14 - 18 Maret 2017<br>
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>
						Babak Final      : 8 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-usd" aria-hidden="true"></span> <?php echo "Rp.".number_format($list[0]['event_price'],0,',','.'); ?>
					  </p>					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Online
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[0]['event_description']; ?>
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-download" aria-hidden="true"></span> <a href="<?php 	echo $list[0]['event_rule']; ?>" title="" style="color:orange;" target="_blank">Download Booklet LDG </a>
					  </p>						  
					</div>
					
					<!-- lcw -->
					<div id="lcw" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "lcw") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/lcw.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">LOMBA CIPTA WEB</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Rabu - Sabtu, 1 - 4 Maret 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-usd" aria-hidden="true"></span> <?php echo "Rp.".number_format($list[1]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gymnasium, Universitas Pendidikan Indonesia
					  </p>					  
					  <p class="event-detail-text">
					  <?php echo $list[1]['event_description']; ?>
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-download" aria-hidden="true"></span> <a href="<?php 	echo $list[1]['event_rule']; ?>" title="" style="color:orange;" target="_blank">Download Booklet LCW </a>
					  </p>					  
					</div>
					
					<!-- ocs -->
					<div id="ocs" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "otik") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/opk.png"); ?>" class="img-contest brightness" align="center"><br><br>
					  <h3 class="event-detail-title">OLIMPIADE TIK</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> 1 - 2 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-usd" aria-hidden="true"></span> <?php echo "Rp.".number_format($list[2]['event_price'],0,',','.'); ?>
					  </p>					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Online
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[2]['event_description']; ?>
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-download" aria-hidden="true"></span> <a href="<?php 	echo $list[2]['event_rule']; ?>" title="" style="color:orange;" target="_blank">Download Booklet OTIK</a>
					  </p>					  
					</div>
					
					<!-- pca -->
					<div id="pca" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "pca") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/pca.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">PERSONAL COMPUTER ASSEMBLING</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Sabtu, 8 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-usd" aria-hidden="true"></span> <?php echo "Rp.".number_format($list[3]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[3]['event_description']; ?>
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-download" aria-hidden="true"></span> <a href="<?php 	echo $list[3]['event_rule']; ?>" title="" style="color:orange;" target="_blank">Download Booklet PCA</a>
					  </p>						  
					</div>
					
					<!-- cspc -->
					<div id="cspc" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "cspc") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/cspc.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">COMPUTER SCIENCE PROGRAMMING COMPETITION</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Penyisihan : Selasa, 21 Maret 2017 <br>	
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Semifinal : Selasa, 28 Maret 2017 <br>	
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Final : Minggu, 9 April 2017 <br>	
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-usd" aria-hidden="true"></span> <?php echo "Rp.".number_format($list[4]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Online
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[4]['event_description']; ?>
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-download" aria-hidden="true"></span> <a href="<?php 	echo $list[4]['event_rule']; ?>" title="" style="color:orange;" target="_blank">Download Booklet CSPC</a>
					  </p>						  
					</div>
					
					<!-- lca -->
					<div id="lca" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "lca") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/lca.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">LOMBA CIPTA ANIMASI</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Selasa- Sabtu, 14 - 18 Maret 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-usd" aria-hidden="true"></span> <?php echo "Rp.".number_format($list[5]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Online
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[5]['event_description']; ?>
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-download" aria-hidden="true"></span> <a href="<?php 	echo $list[5]['event_rule']; ?>" title="" style="color:orange;" target="_blank">Download Booklet LCA</a>
					  </p>						  
					</div>
					
					
					<!-- linefollower -->
					<div id="linefollower" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "lf") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/lf.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">LINE FOLLOWER</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Jum’at - Sabtu, 7 - 8 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-usd" aria-hidden="true"></span> <?php echo "Rp.".number_format($list[6]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[6]['event_description']; ?>
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-download" aria-hidden="true"></span> <a href="<?php 	echo $list[6]['event_rule']; ?>" title="" style="color:orange;" target="_blank">Download Booklet LF</a>
					  </p>						  
					</div>
					
					<!-- kompetisijaringan -->
					<div id="kompetisijaringan" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "kj") echo "active"; ?>">
					  <img src="<?php echo base_url("assets/img/icon_white/network.png"); ?>" class="img-contest" align="center"><br><br>
					  <h3 class="event-detail-title">KOMPETISI JARINGAN</h3>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-calendar" aria-hidden="true"></span> Jum’at, 7 April 2017
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-usd" aria-hidden="true"></span> <?php echo "Rp.".number_format($list[7]['event_price'],0,',','.'); ?>
					  </p>					  					  
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span> Ruang A Gymnasium, Universitas Pendidikan Indonesia
					  </p>
					  <p class="event-detail-text">
					  <?php echo $list[7]['event_description']; ?>
					  </p>
					  <p class="event-detail-date">
						<span class="glyphicon glyphicon glyphicon-download" aria-hidden="true"></span> <a href="<?php 	echo $list[7]['event_rule']; ?>" title="" style="color:orange;" target="_blank">Download Booklet KJ</a>
					  </p>						  
					</div>
					
				  </div>
				</div>

			</div>
		</div>
    </div><!-- /.container -->