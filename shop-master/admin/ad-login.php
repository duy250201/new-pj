
<?php
    include 'adminlogin.php'

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/icomoon.css">
</head>
<body>
	<div id="fh5co-started" style="height:100vh">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<h2>trang quản lý</h2>
				</div>
			</div>
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2">
					<?php
						if(!empty($login_err)){
							echo '<div class="alert alert-danger">' . $login_err . '</div>';
						}        
					?>
					<form style="flex-direction: column; align-items: center;" class="form-inline" action=" <?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
						<div class="col-md-6 col-sm-6">
							<div class="form-group">
								<label style="justify-content: flex-start;">Tài khoản</label>
								<input type="text" name="adminUser" class="form-control   php echo (!empty($adminUser_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $adminUser; ?>">
								<span class="invalid-feedback"> <?php   echo $adminUser_err; ?></span>
							</div>
                            <div class="form-group">
								<label style="justify-content: flex-start;">Mật khẩu</label>	
								<input type="password" name="adminPass" class="form-control php echo (!empty($adminPass_err)) ? 'is-invalid' : ''; ?>">
								<span class="invalid-feedback"> <?php echo $adminPass_err; ?></span>
							</div>
                            
						</div>
						<div class="col-md-6 col-sm-6">
							<input type="submit" class="btn btn-default btn-block" style="margin-top:2rem" value="Đăng Nhập">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>