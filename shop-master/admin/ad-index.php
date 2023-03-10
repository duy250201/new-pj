<?php 
  include '../users/config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../admin/admin.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="../css/style.css">
	  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/bootstrap.css">
	  <link rel="stylesheet" href="../css/icomoon.css">
    <title>Document</title>
</head>
<style>
  .sidebar, .header-user, .fa-bars { cursor: pointer;}
  #tab, #tab1, #tab2, #tab3, #tab4 {margin-top: 10.5rem;}

	.col-md-6{
		width : 18.7%;
	}
</style>
<body>

    <div class="header">
      <i class="fa fa-bars"></i>
      <h1>Trang Quản Lý </h1>
      <a class="header-user" href="#"><i class="fas fa-user-circle icon"></i></a>
    </div>
    <div class="sidebar">
      <ul>
        <li> <a class="sidebar-list-item" > <i class="fas fa-home icon"></i><em>Dashboard</em></a></li>
        <li> <a class="sidebar-list-item" data-toggle="collapse" data-target="#tab"  role="button" aria-expanded="true"  aria-controls="tab"> <i class="fas fa-user icon"></i><em>Khách hàng</em></a></li>
        <li> <a class="sidebar-list-item" data-toggle="collapse" data-target="#tab1" role="button" aria-expanded="false" aria-controls="tab1"> <i class="fas fa-shopping-bag"></i><em>Danh sách sản phẩm</em></a></li>
        <li> <a class="sidebar-list-item" data-toggle="collapse" data-target="#tab2" role="button" aria-expanded="false" aria-controls="tab2"> <i class="fas fa-toolbox icon"></i><em>Thêm sản phẩm</em></a></li>
        <li> <a class="sidebar-list-item" data-toggle="collapse" data-target="#tab3" role="button" aria-expanded="false" aria-controls="tab3"> <i class="fas fa-shopping-bag"></i><em>Đơn hàng</em></a></li>
        <li> <a class="sidebar-list-item" data-toggle="collapse" data-target="#tab4" role="button" aria-expanded="false" aria-controls="tab4"> <i class="fas fa-shopping-bag"></i><em>Chi tiết đơn hàng</em></a></li>
        <li> <a class="sidebar-list-item" href="ad-resetpw.php"> <i class="fas fa-key"></i><em>Đổi mật khẩu</em></a></li>
        <li> <a class="sidebar-list-item" href="adminlogout.php"> <i class="fas fa-sign-out-alt"></i><em>Đăng xuất</em></a></li>
      </ul>
    </div>
    <div id="tab" class="table collapse" data-parent="sidebar">
            <table >
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Password</th>
                    <th>Action</th>
                </tr>
                <?php
                    $records = mysqli_query($link, "select * from users");
                    while($rows = mysqli_fetch_array($records))
                    {
                ?>
                <tr>
                    <td><?php echo $rows['ID'];?></td>
                    <td><?php echo $rows['username'];?></td>
                    <td><?php echo $rows['password'];?></td>
                    <td><a href="delete.php?id=<?php echo $rows['ID']; ?>">Delete</a>
                </tr>
                <?php
                    }
                ?>
          </table>
    </div>

    <div id="tab1" class="table collapse" data-parent="sidebar">
            <table class="">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Type</th>
                    <th>Slogan</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                <?php
                    $records = mysqli_query($link,"select * from product");
                    while($data = mysqli_fetch_array($records))
                    {
                ?>
                <tr>
                    <td><?php echo $data['ID'];?></td>
                    <td><?php echo $data['Name'];?></td>
                    <td><?php echo $data['Type'];?></td>
                    <td><?php echo $data['Slogan'];?></td>
                    <td><?php echo number_format($data['Price'], 0, ",", ".")?></td>
                    <td>
                    <a href="delete.php?id=<?php echo $data['ID']; ?>">Delete</a>
                    <a href="edit-product.php?id=<?php echo $data['ID']; ?>">Edit</a>
                  </td>
                  </td>
                </tr>
                <?php
                  }
                ?>
          </table>
    </div>
    <div id="tab2" class= "collapse" data-parent="sidebar">
      <form style="flex-direction: column; align-items: center; width: 100%;" class="form-inline" action="ad-insert-product.php" method="post">
						<div class="col-md-6 col-sm-6">
							<div class="form-group">
								<label>ID</label>
								<input type="text" name="ID" class="form-control" disabled> 
								<span class="invalid-feedback"></span>
							</div>
              <div class="form-group">
								<label>Name</label>	
								<input type="text" name="Name" class="form-control">
								<span class="invalid-feedback"></span>
							</div>
              <div class="form-group">
								<label>Type</label>	
								<input type="text" name="Type" class="form-control">
								<span class="invalid-feedback"></span>
							</div>
              <div class="form-group">
								<label>Slogan</label>	
								<input type="text" name="Slogan" class="form-control">
								<span class="invalid-feedback"></span>
							</div>        
              <div class="form-group">
								<label>Price</label>	
								<input type="text" name="Price"  class="form-control">
								<span class="invalid-feedback"></span>
							</div>
						</div>
						<div class="col-md-6 col-sm-6">
							<input type="submit" class="btn btn-default btn-block" style="margin-top:2rem" value="Thêm sản phẩm">
						</div>
			</form>
    </div>
    <div id="tab3" class="table collapse" data-parent="sidebar">
            <table class="">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Total</th>
                    <th>Create orders</th>
                    <th>Action</th>
                </tr>
                <?php
                    $records = mysqli_query($link,"select * from cart");
                    while($data = mysqli_fetch_array($records))
                    {
                ?>
                <tr>
                    <td><?php echo $data['ID_cart'];?></td>
                    <td><?php echo $data['Name_users'];?></td>
                    <td><?php echo number_format($data['Total'], 0, ",", ".")?></td>
                    <td><?php echo $data['create_orders'];?></td>
                    <td>
                    <a href="delete.php?id=<?php echo $data['ID_cart']; ?>">Delete</a>
                  </td>
                  </td>
                </tr>
                <?php
                  }
                ?>
          </table>
    </div>
    <div id="tab4" class="table collapse" data-parent="sidebar">
            <table class="">
                <tr>
                    <th>ID Cart Details</th>
                    <th>ID Cart</th>
                    <th>ID Products</th>
                    <th>Name Products</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Create orders</th>
                </tr>
                <?php
                    $records = mysqli_query($link,"select * from cart_details");
                    while($data = mysqli_fetch_array($records))
                    {
                ?>
                <tr>
                    <td><?php echo $data['ID_cart_details'];?></td>
                    <td><?php echo $data['ID_cart'];?></td>
                    <td><?php echo $data['ID_products'];?></td>
                    <td><?php echo $data['Name_products'];?></td>
                    <td><?php echo $data['Quantity'];?></td>
                    <td><?php echo number_format($data['Price'], 0, ",", ".")?></td>
                    <td><?php echo $data['create_orders'];?></td>
                </tr>
                <?php
                  }
                ?>
          </table>
    </div>
    
</body>
</html>
