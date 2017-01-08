	
	<!-- Home -->
	<div id="foot" class="container">
		<div class="row">
			<img class="dinamik-foot" src="<?php echo base_url("assets/img/logo/logo-white.png"); ?>">
		</div>
		<div class="row">
			<div class="col-md-10 col-md-offset-1 foot-list">
				<div class="col-sm-6 col-md-4 lokasi">
					<h4><b>LOKASI</b></h4>
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3961.2460755780944!2d107.59213921419189!3d-6.861084495041789!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e68e6b943c2c5ff%3A0xee36226510a79e76!2sUniversitas+Pendidikan+Indonesia+(UPI)!5e0!3m2!1sen!2sid!4v1479745205796" width="100%" height="auto" frameborder="0" style="border:0"></iframe>
				</div>
				<div class="col-sm-6 col-md-4 kontak">
					<h4><b>KONTAK</b></h4>
					<table>
					  <tr>
						<td>
						  <span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span>
						</td>
						<td>
						  Jl. Setiabudi No. 229 Bandung, Jawa Barat
						</td>
					  </tr>
					  <tr>
						<td>
						  <span class="glyphicon glyphicon-earphone"></span>
						</td>
						<td>
						  Anita Dyah Pertiwi (0822-1485-6123)
						</td>
					  </tr>
					  <tr>
						<td>
						  <span class="glyphicon glyphicon-envelope"></span>
						</td>
						<td>
						  <a class="footer-link" href="mailto:dinamik@cs.upi.edu">dinamik.cs@upi.edu</a>
						</td>
					  </tr>
					  <tr>
						<td>
						  <b>LINE</b>
						</td>
						<td>
						   <a class="footer-link" href="line://ti/p/~anitapertiwi">anitapertiwi</a>
						</td>
					  </tr>
					</table>
				</div>
				<div class="col-sm-6 col-md-4 medsos">
					<h4><b>MEDIA SOSIAL</b></h4>
					<a href="#"><img src="<?php echo base_url("assets/img/logo/facebook.png"); ?>"></a>
					<a href="#"><img src="<?php echo base_url("assets/img/logo/instagram.png"); ?>"></a>
					<a href="#"><img src="<?php echo base_url("assets/img/logo/twitter.png"); ?>"></a>
					<a href="#"><img src="<?php echo base_url("assets/img/logo/youtube.png"); ?>"></a>
					<hr>
					<br>
					<!-- NOT USED
					<h4><b>BERLANGGANAN</b></h4>
					<form target="#" method="POST">
						<input type="text" class="input-text" placeholder="Email">
						<input type="submit" class="input-submit" value="Langganan">
					</form>
					-->
				</div>
			</div>
		</div>
    </div><!-- /.container -->
	
	<div id="copyright" class="container">
		<div class="row">
			<div class="col-md-6 copy-left">
				<p>Copyright &copy DINAMIK12 2016</p>
			</div>
			<div class="col-md-6 copy-right">
				<a href="#" class="copy-link">Site Map</a>
				<a href="#" class="copy-link">Privacy Policy</a>
				<a href="#" class="copy-link">Term of Use</a>
				<a href="#" class="copy-link">About</a>
			</div>
		</div>
    </div><!-- /.container -->
	
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   
    <script src="<?php echo base_url("assets/js/bootstrap/bootstrap.min.js");?>"></script>
    <script src="<?php echo base_url("assets/js/carousel/owl.carousel.min.js"); ?>"></script> 
    <script src="<?php echo base_url("assets/js/parallax/parallax.min.js"); ?>"></script> 
    <script src="<?php echo base_url("assets/js/other/ie10-viewport-bug-workaround.js");?>"></script>
	<script src="<?php echo base_url("assets/js/jquery/jquery.countdown.min.js"); ?>"></script>
	<script src="<?php echo base_url("assets/js/other/headroom.js"); ?>"></script> 
	<script src="<?php echo base_url("assets/js/other/graf.min.js"); ?>"></script> 
	<script src="<?php echo base_url("assets/js/other/app.js"); ?>"></script> 
    <script type="text/javascript">
      $(document).ready(function() {
        $("#contest-list").owlCarousel({
            autoPlay: 3000, //Set AutoPlay to 3 seconds
            navigation:false,
            items : 5,
            itemsDesktop : [1199,5],
            itemsDesktopSmall : [979,4],
            itemsTablet: [768,3],
            itemsMobile : [479,1]
        });
      });
      $(document).ready(function() {
        $("#event-list").owlCarousel({
            autoPlay: 3000, //Set AutoPlay to 3 seconds
            navigation:false,
            items : 5,
            itemsDesktop : [1199,5],
            itemsDesktopSmall : [979,4],
            itemsTablet: [768,3],
            itemsMobile : [479,1]
        });
      });
	  
	  $('#clock').countdown('2017/04/01').on('update.countdown', function(event) {
		  var $this = $(this).html(event.strftime(
		  	'<div class="row">'
		  	+ '<div class="col-md-8 col-md-offset-2">'

		    + '<div class="col-md-3 col-xs-3">'
		    + '<h2 class="countdown" id="day">%d</h2>'
		    + '<span class="countdown-title">Hari</span>'
		    + '</div>'

		    + '<div class="col-md-3 col-xs-3">'
		    + '<h2 class="countdown" id="day">%H</h2>'
		    + '<span class="countdown-title">Jam</span>'
		    + '</div>'

		    + '<div class="col-md-3 col-xs-3">'
		    + '<h2 class="countdown" id="day">%M</h2>'
		    + '<span class="countdown-title">Menit</span>'
		    + '</div>'

		    + '<div class="col-md-3 col-xs-3">'
		    + '<h2 class="countdown" id="day">%S</h2>'
		    + '<span class="countdown-title">Detik</span>'
		    + '</div>'

		    + '</div>'
		    + '</div>'));
		});
	  	// grab an element
		var myElement = document.querySelector("nav");
		// construct an instance of Headroom, passing the element
		var headroom  = new Headroom(myElement);
		// initialise
		headroom.init(); 
    </script>
  </body>
</html>
