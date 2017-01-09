<div id="event-detail" class="container">
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <h3 class="title">
                <img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-left-or.png"); ?>">
                <b>Berita</b>
                <img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-right-or.png"); ?>">
            </h3>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
			<?php if($row!=0){?>
			<?php foreach($list as $data){ ?>
            <!-- News Block -->
            <div class="news-thumbail">
                <a class="news-title" style=""><?php echo $data['news_title']; ?></a>
                <br>
                <hr>
                <div class="row">
                    <div class="col-md-4">
                        <!-- News Image -->
                        <img src="<?php echo base_url("assets/img/logo/news-placeholder.jpg"); ?>" alt="News Image" class="thumbnail" style="width:270px;">
                    </div>
                    <div class="col-md-8">
                        <!-- News Text -->
                        <div class="news-headline">
                         <?php echo $data['headline']; ?>...
                        </div>
                        
                        <div class="news-by">
                            <span class="fa fa-user-o"></span>&nbsp; Oleh <a href="#" style="color:#ffa619">Administrator</a>
                            &nbsp;
                            <span class="fa fa-tags"></span>&nbsp; Kategori : <a href="#" style="color:#ffa619"><?php echo $data['news_category'] ?></a>
                        </div>

                        <div class="news-category">
                            <a href="<?php echo base_url("berita/detail/".$data['news_id']); ?>" style="color:#ffa619"> Selengkapnya >> </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End News Block -->
            <?php } ?>
            
            
            <!-- Pagination  -->
            <nav>
              <ul class="pagination pagination-sm">
                <li>
                  <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                  </a>
                </li>
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li>
                  <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                  </a>
                </li>
              </ul>
            </nav>
			<?php }else{ ?>
				<p>Berita Tidak Tersedia</p>
			<?php } ?>
        </div>
    </div>
</div>