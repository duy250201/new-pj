<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Watch Collection</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/animate.css">	 
	<link rel="stylesheet" href="../css/icomoon.css">
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/flexslider.css">
	<link rel="stylesheet" href="../css/owl.carousel.min.css">
	<link rel="stylesheet" href="../css/owl.theme.default.min.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/mediaproduct.css">
	<script src="../js/modernizr-2.6.2.min.js" type="text/javascript"></script>

	</head>
	<body>
	<style>
		.col-sm-4 .inner img{
 	 	height:300px;
		}
		.product .product-grid .imgcss{
		
		display: flex;
    	justify-content: center;
		}
		.product .product-grid .imgcss a,
		.product .product-grid .imgcss form{
			padding: 0 10px;
		}
	</style>
	<div class="fh5co-loader"></div>
<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="container" style="position:relative; margin-top:2rem ;">
			<div class="row">
				<div class="col-md-3 col-xs-2">
					<div id="fh5co-logo"><a href="../index.php"><img src="../images/logo.png" width="100px" height="50px" alt=""></a></div>
					<div id = "clock" onload="currentTime()" style="font-size:18px; font-weight: 100; color:#d1c286"></div>
				</div>
				<div class="col-md-6 col-xs-6 text-center menu-1">
					<ul>
						<li class="has-dropdown">
							<a href="../product-detail/product.php">Shop</a>
						</li>
						<li><a href="../about.php">About</a></li>
						<li class="has-dropdown">
							<a href="../services.php">Services</a>
						</li>
						<li><a href="../contact.php">Contact</a></li>
					</ul>
				</div>
				<div class="col-md-3 col-xs-4 text-right hidden-xs menu-2">
					<ul>
						<li class="search">
							<div class="input-group">
						      <input type="text" style="font-size: 14px; width: 10rem; background:none" placeholder="Search....">
						      <span class="input-group-btn">
						        <button class="btn btn-primary" type="button"><i class="icon-search"></i></button>
						      </span>
						    </div>
						</li>
					</ul>
				</div>
			</div>
			
		</div>
	</nav>
	<header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner">
		<div class="overlay" id="bg-product"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h1 style="color: cadetblue;">ĐỒNG HỒ ROLEX</h1>
							<h2>BỘ SƯU TẬP</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div id="fh5co-product">
		<div class="container">
			<div class="row animate-box">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
					<span>Chất lượng và uy tín</span>
					<h2>Bộ sưu tập đồng hồ Rolex</h2>
					<p>Với những người đam mê thời trang nói chung và những tín đồ của đồng hồ đeo tay nói riêng thì chắc sẽ không còn xa lạ với cái tên Rolex - một trong những thương hiệu đồng hồ đắt đỏ bậc nhất hiện nay. 
						Rolex cung cấp đa dạng mẫu đồng hồ phù hợp với mọi cổ tay.
					</p>
				</div>
			</div>
			<?php
				include '../users/config.php';
					$records = mysqli_query($link,"select * from product");
					while($data = mysqli_fetch_array($records))
					{
				?>
				<div>
					<div class="col-sm-4 text-center">
						<div class="product">
							<div class="product-grid inner">
								<?php echo  "<img src=../$data[Image]>"?>
								<div class="imgcss">
									<a href="single.php?id=<?php echo $data['ID']; ?>"  class="icon" ><i class="icon-eye"></i></a>
								</div>
							</div>
							<div class="desc">
								<h3 style="font-size: 14px;"><a href="single.php"><?php echo $data['Name'];?></a></h3>
								<span class="price" style="font-size:11px"><?php echo $data['Slogan']?></span>
							</div>
						</div>
					</div>
					<?php
						}
					?>
				</div>
		</div>
	</div>
</div>
	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.waypoints.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/jquery.countTo.js"></script>
	<script src="../js/jquery.flexslider-min.js"></script>
	<script src="../js/main.js"></script>
	<script src="../js/time.min.js"></script>
	</body>
</html>

