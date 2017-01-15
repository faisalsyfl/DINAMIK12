<div id="event-detail" class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h3 class="title">
                <img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-left-or.png"); ?>">
                <b><?php echo $list['news_title']; ?></b>
                <img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-right-or.png"); ?>">
            </h3>
            <div class="news-by">
                <span class="fa fa-user-o"></span>&nbsp; Oleh : Panitia Dinamik 12</a>
            </div>
            <div class="news-category">
                <span class="fa fa-tags"></span>&nbsp; Kategori : <a href="#" style="color:#ffa619"><?php echo $list['news_category']; ?></a>
            </div>
            <br>
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2 news-detail">
			<center><img src="<?php echo base_url("uploads/news/".$list['news_image']); ?>" alt="News Image" class="thumbnail" style="width:300px;"></center>
            <?php echo $list['news_content']; ?>
            <hr>
            <p class="news-category" style="font-size: 18px;">
               <!-- Bagikan :
                <br>
                <a href="#" style="color:#fff"><i class="fa fa-facebook-square fa-2x" aria-hidden="true"></i></a>
                &nbsp;
                <a href="#" style="color:#fff"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a>-->
            </p>
        </div>
    </div>
</div>

<script>
    var adaw = 1525;
</script>