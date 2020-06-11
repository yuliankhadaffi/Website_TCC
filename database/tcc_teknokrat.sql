/*
SQLyog Enterprise v13.1.1 (64 bit)
MySQL - 10.4.6-MariaDB : Database - tcc_teknokrat
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tcc_teknokrat` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `tcc_teknokrat`;

/*Table structure for table `download` */

DROP TABLE IF EXISTS `download`;

CREATE TABLE `download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_file` varchar(100) NOT NULL,
  `cabang_lomba` varchar(30) NOT NULL,
  `link_file` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `download` */

LOCK TABLES `download` WRITE;

insert  into `download`(`id`,`nama_file`,`cabang_lomba`,`link_file`) values 
(1,'Peraturan Lomba Business IT Case','Business IT Case','aa'),
(2,'Peraturan Lomba Fotografi','Fotografi','bb'),
(3,'Peraturan Lomba Jaringan Komputer','Jaringan Komputer','cc'),
(4,'Peraturan Lomba LCT','Lomba Cepat Tepat','dd'),
(5,'Peraturan Lomba Presentasi','Slide Presentasi','ee'),
(6,'Peraturan Lomba Animasi','Animasi','ff'),
(7,'Peraturan Lomba Myob Accounting','MYOB Accounting','hh'),
(8,'Peraturan Lomba Word Processing','Word Processing','kk'),
(9,'Peraturan Lomba Programming','Basic Programming','rr'),
(10,'Peraturan Lomba E-Support','PUBG','kk'),
(11,'Peraturan Lomba Short Movie','Short Movie','fs'),
(12,'Peraturan Lomba Excel','Spreedsheet','jn'),
(13,'Peraturan Lomba Web Blog','Web Blog','zz'),
(14,'Peraturan Lomba Desain Grafis','Desain Grafis','ss');

UNLOCK TABLES;

/*Table structure for table `tbl_artikel` */

DROP TABLE IF EXISTS `tbl_artikel`;

