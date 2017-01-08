			<footer class="main-footer">
				<div class="pull-right hidden-xs">
					Didukung oleh<b> CodeIgniter dan AdminLTE</b>
				</div>
				<strong>Copyright &copy; 2016 <a href="http://almsaeedstudio.com">Tim Pengembang Dinamik12</a></strong>
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
		<!-- Chart JS -->
		<script src="<?php echo base_url(); ?>assets/js/custom/piechart.js"></script>
		<script src="<?php echo base_url(); ?>assets/js/custom/piechart2.js"></script>
		<!-- Data Tables -->
		<script src="<?php echo base_url(); ?>plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="<?php echo base_url(); ?>plugins/datatables/dataTables.bootstrap.min.js"></script>
		<!-- CK Editor -->
		<script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
		<!-- Bootstrap WYSIHTML5 -->
		<script src="<?php echo base_url(); ?>plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
		<script type="text/javascript" charset="utf-8" async defer>
			$(document).ready(function() {
			    $('#allAcc').DataTable();
			    $('#allEve').DataTable();
			} );
			$(function () {
				// Replace the <textarea id="editor1"> with a CKEditor
				// instance, using default configuration.
				CKEDITOR.replace('editor1');
				//bootstrap WYSIHTML5 - text editor
				$(".textarea").wysihtml5();
			});
		</script>		
	</body>
</html>
