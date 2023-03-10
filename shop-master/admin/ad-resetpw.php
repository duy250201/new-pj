<?php
    include 'adminresetpw.php'
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reset Password</title>
    <link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/icomoon.css">

    <style>
        body{ font: 14px sans-serif; }
        .wrapper{ width: 360px; padding: 20px; }

        a :hover{
            color: #000000;
        }
    </style>
</head>
<body>
    <div id="fh5co-started" style="height:100vh">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>đổi mật khẩu</h2>
					<p>Xin mời đăng nhập</p>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
                <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post"> 
                    <div class="form-group">
                        <label>Mật khẩu mới</label>
                        <input type="password" name="new_adminPass" class="form-control <?php echo (!empty($new_adminPass_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $new_adminPass; ?>">
                        <span class="invalid-feedback"><?php echo $new_adminPass_err; ?></span>
                    </div>
                    <div class="form-group">
                        <label>Xác nhận mật khẩu</label>
                        <input type="password" name="confirm_adminPass" class="form-control <?php echo (!empty($confirm_adminPass_err)) ? 'is-invalid' : ''; ?>">
                        <span class="invalid-feedback"><?php echo $confirm_adminPass_err; ?></span>
                    </div>
                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Xác nhận">                  
                        <a class="btn btn-link" id="text" href="ad-login.php" style="text-decoration: none;">
                            <p style="margin-top: 1rem; margin-bottom: 1rem;">Huỷ bỏ</p>
                        </a>
                    </div>
                </form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>