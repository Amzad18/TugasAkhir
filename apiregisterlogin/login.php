<?php
//menyambungkan ke database
$db = mysqli_connect('localhost','root','','registerlogin');
/// mengambil data
$username = $_POST['username'];
$password = $_POST['password'];
//cari tabel userdata dimana username dan password
$sql = "SELECT * FROM userdata WHERE username = '".$username."' AND password = '".$password."'";
//
$result = mysqli_query($db,$sql);
//mengecek apakah ada kesamaan data
$count = mysqli_num_rows($result);
//jika $count terhitung sama dengan 1 
if ($count == 1) {
    echo json_encode("success");
}
//kalau tidak
else{
    echo json_encode("error");
}
?>