CREATE TABLE `tbl_artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kategori` (`id_kategori`),
  CONSTRAINT `tbl_artikel_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tbl_kategori_artikel` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_artikel` */

LOCK TABLES `tbl_artikel` WRITE;

insert  into `tbl_artikel`(`id`,`judul`,`isi`,`tanggal`,`foto`,`id_kategori`) values 
(18,'Teknis Perlombaan Web Blog','<p><strong>Teknis Perlombaan Web Blog</strong></p><p>Jenis Perlombaan : Perorangan<br />Pelaksanaan Lomba : <strong>Rabu 4 Maret 2020</strong><br />Gambaran Umum : Peserta membuat sebuah web blog dengan platform WordPress, dengan memilih salah satu tema. Tema TCC 2020 terdiri dari:</p><ol><li><strong>&nbsp;Kemajuan Teknologi dan Pengaruhnya Terhadap Kehidupan Remaja</strong></li><li><strong>&nbsp;Dampak Positif dan Negatif Perkembangan Teknologi Bagi Remaja</strong></li><li><strong>&nbsp;Peran Pemuda Dalam Perkembangan Teknologi</strong></li></ol><p>&nbsp;<br />&nbsp; &nbsp; &nbsp;<strong>Tata tertib</strong></p><ul><li>Peserta memasuki Lab 1 A, selambat-lambatnya 15 menit sebelum perlombaan dimulai</li><li>Perlombaan di mulai 13:00 &ndash; 15:00 &nbsp;WIB</li><li>Durasi perlombaan berlangsung 120 menit</li><li>Tidak diberikan waktu tambahan jika terlambat</li><li>Tidak dizinkan menggunakan handphone, gadget selama perlombaan berlangsung</li><li>Tidak diperbolehkan membuka akun blog lain ataupun website lain. Apabila peserta ketahuan berbuat curang, maka akan otomatis akan di diskualifikasi dari lomba tersebut.</li><li>Peserta tidak di perbolehkan melakukan komunikasi dengan orang lain selama perlombaan</li><li>Peserta dilarang melakukan kecurangan dalam bentuk apapun</li><li>Pengumuman pemenang perlombaan akan diumumkan di akhri acara TCC 2020</li><li>jika terdapat masalah, kurang jelas, dan kesalahan teknis harap lapor ke panitia</li><li>Keputusan panitia mutlak dan tidak dapat di ganggu gugat</li></ul><p>&nbsp;</p><p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Teknis Perlombaan</strong></p><ul><li>Peserta harus membuat sebuah blog artikel sesuai dengan salah satu tema yang sudah ditentukan oleh panitia TCC 2020</li><li>Fasilitas web blog yang digunakan adalah WordPress</li><li>WordPress yang dipakai adalah Free bukan yang berlisensi/berbayar</li><li>Tidak menggunakan Plugin Yoast dan lainya yang bersifat berbayar</li><li>Peserta diperbolehkan membawa laptop/notebook masing-masing.</li><li>Pihak Teknokrat akan menyediakan fasilitas jaringan WIFI &amp; LAN</li><li>Peserta diperbolehkan menggunakan modem/tethring dari handphone&nbsp; masing - masing.</li><li>Artikel yang ditulis merupakan original text dari masing masing peserta</li><li>Desain layout dibuat dengan sebagus dan semenarik mungkin.</li></ul><p><strong>&nbsp;<br />&nbsp; &nbsp; &nbsp; &nbsp;Penilaian</strong></p><ol><li>Originalitas Artikel ( 30% )</li><li>Layout Blog ( 15%, terdapat menu / navigasi, fitur search, footer )</li><li>Kelengkapan Blog ( 20% ,tersedia halaman kontak, tentang saya, Privacy Policy)</li><li>Design Blog ( 25%, Pemilihan warna, penggunaan banner / header )</li><li>Responsive ( 10% )</li></ol><p>&nbsp;<br />Tata tertib dan teknis perlombaan bisa berubah sewaktu-waktu, tata tertib yang fix akan disampaikan pada saat <strong><em>Techincal Meeting.&nbsp;</em></strong></p>','2020-01-24','20200124-teknis-perlombaan-web-blog.png',3),
(19,'Teknis Perlombaan Fotografi','<p><strong>KRITERIA LOMBA FOTOGRAFI </strong></p><p>&nbsp;<strong>Tema :</strong></p><ol><li>Cinta Tanah Air Indonesia</li><li>Kerukunan Dalam Keberagaman</li><li>Ayo Bela Negaraku</li></ol><p><strong>Orisinalitas :</strong></p><p>Peserta menjamin bahwa foto merupakan karya sendiri bukan karya dari orang lain dan belum pernah dipublikasikan sebelumnya.</p><p><strong>Kriteria Penilaian lomba fotografi :</strong></p><ol><li>Pola pikir atau ide yang dimiliki peserta yang disalurkan melalui foto.</li><li>Kesesuaian karya dengan tema.</li><li>Keunikan karya foto.</li><li>Komposisi gambar, Warna, Tata letak objek dalam gambar (engel pengambilan).</li></ol><p><strong>KETENTUAN LOMBA FOTOGRAFI &nbsp;:</strong></p><ol><li>Tebuka untuk pelajar tingkat SMA, namun lomba ini&nbsp; tidak berlaku untuk panitia, kalangan&nbsp; mahasiswa, dan professional.</li><li>Setiap peserta dapat mengumpulkan 2 karya terbaiknya yaitu Foto Wajib &amp; Foto Khusus.</li><li>Foto Wajib : Pengambilan gambar dilaksanakan mulai dari Tanggal <strong><em>13 Januari s.d 3 Maret 2020</em></strong>, dan akan dilakukan penjurian tanggal <strong><em>4 Maret 2020.</em></strong></li><li>Foto Khusus : Pengambilan Gambar dilaksanakan di Lokasi Perlombaan, Yaitu di <strong>Universitas Teknokrat Indonesia.</strong></li><li>Karya yang di kumpulkan harus benar-benar asli, tidak boleh di edit dengan menggunakan aplikasi apapun, jika ketahuan mengedit dan terbukti&nbsp; gambar/karya tidak asli maka peserta akan didiskualifikasi.</li><li>Karya lomba harus merupakan karya sendiri dan belum pernah menang dalam lomba foto apapun.</li><li>Tidak boleh menggunakan kamera HP.</li><li>Karya tidak boleh mengandung unsur pornografi, SARA, sadisme atau hal-hal yang bersifat merendahkan atau melecehkan pihak lain.</li><li>Peserta wajib hadir setengah jam sebelum perlombaan dimulai.</li><li>Waktu perlombaan hanya berdurasi 2 jam (Untuk Foto Khusus).</li><li>Karya dikumpulkan dalam bentuk CD, dan menyertakan judul, keterangan foto (caption), tanggal pengambilan gambar, id foto dan nama peserta pada formulir yang sudah disediakan oleh panitia.</li><li>Keputusan dewan juri adalah mutlak dan tidak dapat diganggu gugat.</li></ol>','2020-01-26','20200126-teknis-perlombaan-fotografi.png',14),
(20,'Teknis Perlombaan Business IT Case','<p><em><strong>Business IT Case</strong></em></p><p>Jenis Perlombaan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Kelompok (â€‹<em>Team</em>â€‹)</p><p>Waktu Pendaftaran&nbsp; &nbsp; &nbsp; &nbsp; :&nbsp;7 Januari s.d 19 Februari 2020</p><p>Pembagian Soal&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Kamis, 20 Februari 2020</p><p>Technical Meeting&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Senin, 2 Maret 2020</p><p>Pelaksanaan Lomba&nbsp; &nbsp; &nbsp;: Rabu, 4 Maret 2020</p><p>WhatsApp&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Yusri Kusumayuda (085788959884)</p><p>&nbsp;</p><p><strong>Gambaran Umum</strong></p><p>Kompetisi ini ditujukan bagi siswa SMA/SMK/MA yang terdiri dari 3 orang dan berasal dari sekolah yang sama. Kompetisi ini menantang peserta untuk memecahkan kasus bisnis dengan memberikan solusi yang inovatif melalui pendekatan IT dalam bentuk presentasi kepada para juriâ€‹<em>.</em></p><p><strong>Tata Tertib Perlombaan</strong></p><p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Satu kelompok wajib terdiri dari tiga orang siswa/i dan satu guru pendamping.</p><p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peserta wajib datang 10 menit sebelum perlombaan dimulai.</p><p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seluruh anggota tim mempersiapkan â€‹<em>slide </em>â€‹presentasi yang sudah berisi solusi terhadap soal yang sudah diberikan oleh panitia. Presentasi hanya dilakukan oleh ketua tim.</p><p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Waktu presentasi 20 menit (sudah termasuk tanya jawab)</p><p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Pada saat tanya jawab dengan juri, semua anggota kelompok boleh menanggapi.</p><p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pembimbing dilarang membantu menanggapi, jika ketahuan membantu maka dilakukan pengurangan point (-25).</p><p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nilai maksimal 100 point.</p><p>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peserta perlombaan maupun pembimbing dilarang meninggalkan ruangan sebelum presentasi selesai tanpa alasan yang jelas/ logis, apabila melanggar maka dilakukan pengurangan point (-10).</p><p>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Keputusan juri mutlak, tidak dapat digangu gugat.</p><p>&nbsp;</p><p><strong>Teknis Perlombaan</strong></p><ol><li>Peserta diwajibkan memberikan solusi terhadap soal yang diberikan dengan membuat â€‹<em>slide</em>â€‹ presentasi menggunakan aplikasi â€‹<em>slide presentation </em>â€‹(â€‹<em>Microsoft</em> <em>Power Point/ Libre Impres/ WPS Presentation</em>â€‹) dengan format file â€‹<em>ppt</em>â€‹ atau â€‹<em>pptx</em>â€‹.</li><li>Soal akan diberikan kepada peserta&nbsp; via E-Mail ketua tim pada hari Kamis, 20 Februari 2020</li><li>&nbsp;File presentasi dikumpul paling lambat saat â€‹<em>Technical Meeting</em>â€‹.</li><li>Isi â€‹<em>slide </em>â€‹presentasi harus kreatif dan objektif (tidak plagiat).</li><li>Sumber data/ Referensi (jika perlu).</li></ol><p>&nbsp;</p><p><strong>Aspek Penilaian</strong></p><ol><li>Solusi atau pemecahan masalah terhadap soal yang diberikan.</li><li>Teknik presentasi.</li><li>Kemampuan menjawab pertanyaan.</li><li>Keindahan dan kerapihan â€‹<em>slide </em>â€‹presentasi.</li></ol>','2020-01-26','20200126-teknis-perlombaan-business-it-case.png',22),
(21,'Teknis Perlombaan Jaringan Komputer','<p><strong>Teknis Perlombaan Jaringan Komputer&nbsp;</strong></p><p>Jenis perlombaan &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Individu</p><p>Pelaksaan lomba &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 04 Maret 2020</p><p>Gambaran umum&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Jaringan Komputer (Peserta membuat pengkabelan, &amp; Melakukan Konfigurasi Mikrotik.</p><p>Teknis Pelaksanaan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; : Dilaksanakan pada saat Perlombaan.</p><p>&nbsp;</p><p><strong>Tata Tertib Peserta Perlombaan </strong></p><ol><li>Peserta memasuki ruangan Lab 4 GSG, selambat-lambatnya 15 menit sebelum perlombaan dimulai</li><li>Perlombaan dimulai pukul 13.00 WIB</li><li>Perlombaan berlangsung selama 120 menit</li><li>Tidak ada penambahan waktu untuk peserta yang datang terlambat</li><li>Setiap peserta wajib memakai seragam sekolah dan tanda pengenal peserta (Nametag)</li><li>Soal disediakan oleh panitia dan diberikan pada saat perlombaan</li><li>Tidak diizinkan untuk mengaktifkan handphone, gatget atau alat elektronik lainnya selama perlombaan berlangsung</li><li>Tidak diperbolehkan untuk berkomunikasi dengan peserta lain selama perlombaan berlangsung</li><li>Dilarang memasukkan flashdisk ke komputer, kecuali terdapat izin dari panitia dengan alasan yang jelas tanpa adanya kecurangan</li><li>Peserta dilarang melakukan kecurangan dalam bentuk apapun</li><li>Jika terdapat kecurangan dalam bentuk apapun peserta dianggap mengundurkan diri dari perlombaan</li><li>Pengumuman pemenang lomba akan diumumkan pada akhir acara</li><li>Jika terdapat hal yang kurang jelas atau terdapat kesalahan teknis segera melapor kepada panitia</li><li>Keputusan panitia mutlak dan tidak dapat diganggu gugat.</li></ol><p>&nbsp;</p><p><strong>Perincian Lembar Soal </strong></p><ol><li>Pembuatan kabel jaringan</li><li>Koneksi ke Server (Pengambilan soal dari server)</li><li>Share/kirim hasil ke server</li></ol><p><strong>Penilaian </strong></p><ol><li>Pembuatan kabel jaringan</li></ol><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;a.&nbsp; Susunan kabel</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;b.&nbsp; Kerapihan</p><p>&nbsp; &nbsp; &nbsp; &nbsp;2. Ketepatan soal yang didapat dari server (mikrotik)</p><p>&nbsp; &nbsp; &nbsp; &nbsp;3. Penyelesaian soal yang diberikan</p><p>&nbsp; &nbsp; &nbsp; &nbsp;4. Waktu yang dibutuhkan untuk mengerjakan soal</p><p>&nbsp;</p><p><strong>CO Jaringan Komputer </strong></p><ul><li>Feri Sigit Pratama (0858-3238-6979)</li><li>Bambang Satrio (0896-4837-9881)</li></ul>','2020-01-26','20200126-teknis-perlombaan-jaringan-komputer.png',12),
(22,'Teknis Perlombaan Lomba Cepat Tepat','<p><strong><em>Lomba Cepat Tepat</em></strong></p><p>&nbsp;</p><p>Jenis Perlombaan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Kelompok (<em>Team</em>)</p><p>Pelaksanaan Lomba&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 4&nbsp;Maret 2020</p><p>Tipe Perlombaan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Tim (3 Orang)</p><p>Gambaran Umum&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <em>Lomba Cepat Tepat</em></p><p>&nbsp;</p><p>Kompetisi ini ditujukan bagi siswa SMA/SMK/MA yang terdiri dari 3 orang dan berasal dari sekolah yang sama. Kompetisi ini menuntut peserta lomba untuk dapat menjawab pertanyaan yang akan diberikan seputar Teknologi dan Komputer secara cepat dan tepat.</p><p>&nbsp;</p><p><strong>Tata Tertib Perlombaan</strong></p><ol><li>Satu kelompok wajib terdiri dari tiga orang siswa/i dan satu guru pendamping.</li><li>Peserta wajib datang 10 menit sebelum perlombaan dimulai.</li><li>Peserta wajib membawa tanda bukti keikutsertaan dalam <strong>&ldquo;Lomba Cepat Tepat</strong> <strong>(LCT) Komputer&rdquo;.</strong></li><li>Peserta wajib menggunakan seragam sekolah masing-masing atau seragam team sekolah.</li><li>Peserta tidak diperkenankan membawa contekan dalam bentuk apapun.</li><li>Peserta dilarang membawa makanan dan minuman selama perlombaan berlangsung.</li><li>Peserta tidak boleh bertanya (untuk menjawab pertanyaan) kepada guru pendamping, audience atau dewan juri selama perlombaan berlangsung.</li><li><strong>Setelah menekan Bel, Peserta dapat menjawab pertanyaan jika telah ditunjuk/dipersilahkan oleh juri untuk menjawab. Bila langsung menjawab sebelum dipersilahkan oleh juri, maka point dikurangi -5 point.</strong></li><li>Guru pendamping maupun audience tidak diperkenankan memberitahu informasi apapun kepada peserta team &ldquo;<strong>DALAM BENTUK APAPUN&rdquo;</strong> Selama perlombaan berlangsung.</li><li>Peserta maupun guru pendamping yang melanggar peraturan yang sudah ditetapkan panitia akan di diskualifikasi dalam perlombaan.</li><li>Keputusan juri bersifat mutlak, tidak dapat digangu gugat dan panita beserta juri berhak merubah aturan jika memang diperlukan (masalah teknis yang bersifat diluar dugaan).</li><li>Peserta tidak diperkanankan membawa Smartphone, Tablet, Laptop atau PDA pada saat perlombaan berlangsung.</li></ol><p>&nbsp;</p><p>&nbsp;</p><p><strong>Teknis Perlombaan</strong></p><p>&nbsp;</p><p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Soal yang digunakan adalah seputar Teknologi dan Komputer.</p><p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Juri memiliki hak untuk menanyakan alasan dari jawaban peserta.</p><p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peserta perlombaan merupakan sebuah team yang terdiri dari 3 orang.</p><p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perlombaan terdiri dari 3 babak, yaitu babak Penyisihan, babak Semi-Final, dan babak Final.</p><p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pada babak Penyisihan terdapat 2 sesi :</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Sesi I </strong>bersifat berebut peserta diberikan<strong> 10 Pertanyaan</strong>, dengan diberikan<strong> batas waktu 5 detik </strong>untuk menjawab dengan cara menekan bel terlebih<strong> </strong>dahulu dan dipersilahkan oleh juri, jika tidak bisa menjawab maka pertanyaan tersebut akan diberikan oleh team lain. Dan tidak ada pengurangan skor bagi team yang tidak bisa menjawab. Team yang berhasil menjawab akan diberikan skor <strong>+20 point.</strong></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pada <strong>Sesi II</strong> terdapat <strong>4 amplop yang masing-masing amplop berisi 5</strong> <strong>pertanyaan. </strong>team yang mendapatkan skor tertinggi pada<strong> Sesi I </strong>akan<strong> </strong>diberikan kesempatan untuk memilih amplop terlebih dahulu, Peserta diberikan <strong>batas waktu 5 detik</strong> untuk menjawab pertanyaan. Jika peserta berhasil menjawab pertanyaan dengan benar maka akan mendapatkan skor <strong>+20 point, </strong>jika peserta<strong> salah </strong>atau<strong> tidak bisa </strong>menjawab pertanyaan yang<strong> </strong>diberikan maka akan dikurangi -<strong>10 point</strong> dan tidak berhak untuk menjawab ulang pertanyaan kembali. Peserta lain berhak untuk menjawab pertanyaan yg diberikan oleh juri jika peserta yang ditunjuk <strong>pertama kali</strong> gagal dalam menjawab pertanyaan atau tidak dapat menjawab pertanyaan, dengan cara menekan bel terlebih dahulu dan telah dipersilahkan oleh juri serta bersifat berebut, akan tetapi pengurangan point tetap berlaku. Apabila team lain memilih untuk tidak menjawab (tidak menekan bel) maka tidak ada pengurangan point.</p><p>&nbsp;</p><p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pada babak Penyisihan ini terdapat <strong>3 gelombang pertandingan</strong>, yang setiap gelombang terdapat <strong>9 team yang akan bertanding didalam 3 ruangan, 1</strong> <strong>ruangan berisi 3 team. </strong>Masing-masing gelombang akan di<strong> ambil 1 team </strong>dengan skor tertinggi dari kalkulasi skor sesi I dan II.<br />&nbsp;</p><p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peserta yang lolos dari babak penyisihan akan mengambil undian yang berisi nomor ruangan yang akan digunakan untuk bertanding pada babak Semi-Final. terdapat 1 Gelombang (3 ruangan) yang masing-masing berisi 3 team yang akan di pertandingkan dalam 1 ruangan.<br />&nbsp;</p><p>8.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pada babak Semi-Final terdapat dan 2 sesi yaitu <strong>Sesi I dan Sesi II</strong> peserta akan diberikan 10 pertanyaan yang besifat berebut, peserta dapat menjawab pertanyaan yang diberikan oleh juri setelah menekan bel terlebih dahulu. Peserta akan diberikan waktu <strong>5 detik</strong> untuk menjawab pertanyaan setelah menekan bel dan dipersilahkan oleh juri. Jika peserta berhasil menjawab pertanyaan dengan benar maka akan mendapatkan skor <strong>+20 point,</strong> jika peserta <strong>salah</strong> atau <strong>tidak</strong> <strong>bisa </strong>menjawab pertanyaan yang diberikan maka akan dikurangi -<strong>10 point </strong>dan<strong> </strong>tidak berhak untuk menjawab ulang pertanyaan kembali, peserta lain berhak untuk menjawab pertanyaan yg diberikan oleh juri dengan bersifat berebut, jika peserta yang ditunjuk <strong>pertama kali</strong> gagal dalam menjawab pertanyaan atau tidak dapat menjawab pertanyaan, akan tetapi pengurangan point tetap berlaku, apabila team lain memilih untuk tidak menjawab (tidak menekan bel) maka tidak ada pengurangan point.<br />&nbsp;</p><p>9.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peserta yang lolos pada babak Semi-Final didapatkan dari akumlasi skor dari sesi I dan Sesi II dan setiap ruangan akan diambil 1 team yang skornya tertinggi untuk masuk ke babak Final. <strong>Skor tertinggi kedua</strong> dari masing-masing ruangan akan dipertandingkan kembali dan akan <strong>diambil 1 team dengan skor tertinggi</strong> untuk mendapatkan <strong>kesempatan masuk di Babak Final</strong>.</p><p>&nbsp;</p><p>10.&nbsp;&nbsp;&nbsp; Pada babak Final terdapat <strong>4 team</strong> dan terdiri dari 2 sesi :</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pada <strong>Sesi I</strong> peserta akan diberikan 10 pertanyaan yang besifat berebut, peserta dapat menjawab pertanyaan yang diberikan oleh juri setelah menekan bel terlebih dahulu. Peserta akan diberikan waktu <strong>7 detik</strong> untuk menjawab pertanyaan setelah menekan bel dan dipersilahkan oleh juri. Jika peserta berhasil menjawab pertanyaan dengan benar maka akan mendapatkan skor <strong>+20 point,</strong> jika peserta <strong>salah</strong> atau <strong>tidak bisa</strong> menjawab pertanyaan yang diberikan maka akan dikurangi -<strong>10 point</strong> dan tidak berhak untuk menjawab ulang pertanyaan kembali, peserta lain berhak untuk menjawab pertanyaan yg diberikan oleh juri dengan bersifat berebut, jika peserta yang ditunjuk <strong>pertama kali</strong> gagal dalam menjawab pertanyaan atau tidak dapat menjawab pertanyaan, akan tetapi pengurangan point tetap berlaku, apabila team lain memilih untuk tidak menjawab (tidak menekan bel) maka tidak ada pengurangan point.</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pada <strong>Sesi II</strong> peserta akan diberikan 10 pertanyaan yang besifat berebut, peserta dapat menjawab pertanyaan yang diberikan oleh juri setelah menekan bel terlebih dahulu. Peserta akan diberikan waktu <strong>7 detik</strong> untuk menjawab pertanyaan setelah menekan bel dan dipersilahkan oleh juri. Jika peserta berhasil menjawab pertanyaan dengan benar maka akan mendapatkan skor <strong>+20 point,</strong> jika peserta <strong>salah</strong> atau <strong>tidak bisa</strong> menjawab pertanyaan yang diberikan maka akan dikurangi -<strong>20 point</strong> dan tidak berhak untuk menjawab ulang pertanyaan kembali, peserta lain berhak untuk menjawab pertanyaan yg diberikan oleh juri dengan bersifat berebut, jika peserta yang ditunjuk <strong>pertama kali</strong> gagal dalam menjawab pertanyaan atau tidak dapat menjawab pertanyaan, akan tetapi pengurangan point tetap berlaku, apabila team lain memilih untuk tidak menjawab (tidak menekan bel) maka tidak ada pengurangan point.</p>','2020-01-26','20200126-teknis-perlombaan-lomba-cepat-tepat.png',13),
(23,'Teknis Perlombaan Slide Presentasi','<p><strong>Teknis Perlombaan Power Point (<em>Slide Presentation</em>) </strong></p><p>&nbsp;</p><p>Jenisperlombaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Perorangan</p><p>Pelaksaanlomba&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: 4 Maret 2020</p><p>Gambaranumum&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : Power point (Menggunakan Office 2013 dan peserta merubah makalah menjadi slide presentasi)</p><p>Teknis Pelaksanaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Dilaksanakan pada saat Perlombaan.</p><p>&nbsp;</p><p>Tata Tertib Peserta Perlombaan</p><p>&nbsp;</p><ol><li>Peserta memasuki ruangan Lab 4 GSG , selambat-lambatnya 15 menit sebelum perlombaandimulai.</li><li>Perlombaan dimulai pukul &ldquo;&nbsp; 11.00 WIB&ldquo;.</li><li>Perlombaan berlangsung selama 120menit.</li><li>Tidak ada penambahan waktu untuk peserta yang datangterlambat.</li><li>Setiap peserta wajib membawa nametag.</li><li>Soal disediakan oleh panitia dan diberikan pada saat perlombaan.</li><li>Tidak di izinkan untuk mengaktifkan handphone, gatget atau alat elektronik lainnya selama perlombaan berlangsung.</li><li>Tidak diperbolehkan untuk berkomunikasi dengan peserta lain selama perlombaan berlangsung memasukkan flashdisk ke komputer, kecuali terdapat izin dari panitia dengan alasan yang jelas tanpa adanya kecurangan.</li><li>Peserta dilarang melakukan kecurangan dalam bentuk apapun.</li><li>Jika terdapat kecurangan dalam bentuk apapun peserta dianggap mengundurkan diridari perlombaan.</li><li>Pengumuman pemenang lomba akan diumumkan pada ...</li><li>Jika terdapat hal yang kurang jelas atau terdapat kesalahan teknis segeramelapor kepadapanitia.</li><li>Keputusan panitia mutlak dan tidak dapat diganggugugat.</li></ol><p>&nbsp;</p><p>Ketentuan</p><ol><li>Menggunakan ukuran paper A4</li><li>Menggunakan orientasi landscape</li></ol><p>&nbsp;</p><p>Contact Person:</p><p><strong>&nbsp; &nbsp;Ketut Risma : 0896-2864-280</strong></p>','2020-01-26','20200126-teknis-perlombaan-slide-presentasi.PNG',21),
(24,'Teknis Perlombaan Animasi','<p><strong>Teknik Perlombaan&nbsp;&nbsp;Animasi</strong></p><p>Tema : &nbsp;</p><ul><li>Cinta Tanah Air Indonesia</li><li>Kerukunan Dalam Keberagaman</li><li>Ayo Bela Negaraku</li></ul><p>&nbsp;</p><p><strong>Tata Tertib Perlombaan :</strong><br />&nbsp;</p><p>Dalam pembuatan animasi:</p><p>&Oslash;&nbsp; Animasi dibuat oleh peserta lomba, bukan pihak dari luar</p><p>&Oslash;&nbsp; Jika diketahui terdapat kecurangan, maka peserta akan di anggap mengundurkan diri /diskualifikasi</p><p>&Oslash;&nbsp; Animasi dikumpul paling lambat pukul 23.00 tanggal 1 maret 2020</p><p>Saat perlombaan :</p><p>&Oslash;&nbsp; Peserta menghadiri acara TCC 2020, yang bertempat di &ndash;</p><p>&Oslash;&nbsp; Animasi akan ditayangkan didepan dewan juri dan peserta lainnya</p><p>&Oslash;&nbsp; Peserta akan mempresentasikan hasil animasi yang telah dibuat</p><p>&Oslash;&nbsp; Pengumuman perlombaan akan diumumkan di akhir acara TCC 2020</p><p>&Oslash;&nbsp; Keputusan panitia dan juri mutlak dan tidak dapat di ganggu gugat</p><p>&nbsp;</p><p>Teknik Perlombaan :</p><ul><li>Animasi sudah dibuat sebelum acara TCC 2020</li><li>Tema animasi bisa dipilih dari tema yang disediakan</li><li>Animasi berupa Film Animasi bukan Slide Animasi</li><li>Animasi dibuat oleh team, maksimal 3 orang dalam 1 team</li><li>Animasi belum pernah diikut sertakan dalam perlombaan manapun</li><li>Animasi berupa 2 Dimensi atau 3 Dimensi</li><li>Durasi 1-3 menit</li><li>Tidak melanggar hak cipta, baik dari objek, karakter ataupun suara yang akan digunakan pada film animasi</li><li>Tidak mengandung unsur pornografi dan sara</li><li>Setiap peserta hanya diperbolehkan mengirim 1 karya</li><li>Dalam Credit title disertakan foto dokumentasi dalam pembuatan animasi tersebut</li><li>Karya diunggah ke Youtobe dengan resolusi minimal 720p x 480p dengan format judul :</li><li>namapeserta_namasekolah_Animasi TCC 2020, wajib menambahkan hashtag #animasitcc2020 pada akhir judul (tanpa spasi)</li><li>Animasi akan ditampilkan dan dipresentasikan saat acara TCC 2020</li><li>&nbsp;</li></ul><p>Penilaian :</p><ul><li>Alur cerita</li><li>Kesesuaian dengan tema</li><li>Memenuhi durasi yang sudah ditentukan</li><li>Orisinalitas animasi yang di buat (objek, karakter dan audio)</li><li>Teknik (modeling, lighting, motion, dll)</li><li>Pesan cerita</li></ul>','2020-01-26','20200126-teknis-perlombaan-animasi.png',16),
(25,'Teknis Perlombaan Myob Accounting','<p><strong>Teknis Perlombaan MYOB Accounting</strong></p><p><strong>Gambaran Umum&nbsp;&nbsp;&nbsp;&nbsp; : </strong>MYOB (Perlombaan akuntansi yang terdiri dari mengimput data transaksi akuntansi, melakukan pembukuan, serta menampilkan laporan keuangan dengan menggunakan <strong><em>MYOB Accounting V.19</em></strong>)</p><p><strong>Jenis Perlombaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong> Perorangan (Individu)</p><p><strong>Teknis Pelaksanaan&nbsp; :</strong> Dilaksanakan pada saat perlombaan</p><p>&nbsp;</p><p><strong>Tata Tertib&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; :</strong></p><ol><li>Peserta wajib hadir 30 menit sebelum lomba dimulai.</li><li>Peserta diwajibkan memakai seragam sekolah dan nametag.</li><li>Tidak diperkenankan berkomunikasi dengan peserta lain saat perlombaan berlangsung.</li><li>Jika peserta mengalami gangguan operasional atau ada pertanyaan, silahkan menggangkat tangan dan memberitahu juri atau pengawas.</li><li>Penggunaan media tambahan (Flashdisk, Hardisk Eksternal, Handphone) dan modul atau buku panduan tidak diperkenankan dibawa masuk ruangan perlombaan.</li><li>Tidak ada penambahan waktu bagi peserta yang terlambat.</li><li>Soal diberikan oleh panitia pada saat perlombaan.</li><li>Peserta yang kedapatan melakukan kecurangan dan melakukan pelanggaran akan secara otomatis di diskualifikasi.</li><li>Hasil penilain juri bersifat mutlak dan tidak bisa diganggu gugat.</li></ol><p>&nbsp;</p><p><strong>Perincian Lembar Soal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong></p><ol><li>Company Profile</li><li>Bagan Akun</li><li>Card File</li><li>Inventory</li><li>Transaksi</li></ol><p>&nbsp;</p><p><strong>Penilaian&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong></p><ol><li>Kelengkapan</li><li>Kecepatan</li><li>Keakuratan</li></ol>','2020-01-26','20200126-teknis-perlombaan-myob-accounting.png',19),
(26,'Teknis Perlombaan Word Processing ','<p><strong>Peraturan Lomba Word Processing </strong></p><p>Jenis Perlombaan&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Perorangan</p><p>Pelaksanaan Perlombaan : 4 Maret 2020</p><p>&nbsp;</p><p>Gambaran Umum&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : <em>Word Processing</em> (Peserta mengerjakan Indentasi, Kolom&nbsp;&nbsp; Koran, Table dan Surat Massal) Standar Kompetensi</p><p>Teknik&nbsp; Pelaksanaan&nbsp; &nbsp; &nbsp;: Dilaksanankan Saat Perlombaan&nbsp;</p><p>&nbsp;</p><p>Tata Tertib Peserta Perlombaan</p><p>&nbsp;</p><ol><li>Setiap peserta diberikan waktu 100 Menit untuk mengerjakan soal, dan tidak ada tambahan waktu untuk peserta yang terlambat.</li><li>Perlombaan dimulai pukul 11.00 WIB</li><li>Peserta memasuki ruangan Lab 1 GSG, peserta wajib hadir 10 menit sebelum acara perlombaan dimulai.</li><li>Setiap peserta diwajibkan memakai seragam sekolah dan nametag.</li><li>Soal disediakan oleh panita &amp; di berikan pada saat perlombaan.</li><li>Tidak diizinkan untuk mengaktifkan handphone, gadget ataupun alat elektronik lainnya selama perlombaan dimulai.</li><li>Tidak diperbolehkan berkomunikasi antar peserta.</li><li>Jika terjadi kesalahan atau kerusakan pada komputer silakan hubungi panitia.</li><li>Tidak boleh melakukan kecurangan dan bekerja sama, jika diketahui adanya kecurangan dalam bentuk apapun, maka peserta akan langsung didiskualifikasi.</li><li>Dilarang memasukkan flasdisk ke komputer, kecuali diizinkan oleh panitia.</li><li>Tidak boleh membuka file lain selain lembar word yang sedang dikerjakan.</li><li>Hasil pengerjaan dikumpul ke panitia perlombaan.</li><li>Keputusan juri mutlak, tidak dapat di ganggu gugat.</li><li>Pengumuman pemenang lomba akan di umumkan pada akhir acara.</li><li>Jika kurang jelas ataupun terdapat kesalahan teknis segera lapor kepanitia.</li><li>Peraturan dan tata tertib yang ada tidak dapat diubah.</li></ol><p>&nbsp;</p><p><strong><em>Perincian Lembar Soal :</em></strong><em> </em></p><ol><li>Pengetikan Identasi</li><li>Pengetikan Kolom</li><li>Pengetikan Tabel</li><li>Surat Massal</li><li>Feature</li><li>Insert picture</li><li>Insert word art</li><li>Insert Drop Cap</li></ol><p>&nbsp;</p><p><strong><em>Penilian:</em></strong><em> </em></p><p>Bentuk Pengetikan Identasi</p><ol><li>Ketepatan bentuk</li><li>Total naskah yang diketik</li><li>Total kesalahan ketik</li><li>Format</li><li>Margin</li><li>Ukuran kertas</li><li>Jenis huruf</li><li>Ukuran huruf</li><li>Jarak spasi</li><li>Efek percetakan</li><li>Perataan Teks</li><li>Header/Footer</li></ol><p>&nbsp;</p><p>Bentuk Pengetikan Kolom</p><ol><li>Ketepatan bentuk</li><li>otal naskah yang diketik</li><li>Total kesalahan ketik</li><li>Edit</li><li>Mencari dan menganti kata</li><li>Memindahkan paragraph</li></ol><p>&nbsp;</p><p>Bentuk Pengetikan Tabel</p><ol><li>Ketepatan bentuk</li><li>Jumlah kolom</li><li>Jumkah baris</li><li>Jumlah record yang diketik</li><li>Formula</li><li>Format tabel</li><li>Border</li><li>Shading</li><li>Lebar kolom</li><li>Tinggi baris</li><li>Penggabungan sel</li><li>Perataan teks</li></ol><p>&nbsp;</p><p>Surat Massal</p><ol><li>Ketepatan bentuk</li><li>Total naskah yang diketik</li><li>Total kesalahan ketik</li><li>Percetakan ke dokumen</li><li>Validasi data</li><li>Jumlah variabel</li><li>Jumlah record&nbsp;</li></ol><p>&nbsp;</p><p>Feature</p><ol><li>Insert picture</li><li>Insert word art</li><li>Insert Drop Cap</li></ol>','2020-01-26','20200126-teknis-perlombaan-word-processing-.png',18),
(27,'Teknis Perlombaan Basic Programming','<p><strong><em>Peraturan Lomba Basic Programming</em></strong></p><p>&nbsp;</p><p>Jenis perlombaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Individu</p><p>Pelaksaan lomba&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 4 Maret 2020</p><p>Gambaran umum&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Menyelesaikan kasus pemrograman dengan bahasa pemrograman C/C++/C#</p><p>Teknis Pelaksanaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Dilaksanakan pada saat Perlombaan.</p><p>&nbsp;</p><p><strong>Tata Tertib Peserta Perlombaan</strong></p><ol><li>Peserta memasuki ruangan Lab 3 GSG, selambat-lambatnya 15 menit sebelum perlombaan dimulai</li><li>Perlombaan dimulai pukul 11.00 WIB</li><li>Perlombaan berlangsung selama 120 menit</li><li>Tidak ada penambahan waktu untuk peserta yang dating terlambat</li><li>Setiap peserta wajib memakai seragam sekolah dan tanda pengenal peserta (Nametag)</li><li>Soal disediakan oleh panitia dan diberikan pada saat perlombaan</li><li>Tidak diizinkan untuk mengaktifkan handphone, gatget atau alat elektronik lainnya selama perlombaan berlangsung</li><li>Tidak diperbolehkan untuk berkomunikasi dengan peserta lain selama perlombaan berlangsung</li><li>Dilarang memasukkan flashdisk kekomputer, kecuali terdapat izin dari panitia dengan alasan yang jelas tanpa adanya kecurangan</li><li>Peserta dilarang melakukan kecurangan dalam bentuk apapun</li><li>Jika terdapat kecurangan dalam bentuk apapun peserta dianggap mengundurkan diri dari perlombaan</li><li>Pengumuman pemenang lomba akan diumumkan pada akhir acara</li><li>Jika terdapat hal yang kurang jelas atau terdapat kesalahan teknis segera melapor kepada panitia</li><li>Keputusan panitia mutlak dan tidak dapat diganggu gugat.</li></ol><p>&nbsp;</p><p><strong>Perincian Lembar Soal</strong></p><p>Soal yang diberikan merupakan soal-soal algoritmis yang disajikan dalam Bahasa Indonesia. Setiap soal memiliki komponen-komponen sebagai berikut:&nbsp;</p><ul><li>Deskripsi; berisi pengantar dari permasalahan dalam suatu soal</li><li>Format Masukan; menyatakan spesifikasi masukan dari soal&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li><li>Format Keluaran; menyatakan spesifikasi keluaran dari soal</li><li>Contoh Masukan dan Keluaran; berisi satu atau lebih contoh masukan dan keluaran yang bersesuaian</li></ul><p><strong>Penilaian</strong></p><ul><li>Algoritma</li><li>Kerapihan Kode</li><li>Output Program</li></ul><p>&nbsp;</p><p><strong>Co Basic Programming</strong></p><p>&nbsp; &nbsp; &nbsp;Afifudin (0853-8432-4575)</p><p>&nbsp; &nbsp; &nbsp;Maulana (0858-3282-2988)</p>','2020-01-26','20200126-teknis-perlombaan-basic-programming.png',10),
(28,'Teknis Perlombaan E-Support (PUBG)','<p><strong><em>Peraturan Lomba Pemrograman</em></strong></p><p>Jenis perlombaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : PUBG E-SPORT</p><p>Pelaksaan lomba&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 4 Maret 2020</p><p>Gambaran umum&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Memainkan game pubg mobile menggunakan android dalam 4 map (erangel, Miramar, sanhok, vikendi )</p><p>Teknis Pelaksanaan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Dilaksanakan pada saat Perlombaan.</p><p>&nbsp;</p><p><strong>Tata Tertib Peserta Perlombaan</strong></p><ol><li>Peserta sudah berada di gelanggang olahraga, selambat-lambatnya 15 menit sebelum perlombaan dimulai</li><li>Perlombaan dimulai pukul 09.00 WIB</li><li>Perlombaan berlangsung sesuai waktu permainan</li><li>Tidak ada penambahan waktu untuk peserta yang datang terlambat</li><li>Setiap peserta wajib memakai seragam sekolah dan tanda pengenal peserta (Nametag)</li><li>Membawa Android dan Headset masing-masing peserta / tim</li><li>Boleh membawa terminal</li><li>Panitia tidak menyediakan jaringan Internet</li><li>Tidak diizinkan menggunakan aplikasi illegal (cheat)</li><li>Diperbolehkan menggunakan aplikasi GFX tools</li><li>Tidak diizinkan menggunakan alat tambahan, seperti L1/R1</li><li>Layar android maksimal 6,4 in (diatas itu tidak diperbolehkan)</li><li>Dilarang membuat kegaduhan</li><li>Tidak diperbolehkan untuk berkomunikasi dengan peserta lain selama perlombaan berlangsung</li><li>Peserta dilarang melakukan kecurangan dalam bentuk apapun</li><li>Jika terdapat kecurangan dalam bentuk apapun peserta dianggap mengundurkan diri dari perlombaan</li><li>Pengumuman pemenang lomba akan diumumkan pada akhir acara</li><li>Jika terdapat hal yang kurang jelas atau terdapat kesalahan teknis segera melapor kepada panitia</li><li>Keputusan panitia mutlak dan tidak dapat diganggu gugat.</li></ol><p>&nbsp;</p><p><strong>Perincian Perlombaan</strong></p><p>Game yang dimainkan akan dilaksanakan dalam 4 map, yaitu:&nbsp;</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ERANGEL</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MIRAMAR</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SANHOK</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VIKENDI</p><p>Setiap selesai 1 map , diberi jeda istirahat Selama 15 menit ( kecuali waktu Ishoma )</p><p><strong>Penilaian Poin </strong></p><ul><li>Tim WWCD : 20 Poin</li><li>Peringkat 2 : 15 Poin</li><li>Peringkat 3 : 10 Poin</li><li>Peringkat 4 : 5 Poin</li><li>Peringkat 5-16 : 1 Poin</li><li>Per Kill : 1 Poin</li></ul>','2020-01-26','20200126-teknis-perlombaan-e-support-(pubg).png',23),
(29,'Teknis Perlombaan Film Pendek (Short Movie)','<p><strong>TEKNIS PERLOMBAAN </strong><strong>SHORTMOVIE</strong></p><p><strong>Jenis Perlombaan</strong> : Team</p><p><strong>Pelaksaan Lomba</strong> : Rabu,4&nbsp;Maret 2020</p><p>&nbsp;</p><p><strong>Gambaran umum&nbsp;</strong> &nbsp; : film pendek berdurasi &plusmn; 7 &ndash; 10 menit. yang bertemakan enabling smart generation through IT</p><p><strong>Teknis Pelaksanaan</strong> : Dilaksanakan pada saat Perlombaan.</p><p>&nbsp;</p><p><strong>Tata Tertib Peserta Perlombaan</strong></p><ol><li>karya berhubungan dengan tema</li><li>durasi film 7 &ndash; 10 menit sudah termasuk opening dan credit tittle.</li><li>penggunaan bahasa daerah/lokal/asing wajib menyertakan subtittle</li><li>karya tidak boleh mengandung unsur SARA (Suku, Agama, Ras, dan Antargolongan), tidak &nbsp;boleh mengandung adegan percintaan yang berlebihan,adegan berdarah dan adegan kekerasan yang berlebihan</li><li>Karya dikirimkan dalam bentuk cakram flashdisk, DVD/VCD dengan format MP4,AVI,MOV</li><li>karya belum pernah di lombakan dalam kompetisi serupa</li><li>Hak cipta karya milik peserta. Khusus untuk kepentingan publikasi, penyelenggara dapat menggunakan karya (sebagian/utuh) untuk ditampilkan di website teknokrat.ac.id sedangkan untuk kepentingan lainnya akan dibicarakan terpisah.</li><li>Pada saat pemutaran film peserta wajib mengirimkan satu anggotanya untuk melakukan presentasi sebelum film diputar</li><li>Presentasi diberi waktu maksimal hanya 1 menit</li><li>Semua hal yang berkaitan dengan hak cipta yang terkandung difilm merupakan tanggung jawab peserta</li><li>Keputusan juri adalah mutlak, tidak dapat diganggu gugat. Jika dikemudian hari didapatkan bukti bahwa karya pemenang diragukan keasliannya, maka penyelenggara berhak membatalkan dan menarik penghargaan yang sudah diberikan.</li><li>Setiap sekolah hanya bisa mengirimkan 1 karya.</li></ol><p>&nbsp;</p><p><strong>Teknik Pemutaran</strong></p><ol><li>Pemutaran film dilaksanakan pada hari Kamis,5 Maret 2020 bertempat di Indoor/aula Perguruan Tinggi Teknokrat.</li><li>Pemutaran film dilaksanakan setelah acara pembukaan</li><li>Film akan diputar secara acak berdasarkan keputusan panitia.</li><li>Sebelum film diputar 1 peserta wajib mewakili semua crew untuk mempresentasikan filmnya selama satu menit.</li><li>Materi yang dipaparkan pada saat presentasi hanya intisari film dilarang mengandung</li><li>spoiler.</li></ol>','2020-01-26','20200126-teknis-perlombaan-film-pendek-(short-movie).png',17),
(30,'Teknis Perlombaan Spreadsheet ','<p><strong>TEKNIS PERLOMBAAN SPREADSHEET</strong></p><p><strong>Jenis Perlombaan</strong> : Perorangan(individu)</p><p><strong>Pelaksaan Lomba</strong> : Rabu,4&nbsp;Maret 2020</p><p><strong>Gambaran umum</strong> : Peserta mengerjakan soal formula/rumus, <em>sortir</em> (pengurutan data), serta grafik menggunkan Office 2016. (Standar Uji Kompetensi).</p><p><strong>Teknis Pelaksanaan </strong>: Dilaksanakan pada saat Perlombaan.</p><p>&nbsp;</p><p><strong>Tata Tertib Peserta Perlombaan</strong></p><ol><li>Peserta memasuki Lab 2 GSG , selambat-lambatnya 15 menit sebelum perlombaan dimulai</li><li>Perlombaan dimulai pukul 11:00-13:00 WIB</li><li>Perlombaan berlangsung selama 120 menit</li><li>Tidak diberikan waktu tambahan jika terlambat</li><li>Tidak diizinkan untuk mengaktifkan handphone, gatget atau alat elektronik lainnya selama perlombaan berlangsung</li><li>Tidak diperbolehkan untuk berkomunikasi dengan peserta lain selama perlombaan berlangsung</li><li>Dilarang memasukkan flashdisk ke komputer</li><li>Peserta dilarang melakukan kecurangan dalam bentuk apapun</li><li>Pengumuman pemenang lomba akan diumumkan pada akhir acara</li><li>Jika terdapat hal yang kurang jelas atau terdapat kesalahan teknis segera melapor kepada panitia</li><li>Keputusan juri bersifat mutlak&nbsp; da tidak dapat di ganggu gugat.</li></ol><p>&nbsp;</p><p><strong>Perincian Lembar Soal</strong></p><ol><li>Lembar Laporan</li><li>&nbsp;Lembar pangkalan data</li></ol><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&nbsp; &nbsp;Sortir</p><p>&nbsp; &nbsp; &nbsp; &nbsp;3.&nbsp;&nbsp;Grafik</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&nbsp; &nbsp;Tipe Pie</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -&nbsp;&nbsp;&nbsp;Grafik sesuaikan dengan soal<br />&nbsp;</p><p>&nbsp; &nbsp; &nbsp; &nbsp;4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Insert feature</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Gambar</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; &nbsp;Word art</p><p>&nbsp;</p><p><strong>Aspek Penilaian </strong></p><ol><li><strong>&nbsp;</strong><strong>Laporan</strong></li></ol><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;a.&nbsp; Kerangka table</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1.&nbsp;&nbsp;&nbsp;Jumlah kolom</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.&nbsp;&nbsp;&nbsp;Jumlah baris</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Data input</p><p><strong>&nbsp; &nbsp; &nbsp; </strong>2.&nbsp;&nbsp;&nbsp;&nbsp;Formula/Rumus</p><p>&nbsp; &nbsp; &nbsp; 3.&nbsp;&nbsp;&nbsp;&nbsp;Pangkalan data</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;-&nbsp; Sortir</p><p><strong>&nbsp; &nbsp; &nbsp; </strong>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Grafik</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.&nbsp;&nbsp;Tipe Pie</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.&nbsp; Grafik sesuaikan dengan soal<br />&nbsp;</p><p><strong>&nbsp; &nbsp; &nbsp; 5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong>Insert feature</strong></p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1.&nbsp;Gambar</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2.&nbsp;&nbsp;Word art</p><p>&nbsp;</p><p><strong>CO Spreadsheet</strong></p><p>&nbsp; &nbsp;Dinda (0896-7312-2842)</p>','2020-01-26','20200126-teknis-perlombaan-spreadsheet-.png',20),
(31,'Teknis Perlombaan Desain Grafis','<p><strong>Teknis Perlombaan Desain Grafis</strong></p><p>Jenis Lomba &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Perorangan</p><p>Pelaksanaan Lomba &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp; Rabu, 04 Maret 2020</p><p>Gambaran umum &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Peserta membuat desain produk makanan (Product Packaging), dimana peserta di tuntut untuk membuat kemasan produk dengan bahan dari panitia dan waktu yang di tentukan.</p><p>&nbsp;</p><p><strong>Tata Tertib </strong></p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peserta memasuki Lab 1 A, Selambat-lambatnya 15 menit sebelum perlombaan dimulai</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Perlombaan dimulai 11:00 &ndash; 13:00 WIB</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Durasi perlombaan 120 Menit</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tidak diberikan waktu tambahan jika terlambat</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tidak di izinkan mengaktifkan handphone, gadget atau sejenisnya selama perlombaan berlangsung</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tidak boleh menggunakan internet selama perlombaan berlangsung</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peserta tidak diperbolehkan melakukan komunikasi dengan peserta lain selama perlombaan</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peserta dilarang melakukan kecurangan dalam bentuk apapun</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Pengumuman pemenang lomba, akan diumumkan di akhir acara TCC 2020</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jika terdapat masalah, kurang jelas, atau kesalahan teknis harap segera lapor kepanitia</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Keputusan juri bersifat mutlak dan tidak dapat di ganggu gugat</p><p>&nbsp;</p><p><strong>Teknis Perlombaan </strong></p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peserta harus membuat desain produk makanan&nbsp; (Packaging Makanan) sesuai dengan tema yang sudah di tentukan oleh panitia TCC 2020</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Panitia akan menyediakan beberapa bahan desain yang dapat dipergunakan, boleh membuat sendiri tapi tidak diperkenankan menggunakan internet untuk mencari bahan</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Karya buatan sendiri dan belum pernah di publikasikan dimanapun</p><p><strong>Penilaian </strong></p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50% Desain kreatifitas</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 30% Kesesuaian dengan tema</p><p>&middot;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 20% Kelengkapan unsur</p><p><strong>CO Perlombaan</strong></p>','2020-01-26','20200126-teknis-perlombaan-desain-grafis.png',15);

UNLOCK TABLES;

/*Table structure for table `tbl_bukutamu` */

DROP TABLE IF EXISTS `tbl_bukutamu`;

CREATE TABLE `tbl_bukutamu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(80) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `isi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_bukutamu` */

