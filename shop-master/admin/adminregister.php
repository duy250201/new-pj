<?php
require_once "../users/config.php";
 
$adminUser = $adminPass = $confirm_adminPass = "";
$adminUser_err = $adminPass_err = $confirm_adminPass_err = "";
 
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    if(empty(trim($_POST["adminUser"]))){
        $adminUser_err = "Vui lòng nhập tên đăng nhập";
    } elseif(!preg_match('/^[a-zA-Z0-9_]+$/', trim($_POST["adminUser"]))){
        $adminUser_err = "user chứa chữ số và dấu gạch dưới.";
    } else{
        $sql = "SELECT adminID FROM tb_admin WHERE adminUser = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            mysqli_stmt_bind_param($stmt, "s", $param_adminUser);
            $param_adminUser = trim($_POST["adminUser"]);
            if(mysqli_stmt_execute($stmt)){
                mysqli_stmt_store_result($stmt);
                if(mysqli_stmt_num_rows($stmt) == 1){
                    $adminUser_err = "Tên đăng nhập đã tồn tại";
                } else{
                    $adminUser = trim($_POST["adminUser"]);
                }
            } else{
                echo "Đã xảy ra lỗi vui lòng thử lại";
            }
            mysqli_stmt_close($stmt);
        }
    }
    
    if(empty(trim($_POST["adminPass"]))){
        $adminPass_err = "Vui lòng nhập mật khẩu.";     
    } elseif(strlen(trim($_POST["adminPass"])) < 6){
        $adminPass_err = "Mật khẩu phải có ít nhất 6 kí tự";
    } else{
        $adminPass = trim($_POST["adminPass"]);
    }
    
    if(empty(trim($_POST["confirm_adminPass"]))){
        $confirm_adminPass_err = "Vui lòng xác nhận mật khẩu";     
    } else{
        $confirm_adminPass = trim($_POST["confirm_adminPass"]);
        if(empty($adminPass_err) && ($adminPass != $confirm_adminPass)){
            $confirm_adminPass_err = "Mật khẩu không khớp";
        }
    }
    
    if(empty($adminUser_err) && empty($adminPass_err) && empty($confirm_adminPass_err)){
        $sql = "INSERT INTO tb_admin (adminUser, adminPass) VALUES (?, ?)";
         
        if($stmt = mysqli_prepare($link, $sql)){
            mysqli_stmt_bind_param($stmt, "ss", $param_adminUser, $param_adminPass);
            $param_adminUser = $adminUser;
            $param_adminPass = password_hash($adminPass, PASSWORD_DEFAULT);
            if(mysqli_stmt_execute($stmt)){
                header("location: ad-login.php");
            } else{
                echo "Đã xảy ra lỗi vui lòng thử lại";
            }
            mysqli_stmt_close($stmt);
        }
    }
    mysqli_close($link);
}
?>