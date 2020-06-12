<?php include 'connection.php';
$user=$_POST['email'];
$password=$_POST['password'];

$result=mysqli_query($conn,"select * FROM ngo WHERE email = '$user' and password = '$password'") or die(mysqli_error($conn));
$row=mysqli_fetch_array($result);
$ngoId=trim($row['ngoId']);
if($row['ngoId']!=null) { 
                header("location: ngo_data.php?ngoid='$ngoId'");
               }else {
                header("location: ngo_login.php");
                }

    // close the result. 
    mysqli_free_result($result); 


?>
      