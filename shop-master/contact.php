<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Watch Contact</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/icomoon.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/flexslider.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	<link rel="stylesheet" href="css/style.css">
	<script src="js/modernizr-2.6.2.min.js"></script>

	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="container" style="position:relative; margin-top:2rem ;">
			<div class="row">
				<div class="col-md-3 col-xs-2">
					<div id="fh5co-logo"><a href="index.php"><img src="images/logo.png" width="100px" height="50px" alt=""></a></div>
					<div id = "clock" onload="currentTime()" style="font-size:18px; font-weight: 100; color:#d1c286"></div>
				</div>
				<div class="col-md-6 col-xs-6 text-center menu-1">
					<ul>
						<li class="has-dropdown">
							<a href="../shop-master/product-detail/product.php">Shop</a>
						</li>
						<li><a href="about.php">About</a></li>
						<li class="has-dropdown">
							<a href="services.php">Services</a>
						</li>
						<li class="active"><a href="contact.php">Contact</a></li>
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

	<header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" style="background-image:url(images/Background/bg_contact.webp);">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h1 style="color: cadetblue;">đồng hồ Rolex</h1>
							<h2>Hỗ trợ khách hàng</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	
	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="fh5co-contact-info">
						<h3>Thông tin liên hệ</h3>
						<ul>
							<li class="address">123 Nguyễn Ảnh Thủ <br> Quận 12 Tp HCM </li>
							<li class="phone"><a href="#">654387213</a></li>
							<li class="email"><a href="#">rolex@gmail.com</a></li>
							<li class="url"><a href="#">rolexwatch.com</a></li>
						</ul>
					</div>

				</div>
				<div class="col-md-6 animate-box">
					<h3>Liên Lạc</h3>
					<form action="#">
						<div class="row form-group">
							<div class="col-md-6">
								<input type="text" id="fname" class="form-control" placeholder="Nhập tên">
							</div>
							<div class="col-md-6">
								<input type="text" id="lname" class="form-control" placeholder="Nhập họ">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<input type="text" id="email" class="form-control" placeholder="Nhập email">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<input type="text" id="subject" class="form-control" placeholder="Chủ đề của hộp thư">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								<textarea name="message" id="message" cols="30" rows="10" class="form-control" placeholder="Nội dung hộp thư"></textarea>
							</div>
						</div>
						<div class="form-group">
							<script>
								function thongbao () {
									alert("Submit Success");
								}
							</script>
							<input type="submit" onclick="thongbao();" class="btn btn-primary" >
						</div>

					</form>		
				</div>
			</div>
			
		</div>
	</div>
	<div id="fh5co-started" style="background-image:url('images/Background/bg_contact_2.jpg'); background-size: cover; height:300px"></div>

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
						<li><a href="../about.php">About</a></li>
						<li><a href="../services.php">Services</a></li>
						<li><a href="../contact.php">Contact</a></li>
						<li><a href="../index.php">Shop</a></li>
					</ul>
				</div>
				
				<div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
					<ul class="fh5co-footer-links">
						<h5>Đồng hồ Rolex</h5>
						<hr style="border-top: 1px solid #000; width: 80%; margin-left: 1px;"> 
						<li><a href="../shop-master/product-detail/product.php">Đồng hồ Rolex</a></li>
						<li><a href="#">Đồng hồ nam</a></li>
						<li><a href="#">Đồng hồ nữ</a></li>
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

	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.countTo.js"></script>
	<script src="js/jquery.flexslider-min.js"></script>
	<script src="js/google_map.js"></script>
	<script src="js/main.js"></script>
	<script src="js/time.min.js"></script>
	</body>
</html>

