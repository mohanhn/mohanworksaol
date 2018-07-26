<?php
session_start();
require_once("assets/include/membersite_configure.php");




		if(isset($_POST['style_id']) && $_POST['style_id']!='')
		{
			$styleId=$_POST['style_id'];
			$resultsofall=$fgmembersite->customizedstyle($styleId);
			if(!empty($resultsofall))
					{
						$StyleName=$resultsofall[0]['StyleName'];
						$Selectedlogopath=$resultsofall[0]['Selectedlogopath'];
						$imageName=$resultsofall[0]['imageName'];
						$LogoName=$resultsofall[0]['LogoName'];
						$LogoHeight=$resultsofall[0]['LogoHeight'];
						$LogoWidth=$resultsofall[0]['LogoWidth'];
						$WelcomeColor=$resultsofall[0]['WelcomeColor'];
						$footercolor=$resultsofall[0]['footercolor'];
						$buttoncolor=$resultsofall[0]['buttoncolor'];
						$buttonhovercolor=$resultsofall[0]['buttonhovercolor'];
						$linkcolor=$resultsofall[0]['linkcolor'];
					}else
					{
						$StyleName='';
						$Selectedlogopath='assets/uploads/nologo.png';
						$imageName='';
						$LogoName='';
						$LogoHeight='';
						$LogoWidth='';
						$WelcomeColor='';
						$footercolor='';
						$buttoncolor='';
						$buttonhovercolor='';
						$linkcolor='';
					}
					echo '<div class="card-box cardbox_style" id="cardbox_content" style="padding:25px;background-color:#f9f9f900;">
							<div class="row">
								<div class="col-sm-12">
									<div class="row" style="padding-bottom: 30px;font-size: 15px;padding-left: 258px;">
										<a href="images/application-page-content-overview.png" target="_blank">Click here to learn how this will apply</a>
									</div>
								</div>
							</div>
							<form class="form-group" id="customize_form_details" method="POST" enctype="multipart/form-data">
										<input type="hidden" name="saveall" id="saveall" value="">	
											<input type="hidden" id="select_style_Id" name="select_style_Id" value="">
											
											<!--input content box-->
								<div class="row">	
									<div class="col-sm-8">
											<div class="row">
												<div class="col-sm-4" style="text-align:right;">
													<label >Style Name:</label>
												</div>
												<div class="col-sm-8">
													<input type="text"  class="form-control" id="style_name" name="style_name" value="'.$StyleName.'">
												</div>
											</div>
											
											<div class="row cardbox_row">
												<div class="col-sm-4" style="text-align:right;">
													<label class="control-label">Select Your Logo:</label>
												</div>
												<div class="col-sm-8">
													<input type="file" class="form-control-file"  id="select_your_logo" name="select_your_logo">
												</div>
											</div>
											
											<div class="row cardbox_row">
												<div class="col-sm-4" style="text-align:right;">
													<label class="control-label">Logo Name:</label>
												</div>
												<div class="col-sm-8">
													<input type="text"  class="form-control" id="logo_name" name="logo_name" value="'.$LogoName.'">
												</div>
											</div>
											
											<div class="row cardbox_row">
												<div class="col-sm-4" style="text-align:right;">
													<label class="control-label">Logo Height:</label>
												</div>
												<div class="col-sm-2">
													<input type="text"  class="form-control" id="logo_height" name="logo_height" onkeyup="NewStyleChange()" value="'.$LogoHeight.'">
												</div>
												<div class="col-sm-6 slidecontainer">
													<input type="range" min="1" max="200" value="" class="slider" id="slider_logo_height">
													 <p style="display:none;">Value: <span id="demo_logoheight"></span></p>
												</div>
											</div>
											
											<div class="row cardbox_row">
												<div class="col-sm-4" style="text-align:right;">
													<label class="control-label">Logo Width:</label>
												</div>
												<div class="col-sm-2">
													<input type="text"  class="form-control" id="logo_width" name="logo_width" onkeyup="NewStyleChange()" value="'.$LogoWidth.'">
												</div>
												<div class="col-sm-6 slidecontainer">
													<input type="range" min="1" max="200" value="" class="slider" id="slider_logo_width">
													 <p style="display:none;">Value: <span id="demo_logowidth"></span></p>
												</div>
											</div>
										</div>
										
											<!---------preview box---------->
											
										<div class="col-sm-4 form-group">
												<div class="col-sm-12 cardbox_row" style="font-size:25px;">
													<label class="control-label" style="margin-left:70px;color:#3f2005;">Style Preview</label>
												</div>
												<div class="col-sm-12 cardbox_row" style="text-align:center;">
													<img src="'.$Selectedlogopath.'" id="logo_previw" width="150" height="150">
													<input type="hidden" name="imagesrc" value="'.$Selectedlogopath.'">
												</div>	
										</div>
									</div>	
									
												<!--color content inputs-->
								
									<div class="row">
										<div class="col-sm-12">
											<div class="row cardbox_row">
												<div class="col-sm-8">
													<div class="row">
														<div class="col-sm-4" style="text-align:right;">
															<label class="control-label">Welcome Color:</label>
														</div>
														<div class="col-sm-8">
															<input type="text"  class="form-control nnn" id="welcome_color" name="welcome_color" onblur="NewStyleChange()" value="'.$WelcomeColor.'">
														</div>
													</div>
												</div>
												<div class=" col-sm-4" id="dic_wc">
													<input type="text"  class="form-control" id="welcome_color_display" name="welcome_color_display" style="width:325px; background-color:'.$WelcomeColor.';" value="" readonly>
												</div>
											</div>
											<div class="row cardbox_row">
												<div class="col-sm-8">
													<div class="row">
														<div class=" col-sm-4" style="text-align:right;">
															<label class="control-label">Footer Color:</label>
														</div>
														<div class=" col-sm-8">
															<input type="text"  class="form-control" id="footer_color" name="footer_color"  onkeyup="NewStyleChange()" value="'.$footercolor.'">
														</div>
													</div>
												</div>
												<div class=" col-sm-4" style="text-align:center;">
													<input type="text"  class="form-control" id="footer_color_display" name="footer_color_display"  style="width:325px;background-color:'.$footercolor.';" readonly>
												</div>
											</div>
											<div class="row cardbox_row">
												<div class="col-sm-8">
													<div class="row">
														<div class=" col-sm-4" style="text-align:right;">
															<label class="control-label">Button Color:</label>
														</div>
														<div class=" col-sm-8">
															<input type="text"  class="form-control" id="button_color" name="button_color" value="'.$buttoncolor.'"  onkeyup="NewStyleChange()">
														</div>
													</div>
												</div>
													<div class="col-sm-4">
														<input type="text"  class="form-control" id="button_color_display" name="button_color_display"  style="width:325px;background-color:'.$buttoncolor.';" readonly>
													</div>
											</div>
											<div class="row cardbox_row">
												<div class="col-sm-8">
													<div class="row">
														<div class=" col-sm-4" style="text-align:right;">
															<label class="control-label">Button Hover Color:</label>
														</div>
														<div class=" col-sm-8">
															<input type="text"  class="form-control" id="hover_color" name="hover_color"  onkeyup="NewStyleChange()"value="'.$buttonhovercolor.'">
														</div>
													</div>
												</div>
													<div class="col-sm-4">
														<input type="text"  class="form-control" id="hover_color_display" name="hover_color_display" style="width:325px;background-color:'.$buttonhovercolor.';"  readonly>
													</div>
											</div>
											<div class="row cardbox_row">
												<div class="col-sm-8">
													<div class="row">
														<div class=" col-sm-4" style="text-align:right;">
															<label class="control-label">Link Color:</label>
														</div>
														<div class="col-sm-8">
															<input type="text"  class="form-control" id="link_color" name="link_color" value="'.$linkcolor.'"  onkeyup="NewStyleChange()">
														</div>
													</div>
												</div>
												<div class=" col-sm-4">
													<input type="text"  class="form-control" id="link_color_display" name="link_color_display" style="width:325px;background-color:'.$linkcolor.';" readonly>
												</div>
											</div>
										</div>
									</div>
															
										
									
													<!--buttons-->
										<div class="form-group" style="text-align:center;margin:20px;">
											<div class="row">
													<div class="col-sm-12" style="text-align:center;">
														<button type="button" class="btn btn-primary" id="save_style_new" name="save_style_new" onclick="formSubmitaction()">Save</button>';
														
														if(!empty($resultsofall))
														{
															echo '<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#copystyle_modal" style="margin:3px;">Copy Style</button>';
														}
														echo '<button type="button" class="btn btn-danger" id="cancel_style_new" style="margin-left:3px;" onclick="showhide()">Cancel</button>
														<a href="welcome_applicant.php"><button type="button" class="btn btn-primary" id="preview_style_new">Preview</button></a>
													</div>
											</div>
										</div>
								</form>
							</div>
							
							
							 <!-- Modal -->
					  <div class="modal fade" id="copystyle_modal" role="dialog" style="margin-top:150px;">
						<div class="modal-dialog modal-md">
						  <div class="modal-content">
							<div class="modal-header">
								<h5 style="text-align:center;">Enter New Style Name</h5>
							    <button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>
							<div class="modal-body">
							  <div class="row">
								<div class="col-sm-12">
									<div class="row">
										<div class="col-sm-3" style="text-align:right;">
											<label >Style Name:</label>
										</div>
										<div class="col-sm-8">
											<input type="text"  class="form-control" id="modal_style_name" name="modal_style_name" value="">
										</div>
									</div>
								</div>
							  </div>
							</div>
							<div class="modal-footer">
							  <button type="button" class="btn btn-primary" id="copystyle_modal_save" name="copystyle_modal_save" >Save</button>
							  <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
							</div>
						  </div>
						</div>
					  </div>';
					
		}
				
								/* copy style ajax codes */

						if(isset($_POST['new_Style_Name']) && isset($_POST['selected_Id']))
						{
							$newstylename=$_POST['new_Style_Name'];
							$selected_Id=$_POST['selected_Id'];
							$nameCheck=$fgmembersite->addedstylename(trim($newstylename));
							
							if( $nameCheck=="Exist")
							{
								echo $nameCheck;
							}else
							{
								$resultsofall=$fgmembersite->customizedstyle($selected_Id);
									if(!empty($resultsofall))
											{
												$uploads_dir=$resultsofall[0]['Selectedlogopath'];
												$select_your_logoname=$resultsofall[0]['imageName'];
												$logo_name=$resultsofall[0]['LogoName'];
												$logo_height=$resultsofall[0]['LogoHeight'];
												$logo_width=$resultsofall[0]['LogoWidth'];
												$welcome_color=$resultsofall[0]['WelcomeColor'];
												$footer_color=$resultsofall[0]['footercolor'];
												$button_color=$resultsofall[0]['buttoncolor'];
												$hover_color=$resultsofall[0]['buttonhovercolor'];
												$link_color=$resultsofall[0]['linkcolor'];
												$select_style_Id="";
												$inserttocustomizeyourstyle=$fgmembersite->insrtintotable($newstylename,
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
												echo $inserttocustomizeyourstyle;
											}
							}
						}
						
						
						
						
						
							
						
?>