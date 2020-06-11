  <script src="sweetalert/dist/sweetalert.js"></script>
  <script src="sweetalert/dist/sweetalert.min.js"></script>

<?php 

if(!isset($_POST['tambah'])) header('Location: tambah.php');

require_once '../../koneksi.php';
$nama = mysqli_escape_string($koneksi, $_POST['nama']);
$nis = mysqli_escape_string($koneksi, $_POST['nis']);
$kelas = mysqli_escape_string($koneksi, $_POST['kelas']);
$angkatan = mysqli_escape_string($koneksi, $_POST['angkatan']);
$jenis_kelamin = mysqli_escape_string($koneksi, $_POST['jenis_kelamin']);
$no_hp = mysqli_escape_string($koneksi, $_POST['no_hp']);
$tempat_lahir = mysqli_escape_string($koneksi, $_POST['tempat_lahir']);
$tanggal_lahir = mysqli_escape_string($koneksi, $_POST['tanggal_lahir']);
$id_jurusan = mysqli_escape_string($koneksi, $_POST['id_jurusan']);
$alamat = mysqli_escape_string($koneksi, $_POST['alamat']);

// persiapan upload foto
$ekstensi = $_FILES['foto']['name'];
$ekstensi = pathinfo($ekstensi, PATHINFO_EXTENSION);

$nama_foto = strtolower($nama);
$nama_foto = str_replace(' ', '-', $nama_foto) . '.' . $ekstensi;

$asal = $_FILES['foto']['tmp_name'];
$tujuan = '../../images/siswa/';

if($_FILES['foto']['error'] == 0){
	if($_FILES['foto']['size'] < 1000000){
		if (file_exists($tujuan . $nama_foto)) unlink($tujuan . $nama_foto);

		$query = mysqli_query($koneksi, "INSERT INTO tbl_siswa VALUES('', '$nama', $nis, '$kelas', '$angkatan', '$jenis_kelamin', '$tempat_lahir', '$tanggal_lahir', '$alamat', '$no_hp', '$nama_foto', '$id_jurusan')") or die(mysqli_error($koneksi));
		move_uploaded_file($asal, $tujuan . $nama_foto) or die('gagal upload foto');
		if($query){
			// echo "<script> swal('Sukses!', 'Data Berhasil Ditambahkan!', 'success')
			//  window.location.href = 'index.php';
			//  </script>";
			 $_SESSION['sukses'] = 'Data Berhasil Ditambahkan!';
			 header('Location: index.php');
		} else {
			$_SESSION['gagal'] = 'Data Gagal Ditambahkan!';
			header('Location: index.php');
		}
	} else {
		$_SESSION['gagal'] = 'ukuran gambar tidak boleh lebih dari 1000kb!';
		header('Location: index.php');
	}
}
