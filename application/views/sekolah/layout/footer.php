			<footer class="main-footer">
				<div class="pull-right hidden-xs">
					Didukung oleh<b> CodeIgniter dan <a href="http://almsaeedstudio.com">AdminLTE</a></b>
				</div>
				<strong>&copy; 2016 - 2017 <a href="#">Tim Pengembang Dinamik12</a></strong>
			</footer>
		</div>
		<!-- ./wrapper -->

		<!-- jQuery 2.2.3 -->
		<script src="<?php echo base_url(); ?>/plugins/jQuery/jquery-2.2.3.min.js"></script>
		<!-- Bootstrap 3.3.6 -->
		<script src="<?php echo base_url(); ?>assets/js/bootstrap/bootstrap.min.js"></script>
		<!-- SlimScroll -->
		<script src="<?php echo base_url(); ?>plugins/slimScroll/jquery.slimscroll.min.js"></script>
		<!-- FastClick -->
		<script src="<?php echo base_url(); ?>plugins/fastclick/fastclick.js"></script>
		<!-- AdminLTE App -->
		<script src="<?php echo base_url(); ?>assets/js/adminlte/app.min.js"></script>
		<!-- Sparkline -->
		<script src="<?php echo base_url(); ?>plugins/sparkline/jquery.sparkline.min.js"></script>
		<!-- jvectormap -->
		<script src="<?php echo base_url(); ?>plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
		<script src="<?php echo base_url(); ?>plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
		<!-- ChartJS 1.0.1 -->
		<script src="<?php echo base_url(); ?>plugins/chartjs/Chart.min.js"></script>
		<!-- Data Tables -->
		<script src="<?php echo base_url(); ?>plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="<?php echo base_url(); ?>plugins/datatables/dataTables.bootstrap.min.js"></script>
		<script type="text/javascript" charset="utf-8" async defer>
			$(document).ready(function() {
			    $('#allAcc').DataTable();
			    $('#allEve').DataTable();
			    counter = 0;
			    $('#addanggota').on('click',function(){
			    	counter++;
			    	if(counter==1){
			    		$('.tdanggota2').show('slow');
			    	}else{
			    		$('.tdanggota3').show('slow');
			    	}
			    });
			    $('.cbbayar').change(function() {
			        if($(this).is(":checked")) {
			        	$('#btn-upload').show('slow');
			        }
			        // $('#textbox1').val($(this).is(':checked'));        
			    });			    
			} );
		</script>		
	</body>
</html>
