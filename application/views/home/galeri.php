<div id="event-detail" class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h3 class="title">
                <img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-left-or.png"); ?>">
                <b>Galeri</b>
                <img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-right-or.png"); ?>">
            </h3>
        </div>
    </div>
    <div class="row">
       
			<?php
				foreach($result->data as $post){
			?>
			 <div class="col-xs-6 col-md-3">
			<img src="<?php echo $post->images->thumbnail->url; ?>" alt="Gallery Image" class="thumbnail" >
			 </div>
			<?php }?>
       
    </div>
</div>