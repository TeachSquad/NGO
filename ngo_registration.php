<html>
<body>

<?php


include 'connection.php';

$name= $_POST["ngo_name"];
$chairman=$_POST["chairman"];
$contact_no=$_POST["contact_no"];
$address=$_POST["address"];
$email=$_POST["email"];
$password=$_POST["password"];
$establishment_year=$_POST["establishment_year"];



$sql="insert into ngo (ngo_name,chairman,contact_no,address,email,password,establishment_year)
values('$name','$chairman','$contact_no','$address','$email',$password,$establishment_year)";
if (mysqli_query($conn, $sql)) {
    header("location: ngo.php");
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
?>
</body>
</html>




