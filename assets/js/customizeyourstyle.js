

				/* adding new styles */

		$('body').on('click', '#new_add_style', function()
					 {
						 var styleid;
						 var styleid='style_id=newstyle';
							 jQuery.ajax(
									{	type: "POST",
										url : "ajax_customizeyourstyle.php",
										data:styleid,
										success:function(data)
										{	
											$(".selected_style_details").fadeIn();
											$(".selected_style_details").html(data);
											$.getScript('assets/js/customizeyourstyle.js');
										},
										error: function(jqXHR, textStatus, errorThrown) 
										{
											 //$('#cancel_occ').click();
											swal("Error", "unknown error occured, Please try again", "error");	 
											   
										}
									}) 
			
			 
					});
		 
		 
						
		  

			 
			 /*  fetching all style data from database */
			 
		$('body').on('change','#select_style_change', function()
							{
								var styleid;
								var Id=$('#select_style_change').val();
								var styleid='style_id='+Id;
									 jQuery.ajax(
											{	type: "POST",
												url : "ajax_customizeyourstyle.php",
												data:styleid,
												success:function(data)
												{	
													data=data.trim();
													
													$('.selected_style_details').fadeIn();
													$(".selected_style_details").html(data);
													$("#select_style_Id").val(Id);
													$.getScript('assets/js/customizeyourstyle.js');
												},
												error: function(jqXHR, textStatus, errorThrown) 
												{
													 //$('#cancel_occ').click();
													swal("Error", "unknown error occured, Please try again", "error");	 
													   
												}
											}) 
							}); 
			 
									
									
									/* javascript codes */
			 
								function readURL(input) 
								{
									if (input.files && input.files[0]) {
										var reader = new FileReader();
										reader.onload = function (e) {
											$('#logo_previw').attr('src', e.target.result);
										}
										reader.readAsDataURL(input.files[0]);
									}
								}
								   $("#select_your_logo").change(function(){
									readURL(this);
								});
						
									function NewStyleChange()
									{
										var newHeight = $("#logo_height").val();
										$("#logo_previw").height(newHeight);
										var newwidth = $("#logo_width").val();
										$("#logo_previw").width(newwidth);
										
								
									}
									
									
						
						/* main form submission */
						
						function formSubmitaction()
									{
										$('#saveall').val('save');
										$("#customize_form_details").submit();	
									}
							
							
						
						/* color content display in other input fields */
						
						$('body').on('click', '.dropdown-menu', function()
						 {
							 var welcome_color = $("#welcome_color").val();
								$("#welcome_color_display").css("background-color",welcome_color);
								var footer_color = $("#footer_color").val();
								$("#footer_color_display").css("background-color",footer_color);
								var button_color = $("#button_color").val();
								$("#button_color_display").css("background-color",button_color);
								var hover_color = $("#hover_color").val();
								$("#hover_color_display").css("background-color",hover_color);
								var link_color = $("#link_color").val();
								$("#link_color_display").css("background-color",link_color);
							
						 });
							
							
									/* color pickers */
								
								$('#welcome_color').colorpicker({});
								$('#footer_color').colorpicker({});
								$('#button_color').colorpicker({});
								$('#hover_color').colorpicker({});
								$('#link_color').colorpicker({});
								
								
								/* sliders for logo height and width */
								
								var slider = document.getElementById("slider_logo_height");
								var output = document.getElementById("demo_logoheight");
								slider.oninput = function() {
								  output.innerHTML = this.value;
								  $('#logo_height').val(output.innerHTML);
								  $("#logo_previw").height(output.innerHTML);
								}
								
								var slider = document.getElementById("slider_logo_width");
								var output = document.getElementById("demo_logowidth");
								slider.oninput = function() {
								  output.innerHTML = this.value;
								  $('#logo_width').val(output.innerHTML);
								  $("#logo_previw").width(output.innerHTML);
								}
								
								
									

	 

														/*  copy style */
								 
								 $('body').on('click', '#copystyle_modal_save', function()
										{
											 var newStyleName=$("#modal_style_name").val();
											 var Id=$('#select_style_change').val();
												 jQuery.ajax(
														{	type: "POST",
															url : "ajax_customizeyourstyle.php",
															data:{new_Style_Name:newStyleName,
																  selected_Id:Id},
																  
															success:function(data)
															{
																$(".close").click();
																if(data.trim()=='Exist')
																{
																	swal("Error","Style name is already exist,Please Enter Different","error");	 
																}else
																{
																	swal("Success", "New style created successfully,Thank you","success");	
																	 setTimeout(function() {location.reload();},1000);
																}							
																
																$.getScript('assets/js/customizeyourstyle.js');
															},
															error: function(jqXHR, textStatus, errorThrown) 
															{
																 //$('#cancel_occ').click();
																//swal("Error", "unknown error occured, Please try again", "error");	 
																   
															}
														}) 
											
											 
										 });		


									/* refresh by cancel button */
									
									function showhide()
										 {
											 setTimeout(function() {location.reload();},000);
										 }
															


									 /*style preview codes*/						
															
								 $('body').on('click', '#preview_style_new', function()
											 {
													var previewform=$('#customize_form_details').serialize();
													 jQuery.ajax(
															{	type: "POST",
																url : "welcome_applicant.php",
																data:previewform,
																success:function(data)
																{
																	$.getScript('assets/js/customizeyourstyle.js');
																},
																error: function(jqXHR, textStatus, errorThrown) 
																{
																	 //$('#cancel_occ').click();
																	//swal("Error", "unknown error occured, Please try again", "error");	 
																	   
																}
															}) 
												
												 
											 });
											 
											 
											 
											 
											 
			 
			 

 
	 
	
	
	