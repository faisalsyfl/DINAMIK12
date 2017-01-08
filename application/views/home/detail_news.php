<div id="event-detail" class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h3 class="title">
                <img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-left-or.png"); ?>">
                <b><?php echo $list['news_title']; ?></b>
                <img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-right-or.png"); ?>">
            </h3>
            <div class="news-by">
                <span class="fa fa-user-o"></span>&nbsp; Oleh <a href="#">Administrator</a>
            </div>
            <div class="news-category">
                <span class="fa fa-tags"></span>&nbsp; Kategori : <a href="#"><?php echo $list['news_category']; ?></a>
            </div>
            <br>
            <hr>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2 news-detail">
            <?php echo $list['news_content']; ?>
            <hr>
            <p class="news-category" style="font-size: 18px;">
                Bagikan :
                <br>
                <a href="#"><i class="fa fa-facebook-square fa-3x" aria-hidden="true"></i></a>
                &nbsp;
                <a href="#"><i class="fa fa-instagram fa-3x" aria-hidden="true"></i></a>
            </p>
        </div>
    </div>
</div>

<script>
    var adaw = 1525;
</script>