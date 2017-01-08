<!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
   

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-md-12">
          <div class="box box-info">
           
           
            <div class="box-body pad">
              <?php echo form_open('dashboard/admin/newsAction/addAct'); ?>
				 <div class="form-group">
                  <label for="inputJudul1">Judul</label>
                  <input type="text" class="form-control" id="inputJudul1" placeholder="Masukkan Judul" name="news_title">
                </div>
				 <div class="form-group">
                  <label for="inputKategori1">Kategori</label>
                  <input type="text" class="form-control" id="inputKategori1" placeholder="Masukkan Kategori" name="news_category">
                </div>
				 <div class="form-group">
                  <label for="inputAcara1">Acara</label>
                  <select class="form-control" name="news_event_id">
					<?php foreach($event_list as $data){ ?>
						<option value="<?php echo $data['event_id']; ?>"><?php echo $data['event_name']; ?></option>
						
					<?php } ?>
                  </select>
				<div class="form-group">
                  <label for="editor1">Konten</label>
                 <textarea id="editor1" name="news_content" rows="10" cols="80"></textarea>
				 <input type="submit" name="btnAdd" value="Tambah" class="btn btn-primary">
							
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