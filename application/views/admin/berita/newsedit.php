<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
   

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
           
           
            <div class="box-body pad">
              <?php echo form_open_multipart('dashboard/admin/newsAction/editAct/'.$row['news_id']); ?>
			  <?php?>
				 <div class="form-group">
                  <label for="inputJudul1">Judul</label>
                  <input type="text" class="form-control" id="inputJudul1" placeholder="Masukkan Judul" name="news_title" value="<?php echo $row['news_title']; ?>">
                </div>
				 <div class="form-group">
                  <label for="inputKategori1">Kategori</label>
                  <input type="text" class="form-control" id="inputKategori1" placeholder="Masukkan Kategori" name="news_category" value="<?php echo $row['news_category']; ?>">
                </div>
				 <div class="form-group">
                  <label for="inputAcara1">Acara</label>
                  <select class="form-control" name="news_event_id">
					<option value="">Berita Umum</option>
					<?php foreach($event_list as $data){ ?>
						<option value="<?php echo $data['event_id']; ?>"<?php if($data['event_id']==$row['news_event_id']){ echo "selected"; } ?>><?php echo $data['event_name']; ?></option>
						
					<?php } ?>
                  </select>
				  </div>
				  <div class="form-group">
                  <label for="inputGambar1">Gambar</label>
                  <input type="file" name="news_image">
				  </div>
				<div class="form-group">
                  <label for="editor1">Konten</label>
                 <textarea id="editor1" name="news_content" rows="10" cols="80"><?php echo $row['news_content']; ?></textarea>
				 <input type="submit" name="btnEdit" value="Edit" class="btn btn-primary">
							
                </div>
			  
				
                    
				
              </form>
            </div>
          </div>
          <!-- /.box -->

          
        </div>
        <!-- /.col-->
      </div>
      <!-- ./row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->