<<?php
// include database connection file
include_once("../koneksi/koneksi.php");

// Get id from URL to delete that user
$id =$_GET['User_id'];

//Delete user row from table based on given id
$result = mysqli_query($koneksi, "DELETE FROM user WHERE User_id=$id");

//After delete redirect to Home, so that Latest user List will be displayed.

header("Location:index.php?page=user");

?>