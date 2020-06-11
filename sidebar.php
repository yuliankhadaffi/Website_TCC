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