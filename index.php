<?php 

require_once 'koneksi.php';
$query = mysqli_query($koneksi, "SELECT * FROM tbl_artikel limit 3");

//$aktif = 'home';
?>

<!DOCTYPE html>
<html>
<head>
	<title>Teknokrat Computer Competition 2020 || Home</title>
	<!-- css boostraps -->
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
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
		

		<!-- images slider -->
		<div class="hero" style="margin-bottom: 20px;">
		
			<div id="slider1_container" style="visibility: hidden; position: relative; margin: 0 auto; width: 1140px; height: 442px; overflow: hidden;">

            <!-- Loading Screen -->
            <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
                <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="js/spin.svg" />
            </div>

            <!-- Slides Container -->
            <div data-u="slides" style="position: absolute; left: 0px; top: 0px; width: 1140px; height: 442px; overflow: hidden;">
                
                <div>
                    <img data-u="image" src="resources/images/benner.jpg" />
                </div>

                <div>
                    <img data-u="image" src="resources/images/teknokrat.jpg" />
                </div>
            </div>

			<!--navigator untuk gambar slider--->         
   
            <div data-u="arrowleft" class="jssora051" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">
                <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>
                </svg>
            </div>

            <div data-u="arrowright" class="jssora051" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">
                <svg viewBox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                    <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>
                </svg>
            </div>
            
        </div> <!--batas akhir navigator gambar -->
		</div> <!-- tutup </hero>-->

	
	<div class="row">
		<div class="col-md-8">
			<div class="title mb-3">
				Informasi Terbaru
			</div>

			<?php while($artikel = mysqli_fetch_assoc($query)) : ?>				
			<div class="artikel">
				<div class="info">
					<div class="post mb-2">

						<span class="judul"><a href="detail_artikel.php?id=<?= $artikel['id'] ?>"><?= $artikel['judul'] ?></a></span>
					</div>
				</div>

				<div class="detail">
					<div class="clearfix" style="text-align: justify;">
						<img src="images/artikel/<?= $artikel['foto'] ?>" alt="" width="200px" class="float-left mr-2">
						<?= substr($artikel['isi'], 0, 150) . '...' ?>
					</div>
				</div>
				<hr>
			</div>
			<?php endwhile; ?>
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



	<!-- js boostraps -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

	  <!-- js json -->
	<script type="text/javascript" src="js/jssor.slider.min.js"></script>
    <script>

        jQuery(document).ready(function ($) {
            var options = {
                $AutoPlay: 1,                                       
                $AutoPlaySteps: 1,                                  
                $Idle: 2000,                                        
                $PauseOnHover: 1,                                   

                $ArrowKeyNavigation: 1,   			                
                $SlideEasing: $Jease$.$OutQuint,                    
                $SlideDuration: 800,                                
                $MinDragOffsetToSlide: 20,                          
                
                $SlideSpacing: 0, 					                
                $UISearchMode: 1,                                   
                $PlayOrientation: 1,                                
                $DragOrientation: 1,                                

                $ArrowNavigatorOptions: {                           
                    $Class: $JssorArrowNavigator$,                  
                    $ChanceToShow: 2,                               
                    $Steps: 1                                       
                },

                $BulletNavigatorOptions: {                          
                    $Class: $JssorBulletNavigator$,                 
                    $ChanceToShow: 2,                               
                    $Steps: 1,                                      
                    $SpacingX: 12,                                  
                    $Orientation: 1                                 
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);

            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizing
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth) {
                    jssor_slider1.$ScaleWidth(parentWidth - 30);
                }
                else
                    window.setTimeout(ScaleSlider, 30);
            }
            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>
</body>
</html>