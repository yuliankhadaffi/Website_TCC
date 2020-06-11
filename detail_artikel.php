<?php 

require_once 'koneksi.php';
if (!isset($_GET['id']) || $_GET['id'] == '') header('Location: index.php');
$id = $_GET['id'];
$query = mysqli_query($koneksi, "SELECT * FROM tbl_artikel WHERE id = $id");
$artikel = mysqli_fetch_assoc($query);
$aktif = 'artikel';
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Teknokrat Computer Competition 2020 || Detail Artikel</title>
	<link rel="stylesheet" href="resources/fonts/stylesheet.css">
	<link rel="stylesheet" href="resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="resources/css/style.css">
</head>
<body>

	<div class="container bg-light">
		<!-- top bar -->
		<div class="logo clearfix">
			<div class="float-left mt-3 mb-3">
				<img src="resources/images/logo.png" alt="Logo Sekolah" width="70px" class="float-left mr-3">
				<div class="text float-right">
					<span class="smk">Teknokrat Computer Competition 2020</span><br>
					<span class="visi">"Optimalisasi peran siswa untuk meningkatkan potensi & daya saing nasional guna menunjang revolusi 4.0".</span>
				</div>
			</div>
		</div>
				<!-- navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <a class="navbar-brand" href="index.php" style="color: white;">TCC 2020</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.php" style="color: white;">Home <span class="sr-only">(current)</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="kompetisi.php" style="color: white;">Kompetisi</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="cabang-lomba.php" style="color: white;">Cabang Lomba</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="tentang.php" style="color: white;">Tentang Kami</a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="download_file.php" style="color: white;">Download File</a>
      </li>


      <li class="nav-item">
        <a class="nav-link" href="login.php" style="color: white;">login Admin</a>
      </li>

      
    </ul>
   
  </div>
</nav>

		<!-- content -->
		<div class="row p-3">
			<div class="col-md-8">
				<div class="title mb-3">
					<?= $artikel['judul'] ?> (<?= date('d M y', strtotime($artikel['tanggal'])) ?>)
				</div>
				<div class="artikel">
					<img src="images/artikel/<?= $artikel['foto'] ?>" alt="" width="100%" class="float-left mb-3 img-thumbnail">
					<?= $artikel['isi'] ?>
				</div>
			</div>
			
		</div>

		<div class="text-white footer">
			Copyright &copy; 2020 Teknokrat Computer Competition
		</div>
	</div>

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>