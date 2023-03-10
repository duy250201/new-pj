<?php 
    require_once "../users/config.php";

    $txtID = $_POST['ID'];
    $txtName = $_POST['Name'];
    $txtType = $_POST['Type'];
    $txtSlogan = $_POST['Slogan'];
    $txtPrice = $_POST['Price'];

    $sql = "INSERT INTO `product` ( `ID`, `Name`, `Type`, `Slogan`, `Price`)
    VALUES ( '$txtID', '$txtName', '$txtType', '$txtSlogan', '$txtPrice')";
    $rs = mysqli_query($link, $sql);
    
    if($rs)
    {   
        header('location: ad-index.php' );
    }   
?>
