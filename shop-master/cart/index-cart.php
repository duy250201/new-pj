<?php 
	session_start();
	error_reporting(0);
?>
<!DOCTYPE html>
<html lang="en">
	<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link href="../cart/cartstyle.css">
	<title>Document</title>
</head>
<style>
	.col-2{
		margin-top: 3rem!important ; 
		margin-bottom: 3rem!important ;
		text-align: center!important ;
	}
	.col-sm-8{
		width: 100%!important ;
	}
	.m-0, .mx-0{
		justify-content: center;
	}
	.p-0{
		text-align: center;
	}
</style>
<body>
	<?php 
		include '../users/config.php';
		if(!isset($_SESSION["index-cart"])) {
			$_SESSION["index-cart"] = array();
		}
		$success = false;
		if(isset($_GET['action'])){
			function update_cart($add = false){
				foreach ($_POST['quantity'] as $id => $quantity) {
					if($quantity == 0 ){
						unset($_SESSION["index-cart"][$id]);
					}else{
						if($add){
							$_SESSION["index-cart"][$id] += $quantity;
							header('Location: ../cart/index-cart.php');
						}else{
							$_SESSION["index-cart"][$id] = $quantity;
						}
					}
				}
			}
			switch($_GET['action']) {
				case "add":
					if(isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
						header("location: ../users/us-login.php");
						foreach ($_POST['quantity'] as $id => $quantity) {
							if($quantity == 0 ){
								unset($_SESSION["index-cart"][$id]);
							}else{
								if($add){
									$_SESSION["index-cart"][$id] += $quantity;
									header('Location: ../cart/index-cart.php');
								}else{
									$_SESSION["index-cart"][$id] = $quantity;
								}
							}
						}
					}
					exit;
					// update_cart(true);
					header('Location: ../cart/index-cart.php');
					break;
				case"delete":
					if(isset($_GET['ID'])) {
						unset($_SESSION["index-cart"][$_GET['ID']]);
					}
					header('Location: ../cart/index-cart.php');
					break;
				case"submit":
					if(isset($_POST['update_click'])){
						update_cart();
						header('Location: ../cart/index-cart.php');
					}elseif($_POST['order_click']){
						if(!empty($_POST['quantity'])){
							$records = mysqli_query($link,"select ID, Name, Type, Image, Price from product where id IN (".implode(",", array_keys($_POST['quantity'])).")");
							$total = 0;
							while($data = mysqli_fetch_array($records)){
								$order_products[] = $data;
								$total += $data['Price'] * $_POST['quantity'][$data['ID']];
							}
							$insert_order = mysqli_query($link, "INSERT INTO `cart` (`ID_cart`, `Name_users`, `Total`, `create_orders`) VALUES (NULL, '".$_SESSION["username"]."', '".$total."', '".date("d/m/Y H:i")."');");
							$orderID = $link -> insert_id;
							$insertString = "";
							foreach($order_products as $key => $records)
							{
								$insertString .= "(NULL, '".$orderID."', '".$records['ID']."', '".$records['Name']."' ,'".$_POST['quantity'][$records['ID']]."', '".$records['Price']."', '".date("d/m/Y H:i")."')";
								if($key != count($order_products) - 1) {
									$insertString .=",";
								}
							}
							$insert_order = mysqli_query($link, "INSERT INTO `cart_details` (`ID_cart_details`, `ID_cart`, `ID_products`, `Name_products`, `Quantity`, `Price`, `create_orders`) VALUES ".$insertString.";");
							$success = "Đặt thành công";
							unset($_SESSION['index-cart']);
						}
					}
					break;
			}
		}
		if(!empty($_SESSION["index-cart"])) {
			$records = mysqli_query($link,"select ID, Name, Type, Image, Price from product where id IN (".implode(",",array_keys($_SESSION["index-cart"])).")");
		}
	?>