LOCK TABLES `tbl_bukutamu` WRITE;

UNLOCK TABLES;

/*Table structure for table `tbl_ekskul` */

DROP TABLE IF EXISTS `tbl_ekskul`;

CREATE TABLE `tbl_ekskul` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cabanglomba` varchar(50) DEFAULT NULL,
  `tanggungjawab` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pembina` (`tanggungjawab`),
  CONSTRAINT `tbl_ekskul_ibfk_1` FOREIGN KEY (`tanggungjawab`) REFERENCES `tbl_guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_ekskul` */

LOCK TABLES `tbl_ekskul` WRITE;

insert  into `tbl_ekskul`(`id`,`cabanglomba`,`tanggungjawab`) values 
(1,'Videografi',NULL),
(2,'Fotografi',NULL);

UNLOCK TABLES;

/*Table structure for table `tbl_guru` */

DROP TABLE IF EXISTS `tbl_guru`;

CREATE TABLE `tbl_guru` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT NULL,
  `pjlomba` varchar(50) DEFAULT NULL,
  `biaya` varchar(50) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_guru` */

LOCK TABLES `tbl_guru` WRITE;

insert  into `tbl_guru`(`id`,`nama`,`jenis_kelamin`,`no_hp`,`pjlomba`,`biaya`,`foto`) values 
(17,'a','L','082289700847','Web Blog','Rp 85.000','.png'),
(19,'b','L','0853-8432-45','Basic Programming','Rp 85.000','afifudin.png'),
(20,'c','L','0858-3238-69','Jaringan Komputer','Rp 85.000','feri-sigit-pratama.png'),
(21,'d','P','082269314321','Myob Accounting','Rp 85.000','salsa-safira.png'),
(22,'e','L','089526104828','Word Processing','Rp 85.000','fahri-hanif.png'),
(23,'f','P','0896-7312-28','Spreadsheet ','Rp 85.000','dinda.png'),
(24,'g','L','0896-2864-28','Presentation Aplication','Rp 85.000','ketut-risma.png'),
(25,'h','L','085788959884','Bussiness IT Case ','Rp 130.000','yusri-kusumayuda-.png'),
(26,'i','P','082371960099','Desain Grafis','Rp 85.000','design-grafis.png'),
(27,'j','L','089633407518',' Animasi ','Rp 130.000','jihad.png'),
(28,'j','L','085841756305','Photograpy ','Rp 130.000','afrizal.png'),
(29,'k','L','081379003324','Short Movie ','Rp 130.000','vido-andri.png'),
(30,'l','P','085858727933','Lomba Cepat Tepat Komputer (LCT) ','Rp 130.000','ratih-fidiawati.png'),
(31,'m','L','082385517988','E-SPORT (PUBG)','Rp 130.000','abdul-haqqi.png');

UNLOCK TABLES;

/*Table structure for table `tbl_jurusan` */

DROP TABLE IF EXISTS `tbl_jurusan`;

CREATE TABLE `tbl_jurusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kompetisi` varchar(30) DEFAULT NULL,
  `ka_prodi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tbl_jurusan_ibfk_1` (`ka_prodi`),
  CONSTRAINT `tbl_jurusan_ibfk_1` FOREIGN KEY (`ka_prodi`) REFERENCES `tbl_guru` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_jurusan` */

