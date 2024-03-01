<?php
//include database connection file
include_once("../koneksi/koneksi.php");

// Get id from URL to delete that user
$id = $_GET['Produk_id'];

// Delete user now from table based on given id
$result = mysqli_query($koneksi, "DELETE FROM produk WHERE Produk_id=$id");

// After delete redirect to home, so that latest user list will be displayed.

echo "<script>alert('Data Berhasil Dihapus')</script>";
echo "<script>location='index.php?page=stok';</script>";

?>