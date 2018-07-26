<?php


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
		<link href="assets/css/icons.css" rel="stylesheet" type="text/css" />
		<script src="assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
		<link href="assets/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<script src="assets/js/bootstrap-colorpicker.min.js"></script> 
		<link href="assets/css/menu.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
		<script src="assets/js/modernizr.min.js"></script>
		
		
   
			<style>
			.header
			{
				height:130px;
				background-color:#FFF;
				
			}
			.fixed-left
			{
				font-weight:600;
			}
			pack
			{
					color: #656565;
					font-weight: 400;
					font-family: Open sans;
			}
			.header-right
			{
					
					color: #656565;
					font-weight: 400;
					font-family: Open sans;
			}
			li
			{
				padding:5px;
				
			}
			.nav-tabs
			{
			border-bottom: none;
			
			}
			a
			{
			    color:#656565;
				text-decoration: none;
				background-color: transparent;
		
			}
			.first-row
			{
				background-color:white;
				margin-top:7px;
				padding-bottom:20px;
				border-radius: 10px;
				
			
			}
			.first-row:hover 
			{
			background-color:#e0e0e555;  !important;
			}
			.first-row1:hover 
			{
			background-color:#e0e0e555;  !important;
			}
			
			.first-row1
			{
				padding-bottom:20px;	
				background-color:white;
				border-radius: 10px;
			}
			
			.first-row label
			{
				font-weight:650;
				color:#656565;
				font-size:14px;
			}
			.first-row input 
			{
				font-weight:650;
				color:#656565;
				font-size:14px;
				margin:2px;
			}
			
			.first-row1 input 
			{
				font-weight:650;
				color:#656565;
				font-size:14px;
				margin:2px;
			}
			.top-bar
			{
				height: 58px;
				background-color: white;
				width: 1310px;
				font-size: 15px;
				padding-top: 6px;
			}
			legend
			{
				background-color:white;
				height: 45px;
				padding-top: 6px;
				margin-top: 20px;
			}
			
			
			
			</style>
	</head>
	
		<body class="fixed-left">
			<nav class="navbar navbar-default navbar-fixed-top header">
				<div class="container" style="width:100% !important;margin-left:-15px;margin-top:20px;">
					<div class="navbar-header">
						<a href="#"><img  style="width:200px;height:100px" src="assets/images/tsp-default-home-logo.png"></a>
					</div>
					
					<div class="header-right" style="float:right;">
						<p><i class="fa fa-home"></i>&nbsp The Screening Pros,<br>Po Box 3338,<br>Chatsworth,CA-91913</p>
					</div>
				</div>
			</nav>
			
			<div class="container" style="margin-left:3px;margin-top:23px;">
				<form method="post">
					<div class="col-lg-12 top-bar" >
						<ul class="nav nav-tabs">
						<li class=""><a href="#" data-toggle="tab"><i class="fa fa-legal"></i>Terms & Policy</a></li>
						<li><a href="#service-one" data-toggle="tab"><i class="fa fa-male"></i>Applicant Info</a></li>
						<li><a href="#" data-toggle="tab"><i class="fa fa-group"></i>Additional Applicant</a></li>
						<li><a href="#" data-toggle="tab"><i class="fa fa-legal"></i>Additional Occupant</a></li>
						<li><a href="#" data-toggle="tab"><i class="fa fa-legal"></i>Authorization</a></li>
						<li><a href="#" data-toggle="tab"><i class="fa fa-money"></i>Payment</a></li>
						<li><a href="#" data-toggle="tab"><i class="fa fa-folder"></i>Document</a></li>
						</ul>
					</div>
								<!--page content-->
						<div class="row" id="service-one" style="background-color:#80808024;padding:5px;width:1330px;margin-top:97px;">
						
											<!--start of contact info-->
							<div class="table-responsive card-box col-md-12 first-row" id="contactinfo">
								<legend class="col-md-12"><span><i class="fa fa-user"></i></span>&nbsp; Contact Information</legend><hr>
									 <div class="row">
										<div class="col-md-3">
											 <label for="firstname">First Name</label>
											 <input type="text" class="form-control" name="first_name" value="" id="first_name" maxlength="50" style="border-left: 2px solid red;">
											 <span id='register_firstname_errorloc' class='error'></span>
									
										</div>  
										<div class="col-md-3">
											<label for="middletname">Middle Name</label>
											<input type="text" class="form-control" name="middle_name" maxlength="50" id="middle_name" value="">
									
										</div>  
										<div class="col-md-3">
											 <label for="lasttname">Last Name</label>
											 <input type="text" class="form-control" name="last_name" maxlength="50" id="last_name" value="" style="border-left: 2px solid red;">
											 <span id='register_lasttname_errorloc' class='error'></span>
										</div>  
										<div class="col-md-3">
											<label for="suffix">Suffix</label>
												<select class=" form-control" name="suffix" id="suffix" style="font-weight:650;color:#656565;font-size:14px;">
													  <option value="" selected>Suffix</option>
													  <option value="JR" >JR</option>
													  <option value="SR" >SR</option>
													  <option value="I" >I</option>
													  <option value="II" >II</option>
													  <option value="III" >III</option>
													  <option value="IV" >IV</option>
													  <option value="V" >V</option>
												  </select>                                
										</div>  
									</div>
									<div class="row">
										 <div class="col-md-2">
											 <label for="ssn">SSN/ITIN</label>
											 <input type="text" class="form-control ssn" name="ssn" id="ssn" value="" style="border-left: 2px solid red;" value="">
											 <span id='register_ssn_errorloc' class='error'></span>
										</div>  
										<div class="col-md-1">
											<label for="tooltip"></label><br>
											<div class="inlinetooltip" style="padding-top: 10px;"><img src="assets/images/round-question.png" alt="" style="vertical-align: middle;" /></div>  
										</div> 
										<div class="col-md-3">
											<label for="dlno">D/L Number</label>
											<input type="text" class="form-control" name="dlno" maxlength="20" id="dlno" value="">
										</div>  
										<div class="col-md-3">
											<label>D/L State </label>
											<select id="state" name="state" class="form-control" style="font-weight:650;color:#656565;font-size:14px;">
											 <option val="" selected>Select State</option>
											 <option value=AK>Alaska</option> <br>
											 <option value=AZ>Arizona</option> <br>
											 <option value=AR>Arkansas</option> <br>
											 <option value=CA>California</option> <br>
											 <option value=CO>Colorado</option> <br>
											 <option value=CT>Connecticut</option> <br>
											 <option value=DE>Delaware</option> <br>
											 <option value=DC>District of Columbia</option> <br>
											 <option value=FL>Florida</option> <br>
											 <option value=GA>Georgia</option> <br>
											 <option value=HI>Hawaii</option> <br>
											 <option value=ID>Idaho</option> <br>
											 <option value=IL>Illinois</option> <br>
											 <option value=IN>Indiana</option> <br>
											 <option value=IA>Iowa</option> <br>
											 <option value=KS>Kansas</option> <br>
											 <option value=KY>Kentucky</option> <br>
											 <option value=LA>Louisiana</option> <br>
											 <option value=ME>Maine</option> <br>
											 <option value=MD>Maryland</option> <br>
											 <option value=MA>Massachusetts</option> <br>
											 <option value=MI>Michigan</option> <br>
											 <option value=MN>Minnesota</option> <br>
											 <option value=MS>Mississippi</option> <br>
											 <option value=MO>Missouri</option> <br>
											 <option value=MT>Montana</option> <br>
											 <option value=NE>Nebraska</option> <br>
											 <option value=NV>Nevada</option> <br>
											 <option value=NH>New Hampshire</option> <br>
											 <option value=NJ>New Jersey</option> <br>
											 <option value=NM>New Mexico</option> <br>
											 <option value=NY>New York</option> <br>
											 <option value=NC>North Carolina</option> <br>
											 <option value=ND>North Dakota</option> <br>
											 <option value=OH>Ohio</option> <br>
											 <option value=OK>Oklahoma</option> <br>
											 <option value=OR>Oregon</option> <br>
											 <option value=PA>Pennsylvania</option> <br>
											 <option value=RI>Rhode Island</option> <br>
											 <option value=SC>South Carolina</option> <br>
											 </select>
										</div>
										<div class="col-md-3">
											<label class="control-label">Date of Birth</label> 
											<input type="text" id="datepicker-dob" class="form-control  input-append date"  value="" style="border-left: 2px solid red; width:242px;">
											<!--<span class="input-group-addon add-on"><span class="glyphicon glyphicon-calendar"></span>-->
											<span id='register_datepicker-dob_errorloc' class='error'></span>
										</div>  
									</div>
									 <div class="row">
										<div class="col-md-3">
											 <label for="email1">E-Mail</label>
											 <input type="email1" class="form-control" name="email1" maxlength="100" id="email1" value="" style="border-left: 2px solid red;">
											 <span id='register_email1_errorloc' class='error'></span>
										</div>  
										<div class="col-md-3">
											<label for="homephone">Home Phone</label>
											<input type="text" class="form-control mobile1" name="homephone"  maxlength="10" id="homephone" value="">
										</div>  
										<div class="col-md-3">
											 <label for="workphone">Work Phone</label>
											 <input type="text" class="form-control mobile1" name="workphone"  maxlength="10" id="workphone" value="">
										</div>  
										<div class="col-md-3">
											<label for="mobile">Mobile</label>
											<input type="text" class="form-control mobile1" name="mobile" maxlength="10" id="mobile" style="border-left: 2px solid red;" value="">
											<span id='register_mobile_errorloc' class='error'></span>
										</div>  
									</div>  
                                </div>
								
											<!--End of contact info-->
											<!--start of income info-->
								<div class="table-responsive card-box col-md-12 first-row" id="paymentinfo">
									   <legend class="col-xs-12"><span class="glyphicon glyphicon-usd"></span>&nbsp;Income and Other Lease Information</legend>
										   <div class="row">
												 <div class="col-md-3">
													  <label for="emp_income">Income From All Sources</label>
												 <center>
													 <div class="row">
															<div class="input-group col-md-11">
															 <div class="input-group-addon" style="border-radius: 5px;border-left: 2px solid red;">
															  $
															</div>
															<input class="form-control" name="emp_income" id="emp_income" maxlength="10" value=""  type="text"/>
															</div>
															<span id='register_emp_income_errorloc' class='error'></span>
														</div>
												 </center>
												</div>  
												<div class="col-md-1"> 
													<label for="emp_income"></label><br>
													<input id="incometype" name="incometype" value="M" type="radio">&nbsp;Monthly<br><input id="incometype" name="incometype" value="Y" type="radio">&nbsp;Yearly                                
													<span id='register_incometype_errorloc' class='error'></span>
												</div>  
												<div class="col-md-3">
													<label for="moveindate">Desire Move-in Date</label>
													<br />
													<input class="form-control" name="moveindate" id="moveindate" placeholder="mm/dd/yyyy" value="" type="text"/>                                
												</div>  
												<div class="col-md-3">
													<label for="desireleaseterm">Desire Lease Term</label>
													<br />
													<select id="desireleaseterm"  name="desireleaseterm" class="form-control"><option val="" selected>Select Lease Term</option></select>                                
												</div>
												<div class="col-md-2" id="others_select" style="display:none"><br><input id="other" class="form-control other" maxlength="15" name="other" type="text" style="border-left: 2px solid red;"  placeholder="Please provide details"  ><span id="applicant_other_errorloc" class="error" style="color:red"></span></div>                            
                                		</div>   
								</div>
										<!--End of income info-->
										<!--start of address info-->
								<div class="table-responsive card-box col-md-12 first-row" id="addressinfo">
									<legend class="col-xs-12"><span class="glyphicon glyphicon-home"></span>&nbsp; Current Address</legend>
									<div class="row">
										<div class="col-md-12" >
											&nbsp;&nbsp;&nbsp;<label for="renthistory" class="control-label" style="font-size: 18px; font-weight: bold">Do you rent or own your current residence?</label><br>
										</div>
									</div><br>
									<div class="row">
										<div class="col-md-3">
											 <div class="switch-toggle switch-3 switch-candy" >
												<input id="rent" name="rent" type="radio" value="rent" checked="checked"><label>RENT</label>
												<input id="own" name="rent" type="radio"  value="own"><label>OWN</label>
												<input id="other" name="rent" value="others" type="radio"><label>OTHERS</label>         
				  							</div>
										</div>   
									</div> <br>
									<div class="row">
										<div class="col-md-4">
											 <label for="add1_streetadd">Street Address</label>
											 <input type="text" class="form-control" name="add1_streetadd" maxlength="100" id="add1_streetadd" value="" style="border-left: 2px solid red;">
											<span id='register_add1_streetadd_errorloc' class='error'></span>
										</div>  
										<div class="col-md-4">
											 <label for="add1_unitapp">Unit/Apartment</label>
											 <input type="text" class="form-control" name="add1_unitapp" maxlength="20" value="" id="add1_unitapp">
										</div>  
										<div class="col-md-4">
											<label for="add1_city">City</label>
											<input type="text" class="form-control" name="add1_city" maxlength="50" id="add1_city" value="" style="border-left: 2px solid red;">
											<span id='register_add1_city_errorloc' class='error'></span>
										</div>  
									</div>
									<div class="row">
										<div class="col-md-4">
											 <label for="add1_state">Select State</label>
											 <select id="add1_state" name="add1_state" class="form-control" style="border-left: 2px solid red;">
												<option val="" selected>Select State</option>
												<option value=AK>Alaska</option> <br>
												<option value=AZ>Arizona</option> <br>
												<option value=AR>Arkansas</option> <br>
												<option value=CA>California</option> <br>
												<option value=CO>Colorado</option> <br>
												<option value=CT>Connecticut</option> <br>
												<option value=DE>Delaware</option> <br>
												<option value=DC>District of Columbia</option> <br>
												<option value=FL>Florida</option> <br>
												<option value=GA>Georgia</option> <br>
												<option value=HI>Hawaii</option> <br>
												<option value=ID>Idaho</option> <br>
												<option value=IL>Illinois</option> <br>
												<option value=IN>Indiana</option> <br>
												<option value=IA>Iowa</option> <br>
												<option value=KS>Kansas</option> <br>
												<option value=KY>Kentucky</option> <br>
												<option value=LA>Louisiana</option> <br>
												<option value=ME>Maine</option> <br>
												<option value=MD>Maryland</option> <br>
												<option value=MA>Massachusetts</option> <br>
												<option value=MI>Michigan</option> <br>
												<option value=MN>Minnesota</option> <br>
												<option value=MS>Mississippi</option> <br>
												<option value=MO>Missouri</option> <br>
												<option value=MT>Montana</option> <br>
												<option value=NE>Nebraska</option> <br>
												<option value=NV>Nevada</option> <br>
												<option value=NH>New Hampshire</option> <br>
												<option value=NJ>New Jersey</option> <br>
												<option value=NM>New Mexico</option> <br>
												<option value=NY>New York</option> <br>
												<option value=NC>North Carolina</option> <br>
												<option value=ND>North Dakota</option> <br>
												<option value=OH>Ohio</option> <br>
												<option value=OK>Oklahoma</option> <br>
												<option value=OR>Oregon</option> <br>
												<option value=PA>Pennsylvania</option> <br>
												<option value=RI>Rhode Island</option> <br>
												<option value=SC>South Carolina</option> <br>
												<option value=SD>South Dakota</option> <br>
												<option value=TN>Tennessee</option> <br>
												<option value=TX>Texas</option> <br>
												<option value=UT>Utah</option> <br>
												<option value=VT>Vermont</option> <br>
												<option value=VA>Virginia</option> <br>
												<option value=WA>Washington</option> <br>
												<option value=WV>West Virginia</option> <br>
												<option value=WI>Wisconsin</option> <br>
												<option value=WY>Wyoming</option> <br>
												<option value=AS>American Samoa</option> <br>
												<option value=GU>Guam</option> <br>
												<option value=PR>Puerto Rico</option> <br>
												<option value=VI>Virgin Islands</option> <br>
												<option value=AL>Alabama</option> <br> 
											 </select>
											 <span id='register_add1_state_errorloc' class='error'></span>
										</div> 
										<div class="col-md-2">
											<label for="add1_zip">Zip Code</label>
											<input type="text"  class="form-control zip1" name="add1_zip" value="" id="add1_zip"  maxlength="5" style="border-left: 2px solid red;">
											<span id='register_add1_zip_errorloc' class='error'></span>
										</div>  
										<div class="col-md-2">
										</div>
										<div class="col-md-4">
										</div>
									</div>
									 <div class="row">
										<div class="col-md-4">
												<label for="rent">Rent/Mortgage</label>
										   <div class="input-group">
											 <div class="input-group-addon"  style="border-radius: 5px;border-left: 2px solid red;">
												$
											 </div>
												<input type="text" class="form-control button_add" maxlength="10"  value="" name="cur_rent" id="cur_rent" maxlength="11">
												<span id='register_rent_errorloc' class='error'></span>
										   </div>  
										</div>  
										<div class="col-md-8">
											  <label for="reason">Reason For Leaving</label>
											  <textarea name="reason" id="reason" cols="90" maxlength="100" rows="3"></textarea>
										</div>  
									</div> 
								</div>
												<!--End of address info-->
												<!--start of previous address info-->
								<div class="table-responsive card-box col-md-12 first-row" id="previousaddressinfo">
									<legend class="col-xs-12"><span class="glyphicon glyphicon-home"></span>&nbsp; Previous Address</legend>
									<div class="row">
										<div class="col-md-4">
											 <label for="add1_streetadd">Street Address</label>
											 <input type="text" class="form-control" name="add1_streetadd" maxlength="100" id="add1_streetadd" value="" style="border-left: 2px solid red;">
											<span id='register_add1_streetadd_errorloc' class='error'></span>
										</div>  
										<div class="col-md-4">
											 <label for="add1_unitapp">Unit/Apartment</label>
											 <input type="text" class="form-control" name="add1_unitapp" maxlength="20" value="" id="add1_unitapp">
										</div>  
										<div class="col-md-4">
											<label for="add1_city">City</label>
											<input type="text" class="form-control" name="add1_city" maxlength="50" id="add1_city" value="" style="border-left: 2px solid red;">
											<span id='register_add1_city_errorloc' class='error'></span>
										</div>  
									</div>
									<div class="row">
										<div class="col-md-4">
											 <label for="add1_state">Select State</label>
											 <select id="add1_state" name="add1_state" class="form-control" style="border-left: 2px solid red;">
												<option val="" selected>Select State</option>
												<option value=AK>Alaska</option> <br>
												<option value=AZ>Arizona</option> <br>
												<option value=AR>Arkansas</option> <br>
												<option value=CA>California</option> <br>
												<option value=CO>Colorado</option> <br>
												<option value=CT>Connecticut</option> <br>
												<option value=DE>Delaware</option> <br>
												<option value=DC>District of Columbia</option> <br>
												<option value=FL>Florida</option> <br>
												<option value=GA>Georgia</option> <br>
												<option value=HI>Hawaii</option> <br>
												<option value=ID>Idaho</option> <br>
												<option value=IL>Illinois</option> <br>
												<option value=IN>Indiana</option> <br>
												<option value=IA>Iowa</option> <br>
												<option value=KS>Kansas</option> <br>
												<option value=KY>Kentucky</option> <br>
												<option value=LA>Louisiana</option> <br>
												<option value=ME>Maine</option> <br>
												<option value=MD>Maryland</option> <br>
												<option value=MA>Massachusetts</option> <br>
												<option value=MI>Michigan</option> <br>
												<option value=MN>Minnesota</option> <br>
												<option value=MS>Mississippi</option> <br>
												<option value=MO>Missouri</option> <br>
												<option value=MT>Montana</option> <br>
												<option value=NE>Nebraska</option> <br>
												<option value=NV>Nevada</option> <br>
												<option value=NH>New Hampshire</option> <br>
												<option value=NJ>New Jersey</option> <br>
												<option value=NM>New Mexico</option> <br>
												<option value=NY>New York</option> <br>
												<option value=NC>North Carolina</option> <br>
												<option value=ND>North Dakota</option> <br>
												<option value=OH>Ohio</option> <br>
												<option value=OK>Oklahoma</option> <br>
												<option value=OR>Oregon</option> <br>
												<option value=PA>Pennsylvania</option> <br>
												<option value=RI>Rhode Island</option> <br>
												<option value=SC>South Carolina</option> <br>
												<option value=SD>South Dakota</option> <br>
												<option value=TN>Tennessee</option> <br>
												<option value=TX>Texas</option> <br>
												<option value=UT>Utah</option> <br>
												<option value=VT>Vermont</option> <br>
												<option value=VA>Virginia</option> <br>
												<option value=WA>Washington</option> <br>
												<option value=WV>West Virginia</option> <br>
												<option value=WI>Wisconsin</option> <br>
												<option value=WY>Wyoming</option> <br>
												<option value=AS>American Samoa</option> <br>
												<option value=GU>Guam</option> <br>
												<option value=PR>Puerto Rico</option> <br>
												<option value=VI>Virgin Islands</option> <br>
												<option value=AL>Alabama</option> <br> 
											 </select>
											 <span id='register_add1_state_errorloc' class='error'></span>
										</div> 
										<div class="col-md-2">
											<label for="add1_zip">Zip Code</label>
											<input type="text"  class="form-control zip1" name="add1_zip" value="" id="add1_zip"  maxlength="5" style="border-left: 2px solid red;">
											<span id='register_add1_zip_errorloc' class='error'></span>
										</div>  
										<div class="col-md-2">
										</div>
										<div class="col-md-4">
										</div>
									</div>
								</div>
												<!--end of previous address in info-->
												<!--start of Employement info-->
								<div class="col-md-12 card-box first-row">
									<div class="row">
										<div class="col-md-12">
											<label for="runcriminal" class="control-label" style="font-size: 20px; font-weight: bold;padding-top: 14px;">I am  currently Un-employed</label>
											&nbsp;&nbsp;&nbsp;<input  id="currntly_emp" name="currntly_emp" type="checkbox" value="Y" class="btn btn-success" style="width: 20px; height: 20px; margin-top: -5px;">                                
										</div> 
									</div>
								</div>
											
													<!--start of current Employement info-->
												
								<div class="table-responsive card-box col-md-12 first-row1" id="currentemployement">
									<legend class="col-xs-12"><span class="glyphicon glyphicon-th-list" ></span>&nbsp; Current Employment</legend>
										<div class="row">
											<div class="employername1 col-md-4">
												<label for="employername1">Employer name</label>
												<input type="text" class="form-control" name="employername1" maxlength="100" id="employername1" value="" style="border-left: 2px solid red;">
												<span id='register_employername1_errorloc' class='error'></span>
											</div>  
											<div class="empstreet_add1 col-md-4">
												<label for="empstreet_add1">Street Address</label>
												<input type="text" class="form-control" name="empstreet_add1" maxlength="100" value="" id="empstreet_add1" style="border-left: 2px solid red;">
												<span id='register_empstreet_add1_errorloc' class='error'></span>
											</div>  
											<div class="empunit_app1 col-md-4">
												 <label for="empunit_app1">Suite/Floor</label>
												 <input type="text" class="form-control" name="empunit_app1" maxlength="10" value="" id="empunit_app1">
											</div>  
										</div>
										<div class="row">
											<div class="empcity col-md-3">
												<label for="empcity1">City</label>
												<input type="text" class="form-control" name="empcity1" maxlength="50" value="" id="empcity1" style="border-left: 2px solid red;">
												<span id='register_empcity1_errorloc' class='error'></span>
											</div>  
											<div class="empstate1 col-md-3">
												<label for="empstate1">Select State</label>
												<select id="empstate1" name="empstate1" class="form-control" style="border-left: 2px solid red;">
												   <option val="" selected>Select State</option>
												   <option value=AK>Alaska</option> <br>
												   <option value=AZ>Arizona</option> <br>
												   <option value=AR>Arkansas</option> <br>
												   <option value=CA>California</option> <br>
												   <option value=CO>Colorado</option> <br>
												   <option value=CT>Connecticut</option> <br>
												   <option value=DE>Delaware</option> <br>
												   <option value=DC>District of Columbia</option> <br>
												   <option value=FL>Florida</option> <br>
												   <option value=GA>Georgia</option> <br>
												   <option value=HI>Hawaii</option> <br>
												   <option value=ID>Idaho</option> <br>
												   <option value=IL>Illinois</option> <br>
												   <option value=IN>Indiana</option> <br>
												   <option value=IA>Iowa</option> <br>
												   <option value=KS>Kansas</option> <br>
												   <option value=KY>Kentucky</option> <br>
												   <option value=LA>Louisiana</option> <br>
												   <option value=ME>Maine</option> <br>
												   <option value=MD>Maryland</option> <br>
												   <option value=MA>Massachusetts</option> <br>
												   <option value=MI>Michigan</option> <br>
												   <option value=MN>Minnesota</option> <br>
												   <option value=MS>Mississippi</option> <br>
												   <option value=MO>Missouri</option> <br>
												   <option value=MT>Montana</option> <br>
												   <option value=NE>Nebraska</option> <br>
												   <option value=NV>Nevada</option> <br>
												   <option value=NH>New Hampshire</option> <br>
												   <option value=NJ>New Jersey</option> <br>
												   <option value=NM>New Mexico</option> <br>
												   <option value=NY>New York</option> <br>
												   <option value=NC>North Carolina</option> <br>
												   <option value=ND>North Dakota</option> <br>
												   <option value=OH>Ohio</option> <br>
												   <option value=OK>Oklahoma</option> <br>
												   <option value=OR>Oregon</option> <br>
												   <option value=PA>Pennsylvania</option> <br>
												   <option value=RI>Rhode Island</option> <br>
												   <option value=SC>South Carolina</option> <br>
												   <option value=SD>South Dakota</option> <br>
												   <option value=TN>Tennessee</option> <br>
												   <option value=TX>Texas</option> <br>
												   <option value=UT>Utah</option> <br>
												   <option value=VT>Vermont</option> <br>
												   <option value=VA>Virginia</option> <br>
												   <option value=WA>Washington</option> <br>
												   <option value=WV>West Virginia</option> <br>
												   <option value=WI>Wisconsin</option> <br>
												   <option value=WY>Wyoming</option> <br>
												   <option value=AS>American Samoa</option> <br>
												   <option value=GU>Guam</option> <br>
												   <option value=PR>Puerto Rico</option> <br>
												   <option value=VI>Virgin Islands</option> <br>
												   <option value=AL>Alabama</option> <br>                                    
												</select>
												<span id='register_empstate1_errorloc' class='error'></span>
											</div>  
											<div class="col-md-3">
												 <label for="empzip1">Zip Code</label>
												 <input type="text" class="form-control zip1" value=""  maxlength="5" name="empzip1" id="empzip1" style="border-left: 2px solid red;">
												 <span id='register_empzip1_errorloc' class='error'></span>
											</div>  
											<div class="col-md-3">
												<label for="phonenumber1">Phone number</label>
												<input type="text" class="form-control phonenumber1"  maxlength="10" name="phonenumber1" value="" id="phonenumber1" style="border-left: 2px solid red;">
												<span id='register_phonenumber1_errorloc' class='error'></span>
											</div>  
									  </div>
									   <div class="row">
											<div class="col-md-3">
												 <label for="jobtitle">Job title</label>
												 <input type="text" class="form-control" name="jobtitle1" maxlength="50" value="" id="jobtitle1" style="border-left: 2px solid red;">
												 <span id='register_jobtitle1_errorloc' class='error'></span>
										
											</div>  
											<div class="col-md-3">
												<label for="supervisor_name">Supervisor name</label>
												<input type="text" class="form-control" name="supervisor_name1" maxlength="50" value="" id="supervisor_name1">
											</div>  
											<div class="col-md-3">
												 <label for="how_long">How Long</label>
												 <label for="years" style="font-size: 15px;">years</label>
												 <input type="text" class="form-control" value=""  maxlength="2"  name="years1" id="years1" placeholder="Years" style="border-left: 2px solid red;">
												 <span id='register_years1_errorloc' class='error'></span>
											</div>  
											<div class="col-md-3">
												<label for="how_long" style="font-size: 15px;">Months</label>
												<input type="text" class="form-control" name="month1" value=""   maxlength="2" id="month1" placeholder="Enter month from 0 to 11" style="border-left: 2px solid red;">
												<span id='register_month1_errorloc' class='error'></span>
											</div>
											<div class=" col-md-4" style="display:none;">
												<input type="text" class="form-control" name="EMp_val1" value=""  id="EMp_val1" >
											</div> 
										</div> 
								</div> 
																	<!--End of current Employement-->
																	<!--start of previous Employement info-->
								
								
								<div class="table-responsive card-box col-md-12 first-row" id="previousemployement" style="display:none;">
									<legend class="col-xs-12"><span class="glyphicon glyphicon-th-list" ></span>&nbsp; Previous Employment History 1</legend>
									<div class="row">
										<div class="col-md-4">
											<label for="employername2">Employer name</label>
											<input onfocus="background(this.e);" type="text" name="employername2" maxlength="100" value="" class="form-control"  id="employername2" style="border-left: 2px solid red;">
											<span id='register_employername2_errorloc' class='error'></span>
										</div>  
										<div class="col-md-4">
											<label for="empstreet_add2">Street Address</label>
											<input onfocus="background(this.e);" type="text" maxlength="100" class="form-control" value="" name="empstreet_add2" id="empstreet_add2" style="border-left: 2px solid red;">
											<span id='register_empstreet_add2_errorloc' class='error'></span>
										</div>  
										<div class="col-md-4">
											 <label for="empunit_app2">Suite/Floor</label>
											 <input onfocus="background(this.e);" type="text" maxlength="10"  value="" class="form-control" name="empunit_app2" id="empunit_app2">
										</div>  
									</div>  
                             
									<div class="row">
										<div class="col-md-3">
											<label for="empcity2">City</label>
											<input type="text" class="form-control" maxlength="50" value="" name="empcity2" id="empcity2" style="border-left: 2px solid red;">
											<span id='register_empcity2_errorloc' class='error'></span>
									
										</div>  
										<div class="col-md-3">
											<label for="empstate2">Select State</label>
												<select id="empstate2" name="empstate2" class="form-control" style="border-left: 2px solid red;">
											   <option val="" selected>Select State</option><option value=AK>Alaska</option> <br><option value=AZ>Arizona</option> <br><option value=AR>Arkansas</option> <br><option value=CA>California</option> <br><option value=CO>Colorado</option> <br><option value=CT>Connecticut</option> <br><option value=DE>Delaware</option> <br><option value=DC>District of Columbia</option> <br><option value=FL>Florida</option> <br><option value=GA>Georgia</option> <br><option value=HI>Hawaii</option> <br><option value=ID>Idaho</option> <br><option value=IL>Illinois</option> <br><option value=IN>Indiana</option> <br><option value=IA>Iowa</option> <br><option value=KS>Kansas</option> <br><option value=KY>Kentucky</option> <br><option value=LA>Louisiana</option> <br><option value=ME>Maine</option> <br><option value=MD>Maryland</option> <br><option value=MA>Massachusetts</option> <br><option value=MI>Michigan</option> <br><option value=MN>Minnesota</option> <br><option value=MS>Mississippi</option> <br><option value=MO>Missouri</option> <br><option value=MT>Montana</option> <br><option value=NE>Nebraska</option> <br><option value=NV>Nevada</option> <br><option value=NH>New Hampshire</option> <br><option value=NJ>New Jersey</option> <br><option value=NM>New Mexico</option> <br><option value=NY>New York</option> <br><option value=NC>North Carolina</option> <br><option value=ND>North Dakota</option> <br><option value=OH>Ohio</option> <br><option value=OK>Oklahoma</option> <br><option value=OR>Oregon</option> <br><option value=PA>Pennsylvania</option> <br><option value=RI>Rhode Island</option> <br><option value=SC>South Carolina</option> <br><option value=SD>South Dakota</option> <br><option value=TN>Tennessee</option> <br><option value=TX>Texas</option> <br><option value=UT>Utah</option> <br><option value=VT>Vermont</option> <br><option value=VA>Virginia</option> <br><option value=WA>Washington</option> <br><option value=WV>West Virginia</option> <br><option value=WI>Wisconsin</option> <br><option value=WY>Wyoming</option> <br><option value=AS>American Samoa</option> <br><option value=GU>Guam</option> <br><option value=PR>Puerto Rico</option> <br><option value=VI>Virgin Islands</option> <br><option value=AL>Alabama</option> <br>                                    </select>
										   <span id='register_empstate2_errorloc' class='error'></span>
										</div>  
										<div class="col-md-3">
											 <label for="empzip2">Zip Code</label>
											 <input onkeyup="this.value = this.value.replace(/[^0-9]/g,'');" value="" maxlength="5" type="text" class="form-control zip1" name="empzip2" id="empzip2" style="border-left: 2px solid red;">
											 <span id='register_empzip2_errorloc' class='error'></span>
										</div>  
										<div class="col-md-3">
											<label for="phonenumber2">Phone number</label>
											<input onfocus="background(this.e);"  maxlength="10" type="text" class="form-control phonenumber1" value="" name="phonenumber2" id="phonenumber2" style="border-left: 2px solid red;">
											<span id='register_phonenumber2_errorloc' class='error'></span>
										</div>  
									</div> 
									<div class="row">
										<div class="col-md-3">
											 <label for="jobtitle2">Job title</label>
											 <input onfocus="background(this.e);" type="text" maxlength="50" value="" class="form-control" name="jobtitle2" id="jobtitle2" style="border-left: 2px solid red;">
											 <span id='register_jobtitle2_errorloc' class='error'></span>
										</div>  
										<div class="col-md-3">
											<label for="supervisor_name2">Supervisor name</label>
											<input onfocus="background(this.e);"type="text" maxlength="50" class="form-control" value="" name="supervisor_name2" id="supervisor_name2">
											<span id='register_month_errorloc' class='error'></span>
										</div>  
										<div class="col-md-3">
											 <label for="how_long2">How Long</label>
											 <label for="years2" style="font-size: 15px;">years</label>
											 <input maxlength="2" value="" type="text" class="form-control" name="years2" id="years2" placeholder="Years" style="border-left: 2px solid red;">
											 <span id='register_years2_errorloc' class='error'></span>
										</div>  
										<div class="col-md-3">
											 <label for="month2" style="font-size: 15px;">Months</label>
											 <input  maxlength="2" type="text" class="form-control" value="" name="month2" id="month2" placeholder="Enter month from 0 to 11" style="border-left: 2px solid red;">
											 <span id='register_month2_errorloc' class='error'></span>
											<div style="display:none">
												<input type="text" class="form-control" name="EMp_val2"   id="EMp_val2"  value="" style="border-left: 2px solid red;">
											</div>  
										</div>  
									</div>
								</div>
								
															<!--End of previous Employement info-->
														
														
															<!--start of pet section-->
								<div class="col-md-12 card-box first-row">
									<div class="row">
										<div class="col-md-12">
											<label for="runcriminal" class="control-label" style="font-size: 20px; font-weight: bold;padding-top: 14px;">Do You Have Pets?</label>
											&nbsp;&nbsp;&nbsp;<input  id="pet_have" name="pet_have" type="checkbox" value="Y" class="btn btn-success" style="width: 20px; height: 20px; margin-top: -5px;">  
											<label for="runcriminal" class="control-label" style="font-size: 13px; font-weight: bold;padding-top: 14px;">(Maximum 1 are allowed)</label>
										</div> 
									</div>
								</div>
								<div class="table-responsive card-box col-md-12 first-row" id="petinfo" style="display:none;">
									<legend class="col-xs-12"><span class="glyphicon glyphicon-knight" ></span>&nbsp;Pets Information 1</legend>
									<div class="row">
										<div class="col-md-3">
											 <label for="pet_type"> Type</label>
											 <input type="text" class="form-control" name="pet_type" id="pet_type" maxlength="25" value="" style="border-left: 2px solid red;">
											 <span id='register_pet_type1_errorloc' class='error'></span>
										</div>
										<div class="col-md-3">
											 <label for="pet_breed"> Breed</label>
											 <input type="text" class="form-control" name="pet_breed" maxlength="25" id="pet_breed" value="" style="border-left: 2px solid red;">
											 <span id='register_pet_breed1_errorloc' class='error'></span>
										</div> 
										<div class="col-md-3">
											 <label for="pet_name"> Name</label>
											 <input type="text" class="form-control" name="pet_name" maxlength="50" value="" id="pet_name">
										 </div> 
              
										<div class="col-md-3">
											<label for="pet_weight"> Weight</label>
											<input type="text" class="form-control" name="pet_weight" maxlength="3" id="pet_weight" value="">
										</div>
									</div>
									<div class="row">
										 <div class="col-md-3">
											 <label for="pet_color"> Color</label>
											 <input type="text" class="form-control" name="pet_color" maxlength="25"  id="pet_color" value="">
										 </div> 
										<div class="col-md-3">
											 <label for="pet_age"> Age</label>
											 <input type="text" class="form-control" name="pet_age" maxlength="15" id="pet_age" value="">
										 </div> 
										<div class="col-md-3">
											 <label for="pet_gender"> Gender</label>
											 <select id="genderSelect" name="genderSelect" class="form-control">
												<option val="" selected>Select Gender</option> 
												<option val="M">Male</option> 
												<option val="F">Female</option>                 
											 </select>
										</div> 
										<div class="col-md-3">
											 <label for="pet_tag_num1"> Tag Number</label>
											 <input type="text" class="form-control" name="pet_tag_num" maxlength="25" id="pet_tag_num1" value="">
										</div>
									</div>
								</div>
								
														<!--End of pet section-->
														
														
														
														<!--End of pet section-->
														
								<div class="col-md-12 card-box first-row">
									<div class="row">
										<div class="col-md-12">
											<label for="runcriminal" class="control-label" style="font-size: 20px; font-weight: bold;padding-top: 14px;">Do You Have Vehicles?</label>
											&nbsp;&nbsp;&nbsp;<input  id="vehicle_have" name="vehicle_have" type="checkbox" value="Y" class="btn btn-success" style="width: 20px; height: 20px; margin-top: -5px;">  
										</div> 
									</div>
								</div>
								<div class="table-responsive card-box col-md-12 first-row" id="vehicleinfo1" style="display:none;">
									 <legend class="col-xs-12"><i class="fa fa-car"></i>&nbsp; Vehicle information1</legend>
									  <div class="row">
										  <div class="col-md-4">
											  <label for="vehicle_make1"> Make</label>
											  <input type="text" class="form-control" maxlength="25" name="vehicle_make1" value="" id="vehicle_make1" style="border-left: 2px solid red;">
											  <span id='register_vehicle_make_errorloc' class='error'></span>
										  </div> 

										 <div class="col-md-4">
											  <label for="vehicle_model1"> Model</label>
											  <input type="text" class="form-control" maxlength="25" name="vehicle_model1" id="vehicle_model1" value="" style="border-left: 2px solid red;">
											  <span id='register_vehicle_model_errorloc' class='error'></span>
										  </div> 

										 <div class="col-md-4">
											  <label for="vehicle_year1"> Year</label>
											  <input type="text" class="form-control"  maxlength="4" name="vehicle_year1" value="" id="vehicle_year1">
										 </div> 
									 </div>
									 <div class="row">
										 <div class="col-md-4">
											<label for="vehicle_year1"> Color</label>
											<input type="text" class="form-control"  maxlength="50" name="vehicle_color1" value="" id="vehicle_color1">
										</div> 
										<div class="col-md-4">
											<label for="vehicle_year1"> Plate Number</label>
											<input type="text" class="form-control"  maxlength="20" name="plate_number1" value="" id="plate_number1">
										</div> 
										<div class="empstate1 col-md-4">
												<label for="empstate1">Select State</label>
												<select id="empstate1" name="empstate1" class="form-control" style="border-left: 2px solid red;">
												   <option val="" selected>Select State</option>
												   <option value=AK>Alaska</option> <br>
												   <option value=AZ>Arizona</option> <br>
												   <option value=AR>Arkansas</option> <br>
												   <option value=CA>California</option> <br>
												   <option value=CO>Colorado</option> <br>
												   <option value=CT>Connecticut</option> <br>
												   <option value=DE>Delaware</option> <br>
												   <option value=DC>District of Columbia</option> <br>
												   <option value=FL>Florida</option> <br>
												   <option value=GA>Georgia</option> <br>
												   <option value=HI>Hawaii</option> <br>
												   <option value=ID>Idaho</option> <br>
												   <option value=IL>Illinois</option> <br>
												   <option value=IN>Indiana</option> <br>
												   <option value=IA>Iowa</option> <br>
												   <option value=KS>Kansas</option> <br>
												   <option value=KY>Kentucky</option> <br>
												   <option value=LA>Louisiana</option> <br>
												   <option value=ME>Maine</option> <br>
												   <option value=MD>Maryland</option> <br>
												   <option value=MA>Massachusetts</option> <br>
												   <option value=MI>Michigan</option> <br>
												   <option value=MN>Minnesota</option> <br>
												   <option value=MS>Mississippi</option> <br>
												   <option value=MO>Missouri</option> <br>
												   <option value=MT>Montana</option> <br>
												   <option value=NE>Nebraska</option> <br>
												   <option value=NV>Nevada</option> <br>
												   <option value=NH>New Hampshire</option> <br>
												   <option value=NJ>New Jersey</option> <br>
												   <option value=NM>New Mexico</option> <br>
												   <option value=NY>New York</option> <br>
												   <option value=NC>North Carolina</option> <br>
												   <option value=ND>North Dakota</option> <br>
												   <option value=OH>Ohio</option> <br>
												   <option value=OK>Oklahoma</option> <br>
												   <option value=OR>Oregon</option> <br>
												   <option value=PA>Pennsylvania</option> <br>
												   <option value=RI>Rhode Island</option> <br>
												   <option value=SC>South Carolina</option> <br>
												   <option value=SD>South Dakota</option> <br>
												   <option value=TN>Tennessee</option> <br>
												   <option value=TX>Texas</option> <br>
												   <option value=UT>Utah</option> <br>
												   <option value=VT>Vermont</option> <br>
												   <option value=VA>Virginia</option> <br>
												   <option value=WA>Washington</option> <br>
												   <option value=WV>West Virginia</option> <br>
												   <option value=WI>Wisconsin</option> <br>
												   <option value=WY>Wyoming</option> <br>
												   <option value=AS>American Samoa</option> <br>
												   <option value=GU>Guam</option> <br>
												   <option value=PR>Puerto Rico</option> <br>
												   <option value=VI>Virgin Islands</option> <br>
												   <option value=AL>Alabama</option> <br>                                    
												</select>
												<span id='register_empstate1_errorloc' class='error'></span>
											</div>  
									 </div>
									 <div class="row" id="addmore_button1">
										<div class="col-md-12 addmore">
											<button id="addVehicle1" type="button" name="addVehicle1" class="btn btn-primary" style="float:right;margin-top:10px;">Add More</button>
										</div>
									 </div>
								</div>
									
														<!--vehicle toggle started-->
								<div class="table-responsive card-box col-md-12 first-row" id="vehicleinfo2" style="display:none;">
									 <legend class="col-xs-12"><i class="fa fa-car"></i>&nbsp; Vehicle information2</legend>
									  <div class="row">
										  <div class="col-md-4">
											  <label for="vehicle_make1"> Make</label>
											  <input type="text" class="form-control" maxlength="25" name="vehicle_make1" value="" id="vehicle_make1" style="border-left: 2px solid red;">
											  <span id='register_vehicle_make_errorloc' class='error'></span>
										  </div> 

										 <div class="col-md-4">
											  <label for="vehicle_model1"> Model</label>
											  <input type="text" class="form-control" maxlength="25" name="vehicle_model1" id="vehicle_model1" value="" style="border-left: 2px solid red;">
											  <span id='register_vehicle_model_errorloc' class='error'></span>
										  </div> 

										 <div class="col-md-4">
											  <label for="vehicle_year1"> Year</label>
											  <input type="text" class="form-control"  maxlength="4" name="vehicle_year1" value="" id="vehicle_year1">
										 </div> 
									 </div>
									 <div class="row">
										 <div class="col-md-4">
											<label for="vehicle_year1"> Color</label>
											<input type="text" class="form-control"  maxlength="50" name="vehicle_color1" value="" id="vehicle_color1">
										</div> 
										<div class="col-md-4">
											<label for="vehicle_year1"> Plate Number</label>
											<input type="text" class="form-control"  maxlength="20" name="plate_number1" value="" id="plate_number1">
										</div> 
										<div class="empstate1 col-md-4">
												<label for="empstate1">Select State</label>
												<select id="empstate1" name="empstate1" class="form-control" style="border-left: 2px solid red;">
												   <option val="" selected>Select State</option>
												   <option value=AK>Alaska</option> <br>
												   <option value=AZ>Arizona</option> <br>
												   <option value=AR>Arkansas</option> <br>
												   <option value=CA>California</option> <br>
												   <option value=CO>Colorado</option> <br>
												   <option value=CT>Connecticut</option> <br>
												   <option value=DE>Delaware</option> <br>
												   <option value=DC>District of Columbia</option> <br>
												   <option value=FL>Florida</option> <br>
												   <option value=GA>Georgia</option> <br>
												   <option value=HI>Hawaii</option> <br>
												   <option value=ID>Idaho</option> <br>
												   <option value=IL>Illinois</option> <br>
												   <option value=IN>Indiana</option> <br>
												   <option value=IA>Iowa</option> <br>
												   <option value=KS>Kansas</option> <br>
												   <option value=KY>Kentucky</option> <br>
												   <option value=LA>Louisiana</option> <br>
												   <option value=ME>Maine</option> <br>
												   <option value=MD>Maryland</option> <br>
												   <option value=MA>Massachusetts</option> <br>
												   <option value=MI>Michigan</option> <br>
												   <option value=MN>Minnesota</option> <br>
												   <option value=MS>Mississippi</option> <br>
												   <option value=MO>Missouri</option> <br>
												   <option value=MT>Montana</option> <br>
												   <option value=NE>Nebraska</option> <br>
												   <option value=NV>Nevada</option> <br>
												   <option value=NH>New Hampshire</option> <br>
												   <option value=NJ>New Jersey</option> <br>
												   <option value=NM>New Mexico</option> <br>
												   <option value=NY>New York</option> <br>
												   <option value=NC>North Carolina</option> <br>
												   <option value=ND>North Dakota</option> <br>
												   <option value=OH>Ohio</option> <br>
												   <option value=OK>Oklahoma</option> <br>
												   <option value=OR>Oregon</option> <br>
												   <option value=PA>Pennsylvania</option> <br>
												   <option value=RI>Rhode Island</option> <br>
												   <option value=SC>South Carolina</option> <br>
												   <option value=SD>South Dakota</option> <br>
												   <option value=TN>Tennessee</option> <br>
												   <option value=TX>Texas</option> <br>
												   <option value=UT>Utah</option> <br>
												   <option value=VT>Vermont</option> <br>
												   <option value=VA>Virginia</option> <br>
												   <option value=WA>Washington</option> <br>
												   <option value=WV>West Virginia</option> <br>
												   <option value=WI>Wisconsin</option> <br>
												   <option value=WY>Wyoming</option> <br>
												   <option value=AS>American Samoa</option> <br>
												   <option value=GU>Guam</option> <br>
												   <option value=PR>Puerto Rico</option> <br>
												   <option value=VI>Virgin Islands</option> <br>
												   <option value=AL>Alabama</option> <br>                                    
												</select>
												<span id='register_empstate1_errorloc' class='error'></span>
											</div>  
									 </div>
									 <div class="row">
										<div class="col-md-12 addmore">
											<button id="addVehicle1" type="button" name="addVehicle1" class="btn btn-primary" style="float:right;margin-top:10px;">Add More</button>
										</div>
									 </div>
								</div>
						</div>
					</div>
				</form>
			</div>
			<script src="assets/js/mainapplication.js"></script>
			<script>
				$( "#currntly_emp" ).click(function() {
				  $( "#currentemployement" ).toggle();
				  $( "#previousemployement" ).toggle();
				});
				
				$( "#pet_have" ).click(function() {
				  $( "#petinfo" ).toggle("slow");
				  //$( "#previousemployement" ).toggle();
				});
				
				$( "#vehicle_have" ).click(function() {
					
					if($(this).is(":checked"))
					{
						$( "#vehicleinfo1" ).show("slow");
					}else
					{
						$( "#vehicleinfo1" ).hide("slow");
						$( "#vehicleinfo2" ).hide("slow");
					}
				  
				});
				
				$( "#addVehicle1" ).click(function() {
				  $( "#vehicleinfo2" ).show("slow");
				  $( "#addmore_button1" ).hide();
				});
			</script>
		</body>
</html>