<main id="cart">
		
	<div style="display: flex; justify-content: space-between;">
			<p>
				<a href="../product-detail/product.php" class="btn btn-danger ml-3">&#11178; shop</a>
			</p>
			<p>
				<a href="../users/us-resetpw.php" class="btn btn-danger ml-3">Đổi mật khẩu</a>
				<a href="../users/logout.php" class="btn btn-danger ml-3">Đăng xuất</a>
			</p>
	</div>
	<h1 style="text-align:center; ">Giỏ hàng của bạn <?php echo htmlspecialchars($_SESSION["username"]); ?>
		<div style="margin-top:14rem ;">
			<?php if(!empty($success)) { ?>
					<div>
						<?=$success?>. <a style="text-align:center; text-decoration: none;" href="../product-detail/product.php">Tiếp tục mua hàng</a>
					</div>
			<?php } ?>
		</div>
	</h1>
	
	<form action="index-cart.php?action=submit" method="post" style="margin-top: -10rem;">
		<div class="container-fluid" style="display: flex; width:100%">
			<div class="row align-items-start" style="width:100%">
				<?php 
				if(!empty($records))
				{
					$total = 0;
					$num = 1;
					while($data = mysqli_fetch_array($records))
					{
				?>
				<div class="col-12 col-sm-8 items" style="display: flow-root;">
					<div class="cartItem row align-items-start" style="display:flex">
						<div class="col-2">
							<p><?=$num++;?></p> <!--STT-->
						</div>
					<div class="col-3 mb-2">
						<img class="w-100" style="width: 100px!important"  src="../<?=$data['Image']?>" alt="art image"> <!--Image-->
					</div>
					<div class="col-3 mb-2" style="margin-top: 2rem;">
						<h6 class=""><?=$data['Name']?></h6> <!--Name-->
						<p class="pl-1 mb-0"><?=$data['Type']?></p> <!--Type-->
						<p class="pl-1 mb-0"><?= number_format($data['Price'] * $_SESSION["index-cart"][$data['ID']], 0, ",", ".")?></p> <!--Price-->
					</div>
					<div class="col-2">
						<input sclass="cartItemQuantity p-1 text-center" style="width:120px" type="text" value="<?=$_SESSION["index-cart"][$data['ID']]?>" name=quantity[<?=$data['ID']?>]><!--Quantity-->
					</div>
					<div class="col-2">
						<a id="cartItem1Price" href="index-cart.php?action=delete&ID=<?=$data['ID']?>">Xoá</a><!--Action-->
					</div>
				</div>
				<?php
						$total += $data['Price'] * $_SESSION["index-cart"][$data['ID']];
						$tax = 600000;
						$num++;
					}
					?>
				<div style="display: flex; flex-wrap: nowrap; flex-direction: row-reverse;">
						<input type="submit" name="update_click" value="Cập nhật"> <!--Action-->
				</div>
			</div>
			<hr />
			<div class="col-12 col-sm-4 p-3 proceed form" style="margin: 0 30rem">
			<div class="row m-0">
			<div class="col-sm-8 p-0">
				<h6>Subtotal</h6>
			</div>
			<div class="col-sm-4 p-0">
				<p id="subtotal"><?= number_format($total, 0, ",", ".")?></p><!--Price-->
			</div>
			</div>
			<div class="row m-0">
			<div class="col-sm-8 p-0 ">
				<h6>Tax</h6>
			</div>
			<div class="col-sm-4 p-0">
				<p id="tax"><?= number_format($tax, 0, ",", ".")?></p>
			</div>
			</div>
			<hr>
			<div class="row mx-0 mb-2">
			<div class="col-sm-8 p-0 d-inline">
				<h5>Total</h5> <!--Total cart-->
			</div>
			<div class="col-sm-4 p-0">
				<p id="total"><?= number_format($total + $tax, 0, ",", ".")?></p>
			</div>
			</div>
			<div class="p-0">
				<input type="submit" name="order_click" value="Đặt hàng"> <!--checkout-->
			</div>
		</div>
					<?php
				}
					
				?>
			</div>	
		</div>
	</form>	
  </div>
</main>
<footer class="container">
</footer>
</body>
</html>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>