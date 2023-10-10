<?php
//menyambungkan ke database
$db = mysqli_connect('localhost','root','','registerlogin');
// jika database tidak tersambung
if(!$db){
    echo "Database connection failed";
}
//mengambil data
$username = $_POST['username'];
$password = $_POST['password'];
//cari tabel userdata dimana username
$sql = "SELECT username FROM userdata WHERE username = '".$username."'";
//
$result = mysqli_query($db,$sql);
//mengecek apakah ada kesamaan data 
$count = mysqli_num_rows($result);
//jika ada
if ($count == 1) {
    echo json_encode("error");

}
//jika tidak ada
else {
    $insert = "INSERT INTO userdata(username,password) VALUES 
    ('".$username."','".$password."')";
    $query = mysqli_query($db,$insert);
    if ($query) {
        echo json_encode("success");
    }
};
?>