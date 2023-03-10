<?php
include '../users/config.php';
$id=$_GET["id"];
$Name="";
$Type="";
$Slogan="";
$Price="";
	$records = mysqli_query($link, "select * from product where id=$id");
	while($rows = mysqli_fetch_array($records))
	{
		
		$Name=$rows['Name'];
		$Type=$rows['Type'];
		$Slogan=$rows['Slogan'];
		$Price=$rows['Price'];
	}
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
</head>
<style>
	.col-md-6{
		width : 18.7%;
	}
</style>
<body>
	<form style="flex-direction: column; align-items: center; width: 100%;" class="form-inline" action="" method="post">
						<div class="col-md-6 col-sm-6">
              				<div class="form-group">
								<label>Name</label>	
								<input type="text" name="Name" class="form-control" value="<?php echo $Name;?>">
								<span class="invalid-feedback"></span>
							</div>
              				<div class="form-group">
								<label>Type</label>	
								<input type="text" name="Type" class="form-control" value="<?php echo $Type;?>">
								<span class="invalid-feedback"></span>
							</div>
              				<div class="form-group">
								<label>Slogan</label>	
								<input type="text" name="Slogan" class="form-control" value="<?php echo $Slogan;?>">
								<span class="invalid-feedback"></span>
							</div>        
              				<div class="form-group">
								<label>Price</label>	
								<input type="text" name="Price"  class="form-control" value="<?php echo $Price;?>">
								<span class="invalid-feedback"></span>
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<input type="submit" name="update" class="btn btn-default btn-block" style="margin-top:2rem" value="Cập nhật">
						</div>
	</form>
</body>
</html>

<?php 
	if(isset($_POST["update"])) 
	{
		$records = mysqli_query($link, "update product set Name='$_POST[Name]', Type='$_POST[Type]', Slogan='$_POST[Slogan]', Price='$_POST[Price]' where id=$id ");
	?>
	<script type="text/javascript">
		window.location="ad-index.php";
	</script>
	<?php
	}
?>