<?php
session_start();

require_once("assets/include/membersite_configure.php");

	
				if(isset($_POST['logo_height']))
					{
						$_SESSION['logo_height']=$_POST['logo_height'];
						$logo_height=$_SESSION['logo_height'];
					}else
					{
						$logo_height='';	
					}
					
				
				if(isset($_POST['logo_width']))
					{
						$_SESSION['logo_width']=$_POST['logo_width'];
						$logo_width=$_SESSION['logo_width'];
					}else
					{
						$logo_width='';
					}
				
				
				if(isset($_POST['welcome_color']))
					{
						$_SESSION['welcome_color']=$_POST['welcome_color'];
						$welcome_color=$_SESSION['welcome_color'];
					}else
					{
						$welcome_color='';
					}
								
				
				if(isset($_POST['footer_color']))	
					{
						$_SESSION['footer_color']=$_POST['footer_color'];
						$footer_color=$_SESSION['footer_color'];
					}else
					{
						$footer_color='';
					}
				
				
				if(isset($_POST['button_color']))
					{
						$_SESSION['button_color']=$_POST['button_color'];
						$button_color=$_SESSION['button_color'];
					}else
					{
						$button_color='';
					}
				
				
				if(isset($_POST['hover_color']))
					{
						$_SESSION['hover_color']=$_POST['hover_color'];
						$hover_color=$_SESSION['hover_color'];
						//error_log($_SESSION['hover_color']);
					}else
					{
						$hover_color='';
					}
				
				
				if(isset($_POST['link_color']))
					{
						$_SESSION['link_color']=$_POST['link_color'];
						$link_color=$_SESSION['link_color'];
					}else
					{
						$link_color='';
					}
				
				
				if(isset($_POST['imagesrc']))
					{
						$_SESSION['imagesrc']=$_POST['imagesrc'];
						$imagesrc=$_SESSION['imagesrc'];
					}else
					{
						$imagesrc='';
					}
								
							
?>

