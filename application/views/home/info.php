	

	<div id="event-detail" class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h3 class="title">
					<img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-left-or.png"); ?>">
					<b>INFORMASI</b>
					<img class="ss-ornament" src="<?php echo base_url("assets/img/logo/ss-right-or.png"); ?>">
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<ul class="nav nav-tabs event-tabs">
					<li <?php if(!isset($activetab) || $activetab == "pendaftaran") echo "class='active'"; ?>><a data-toggle="tab" href="#alur">ALUR PENDAFTARAN</a></li>
					<li <?php if(isset($activetab) && $activetab == "tentang") echo "class='active'"; ?>><a data-toggle="tab" href="#tentang">TENTANG</a></li>
					<li <?php if(isset($activetab) && $activetab == "sk") echo "class='active'"; ?>><a data-toggle="tab" href="#sk">SYARAT DAN KETENTUAN</a></li>
					<li <?php if(isset($activetab) && $activetab == "faq") echo "class='active'"; ?>><a data-toggle="tab" href="#faq">FAQ</a></li>
					<li <?php if(isset($activetab) && $activetab == "unduhan") echo "class='active'"; ?>><a data-toggle="tab" href="#unduhan">UNDUHAN</a></li>
					<!--<li <?php // if(isset($activetab) && $activetab == "kontak") echo "class='active'"; ?>><a data-toggle="tab" href="#kontak">KONTAK</a></li>-->
				</ul>
				
				<div class="tab-content event-detail-list">
					<!-- TENTANG -->
					<div id="tentang" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "tentang") echo "active"; ?>">
					  <h3 class="event-detail-title">TENTANG DINAMIK12</h3>
					  <p class="event-detail-text">
						Dies Natalis Keluarga Besar Ilmu Komputer (DINAMIK) merupakan perayaan ulang tahun Keluarga Mahasiswa Ilmu Komputer. Pada tahun ini DINAMIK akan menginjak angka ke-12. DINAMIK12 ini mengusung tema: <br>
					  </p>
						<h3>"Mahakarya Teknologi Bangsa Untuk Pendidikan Indonesia"</h3>
					  <p class="event-detail-text">
						Sebagai salah satu solusi untuk mengembangkan teknologi data pada pendidikan Indonesia agar bisa menciptakan sebuah era generasi pendidikan cerdas dan mengerti dalam memahami hadirnya teknologi data sehingga dapat mencetak generasi yang penuh inovasi dan produktivitas. Adapun spesifikasi acara dalam DINAMIK 12 yaitu Syukuran Dinamik, Maint Event, Talkshow Inspiratif, Workshop Digitalisasi Guru, Seminar Nasional, Festival Teknologi dan Seni, Donor Darah dan berbagai lomba seperti Lomba Desain Grafis (LDG), Lomba Cipta Web (LCW), Olimpiade TIK (OTIK), Personal Computer Assembling (PCA), Computer Science Programming Competition (CSPC), Lomba Cipta Animasi (LCA), Robot Line Follower (RLF), Kompetisi Jaringan, dan DINAMIK Star. 
					  </p>
					  <p class="event-detail-text">
						Diharapkan dengan adanya acara ini, masyarakat yang mengikuti kegiatan akan mendapatkan manfaat positif dan juga teknologi pada pendidikan Indonesia bukan saja menjadi suatu hal yang digunakan tapi menjadi suatu hal yang dipelajari kembali sehingga generasi bangsa selanjutnya dapat menggunakan teknologi data dengan bijak.
					  </p>
					</div>
					
					<!-- ALUR -->
					<div id="alur" class="tab-pane fade in <?php if(!isset($activetab) || $activetab == "pendaftaran") echo "active"; ?>">
					  <h3 class="event-detail-title">ALUR PENDAFTARAN</h3>
					 	<ol class="event-detail-text">
							<h3 style="color: #ffa619;">Sekolah</h3>
							<li> Registrasi akun sekolah halaman <a href="<?php echo site_url('/akun'); ?>"  style="color: #ffa619;" target="_blank">Akun </a></li>
							<li> Username dan password akan dikirim melalui email yang didaftarkan <br>
								<small>* Jika email tidak ada di inbox, silahkan cek spam email</small></li>
							<li> Login menggunakan username dan password yang sudah didapat</li>
							<li> Daftar kan tim dengan cara klik tombol 'daftarkan tim' pada halaman dashboard sekolah</li>
							<li> Isi form sesuai dengan tim yang didaftarkan, jika sudah selesai tekan tombol 'daftar'<br>
								<small>* Username untuk akun tim akan dibuat otomatis sesuai dengan nama tim</small></li>
							<li> Lihat informasi lengkap tim dengan cara klik tombol 'i' disebelah kanan</li>
							<li> Lakukan pembayaran sesuai dengan biaya pendaftaran yang tertera melalui <b>Rek. BCA (014) 1480861899 a.n. Sita Kartina</b>, kemudian masukan kode pembayaran pada keterangan saat melakukan transfer</li>
							<li> Upload bukti pembayaran melalui menu 'Upload Bukti' pada dashboard publik</li>
							<li> Pilih tim mana saja yang sudah membayar biaya pendaftaran, kemudian tuliskan kode pembayaran tiap tim pada deskripsi, pilih file bukti pembayaran kemudian tekan 'submit'</li>
							<li> Tunggu proses verifikasi untuk bisa login menggunakan akun tim</li>
							<li> Jika sudah di-verifikasi, maka anda bisa login menggunakan akun tim menggunakan username dan password yang telah dibuat</li>
							<li> Untuk lomba yang harus melakukan upload file, silahkan baca petunjuk pada dashboard tim</li>
						</ol>
						<ol class="event-detail-text">
							<h3 style="color: #ffa619;">Umum</h3>
							<li> Registrasi akun melalui halaman <a href="<?php echo site_url('/akun'); ?>" style="color: #ffa619;" target="_blank">Akun </a></li>
							<li> Login menggunakan username dan password yang sudah dibuat</li>
							<li> Lakukan pembayaran sesuai dengan biaya pendaftaran yang tertera melalui <b>Rek. BCA (014) 1480861899 a.n. Sita Kartina</b>, kemudian masukan kode pembayaran pada keterangan saat melakukan transfer</li>
							<li> Upload bukti pembayaran melalui menu 'Upload Bukti' pada dashboard sekolah</li>
							<li> Pilih acara apa saja yang sudah dibayar biaya pendaftarannya, kemudian tuliskan tiap kode pembayarannya pada deskripsi, pilih file bukti pembayaran kemudian tekan 'submit'</li>
							<li> Jika sudah di-verifikasi maka anda sudah terdaftar menjadi peserta</li>
						</ol>
						<!--
					  
						-->
					</div>
					
					
					
					<!-- KONTAK 
					<div id="kontak" class="tab-pane fade in <?php //if(isset($activetab) && $activetab == "kontak") echo "active"; ?>">
					  <h3 class="event-detail-title">KONTAK</h3>
					  <p class="event-detail-text">
					 	Jika ada pertanyaan, kritik, dan saran silahkan kirim melalui form dibawah ini:
					  </p>
					  <div class="form-group">
						<?php //echo form_open('home/Info/contactMsg'); ?>
							<h3 class="event-detail-text">Nama</h3>
							<input type="text" class="form-control" placeholder="Masukan nama lengkap" name="message_name">
							<h3 class="event-detail-text">Email</h3>
							<input type="text" class="form-control" placeholder="Masukan email" name="message_email">
							<h3 class="event-detail-text">Pesan</h3>
							<textarea type="text" class="form-control" placeholder="Pesan anda" name="message_content"></textarea><br>
							<button type="submit" class="btn btn-primary form-control" name="btnKirim">Kirim</button>
						<?php //echo form_close(); ?>
					  </div>
					</div>
					
					<!-- UNDUHAN -->
					
					<div id="unduhan" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "unduhan") echo "active"; ?>">
					  <h3 class="event-detail-title">UNDUHAN</h3>
					  <p class="event-detail-text">
					 	Silahkan unduh file-file yang dibutuhkan dibawah ini:
						<br>
						<br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="<?php echo base_url('assets/img/logo/DINAMIK12%20LOGO.png'); ?>" target="_blank">Logo DINAMIK12</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tAQkZ6LXFXbjcwcDg" target="_blank">DINAMIK12 Booklet - Dinamik Star</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tAVDBkdzZkcGJmVWs" target="_blank">DINAMIK12 Booklet - Kompetisi Jaringan</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tAQ2tIMzdZRzd6TXM" target="_blank">DINAMIK12 Booklet - Lomba Cipta Animasi</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tAa3hqOHd2aFBDZnc" target="_blank">DINAMIK12 Booklet - Lomba Cipta Web</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tAenI0ajdrWURZX28" target="_blank">DINAMIK12 Booklet - Lomba Desain Grafis</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tAVlVqTk10WEk1c0E" target="_blank">DINAMIK12 Booklet - Olimpiade TIK</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tARzMzeWVPUjA2N1U" target="_blank">DINAMIK12 Booklet - Robot Line Follower</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tAbFBYdkMzUUpYS1E" target="_blank">DINAMIK12 Booklet - PC Assembling</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tANV9HZWU1eUV3Q2M" target="_blank">DINAMIK12 Booklet - Computer Science Programming Contest</a><br>
						<span class="glyphicon glyphicon-file" style="color: #ffa619;"></span> <a style="color: #fff;" href="https://drive.google.com/open?id=0B6-S3m8s--tARzMzeWVPUjA2N1U" target="_blank">DINAMIK12 Booklet - Robot Line Follower</a><br>
					  </p>
					</div>
					
					<!-- SYARAT & KETENTUAN -->
					<div id="sk" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "sk") echo "active"; ?>">
					  <h3 class="event-detail-title">SYARAT DAN KETENTUAN</h3>
					  <p class="event-detail-text">
					 	<b>Syarat dan Ketentuan Penggunaan Situs Web DINAMIK12</b><br>
						Dengan mendaftar di situs DINAMIK12, anda telah menyetujui bahwa :
					    <ul class="event-detail-text">
							<li>
								Jika mendaftar akun sekolah, maka akun yang anda daftarkan dapat mewakili seluruh tim yang akan mendaftar dari sekolah anda.
							</li>
							<li>
								Jika mendaftar akun umum, maka akun yang anda daftarkan dapat mewakili individu maupun kelompok tertentu yang ingin mendaftar di acara DINAMIK12.
							</li>
							<li>
								Semua data yang anda (akan) berikan di dalam akun, pendaftaran acara/tim lomba, pembayaran, dan data-data lain yang diperlukan sistem adalah data yang benar dan faktual.
							</li>
							<li>
								Anda tidak akan menggunakan satu atau lebih bagian dari DINAMIK12 untuk melaksanakan tindak kejahatan atau tindakan lain yang menimbulkan dampak negatif.
							</li>
							<li>
								Panitia berhak menonaktifkan atau menghapus akun atau data anda jika seandainya ditemukan pelanggaran hukum atau ketidaksesuaian pada data akun anda.
							</li>
							<li>
								Panitia berhak memberikan informasi apapun kepada pihak berwajib jika seandainya diperlukan untuk menyelesaikan suatu masalah.
							</li>
							<li>
								Panitia berhak untuk tidak melayani suatu masalah bila ditemukan masalah tersebut disebabkan oleh kelalaian atau kesalahan pengguna.
							</li>
							<li>
								Panitia tidak akan bertanggung jawab bila ditemukan masalah yang disebabkan oleh pihak ketiga di luar kontak/media sosial resmi DINAMIK12.
							</li>
						</ul>
					  </p>
					</div>
					
					<!-- FAQ -->
					<div id="faq" class="tab-pane fade in <?php if(isset($activetab) && $activetab == "faq") echo "active"; ?>">
					  <h3 class="event-detail-title">PERTANYAAN</h3>
					    <ul class="event-detail-text">
							<li><b>AKUN / PENDAFTARAN</b><br><br>
								<b class="question">Apa itu akun Sekolah?</b><br>
									Akun sekolah adalah akun yang digunakan untuk mewakili sebuah sekolah dalam mendaftarkan tim-tim yang akan mendaftar lomba DINAMIK12 dari sekolah tersebut.<br><br>
								<b class="question">Apa itu akun Umum?</b><br>
									Akun umum adalah akun yang digunakan untuk mendaftar acara DINAMIK12.<br><br>
								<b class="question">Saya selalu gagal mendaftarkan akun sekolah DINAMIK12, kenapa?</b><br>
									Username untuk akun dibuat secara otomatis oleh sistem berdasarkan nama sekolah. Jika hal ini terjadi, ada kemungkinan sekolah atau alamat email yang anda masukkan sudah terdaftar.<br><br>
								<b class="question">Saya selalu gagal mendaftarkan akun umum DINAMIK12, kenapa?</b><br>
									Kemungkinan besar alamat email yang digunakan untuk mendaftar telah digunakan.<br><br>
								<b class="question">Saya adalah seorang siswa/i, apa yang harus saya lakukan agar bisa mendaftar lomba DINAMIK12?</b><br>
									Harap hubungi guru atau staff yang dapat mewakili sekolah untuk mendaftarkan akun sekolah, yang selanjutnya pendaftaran tim bisa melalui akun sekolah tersebut.<br><br>
								<b class="question">Saya adalah seorang guru/staf/kepala sekolah, apa yang harus saya lakukan agar bisa mendaftar lomba DINAMIK12?</b><br>
									Jika anda dapat mewakili sekolah, segera daftarkan akun sekolah sesuai dengan identitas sekolah yang diminta oleh form pendaftaran akun. Kemudian periksa kotak masuk email yang digunakan untuk mendapatkan akses masuk.<br><br>
								<b class="question">Saya lupa dengan username dan password akun saya, apa yang dapat saya lakukan?</b><br>
									Silahkan gunakan fitur lupa password, harap diingat bahwa fitur lupa password membutuhkan alamat email yang valid dan sudah terdaftar di dalam sistem.<br><br>
								<b class="question">Saya salah, kehilangan, atau tidak memiliki akses terhadap alamat email yang telah saya daftarkan, apa yang dapat saya lakukan?</b><br>
									Kesalahan tersebut bukan tanggung jawab kami, karena hal tersebut sudah tercantum di dalam syarat dan ketentuan penggunaan web DINAMIK12. Anda bisa menghubungi kami namun kami tidak menjamin permintaan anda dapat diproses.<br><br>
								<b class="question">Saya lupa dengan alamat email yang saya gunakan untuk akun saya, apa yang dapat saya lakukan?</b><br>
									Anda dapat menghubungi kami, namun kami tidak menjamin dapat menyelesaikan permintaan anda.<br><br>
								<b class="question">Bagaimana saya dapat mengubah password akun saya?</b><br>
									Setelah anda masuk, anda bisa membuka halaman profil akun untuk mengganti password akun anda.<br><br>
								<b class="question">Akun saya tidak dapat digunakan, saya mendapat pesan bahwa akun saya tidak diverifikasi, kenapa?</b><br>
									Kami selaku panitia menganggap bahwa akun anda tidak menggunakan informasi yang benar (seperti email tidak valid, nama sekolah yang tidak sesuai, dll), maka kami berhak untuk menon-aktifkan akun anda agar tidak mengganggu informasi lain yang ada di dalam sistem. Jika anda merasa hal ini adalah sebuah kesalahan, silahkan hubungi kami.<br><br>
							</li>
							<li><b>PEMBAYARAN</b><br><br>
								<b class="question">Dimana saya bisa melihat biaya pendaftaran?</b><br>
									Biaya pendaftaran untuk tiap lomba / acara sudah ada pada halaman <a href="<?php echo site_url('/lomba'); ?>" style="color: #ffa619;" target="_blank">Lomba</a> / <a href="<?php echo site_url('/acara'); ?>" style="color: #ffa619;" target="_blank">Acara</a>.<br><br>
								<b class="question">Saya sudah membayar dan mengunggah bukti pembayaran, kenapa status pendaftaran saya belum berubah?</b><br>
									Verifikasi pembayaran dilakukan secara manual oleh panitia, harap bersabar menunggu proses tersebut selesai.<br><br>
								<b class="question">Saya sudah membayar dan terverifikasi, apakah saya dapat mengubah atau menghapus keikutsertaan saya di acara/lomba tersebut dan meminta pengembalian dana?</b><br>
									Untuk saat ini tidak, namun untuk penghapusan keikutsertaan sudah dipastikan tidak bisa, karena pembayaran yang telah diverifikasi dianggap sebagai akhir proses pendaftaran.<br><br>
							</li>
							<li><b>ACARA</b><br><br>
								<b class="question">Bagaimana saya dapat mendaftar acara?</b><br>
									Masuk ke akun umum yang sudah terdaftar, akan ada tombol untuk mendaftar acara yang tersedia di DINAMIK12.<br><br>
								<b class="question">Saya tidak menemukan acara yang ingin saya daftarkan padahal acara/lomba tersebut ada di situs DINAMIK12, mengapa?</b><br>
									Bisa jadi acara tersebut sudah memenuhi kuota, atau telah ditutup pendaftarannya.<br><br>
								<b class="question">Apakah untuk mengikuti acara cukup dengan mendaftar dan mengirimkan bukti pembayaran di situs DINAMIK12?</b><br>
									Ya, kecuali untuk acara DINAMIK Star, ada ketentuan tambahan yang tersedia di dalam booklet acara tersebut, untuk booklet bisa dilihat di halaman info/unduhan atau halaman detail acara DINAMIK Star.<br><br>
							</li>
							<li><b>LOMBA</b><br><br>
								<b class="question">Bagaimana saya dapat mendaftar lomba?</b><br>
									Masuk dengan akun sekolah, disana akan ada tombol yang mengarahkan ke bagian pendaftaran tim.<br><br>
								<b class="question">Dimana saya dapat menemukan detail dan aturan perlombaan?</b><br>
									Di booklet masing-masing lomba, tersedia di halaman info/unduhan atau di halaman detail masing-masing lomba.<br><br>
								<b class="question">Berapakah jumlah peserta yang dibutuhkan untuk mendaftar perlombaan?</b><br>
									Setiap lomba memiliki kriteria masin g-masing untuk jumlah peserta dalam setiap tim, informasi tersebut dapat diperoleh dari booklet masing-masing lomba.<br><br>
								<b class="question">Apakah boleh mendaftar perlombaan suatu tim yang tidak memiliki pembimbing?</b><br>
									Ya, silahkan kosongkan pada bagian pembimbing saat mendaftarkan tim<br><br>
								<b class="question">Saya tidak menemukan lomba yang ingin saya daftarkan padahal acara/lomba tersebut ada di situs DINAMIK12, mengapa?</b><br>
									Ada kemungkinan lomba tersebut sudah ditutup pendaftarannya.<br><br>
								<b class="question">Saya memiliki pertanyaan terkait suatu lomba, kemanakah saya dapat menanyakannya?</b><br>
									Periksa booklet lomba terkait, di setiap booklet dicantumkan kontak penanggungjawab masing-masing lomba.<br><br>
								<b class="question">Apakah satu orang siswa dapat mengikuti lebih dari satu lomba?</b><br>
									Ya, selama lomba yang dia ikuti tidak memiliki jadwal lomba yang saling berhalangan/bentrok.<br><br>
							</li>
							<li><b>TIM</b><br><br>
								<b class="question">Kenapa saya tidak dapat masuk ke dalam akun tim?</b><br>
									Tim anda belum diverifikasi status pembayarannya, harap menunggu hingga proses verifikasi selesai. Untuk memeriksa status pembayaran, bisa dilihat di dalam akun sekolah.<br><br>
								<b class="question">Untuk apa fungsi akun tim?</b><br>
									Untuk lomba LCW, LDG, dan LCA, akun tim digunakan untuk mengirim link berkas lomba.  Selain lomba tersebut, akun tim digunakan untuk pendataan administrasi saja.<br><br>
								<b class="question">Bagaimana saya dapat masuk ke dalam akun tim?</b><br>
									Gunakan alamat email ketua dan password yang digunakan saat didaftarkan oleh akun sekolah.<br><br>
							</li>
							<li><b>LAINNYA</b><br><br>
								<b class="question">Bagaimana caranya mendapatkan file-file yang dibutuhkan untuk keperluan lomba DINAMIK 12?</b><br>
									Buka tab <a href="<?php echo site_url('/info/view/unduhan'); ?>" style="color: #ffa619;" target="_blank">Unduhan</a> pada halaman <a href="<?php echo site_url('/info'); ?>" style="color: #ffa619;" target="_blank">Info</a> atau download melalui dashboard tim.<br><br>
							</li>
						</ul>
					</div>
					
				</div>
			</div>

		</div>
	</div>
</div><!-- /.container -->