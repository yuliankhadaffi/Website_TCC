
<!DOCTYPE html>
<html>
<head>
	<title>Teknokrat Computer Competition 2020 || Download File</title>
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
        <a class="nav-link" href="login.php" style="color: white;">login Admin</a>
      </li>


    </ul>
   
  </div>
</nav>
		
	<div class="row">
		<div class="col-md-8">
			<div class="title mb-3">
				Download File
			</div>

			<a href="upload_file.php" >
				<button class="btn btn-primary" style="margin-bottom: 10px; margin-left: 80%;">Upload</button>
			</a>
  				<p>Upload file Anda dengan melengkapi form di bawah ini. File yang bisa di Upload hanya file dengan ekstensi <b>.doc, .docx, .xls, .xlsx, .ppt, .pptx, .pdf, .rar, .zip</b> dan besar file (file size) maksimal hanya 1 MB.</p>

  				<p>
            <form action="" method="post" enctype="multipart/form-data">
            <table width="100%" align="center" border="0" bgcolor="#eee" cellpadding="2" cellspacing="0">
            	<tr>
                	<td width="40%" align="right"><b>Nama File</b></td><td><b>:</b></td><td><input type="text" name="nama_file" size="40" required /></td>
                </tr>
                <tr>
                	<td width="40%" align="right"><b>Cabang Lomba</b></td><td><b>:</b></td><td><input type="text" name="cabang_lomba" size="40" required /></td>
                </tr>

                <tr>
                	<td width="40%" align="right"><b>Link File</b></td><td><b>:</b></td><td><input type="text" name="link_file" size="40" required /></td>
                </tr>

                <tr>
                	<td width="40%" align="right"><b>Ukuran File</b></td><td><b>:</b></td><td><input type="text" name="ukuran_file" size="40" required /></td>
                </tr>

                <tr>
                	<td width="40%" align="right"><b>Pilih File</b></td><td><b>:</b></td><td><input type="file" name="file" required /></td>
                </tr>
                <tr>
                	<td>&nbsp;</td><td>&nbsp;</td><td>
                		<input type="submit" name="simpan" value="Upload" /></td>
                </tr>
            </table>
            </form>
            </p>

           <?php

			include('koneksi_download.php');
			if (isset($_POST['simpan'])){
				$allowed_ext	= array('doc', 'docx', 'xls', 'xlsx', 'ppt', 'pptx', 'pdf', 'rar', 'zip');
				$file_name		= $_FILES['file']['name'];
				$file_ext		= strtolower(end(explode('.', $file_name)));
				$file_size		= $_FILES['file']['size'];
				$file_tmp		= $_FILES['file']['tmp_name'];
 
				$nama			= $_POST['nama'];
				$tgl			= date("Y-m-d");
 
				if(in_array($file_ext, $allowed_ext) === true){
					if($file_size < 1044070){
						$lokasi = 'files/'.$nama.'.'.$file_ext;
						move_uploaded_file($file_tmp, $lokasi);
						$in = mysql_query("INSERT INTO download VALUES(NULL, '$nama_file', '$cabang_lomba', '$file_ext', '$file_size', '$lokasi','$link_file')");
						if($in){
							echo '<div class="ok">SUCCESS: File berhasil di Upload!</div>';
						}else{
							echo '<div class="error">ERROR: Gagal upload file!</div>';
						}
					}else{
						echo '<div class="error">ERROR: Besar ukuran file (file size) maksimal 1 Mb!</div>';
					}
				}else{
					echo '<div class="error">ERROR: Ekstensi file tidak di izinkan!</div>';
				}
			}
			?>
 
            
				

							
				   
			


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