<!DOCTYPE html>
		<html>
			<head>
				<meta charset="utf-8">
				<meta name="keywords" content="TSP Online Application" />
				<meta name="description" content="Screening Pros - Online Application Landing Page">
				<meta name="author" content="thescreeningpros.com">  
				<meta name="viewport" content="width=device-width, initial-scale=1.0">	
				<link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">    
				<link rel="stylesheet" href="assets/css/bootstrap.min.css">    
				<link rel="stylesheet" href="assets/owl-carousel/owl.carousel.css" />
				<link rel="stylesheet" href="assets/owl-carousel/owl.theme.css" />
				<link href="assets/sweetalert/sweetalert2.css" rel="stylesheet" type="text/css"/>
				<script src="assets/sweetalert/sweetalert2.min.js" type="text/javascript"></script>
				<script src="assets/js/jquery.min.js" type="text/javascript"></script>
				<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
				<link href="assets/css/bootstrap-colorpicker.min.css" rel="stylesheet">
				<script src="assets/js/bootstrap-colorpicker.min.js"></script> 
				<link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
				<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
				<script src="assets/js/modernizr.min.js"></script>
				
			</head>
			<style>
			.top-message h1 
			{
				font-size:4em;
				text-shadow:0px 1px 0px rgba(0, 0, 0, 0.2);
				color: white;
				text-transform:uppercase;
				font-weight: 700;   
			}
			.top-message h3 
			{
				color: white;
			}	
			.top-message p 
			{
				color: white;
			}		
			.top-message li
			{
				color: white;
				font-weight: 600;
				text-align:left;
				
			}
			.d-btn
			{
				display: table;
				padding: 8px 25px;
				margin-top:20px;
				font-weight:800;
				text-transform:uppercase;
				
			}
			.download-form 
			{
				padding:25px 35px;
				border:2px solid rgb(106, 105, 105);
				margin-top:50px;
				border-radius:10px;
				
			}
			.download-form input 
			{
				margin-bottom:18px;
				height:40px;
				color:grey;
				font-weight:650;
			}
			.started-application h2
			{
				font-size:38px;
				margin-bottom:15px;
				padding-left: 190px;
			}
			.middle-content
			{
				margin-top:30px;
				  
			}
			.contactinformation
			{
				padding:40px;
				color:#f8f8f8;
				
				font-weight:700px;
			}
			.contact-info li
			{
				list-style:none;
				float:left;
				margin-right:96px;
				font-size:28px;
				font-family:Open sans;
				margin-top:5px;
				letter-spacing:0px;
				
			}
			.header 
			{
				padding:12px ;
				z-index:10000;
				height:100%;
			}
			.btn-default:hover 
			{
			background-color: <?php echo $_SESSION['hover_color'];?> !important;
			}
			
			
			</style>
				<body>
					<div class="topbar" >
						<div class="navbar navbar-default navbar-fixed-top header" role="navigation" style="background-color:#f8f8f8; border-color:#e7e7e7;">
							<div class="container">
								<ul class="nav navbar-nav navbar-left" style="list-style:none;">
									<li>
										<h6 style="padding-top:15px;"><img src='<?php echo $_SESSION['imagesrc']; ?>' style="width: <?php echo $_SESSION['logo_width'].'px';?>;height: <?php echo $_SESSION['logo_height'].'px';?>;" class="img-responsive"></h6>
									</li>
								</ul>
								<div class="col-sm-offset-9 col-sm-0">
									<a href="customizeyourstyle.php" id="back_customize" style="font-size:15px;float:right;margin-right:40px;font-size:17px; cursor:pointer;"> Back To Customize</a> 
								</div>
							</div>
						</div>
				   </div>
					<!--page body-->
					
					<div class="page-body" style="background-color:<?php echo $_SESSION['welcome_color'];?>;margin-top:200px;">
						<div class="container">
								<div class="row">
									<div class="col-lg-6">
										<div class="row">
											<div class="top-message">
												<h1>Welcome!</h1>
												<h3>Getting approved is quick and easy</h3>
												<hr>
											
												<p style="font-size: 14px;font-weight: 400;font-family:Open sans;">You are applying for The Screening Pros,</br>Po Box 3338 </br> Chatsworth,CA- 9131</p>
												<ul style="list-style:none;padding-left: 0;">
													<li style="text-align:left;"><i class='fa fa-hand-o-right fa-fw'></i>RENT $1500 PER MONTH</li>
													<li style="text-align:left;"><i class='fa fa-hand-o-right fa-fw'></i>UNIT NO 21A</li>
													<li style="text-align:left;"><i class='fa fa-hand-o-right fa-fw'></i>2X2 BEDROOM</li>
													<li style="text-align:left;"><i class='fa fa-hand-o-right fa-fw'></i>HOLDING DEPOSIT $ 5000</li>
													<li style="text-align:left;"><i class='fa fa-hand-o-right fa-fw'></i>SECURITY DEPOSIT $ 5000</li>
													<li style="text-align:left;"><i class='fa fa-hand-o-right fa-fw'></i>OTHER FEE $ 500</li>
												</ul>
											</div>
										</div>
									</div>
									
									
									
										<div class="col-lg-6">
											<form class="form-control download-form" style="background-color:<?php echo $_SESSION['welcome_color'];?>;" method="POST">
												<div class="row" >
													<div class="col-lg-6">
														<input id="firstname" class="form-control" name="firstname" type="text" placeholder="First name">
													</div>
													<div class="col-lg-6">
														<input id="lastname" class="form-control" name="lastname" type="text" placeholder="Last name">
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12">
														<input id="emailid" class="form-control" name="emailid" type="text" placeholder=" Email Address">
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12">
														<input id="phonenumber" class="form-control" name="phonenumber" type="text" placeholder=" Phone No">
													</div>
												</div>
												<div class="row">
													<div class="col-lg-12">
														<button type="button" id="Start" name="Start" class="btn btn-default d-btn" style="background-color:<?php echo $_SESSION['button_color'];?>;">Start</button>
													</div>
												</div>
											</form>
										</div>
								</div>
							</div>
						</div>
								<div class="container middle-content">
									<div class="col-lg-12">
										<div class="row started-application">
											<h2>Already started an application?&nbsp;<span class="fa fa-arrow-circle-o-right fa-fw">&nbsp;<a href="" style="color:<?php echo $_SESSION['link_color'];?>;">Login</a></span></h2>
										</div>
										<hr>
									</div>
								</div>
								
								 <div class="contactinformation" style="background-color:<?php echo $_SESSION['footer_color'];?>;">
									<div class="container">
										<div class="row">
											<div class="col-lg-12">
												<ul class="contact-info">
													<li><img src="assets/images/fair-housing-logo.jpg" style="width:70px; height:70px;"></li>
													<li><i class="fa fa-phone"></i> (818)444-5252 </li>
													<li><i class="fa fa-envelope"> &nbsp;</i>cdaneena@yahoo.com</li>
													<ul class="list-inline cinfo-social-buttons">
														<li><a href="#" class="btn btn-default btn-lg" style="background-color:#fff; font-size:12px;">Powered By</br><i><img src="./images/tsp-new-logo.png"  style="width:30px; height:30px;"> </i></a></li>
													</ul>
											</div>
										</div>
									</div> 
								</div>
								
								<footer>
									<div class="section text-center">
										<div class="container">
											<div class="row">
												<div class="col-lg-12">
													<span class="copyright text-center medium">Copyright &copy; The Screening Pros, LLC. 2017. All Rights Reserved</span>	
												</div>
											</div>
										</div>
									</div>
								</footer>
				</body>
		</html>