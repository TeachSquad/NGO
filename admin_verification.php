<?php include 'connection.php';
$user=$_POST['user_id'];
$password=$_POST['password'];

$result=mysqli_query($conn,"select * FROM admin WHERE user = '$user' and password = '$password'") or die(mysqli_error($conn));
$row=mysqli_fetch_array($result);
if($row['ID']!=null) { 
                header("location: welcome.php");
               }else {
                header("location: admin_login.php");
                }

    // close the result. 
    mysqli_free_result($result); 


?>
      