<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="images/banner1.jpg" alt="First slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/banner2.jpg" alt="Second slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/banner3.jpg" alt="Third slide">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>

					<!-- Second content -->
		            <h2><center>Best Sellers</center></h2>

					<div style="width: 100%;height: 100%;display: flex;justify-content: space-between;align-items: center;padding: 30px;">
        				<div style="height: 100%; width: 130px; display: flex; flex-direction: column; justify-content: center; align-items: center;  overflow: hidden;">
							<img src="images/fruitycake.jpg" alt="" style="height:400px;">
							<h4 style="flex: 1;">Fruity Cake</h4>
						</div>
        				<div style="height: 100%; width: 130px; display: flex; flex-direction: column; justify-content: center; align-items: center;  overflow: hidden;">
							<img src="images/almondccake.jpg" alt="" style="height:400px;">
							<h4 style="flex: 1;">Almond Cake</h4>
						</div>
						<div style="height: 100%; width: 130px; display: flex; flex-direction: column; justify-content: center; align-items: center;  overflow: hidden;">
							<img src="images/bomboloni.png" alt="" style="height:400px;">
							<h4 style="flex: 1;">Bomboloni</h4>
						</div>
						<div style="height: 100%; width: 130px; display: flex; flex-direction: column; justify-content: center; align-items: center;  overflow: hidden;">
							<img src="images/chococake.jpg" alt="" style="height:400px;">
							<h4 style="flex: 1;">Chocolate Cake</h4>
						</div>
						<div style="height: 100%; width: 130px; display: flex; flex-direction: column; justify-content: center; align-items: center;  overflow: hidden;">
							<img src="images/strawberryccake.jpg" alt="" style="height:400px;">
							<h4 style="flex: 1;">Strawberry Cheesecake</h4>
						</div>

					</div>

					<!-- Third content -->

					<h2><center>Category</center></h2>

					<div style="width: 100%;height: 50%;display: flex;justify-content: space-between;align-items: center;padding: 30px;">
						<div style="height: 50%; width: 130px; display: flex; flex-direction: column; justify-content: center; align-items: center;  overflow: hidden;">
							<a href="category.php?category=cakes"><img src="images/logo-cakes.jpg" alt="" style="height:100px;"></a>
							<h4 style="flex: 1;">Cakes</h4>
						</div>
						<div style="height: 50%; width: 130px; display: flex; flex-direction: column; justify-content: center; align-items: center;  overflow: hidden;">
							<a href="category.php?category=cookies"><img src="images/logo-cookies.jpg" alt="" style="height:100px;"></a>						
							<h4 style="flex: 1;">Cookies</h4>
						</div>
						<div style="height: 50%; width: 130px; display: flex; flex-direction: column; justify-content: center; align-items: center;  overflow: hidden;">
						<a href="category.php?category=doughnuts"><img src="images/logo-doughnut.jpg" alt="" style="height:100px;"></a>						
							<h4 style="flex: 1;">Doughnuts</h4>
						</div>
						<div style="height: 50%; width: 130px; display: flex; flex-direction: column; justify-content: center; align-items: center;  overflow: hidden;">
						<a href="category.php?category=puddings"><img src="images/logo-pudding.jpg" alt="" style="height:100px;"></a>						
							<h4 style="flex: 1;">Puddings</h4>
						</div>

					</div>


					<?php
		       			// $month = date('m');
		       			// $conn = $pdo->open();

		       			// try{
		       			//  	$inc = 3;	
						//     $stmt = $conn->prepare("SELECT *, SUM(quantity) AS total_qty FROM details LEFT JOIN sales ON sales.id=details.sales_id LEFT JOIN products ON products.id=details.product_id WHERE MONTH(sales_date) = '$month' GROUP BY details.product_id ORDER BY total_qty DESC LIMIT 6");
						//     $stmt->execute();
						//     foreach ($stmt as $row) {
						//     	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						//     	$inc = ($inc == 3) ? 1 : $inc + 1;
	       				// 		if($inc == 1) echo "<div class='row'>";
	       				// 		echo "
	       				// 			<div class='col-sm-4'>
	       				// 				<div class='box box-solid'>
		       			// 					<div class='box-body prod-body'>
		       			// 						<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       			// 						<h5><a href='product.php?product=".$row['slug']."'>".$row['name']."</a></h5>
		       			// 					</div>
		       			// 					<div class='box-footer'>
		       			// 						<b>&#36; ".number_format($row['price'], 2)."</b>
		       			// 					</div>
	       				// 				</div>
	       				// 			</div>
	       				// 		";
	       				// 		if($inc == 3) echo "</div>";
						//     }
						//     if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
						// 	if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						// }
						// catch(PDOException $e){
						// 	echo "There is some problem in connection: " . $e->getMessage();
						// }

						// $pdo->close();

		       		?> 
	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>