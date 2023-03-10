<?php

session_start();
 
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: ../../us-login.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; background-color: #d1c286;}
        #edit{ margin-top: 14rem; margin-bottom: 14rem; }
    </style>
</head>
<body>
    <div id="edit">
        <h1 class="my-5">Kính chào bạn <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Xin mời chọn chức năng</h1>
        <p>
            <a href="../cart/index-cart.php" class="btn btn-danger ml-3">Mua hàng</a>
            <a href="us-resetpw.php" class="btn btn-danger ml-3">Đổi mật khẩu</a>
            <a href="logout.php" class="btn btn-danger ml-3">Đăng xuất</a>
        </p>
    </div>
    
</body>
</html>