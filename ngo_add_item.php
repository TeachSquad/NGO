<?php
include'connection.php';
$ngoId=$_POST['ngoid'];
$item=$_POST['item'];

$query_find=mysqli_query($conn,"select * from item_needed where NgoId='$ngoId'and item='$item'") or die(mysqli_error($conn));
$row=mysqli_fetch_array($query_find);
if($row['Id']!=null){
header("location: ngo_data.php?ngoid='$ngoId'");
}
else{
$query=mysqli_query($conn,"insert into item_needed(NgoId,item) values('$ngoId','$item')") or die(mysqli_error($conn));
if($query){
    header("location: ngo_data.php?ngoid='$ngoId'");
}
}
?>

