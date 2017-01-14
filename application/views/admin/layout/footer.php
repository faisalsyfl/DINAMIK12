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
		<script type="text/javascript">
			<?php 
				if(isset($status) && $status == 1){
					?>
					var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
					var pieChart = new Chart(pieChartCanvas);
					var PieData = [
					{
					  value: <?php echo $lomba_ldg; ?>,
					  color: "#FF0000",
					  highlight: "#000000",
					  label: "Peserta LDG"
					},
					{
					  value: <?php echo $lomba_lcw; ?>,
					  color: "#008000",
					  highlight: "#000000",
					  label: "Peserta LCW"
					},
					{
					  value: <?php echo $lomba_otik; ?>,
					  color: "#FFFF00",
					  highlight: "#000000",
					  label: "Peserta OTIK"
					},
					{
					  value: <?php echo $lomba_pca; ?>,
					  color: "#00FFFF",
					  highlight: "#000000",
					  label: "Peserta PCA"
					},
					{
					  value: <?php echo $lomba_cspc; ?>,
					  color: "#ADD8E6",
					  highlight: "#000000",
					  label: "Peserta CSPC"
					},
					{
					  value: <?php echo $lomba_lca; ?>,
					  color: "#808080",
					  highlight: "#000000",
					  label: "Peserta LCA"
					},
					{
					  value: <?php echo $lomba_rlf; ?>,
					  color: "#FAAFBE",
					  highlight: "#000000",
					  label: "Peserta RLF"
					},
					{
					  value: <?php echo $lomba_kj; ?>,
					  color: "#F5F5DC",
					  highlight: "#000000",
					  label: "Peserta KJ"
					}
					];
					var pieOptions = {
					//Boolean - Whether we should show a stroke on each segment
					segmentShowStroke: true,
					//String - The colour of each segment stroke
					segmentStrokeColor: "#fff",
					//Number - The width of each segment stroke
					segmentStrokeWidth: 1,
					//Number - The percentage of the chart that we cut out of the middle
					percentageInnerCutout: 50, // This is 0 for Pie charts
					//Number - Amount of animation steps
					animationSteps: 100,
					//String - Animation easing effect
					animationEasing: "easeOutBounce",
					//Boolean - Whether we animate the rotation of the Doughnut
					animateRotate: true,
					//Boolean - Whether we animate scaling the Doughnut from the centre
					animateScale: false,
					//Boolean - whether to make the chart responsive to window resizing
					responsive: true,
					// Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
					maintainAspectRatio: false,
					//String - A legend template
					legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>",
					//String - A tooltip template
					tooltipTemplate: "<%=label%> : <%=value %> Tim"
					};
					pieChart.Doughnut(PieData, pieOptions);
					
					var pieChartCanvas2 = $("#pieChart2").get(0).getContext("2d");
					var pieChart2 = new Chart(pieChartCanvas2);
					var PieData2 = [
					{
					  value: <?php echo $acara_talkshow; ?>,
					  color: "#f56954",
					  highlight: "#000000",
					  label: "Peserta Talkshow"
					},
					{
					  value: <?php echo $acara_semnas; ?>,
					  color: "#f56954",
					  highlight: "#000000",
					  label: "Peserta Seminar Nasional"
					},
					{
					  value: <?php echo $acara_felose; ?>,
					  color: "#325fee",
					  highlight: "#000000",
					  label: "Peserta Festival"
					},
					{
					  value: <?php echo $acara_donor; ?>,
					  color: "#00a65a",
					  highlight: "#000000",
					  label: "Peserta Donor Darah"
					},
					{
					  value: <?php echo $acara_workshop; ?>,
					  color: "#f39c12",
					  highlight: "#000000",
					  label: "Peserta Workshop"
					},
					{
					  value: <?php echo $acara_dstar; ?>,
					  color: "#00c0ef",
					  highlight: "#000000",
					  label: "Peserta Dinamik Star"
					}
					];
					var pieOptions2 = {
						//Boolean - Whether we should show a stroke on each segment
						segmentShowStroke: true,
						//String - The colour of each segment stroke
						segmentStrokeColor: "#fff",
						//Number - The width of each segment stroke
						segmentStrokeWidth: 1,
						//Number - The percentage of the chart that we cut out of the middle
						percentageInnerCutout: 50, // This is 0 for Pie charts
						//Number - Amount of animation steps
						animationSteps: 100,
						//String - Animation easing effect
						animationEasing: "easeOutBounce",
						//Boolean - Whether we animate the rotation of the Doughnut
						animateRotate: true,
						//Boolean - Whether we animate scaling the Doughnut from the centre
						animateScale: false,
						//Boolean - whether to make the chart responsive to window resizing
						responsive: true,
						// Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
						maintainAspectRatio: false,
						//String - A legend template
						legendTemplate: "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<segments.length; i++){%><li><span style=\"background-color:<%=segments[i].fillColor%>\"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>",
						//String - A tooltip template
						tooltipTemplate: "<%=label%> : <%=value %> peserta"
					};
					//Create pie or douhnut chart
					// You can switch between pie and douhnut using the method below.
					pieChart2.Doughnut(PieData2, pieOptions2);
					//-----------------
					//- END PIE CHART -
					//-----------------
					<?php
				}
			?>
		</script>
	</body>
</html>
