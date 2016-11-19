
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="<?php echo base_url("assets/js/bootstrap.min.js");?>"></script>
    <script src="<?php echo base_url("assets/js/owl.carousel.min.js"); ?>"></script> 
    <script src="<?php echo base_url("assets/js/parallax.min.js"); ?>"></script> 
    <script src="<?php echo base_url("assets/js/ie10-viewport-bug-workaround.js");?>"></script>
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
    </script>
  </body>
</html>
