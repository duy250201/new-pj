<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../css/animate.css">
	<link rel="stylesheet" href="../css/icomoon.css">
	<link rel="stylesheet" href="../css/bootstrap.css">
	<link rel="stylesheet" href="../css/flexslider.css">
	<link rel="stylesheet" href="../css/owl.carousel.min.css">
	<link rel="stylesheet" href="../css/owl.theme.default.min.css">
	<link rel="stylesheet" href="../css/style.css">
	<link rel="stylesheet" href="../css/mediaproduct.css">
	<script src="../js/modernizr-2.6.2.min.js"></script>

	</head>
	<body>
	<style>
#fh5co-product #imgcss {
  text-align: center;
}
#fh5co-product #imgcss img{
  height:300px;
}
#fh5co-product {
	padding-top:0;
}
.fh5co-cover .overlay img{
	width: 100%;
	height: 600px;
}
#line {
	line-height: 1.5em;
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
						<li class="has-dropdown active">
							<ul class="dropdown">
								<li><a href="../single.php">Single Shop</a></li>
							</ul>
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
				</div>
			</div>
		</div>
	</nav>
	<?php
				error_reporting(0);
				include '../users/config.php';
                $ID = $_GET['id'];
                $records = mysqli_query($link,"select * from product where id = '$ID'");
                while($data = mysqli_fetch_array($records))
                    {
                ?>
				<title><?php echo $data['Name']?></title>
				<header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner">
					<div class="overlay">
						<?php echo"<img src=../$data[ImageHeader]"?>
					</div>
				</header>
				  <div id="fh5co-product">
						  <div id="imgcss">
							  <?php echo  "<img src=../$data[Image]>"?>
							  <?php echo  "<img src=../$data[Image2]>"?>
							  <?php echo  "<img src=../$data[Image3]>"?>
						  </div>
						  <div class="container" style="margin-top:20px">
							  <div class="row">
								  <div class="col-md-10 col-md-offset-1">
									  <div class="fh5co-tabs animate-box">
										  <ul class="fh5co-tab-nav">
											  <li class="active"><a href="#" data-tab="1"><span class="icon visible-xs"><i class="icon-file"></i></span><span class="hidden-xs">Thông tin sản phẩm</span></a></li>
											  <li><a href="#" data-tab="2"><span class="icon visible-xs"><i class="icon-bar-graph"></i></span><span class="hidden-xs">Nội dung</span></a></li>
											  <li><a href="#" data-tab="3"><span class="icon visible-xs"><i class="icon-star"></i></span><span class="hidden-xs">Thông số kĩ thuật</span></a></li>
										  </ul>
										  <div class="fh5co-tab-content-wrap" style="top:20px">
											  <div class="fh5co-tab-content tab-content active" data-tab-content="1">
												  <div class="col-md-10 col-md-offset-1">
													  <span class="price"><?php echo number_format($data['Price'], 0, ",", ".") ?> VND</span>
														 <form action="../cart/index-cart.php?action=add" method="POST" style="display:inline-block" >
															   <input type="text" class="price" value="1" name="quantity[<?=$data['ID'] ?>]" style="-webkit-appearance: auto;">
															   <input type="submit"class="price" value="Mua" style="-webkit-appearance: auto;">
														 </form>
													  <h2><?php echo $data['Name'] ?></h2>
													  <div class="row">
														  <div class="col-md-6">
															  <h2 class="uppercase">Phương Châm</h2>
															  <p><?php echo $data['Slogan'] ?></p>
														  </div>
														  <div class="col-md-6">
															  <h2 class="uppercase">Phân loại</h2>
															  <p><?php echo $data['Type'] ?></p>
														  </div>
													  </div>
													  <h3 id="line"><?php echo $data['Introduce'] ?></h3>
													  <h4 id="line"><?php echo $data['IntroduceExtra']?></h4>
												  </div>
											  </div>
				  
											  <div class="fh5co-tab-content tab-content" data-tab-content="2">
												  <div class="col-md-10 col-md-offset-1">
													  <h3 id="line"><?php echo $data['Content'] ?></h3>
												  </div>
											  </div>
				  
											  <div class="fh5co-tab-content tab-content" data-tab-content="3">
												  <div class="col-md-10 col-md-offset-1">
												  	  <h3 id="line" style="font-size: inherit; text-align: center;"><?php echo $data['ContentExtra'] ?></h3>
												  </div>
											  </div>
										  </div>
				  
									  </div>
								  </div>
							  </div>
						  </div>
				  <div>	
                <?php
                  }
                ?>

<footer id="fh5co-footer" role="contentinfo">
		<div class="container">
			<div class="row row-pb-md">
				<div class="col-md-4 fh5co-widget">
					<h3>Watch Store</h3>
					<p>Đồng hồ Rolex được thiết kế và sáng tạo để trường tồn nhờ bàn tay và khối óc của các thợ chế tác đồng hồ, nhà thiết kế và kỹ sư chuyên biệt, họ đã mang kỹ năng và kiến thức truyền tải vào từng chiếc đồng hồ Rolex. Rolex tự hào giới thiệu những sản phẩm từ các chuyên gia xuất sắc này.</p>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="fh5co-footer-links">
						<h5>Thông tin</h5>
					<hr style="border-top: 1px solid #000; width: 80%; margin-left: 1px;"> 
						<li><a href="about.php">About</a></li>
						<li><a href="services.php">Services</a></li>
						<li><a href="contact.php">Contact</a></li>
						<li><a href="index.php">Shop</a></li>
					</ul>
				</div>
				
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="fh5co-footer-links">
						<h5>Đồng hồ Rolex</h5>
						<hr style="border-top: 1px solid #000; width: 80%; margin-left: 1px;"> 
						<li><a href="../shop-master/product-detail/product.php">Đồng hồ Rolex</a></li>
						<li><a href="../shop-master/cart/index-cart.php/#Nam">Đồng hồ nam</a></li>
						<li><a href="../shop-master/cart/index-cart.php/#Nu">Đồng hồ nữ</a></li>
					</ul>
				</div>
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="fh5co-footer-links">
						<h5>Kênh chính thống</h5>
						<hr style="border-top: 1px solid #000; width: 80%; margin-left: 1px;"> 
						<li><a href="#"><i class="icon-twitter"></i> Twitter</a></li>
						<li><a href="#"><i class="icon-facebook"></i> Facebook</a></li>
						<li><a href="#"><i class="icon-linkedin"></i> Linkedin</a></li>
						<li><a href="#"><i class="icon-instagram"></i> Instagram</a></li>
					</ul>
				</div>

			</div>

			<div class="row copyright">
				<div class="col-md-12 text-center">
					<p>
						<h4 class="block" style="font-weight: 500 ; ">&ldquo;Social Network&rdquo;</h4>
					</p>
					<p>
						<ul class="fh5co-social-icons">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-facebook"></i></a></li>
							<li><a href="#"><i class="icon-linkedin"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
						</ul>
					</p>
				</div>
			</div> 
		</div>
	</footer>
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