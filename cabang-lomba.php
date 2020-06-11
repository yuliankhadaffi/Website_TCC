<?php 

require_once 'koneksi.php';
$query = mysqli_query($koneksi, "SELECT id, nama, biaya, jenis_kelamin, foto, no_hp, pjlomba FROM tbl_guru ORDER BY nama ASC;");
$aktif = 'guru';
$no = 1;
?>


<!DOCTYPE html>
<html>
<head>
	<title>Teknokrat Computer Competition 2020 || Cabang Lomba</title>
	<!-- css boostraps -->
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="stylesheet" href="resources/datatables/datatables.min.css"> 
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	  <link rel="stylesheet" type="text/css" href="resources/css/style.css">
	  <link rel="stylesheet" type="text/css" href="resources/css/sidebar.css">
	  
	  <!-- favicon -->
	 <link rel="shortcut icon" href="resources/images/icon.png">

	  <style>
	  	.sidebar{
	  		background-color: #ED8240;
	  		/*margin-top: 20px;*/
	  	}
	  </style>

</head>
<body>

	<div class="container">


	<!-- header -->
	<div class="logo clearfix">
			<div class="float-left mt-3 mb-3">
				<img src="resources/images/icon-tcc.png" alt="Logo TCC" width="50px" class="float-left mr-3">
				<div class="text float-right">
					<span class="title">Teknokrat Computer Competition 2020</span><br>
					<span class="">"Optimalisasi peran siswa untuk meningkatkan potensi & daya saing nasional guna menunjang revolusi 4.0".</span>
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
		
	<div class="row">
		<div class="col-md-8">
			<div class="title mb-3">
				Cabang Perlombaan
			</div>

			<table id="table_id" class="dataTable table table-bordered">
				    <thead>
				        <tr>
				            <th>No</th>
				            <th width="50px">Foto</th>
				            <th>PJ Lomba</th>
				            <th>Nama Lomba</th>
				            <th>Biaya</th>
				            <th>No Hp</th>
				        </tr>
				    </thead>
				    <tbody>
				        <?php while($row = mysqli_fetch_assoc($query)) : ?>
							<tr>
								<td><?= $no++ ?></td>
								<td><img src="images/guru/<?= $row['foto'] ?>" alt="" width="100%" class="img-thumbnail"></td>
								<td><?= $row['nama'] ?></td>
								<td><?= $row['pjlomba'] ?></td>
								<td><?= $row['biaya'] ?></td>
								<td><?= $row['no_hp'] ?></td>
							</tr>
						<?php endwhile; ?>
				    </tbody>
				</table>


		</div>	 <!--tutup div col-md-8 -->

		<!-- sidebar -->
		<div class="col-md-4"><br>
			<p class="sidebar p-2 mb-2" style="text-align: center; color: white;"> Informasi Terbaru

			<ul class="list-group">
				<a href="https://www.instagram.com/p/B7qtNETHp7g/ ">
					<li class="list-group-item" style="color: black;">Video Umum TCC</li>
				</a>
				<a href="https://www.instagram.com/tccteknokrat/">
					<li class="list-group-item" style="color: black;">Instagram TCC</li>
				</a>
				<a href="https://www.instagram.com/teknokrat.id/">
					<li class="list-group-item" style="color: black;"> Teknokrat Official</li>
				</a>
			</ul>
			
		</p>

		<p class="sidebar p-2 mb-2" style="text-align: center; color: white;"> Hasil Tecnical Meating

		<ul class="list-group">
			<li class="list-group-item">Comming Soon</li>
			
		</ul>
	</p>
	</div>
</div> <!-- tutup row -->


</div> <!-- batas akhir container -->


	<!-- footer -->
	<div class="container">
		<footer class="p-3 mb-2 bg-primary text-white">
			<center>
				Copyright &copy; 2020 Teknokrat Computer Competition
			</center>
		</footer>
	</div>  <!-- tutup footer -->



	<!-- js data tables -->
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/datatables/datatables.min.js"></script>
	<script src="resources/datatables/datatable.js"></script>


</body>
</html>