//-------------
//- PIE CHART -
//-------------
// Get context with jQuery - using jQuery's .get() method.
var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
var pieChart = new Chart(pieChartCanvas);
var PieData = [
{
  value: 700,
  color: "#f56954",
  highlight: "#f56954",
  label: "Kategori 1"
},
{
  value: 500,
  color: "#00a65a",
  highlight: "#00a65a",
  label: "Kategori 4"
},
{
  value: 400,
  color: "#f39c12",
  highlight: "#f39c12",
  label: "Kategori 5"
},
{
  value: 600,
  color: "#00c0ef",
  highlight: "#00c0ef",
  label: "Kategori 6"
},
{
  value: 300,
  color: "#3c8dbc",
  highlight: "#3c8dbc",
  label: "Kategori 7"
},
{
  value: 100,
  color: "#d2d6de",
  highlight: "#d2d6de",
  label: "Kategori 8"
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
tooltipTemplate: "<%=label%> <%=value %> peserta"
};
//Create pie or douhnut chart
// You can switch between pie and douhnut using the method below.
pieChart.Doughnut(PieData, pieOptions);
//-----------------
//- END PIE CHART -
//-----------------