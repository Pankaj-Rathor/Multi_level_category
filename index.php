<?php
require_once 'config/category.php';
?>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<style>
	*{
		box-sizing: border-box;
		margin: 0;
	}
	.dropdown-submenu {
		position: relative;
	}

	.dropdown-submenu .dropdown-menu { 
		top: 0; 
		left: 100%; 
		margin-top: -1px;
	}
	a.test{ 
		color: black; 
		text-decoration: none;
	}
	a.test:hover{ color: #ff1744; } 
	.error{color: red;}
	.e1{
		border: 2px solid darkred;
	}

</style> 
</head> 
<body>
	<h2 class="text-center">Multi Level Category Mangement</h2>
	
	<div style="padding-bottom:5px;"><hr></div>

	<div class="container">
		<div class="row">
			<div class="col-7" style="border-right: 2px solid gray;">
				<h2 class="text-center">Operation On Category</h2>
				<form action="" id="form" method="post" class="addform">
					<div class="form-group">
						<input id="id" type="hidden" name="id" value="">
						<label for="name">Category Name</label>
						<input id="name" class="form-control" type="text" name="name" placeholder="Enter Category Name">
					</div>
					<div class="form-group">
						<label for="name">Parent Id</label>
						<input id="parent_id" class="form-control" type="number" name="parent_id" placeholder="Enter Parent Id">
					</div>
					<div class="form-group">
						<label for="name">Status</label>
						<input id="status" class="form-control" type="number" name="status" placeholder="Enter Status">
					</div>
					<p id="invalidCount" style="color: red;"></p>
					<div class="form-group">
						<input id="" type="hidden" value="">
						<button id="submit" type="submit" class="btn btn-primary btn-block">Add</button>
					</div>
				</form>
				<div style="padding-top:5px;"><hr></div>
				<!-- table view -->
				
			</div>
			<div class="col-5">
				<h2>Category Tree</h2>
				<p>Select Category And Do Operation On That</p>
				<div class="container">                                  
					<div class="dropdown">
						<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">Categories
							<span class="caret"></span></button>
							<?php echo buildTreeView($arr); ?>
						</div>
					</div>

				</div>
			</div>
			<div style="border-bottom: 2px solid darkgray; width: 100%;"></div>

			<div id="viewCat">

			</div>

		</div>

		<!-- jQuery -->
		<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
		
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		
		<script type="text/javascript" src="js/jquery.validate.min.js"></script>
		<script type="text/javascript" src="js/additional-methods.min.js"></script>
		<script type="text/javascript" src="js/validation1.js"></script>
		<script type="text/javascript" src="js/main.js"></script>
	</body>
	</html>