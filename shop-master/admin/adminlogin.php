<?php
session_start();
 
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: ad-index.php");
    exit;
}
 
require_once "../users/config.php";
 
$adminUser = $adminPass = "";
$adminUser_err = $adminPass_err = $login_err = "";
 
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    if(empty(trim($_POST["adminUser"]))){
        $adminUser_err = "Vui lòng nhập tên đăng nhập.";
    } else{
        $adminUser = trim($_POST["adminUser"]);
    }

    if(empty(trim($_POST["adminPass"]))){
        $adminPass_err = "Vui lòng nhập mật khẩu.";
    } else{
        $adminPass = trim($_POST["adminPass"]);
    }

    if(empty($adminUser_err) && empty($adminPass_err)){

        $sql = "SELECT adminID, adminUser, adminPass FROM tb_admin WHERE adminUser = ?";
        if($stmt = mysqli_prepare($link, $sql)){

            mysqli_stmt_bind_param($stmt, "s", $param_adminUser);
            $param_adminUser = $adminUser;
            
            if(mysqli_stmt_execute($stmt)){
                mysqli_stmt_store_result($stmt);

                if(mysqli_stmt_num_rows($stmt) == 1){                    
                    mysqli_stmt_bind_result($stmt, $adminID, $adminUser, $hashed_adminPass);

                    if(mysqli_stmt_fetch($stmt)){

                        if(password_verify($adminPass, $hashed_adminPass)){

                            session_start();
                            $_SESSION["loggedin"] = true;
                            $_SESSION["id"] = $adminID;
                            $_SESSION["username"] = $adminUser;                            
                            header("location: ad-index.php");
                        } else{
                            $login_err = "Sai tên đăng nhập hoặc mật khẩu";
                        }
                    }
                } else{
                    $login_err = "Sai tên đăng nhập hoặc mật khẩu";
                }
            } else{
                echo "Đã xảy ra lỗi vui lòng thử laị";
            }
            mysqli_stmt_close($stmt);
        }
    }
    mysqli_close($link);
}
?>