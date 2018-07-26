<?php
session_start();
require_once("assets/include/membersite_configure.php");

if(isset($_POST['saveall']))
{
	if(($_POST['saveall']=='save'))
	{
		error_log("hiiiii");
			if(isset($_POST['style_name']))
							{
								$style_Name=$_POST['style_name'];
								
							}else
							{
								$style_Name='';
							}
							
				
				if(isset($_POST['logo_name']))
							{
								$logo_name=$_POST['logo_name'];
								
							}else
							{
								$logo_name='';
							}
				if(isset($_POST['logo_height']))
							{
								$logo_height=$_POST['logo_height'];
								
							}else
							{
								$logo_height='';
							}
				if(isset($_POST['logo_width']))
							{
								$logo_width=$_POST['logo_width'];
								
							}else
							{
								$logo_width='';
							}
				if(isset($_POST['welcome_color']))
							{
								$welcome_color=$_POST['welcome_color'];
								
							}else
							{
								$welcome_color='';
							}
				if(isset($_POST['footer_color']))
							{
								$footer_color=$_POST['footer_color'];
								
							}else
							{
								$footer_color='';
							}
				if(isset($_POST['button_color']))
							{
								$button_color=$_POST['button_color'];
								
							}else
							{
								$button_color='';
							}
				if(isset($_POST['hover_color']))
							{
								$hover_color=$_POST['hover_color'];
								
							}else
							{
								$hover_color='';
							}
				if(isset($_POST['link_color']))
							{
								$link_color=$_POST['link_color'];
								
							}else
							{
								$link_color='';
							}
							
							
							if(isset($_FILES['select_your_logo']))
							{
								$select_your_logoname=$_FILES['select_your_logo']['name'];
								
							}else
							{
								$select_your_logo='';
							}
							
							
							
							if(isset($_POST['select_style_Id']))
							{
								$select_style_Id=$_POST['select_style_Id'];
								
							}else
							{
								$select_style_Id='';
							}
														
							$uploads_dir = 'assets/uploads';
							$uploads_dir =$uploads_dir."/".$_FILES['select_your_logo']['name'];
								
									if ($_FILES["select_your_logo"])
									{
										$tmp_name = $_FILES["select_your_logo"]["tmp_name"];
										
										$name = basename($_FILES["select_your_logo"]["name"]);
										$file=$fgmembersite->moveuploadedfile($tmp_name, $uploads_dir);
									}
								
							
							$inserttocustomizeyourstyle=$fgmembersite->insrtintotable(	$style_Name,
																						$uploads_dir,
																						$select_your_logoname,
																						$logo_name,
																						$logo_height,
																						$logo_width,
																						$welcome_color,
																						$footer_color,
																						$button_color,
																						$hover_color,
																						$link_color,
																						$select_style_Id);
																						
								
		}					
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
				
				
				
				<style>
				.customize_style
				{
					    padding: 10px;
						margin: 2px;
					
						color: #0a57a4;
				}
				
				.cardbox_style
				{
						padding: 10px;
						
						background-color: #f9f9f9;
				}
				.cardbox_row{
					padding:5px;
					
				}
				.cardbox_row1{
					posituion:fixed;
				}
				
				.slidecontainer {
									width: 100%;
								}

				.slider {
						-webkit-appearance: none;
						width: 100%;
						height: 15px;
						border-radius: 5px;
						background: #d3d3d3;
						outline: none;
						opacity: 0.7;
						-webkit-transition: .2s;
						transition: opacity .2s;
						}

				.slider:hover {
								opacity: 1;
						      }

				.slider::-webkit-slider-thumb 
							{
							-webkit-appearance: none;
								appearance: none;
								width: 25px;
								height: 25px;
								border-radius: 50%;
								background: #4CAF50;
								cursor: pointer;
							}

				.slider::-moz-range-thumb 
									{
										width: 25px;
										height: 25px;
										border-radius: 50%;
										background: #4CAF50;
										cursor: pointer;
									}
				</style>
				
				
				
		</head>
		<body>
		
			<div class="topbar" style="background-color: rgb(235, 239, 242);position : fixed; padding: 5px 0 0 5px;width:1368px;z-index:99999;">  
                <div class="navbar navbar-default" role="navigation"  >
                      <div class="container">
                           <ul class="nav navbar-nav navbar-left">
                              <li>
                                  <h4 class="page-titlebigog" style="padding-top: 20px; margin-bottom:20px;"><img src="assets/images/tsp-logo-transparent.png" width="150" height="100" ></h4>
                              </li>
                           </ul>
						<div class="col-sm-offset-9 col-sm-0">
                             <a href="dashboard-home.php" style="font-size:15px;float:right;margin-right:40px;font-size:17px;">Back To Dashboard</a> 
						</div>
					</div>
				</div>
			</div>
						
			<!----start content---->
			
			<!--	<div class="content-page-nonav">
					<div class="content"> -->
			<div class="container">			
				<div class="row">
					<div class="col-sm-12" style="text-align:center;margin-top:165px;">
						<h2 class="customize_style col-sm-" style="background-color: #6c757d1c;">Customize Your Style</h2>
						
					</div>
				</div>
				<div class="row" style="margin:35px;">	
					<div class="col-sm-4" style="text-align:right;">
						Select Style:
					</div>
					<div class="col-sm-4">
						<select class="form-control" id="select_style_change">
							<option value="" selected disabled>Select Style to Edit</option>
							<?php
							$results=$fgmembersite->SelectStyles();
							for($i=0; $i<count($results); $i++)
							{
								echo '<option value="'.$results[$i]['id'].'">'.$results[$i]['StyleName'].'</option>';
							}
							?>
						</select>
							<input type="hidden" id="styleid" name="styleid" value="">
					</div>
					<div class="col-sm-4" style="text-align:center;">
						<button type="button" class="btn btn-primary" id="new_add_style" name="new_add_style">Add Style</button>
					</div>
				</div>
			</div>
								<!--Form contents-->
							
			<div class="container selected_style_details card-box" id="cardbox_main_details" style="padding:15px;background-color:#f9f9f9;">	
					
					 			
			</div>
																

				
				<script src="assets/js/customizeyourstyle.js"></script>
				<script type="text/javascript my_script"></script>
			
				
				
			
				
				
				
				
		</body>
	</html>