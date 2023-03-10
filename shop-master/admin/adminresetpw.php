<?php

session_start();
 
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: ad-login.php");
    exit;
}
 
require_once "../users/config.php";
 
$new_adminPass = $confirm_adminPass = "";
$new_adminPass_err = $confirm_adminPass_err = "";
 
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    if(empty(trim($_POST["new_adminPass"]))){
        $new_adminPass_err = "Vui lòng nhập mật khẩu mới";     
    } elseif(strlen(trim($_POST["new_adminPass"])) < 6){
        $new_adminPass_err = "Mật khẩu phải có ít nhất 6 kí tự.";
    } else{
        $new_adminPass = trim($_POST["new_adminPass"]);
    }
    
    if(empty(trim($_POST["confirm_adminPass"]))){
        $confirm_adminPass_err = "Vui lòng xác nhận mật khẩu";
    } else{
        $confirm_adminPass = trim($_POST["confirm_adminPass"]);
        if(empty($new_adminPass_err) && ($new_adminPass != $confirm_adminPass)){
            $confirm_adminPass_err = "Mật khẩu không khớp.";
        }
    }
        
    if(empty($new_adminPass_err) && empty($confirm_adminPass_err)){
        $sql = "UPDATE tb_admnin SET adminPass = ? WHERE adminID = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            mysqli_stmt_bind_param($stmt, "si", $param_adminPass, $param_adminID);
            
            $param_adminPass = password_hash($new_adminPass, PASSWORD_DEFAULT);
            $param_adminID = $_SESSION["id"];
            
            if(mysqli_stmt_execute($stmt)){
                session_destroy();
                header("location: ad-login.php");
                exit();
            } else{
                echo "Đã xảy ra lỗi vui lòng thử lại";
            }
            mysqli_stmt_close($stmt);
        }
    }
    mysqli_close($link);
}
?>