LOCK TABLES `tbl_jurusan` WRITE;

insert  into `tbl_jurusan`(`id`,`nama_kompetisi`,`ka_prodi`) values 
(6,'Web Blog',NULL),
(7,'ILMU PENGETAHUAN ALAM',NULL);

UNLOCK TABLES;

/*Table structure for table `tbl_kategori_artikel` */

DROP TABLE IF EXISTS `tbl_kategori_artikel`;

CREATE TABLE `tbl_kategori_artikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_kategori_artikel` */

LOCK TABLES `tbl_kategori_artikel` WRITE;

insert  into `tbl_kategori_artikel`(`id`,`nama_kategori`) values 
(3,'Web Blog'),
(10,'Basic Programming'),
(12,'Jaringan Komputer '),
(13,'Lomba Cepat Tepat'),
(14,'Fotografi '),
(15,'Desain Grafis'),
(16,'Animasi'),
(17,'Short Movie'),
(18,'Word Processing'),
(19,'MYOB Accounting'),
(20,'Spreadsheet '),
(21,'Power Point'),
(22,'Business IT Case'),
(23,'E-Support (PUBG)');

UNLOCK TABLES;

/*Table structure for table `tbl_pengguna` */

DROP TABLE IF EXISTS `tbl_pengguna`;

