<?php
    include 'adminregister.php'
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/icomoon.css">
    <style>
        body{ font: 14px sans-serif; }
        .wrapper{ width: 360px; padding: 20px; }
    </style>
</head>
<body>
  
    <div id="fh5co-started" style="height:100vh">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>Trang đăng kí</h2>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
					<?php
						if(!empty($login_err)){
							echo '<div class="alert alert-danger">' . $login_err . '</div>';
						}        
					?>
                        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
                            <div class="form-group">
                                <label>Tài khoản</label>
                                <input type="text" name="adminUser" class="form-control <?php echo (!empty($adminUser_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $adminUser; ?>">
                                <span class="invalid-feedback"><?php echo $adminUser_err; ?></span>
                            </div>    
                            <div class="form-group">
                                <label>Mật khẩu</label>
                                <input type="password" name="adminPass" class="form-control <?php echo (!empty($adminPass_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $adminPass; ?>">
                                <span class="invalid-feedback"><?php echo $adminPass_err; ?></span>
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu</label>
                                <input type="password" name="confirm_adminPass" class="form-control <?php echo (!empty($confirm_adminPass_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $confirm_adminPass; ?>">
                                <span class="invalid-feedback"><?php echo $confirm_adminPass_err; ?></span>
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-primary" value="Đăng kí">
                                <input type="reset" class="btn btn-secondary " value="Làm mới">
                            </div>
                            <p>Bạn đã có tài khoản? <a href="ad-login.php">Đăng nhập</a>.</p>
                        </form>
				</div>
			</div>
		</div>
	</div>    
</body>
</html>