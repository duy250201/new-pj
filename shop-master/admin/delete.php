<?php

include "../users/config.php";

$ID = $_GET['id'];
$ID_cart = $GET['id_cart'];
$del = mysqli_query($link,"delete from product where id = '$ID'");
$del = mysqli_query($link,"delete from users where id = '$ID'");
$del1 = mysqli_query($link,"delete from cart where id_cart = '$ID_cart'");

if($del)
{
    mysqli_close($link); 
    header("location:ad-index.php"); 
    exit;	
}
else
{
    echo "Error deleting record"; 
}
?>