CREATE TABLE `tbl_pengguna` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_pengguna` */

LOCK TABLES `tbl_pengguna` WRITE;

insert  into `tbl_pengguna`(`id`,`nama`,`username`,`password`,`foto`) values 
(3,'Administrator','admin','$2y$10$9uAKnax9/7HoMVtMFWDUEe6GhtWdq5SIn75AWwHnYboKctXCfybVG','administrator.jpg');

UNLOCK TABLES;

/*Table structure for table `tbl_siswa` */

DROP TABLE IF EXISTS `tbl_siswa`;

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) DEFAULT NULL,
  `ruang` varchar(50) DEFAULT NULL,
  `jam` varchar(20) DEFAULT NULL,
  `biaya` varchar(20) DEFAULT NULL,
  `foto` varchar(120) DEFAULT NULL,
  `id_kompetisi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_kompetisi` (`id_kompetisi`),
  CONSTRAINT `tbl_siswa_ibfk_1` FOREIGN KEY (`id_kompetisi`) REFERENCES `tbl_jurusan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_siswa` */

LOCK TABLES `tbl_siswa` WRITE;

UNLOCK TABLES;

/*Table structure for table `tbl_tentang_website` */

DROP TABLE IF EXISTS `tbl_tentang_website`;

CREATE TABLE `tbl_tentang_website` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tentang_website` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_tentang_website` */

LOCK TABLES `tbl_tentang_website` WRITE;

insert  into `tbl_tentang_website`(`id`,`tentang_website`) values 
(1,'<p><strong>Teknokrat Computer Competition 2020&nbsp;</strong></p><p>TCC adalah Kompetisi terbesar dibidang komputer di Lampung untuk&nbsp; SMA/K/MA Sederajat seluruh Lampung.&nbsp; Akan diadakan pada tanggal <strong>4 Maret 2020</strong>. Ada banyak rangkaian perlombaan yg bisa di ikuti seperti &nbsp;:</p><ol><li>Basic Programming</li><li>Jaringan Komputer&nbsp;</li><li>Lomba Cepat Tepat (3 orang/team)&nbsp;</li><li>Fotografi&nbsp;</li><li>Desain Grafis&nbsp;</li><li>Animasi (3 Orang/team)&nbsp;</li><li>Web Blog&nbsp;</li><li>Film Pendek (team)</li><li>Word Processing&nbsp;</li><li>MYOB Accounting&nbsp;</li><li>Spreadsheet&nbsp;</li><li>Power Point&nbsp;</li><li>Business IT Case (3 orang/team)&nbsp;</li><li>E-Support (PUBG)</li></ol><p><strong>Rewards </strong>: Certificate, Trophy Cash Money dan Pengalaman berkompetisi pada sekolah terbaik di Lampung</p><p>Ayo Segera Daftarkan Dirimu pada contact dibawah ini</p><ul><li>a&nbsp; 0895-xxxx-xxxx</li><li>b&nbsp; 0895-xxxx-xxxx</li><li>c&nbsp; &nbsp;0821-xxxx-xxxx</li></ul>');

UNLOCK TABLES;

/*Table structure for table `tbl_visi_misi` */

DROP TABLE IF EXISTS `tbl_visi_misi`;

CREATE TABLE `tbl_visi_misi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `visi_misi` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `tbl_visi_misi` */

