$(document).ready(function() {
 
   var time = 7; // time in seconds
 
   var $progressBar,
      $bar, 
      $elem, 
      isPause, 
      tick,
      percentTime;
 
    //Init the carousel
    $("#owl-demo").owlCarousel({
      autoPlay : 3000,
      slideSpeed : 10000,
      paginationSpeed : 500,
      singleItem : true,
      pagination : false,
      itemsDesktop : [1199,1],
      itemsDesktopSmall : [979,1]
    });
 
    //Init progressBar where elem is $("#owl-demo")
    function progressBar(elem){
      $elem = elem;
      //build progress bar elements
      buildProgressBar();
      //start counting
      start();
    }
 
    //create div#progressBar and div#bar then prepend to $("#owl-demo")
    function buildProgressBar(){
      $progressBar = $("<div>",{
        id:"progressBar"
      });
      $bar = $("<div>",{
        id:"bar"
      });
      $progressBar.append($bar).prependTo($elem);
    }
 
    function start() {
      //reset timer
      percentTime = 0;
      isPause = false;
      //run interval every 0.01 second
      tick = setInterval(interval, 10);
    };
 
    function interval() {
      if(isPause === false){
        percentTime += 1 / time;
        $bar.css({
           width: percentTime+"%"
         });
        //if percentTime is equal or greater than 100
        if(percentTime >= 100){
          //slide to next item 
          $elem.trigger('owl.next')
        }
      }
    }
 
    //pause while dragging 
    function pauseOnDragging(){
      isPause = true;
    }
 
    //moved callback
    function moved(){
      //clear interval
      clearTimeout(tick);
      //start again
      start();
    }
 
    //uncomment this to make pause on mouseover 
    // $elem.on('mouseover',function(){
    //   isPause = true;
    // })
    // $elem.on('mouseout',function(){
    //   isPause = false;
    // })
    $("#owl-sc").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
    navigation:true,
     navigationText: [
        "<i class='fa fa-chevron-left fa-3x' aria-hidden='true'></i>","<i class='fa fa-chevron-right fa-3x' aria-hidden='true'></i>"
        ],
      items : 3,
      itemsDesktop : [1199,2],
      itemsDesktopSmall : [979,2]
 
  });

    $("#owl-ps").owlCarousel({
 
      autoPlay: 2000, //Set AutoPlay to 3 seconds
    navigation:false,
     navigationText: [
        "<i class='fa fa-chevron-left fa-3x' aria-hidden='true'></i>","<i class='fa fa-chevron-right fa-3x' aria-hidden='true'></i>"
        ],
      items : 4,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
      pagination : false
 
  });
   $("#owl-f").owlCarousel({
 
      autoPlay: false, //Set AutoPlay to 3 seconds
    // navigation:true,
      items : 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3],
      pagination : false
 
  });

   $("#owl-ks").owlCarousel({
 
      autoPlay: 10000, //Set AutoPlay to 3 seconds
     navigation:false,
     navigationText: [
        "<i class='fa fa-chevron-left fa-3x' aria-hidden='true'></i>","<i class='fa fa-chevron-right fa-3x' aria-hidden='true'></i>"
        ],
      items : 1,
      itemsDesktop : [1199,1],
      itemsDesktopSmall : [979,1]
 
  });
  $("#owl-id").owlCarousel({
 
      // autoPlay: 10000, //Set AutoPlay to 3 seconds
     navigation:false,
     navigationText: [
        "<i class='fa fa-chevron-left fa-3x' aria-hidden='true'></i>","<i class='fa fa-chevron-right fa-3x' aria-hidden='true'></i>"
        ],
      items : 1,
      itemsDesktop : [1199,1],
      itemsDesktopSmall : [979,1]
      // autoHeight : true
 
  });

  $('.ui.accordion').accordion();

});
