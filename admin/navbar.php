<?php
require_once 'cek_session.php';
//$base_url = "http://localhost/web_sekolah/" 
?>
<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
	<div class="container">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link <?= $active == 'dashboard' ? 'active' : '' ?>" href="index.php">Dashboard</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="../index.php" target="_blank" style="color: #ffff;">Lihat Website</a>
			</li>
			<!-- <li class="nav-item dropdown">
				<a class="nav-link <?= $active == 'artikel' ? 'active' : '' ?> dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Artikel</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="kategori_artikel.php">Data Kategori Artikel</a>
					<a class="dropdown-item" href="index.php">Data Artikel</a>
				</div>
			</li> -->

			<div class="dropdown" id="navbardrop">
					<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" style="color: #ffff;">Kompetisi
						<span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li class="dropdown-item"><a href="../admin/artikel/detail.php">Data Kategori Kompetisi</a></li>
							<li class="dropdown-item"><a href="../../admin/artikel/index.php">Data kompetisi</a></li>
							
						</ul>
					</div>

			
				<div class="dropdown" id="navbardrop">
					<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" style="color: #ffff;">Cabang Lomba
						<span class="caret"></span></button>
						<ul class="dropdown-menu">
							<li class="dropdown-item"><a href="../../admin/guru/index.php">Data Lomba</a></li>
							<li class="dropdown-item"><a href="../../admin/pengguna/index.php">Data pengguna</a></li>
						</ul>
					</div>
			<!-- </li> -->
			
			<li class="nav-item">
				<a class="nav-link <?= $active == 'tentang_website' ? 'active' : '' ?> " href="../admin/tentang_website.php" style="color: white;">Tentang Website</a>
			</li>
			
			<li class="nav-item">
				<a class="nav-link" href="logout.php" onclick="return confirm('apakah anda yakin?')" style="color: white;">Logout</a>
			</li>
		</ul>
	</div>
</nav>