LOCK TABLES `tbl_visi_misi` WRITE;

insert  into `tbl_visi_misi`(`id`,`visi_misi`) values 
(1,'<p><strong>Visi SMK Negeri 1 KRUI</strong></p><p>Unggul Dalam Berprestasi Berbudaya Dan Berkarakter Berdasarkan Iman Dan Taqwa.</p><p><strong>Misi SMA Negeri 1 KRUI</strong></p><ol><li>Menanamkan keimanan, ketaqwaan dan akhlak mulia.</li><li>Menyelenggarakan pendidikan yang memadukan aspek agama, iptek dan budaya</li><li>Menumbuhkan budaya literasi dan kecakapan hidup</li><li>Menciptakan sumber daya yang kompeten, mandiri dan mampu beradaptasi</li><li>Mewujudkan lingkungan yang bersih, indah dan nyaman</li></ol><p><strong>Tujuan SMAN 1 KRUI</strong></p><p>Tujuan penyelenggaraan pendidikan di SMA&nbsp;Negeri 1&nbsp;KRUI adalah</p><ol><li>Sekolah menghasilkan lulusan yang beriman, bertaqwa, berakhak mulia dengan kompetensi yang bersaing di era global.</li><li>Sekolah menghasilkan dan menerapkan kurikulum sekolah yang mampu mencapai Standar Kompetensi Lulusan (SKL) Pendidikan Menengah Kejuruan (PMK).</li><li>Sekolah meraih nilai &rdquo;A&rdquo; pada akreditasi nasional dengan mengimplementasikan Penjamin Mutu Pendidikan (PMP).</li><li>Sekolah melaksanakan proses pembelajaran yang inovatif, kreatif, komunikatif, kolaboratif dan berbasis IT dengan menerapkan pembelajaran bilingual pada mata pelajaran peminatan.</li><li>Sekolah menyediakan sarana dan prasarana pendidikan yang relevan dan memenuhi standar sarana dan prasarana pendidikan menengah kejuruan.</li><li>Sekolah melaksanakan kegiatan pengembangan diri dalam rangka membentuk karakter peserta didik.</li><li>Sekolah menerapkan budaya etos kerja pendidik dan tenaga kependidikan yang tangguh, disiplin dan profesional.</li><li>Sekolah meraih prestasi bidang akademik dan nonakademik pada tingkat nasional dan internasional.</li><li>Sekolah mengembangkan budaya literasi, budaya bersih dan budaya sopan santun.</li><li>Sekolah mewujudkan lingkungan sekolah yang bersih, indah dan nyaman sesuai dengan konsep sekolah adiwiyata.</li></ol>');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
