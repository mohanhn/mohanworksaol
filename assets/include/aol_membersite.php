<?PHP
/*
    The Screening Pros LLC
    Developer: Rizwan Alam 
    Date: April 29, 2016

*/
//require_once("class.phpmailer.php");
//require_once("formvalidator.php");

class FGMembersite
{
    var $admin_email;
    var $from_address;
    
    var $username;
    var $pwd;
    var $database;
    var $tablename;
    var $connection;
    var $rand_key;
    var $error_message;
    
    
    //-----Initialization -------
    function FGMembersite()
    {
        $this->sitename = 'http://10.1.4.109';
        $this->rand_key = 'vFabEWpUwrRIQWk';		
		// Resman API key
		$this->resmanpartnerid = '1150' ;
		$this->resmanapikey    = 'd1da71cd5996472cb99fc379c657c621' ;	 
    }

    function InitDB($host,$uname,$pwd,$database,$tablename)
    {
        $this->db_host   = $host;
        $this->username  = $uname;
        $this->pwd       = $pwd;
        $this->database  = $database;
        $this->tablename = $tablename;
        
    }
    function SetAdminEmail($email)
    {
        $this->admin_email = $email;
    }
    
    function SetWebsiteName($sitename)
    {
        $this->sitename = $sitename;
    }
    
    function SetRandomKey($key)
    {
        $this->rand_key = $key;
    }
    
	
		//------------------------ Sarfaraz Functions Start -----------------------
	
	function  retriveProfile($profileid)
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
          $qry = "Select * from profile where idprofile = '" . $profileid . "'";  
          error_log($qry);
          if (mysqli_query($this->connection, $qry)) {
       $result = mysqli_query($this->connection, $qry);
       
           $row = mysqli_fetch_assoc($result);
           mysqli_close($this->connection);
                return $row;   
        }
    
          }
	
	function RetrievePortfolioStyle($mastermemberid,$mastermemberno)

	{
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

		$ar = [] ;
		
 	    $qry = "Select * from profilestyle where stylemastermemberid = '".$mastermemberid."' and stylemastermemberno = '".$mastermemberno."'";
        
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
	}
        
        
    function RetrieveMember($membermasterid,$membermasterno)

	{
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

		$ar = [] ;
		
 	    $qry = "Select * from members where membermasterid = '".$membermasterid."' and membermasterno = '".$membermasterno."'";
        
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
	}
        
        /*
         * function for inserting newe style in property setup.php
         */    
    function addNewStyle(
                $stylemastermemberid,
                $stylemastermemberno,
                $stylename, 
                $logoname, 
                $logoheight,
                $logowidth, 
                $colorcodewelcome
                ,$colorcodefooter
                ,$colorcodebutton
                ,$colorbuttonhover
                ,$colorcodeurllink,
                $storedimage
                )
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
          $qry = 'INSERT INTO profilestyle ( 
                  stylemastermemberid,
                  stylemastermemberno,
                  stylename,
                  logoname,
                  logoheight,
                  logowidth,
                  colorcodewelcome,
                  colorcodefooter,
                  colorcodebutton,
                  colorcodebuttonhover,
                  colorcodeurllink,
                  storedimage
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$stylemastermemberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$stylemastermemberno) . '",
                  "' . $this->SanitizeForSQL($this->connection,$stylename) . '",
                  "' . $this->SanitizeForSQL($this->connection,$logoname) . '",
                  "' . $this->SanitizeForSQL($this->connection,$logoheight) . '",
                  "' . $this->SanitizeForSQL($this->connection,$logowidth) . '",
                  "' . $this->SanitizeForSQL($this->connection,$colorcodewelcome) . '",
                  "' . $this->SanitizeForSQL($this->connection,$colorcodefooter) . '",
                  "' . $this->SanitizeForSQL($this->connection,$colorcodebutton) . '",
                  "' . $this->SanitizeForSQL($this->connection,$colorbuttonhover) . '",
				  "' . $this->SanitizeForSQL($this->connection,$colorcodeurllink) . '",                  
				  "' . $this->SanitizeForSQL($this->connection,$this->insertImage($storedimage, $stylemastermemberid)) . '"                  
                  )' ;
                                                     
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }

       } 
       
         /*
         * function for updating new style in property setup.php
         */    
            function updateStyle(
                $style_id,
                $stylemastermemberid,
                $stylename, 
                $logoname, 
                $logoheight,
                $logowidth, 
                $colorcodewelcome,
				$colorcodefooter,
				$colorcodebutton,
				$colorbuttonhover,
				$colorcodeurllink,
                $storedimage
                   )
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
			return false;
        }
        $image = $this->insertImage($storedimage, $stylemastermemberid);
        
        if($image !=''){
                                $update_query = 'update profilestyle set  stylename = "' . $this->SanitizeForSQL($this->connection,$stylename) . '",
				   logoname = "' . $this->SanitizeForSQL($this->connection,$logoname) . '",
				   logoheight = "' . $this->SanitizeForSQL($this->connection,$logoheight) . '",
				   logowidth = "' . $this->SanitizeForSQL($this->connection,$logowidth) . '",
				   colorcodewelcome = "' . $this->SanitizeForSQL($this->connection,$colorcodewelcome) . '",
				   colorcodefooter = "' . $this->SanitizeForSQL($this->connection,$colorcodefooter) . '",
				   colorcodebutton = "' . $this->SanitizeForSQL($this->connection,$colorcodebutton) . '",
				   colorcodebuttonhover = "' . $this->SanitizeForSQL($this->connection,$colorbuttonhover) . '",
				   colorcodeurllink = "' . $this->SanitizeForSQL($this->connection,$colorcodeurllink) . '",
				   storedimage = "' . $this->SanitizeForSQL($this->connection,$image) . '"
				   where
				   idprofilestyle = "' .$style_id.'"' ;
        }else{
            $update_query = 'update profilestyle set  stylename = "' . $this->SanitizeForSQL($this->connection,$stylename) . '",
				   logoheight = "' . $this->SanitizeForSQL($this->connection,$logoheight) . '",
				   logowidth = "' . $this->SanitizeForSQL($this->connection,$logowidth) . '",
				   colorcodewelcome = "' . $this->SanitizeForSQL($this->connection,$colorcodewelcome) . '",
				   colorcodefooter = "' . $this->SanitizeForSQL($this->connection,$colorcodefooter) . '",
				   colorcodebutton = "' . $this->SanitizeForSQL($this->connection,$colorcodebutton) . '",
				   colorcodebuttonhover = "' . $this->SanitizeForSQL($this->connection,$colorbuttonhover) . '",
				   colorcodeurllink = "' . $this->SanitizeForSQL($this->connection,$colorcodeurllink) . '"
				   where
				   idprofilestyle = "' .$style_id.'"' ;
        }	    
        if(!mysqli_query($this->connection,$update_query))
        {
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }

 
       function Properties($memberid, $memberno)
	{		
		if(!$this->DBLogin())
       	{
           	  $this->HandleError("Database login failed!");
           	  return false;
       	}
		$ar = [];	

	    $qry = "SELECT * FROM tspaol.profilestyle WHERE stylemastermemberid = '"
		. $this->SanitizeForSQL($this->connection, $memberid) . "' AND stylemastermemberno = '"
		. $this->SanitizeForSQL($this->connection, $memberno) . "' "
		. "order by idprofilestyle,stylemastermemberid,stylemastermemberno;" ;

       $result = mysqli_query($this->connection,$qry);
		
		while($row = mysqli_fetch_assoc($result))
		{
			array_push($ar, $row);  
		}
		
		return $ar;
               
	}
        /*
         * function for inserting image& concatinating MemberId & 
         * random number to actual filaname
         */
        function insertImage($storedimage ,$mastermemberid) {
			$actual_image_name;
			
               $path = "images/clientimages/";
	$valid_formats = array("jpg", "png", "gif", "bmp","JPG","GIF","BMP","PNG") ;
	if(isset($_POST) and $_SERVER['REQUEST_METHOD'] == "POST")
		{
			$name = $_FILES['logo']['name'];
			$size = $_FILES['logo']['size'];
                        $img = (pathinfo($name));
			$imgName = $img["filename"];
                        $imgSize = strlen($imgName);
			if(strlen($name))
				{
				list($txt, $ext) = explode(".", $name);
				if(in_array($ext,$valid_formats))
				{
                                    $size = strlen($name);
                                    $actual_image_name =  $mastermemberid."-".rand().rand()."-".$imgName.".".$ext;
                                    $tmp = $_FILES['logo']['tmp_name'];
                                    move_uploaded_file($tmp, $path.$actual_image_name);
				}  
                                
                }} return $actual_image_name;
                
           }
           
         
		 function applyStyle(
                               $applicationfee,
                               $styleid,
                               $paymentsubmit,
                               $paymentprovider,
                               $notificationemail1,
                               $notificationemail2,
                               $notificationemail3,
                               $notificationemail4,
                               $notificationemail5,
                               $officehrs,
                               $officephone,
                               $officeemail,
                               $clickpaylandlordid,
                               $clickpayllcid,
                               $profile_id,
                               $intrgrationVendor,
                               $vendorSelect,
                               $vendorAccountId,
                               $vendorPropertyid,
                               $vendorAgentid,
                               $vendorAgentfname,
                               $vendorAgentlname,
							   $rentcode,
                               $secdepositcode,
                               $idmembers
                   ) {
               if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
              
                 $updateqry = 'update members set       applicantfee = "' . $this->SanitizeForSQL($this->connection,$applicationfee) . '",
							styleid = "' . $this->SanitizeForSQL($this->connection,$styleid) . '",
							paymentsubmit = "' . $this->SanitizeForSQL($this->connection,$paymentsubmit) . '",
							paymentprovider = "' . $this->SanitizeForSQL($this->connection,$paymentprovider) . '",
							notificationemail1 = "' . $this->SanitizeForSQL($this->connection,$notificationemail1) . '",
							notificationemail2 = "' . $this->SanitizeForSQL($this->connection,$notificationemail2) . '",
							notificationemail3 = "' . $this->SanitizeForSQL($this->connection,$notificationemail3) . '",
							notificationemail4 = "' . $this->SanitizeForSQL($this->connection,$notificationemail4) . '",
							notificationemail5 = "' . $this->SanitizeForSQL($this->connection,$notificationemail5) . '",
							leaseofficephone = "' . $this->SanitizeForSQL($this->connection,$officephone) . '",
							leaseoffichours = "' . $this->SanitizeForSQL($this->connection,$officehrs) . '",
							leaseofficeemail = "' . $this->SanitizeForSQL($this->connection,$officeemail) . '",
							clickpaylandlordid = "' . $this->SanitizeForSQL($this->connection,$clickpaylandlordid) . '",
							clickpayllcid = "' . $this->SanitizeForSQL($this->connection,$clickpayllcid) . '",
							profileid = "' . $this->SanitizeForSQL($this->connection,$profile_id) . '",							
							pmsintegrationisactive = "' . $this->SanitizeForSQL($this->connection,$intrgrationVendor) . '",							
							pmspartner = "' . $this->SanitizeForSQL($this->connection,$vendorSelect) . '",							
							resmanaccountid = "' . $this->SanitizeForSQL($this->connection,$vendorAccountId) . '",							
							resmanpropertyid = "' . $this->SanitizeForSQL($this->connection,$vendorPropertyid) . '",							
							resmanagentid = "' . $this->SanitizeForSQL($this->connection,$vendorAgentid) . '",							
							resmanagentfirstname = "' . $this->SanitizeForSQL($this->connection,$vendorAgentfname) . '",							
							resmanagentlastname = "' . $this->SanitizeForSQL($this->connection,$vendorAgentlname) . '",
							resmanrentchargecode = "' . $this->SanitizeForSQL($this->connection,$rentcode) . '",
							resmansecdepositchargecode = "' . $this->SanitizeForSQL($this->connection,$secdepositcode) . '"
                            where
                            idmembers = "' .$idmembers.'" ' ;	
                                              			    
        if(!mysqli_query($this->connection,$updateqry))
        {
			error_log(print_r($updateqry,true));
			error_log("Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$updateqry");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
           }
	
		 
        
function applyToAll(
                               $applicationfee,
                               $styleid,
                               $paymentsubmit,
                               $paymentprovider,
                               $notificationemail1,
                               $notificationemail2,
                               $notificationemail3,
                               $notificationemail4,
                               $notificationemail5,
                               $officehrs,
                               $officephone,
                               $officeemail,
                               $clickpaylandlordid,
                               $clickpayllcid,
                               $profile_id,
                               $intrgrationVendor,
                               $vendorSelect,
                               $vendorAccountId,
                               $vendorPropertyid,
                               $vendorAgentid,
                               $vendorAgentfname,
                               $vendorAgentlname,
							   $rentcode,
                               $secdepositcode,
                               $membermasterid
                   ) {
               
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                $updateqry = 'update members set applicantfee = "' . $this->SanitizeForSQL($this->connection,$applicationfee) . '",
							styleid = "' . $this->SanitizeForSQL($this->connection,$styleid) . '",
							paymentsubmit = "' . $this->SanitizeForSQL($this->connection,$paymentsubmit) . '",
							paymentprovider = "' . $this->SanitizeForSQL($this->connection,$paymentprovider) . '",
							notificationemail1 = "' . $this->SanitizeForSQL($this->connection,$notificationemail1) . '",
							notificationemail2 = "' . $this->SanitizeForSQL($this->connection,$notificationemail2) . '",
							notificationemail3 = "' . $this->SanitizeForSQL($this->connection,$notificationemail3) . '",
							notificationemail4 = "' . $this->SanitizeForSQL($this->connection,$notificationemail4) . '",
							notificationemail5 = "' . $this->SanitizeForSQL($this->connection,$notificationemail5) . '",
							leaseofficephone = "' . $this->SanitizeForSQL($this->connection,$officephone) . '",
							leaseoffichours = "' . $this->SanitizeForSQL($this->connection,$officehrs) . '",
							leaseofficeemail = "' . $this->SanitizeForSQL($this->connection,$officeemail) . '",
							clickpaylandlordid = "' . $this->SanitizeForSQL($this->connection,$clickpaylandlordid) . '",
							clickpayllcid = "' . $this->SanitizeForSQL($this->connection,$clickpayllcid) . '",							
							profileid = "' . $this->SanitizeForSQL($this->connection,$profile_id) . '",
                                                        pmsintegrationisactive = "' . $this->SanitizeForSQL($this->connection,$intrgrationVendor) . '",							
							pmspartner = "' . $this->SanitizeForSQL($this->connection,$vendorSelect) . '",							
							resmanaccountid = "' . $this->SanitizeForSQL($this->connection,$vendorAccountId) . '",							
							resmanpropertyid = "' . $this->SanitizeForSQL($this->connection,$vendorPropertyid) . '",							
							resmanagentid = "' . $this->SanitizeForSQL($this->connection,$vendorAgentid) . '",							
							resmanagentfirstname = "' . $this->SanitizeForSQL($this->connection,$vendorAgentfname) . '",							
							resmanagentlastname = "' . $this->SanitizeForSQL($this->connection,$vendorAgentlname) . '",
							resmanrentchargecode = "' . $this->SanitizeForSQL($this->connection,$rentcode) . '",
							resmansecdepositchargecode = "' . $this->SanitizeForSQL($this->connection,$secdepositcode) . '"
                            where
                            membermasterid = "' .$membermasterid.'" ' ;	
                                                			    
        if(!mysqli_query($this->connection,$updateqry))
        {
			error_log(print_r($updateqry,true));
			error_log("Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$updateqry");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
           }
	   
		

		//Applicant inert to db 8:07 AM 12/15/2016 updated on 23march 2017
	  function addApplicant(
                $applicantsmemberid,
                $application_id,
                $applicantsmemberno,
                 $firstname,
                 $lastname,
                 $email,
                 $pswd,
                 $phone,
                 $s_propertycode,
                 $s_processingfee,
                 $s_applicationfee,
                 $s_holdingdeposit,
                 $applicantinvited,
                 $applicantstype,
                 $applicantstatus
                  
                )
	{
                    error_log("inside applicant");
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                $pwd= md5($pswd);
                $phone=str_replace("(","",$phone);
                $phone=str_replace(")","",$phone);
                $phone=str_replace(" ","",$phone);
                $phone=str_replace("-","",$phone);
               
                if($s_holdingdeposit=='')
                {
                  $s_holdingdeposit=0;
                }
                $middlename='';
          $qry = 'INSERT INTO applicants (
                  applicantsmemberid,
                  applicantsidapplication, 
                  applicantsmemberno,                 
                  applicantsfirtsname,
                  applicantmidname,
                  applicantslastname,
                  applicantsemail,
                  applicantsinvitationdate,
                  termsagreeddate,
                  applicantpassword,
                  applicantphoneno,
                  applicantsproperty,
                  processingfee,
                  screeningfee,
                  holdingdeposit,
                  applicantsinvited,
                  applicantstype,
                  applicantsstatus
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection, $applicantsmemberid) . '" , 
                  "' . $this->SanitizeForSQL($this->connection, $application_id) . '" , 
                  "' . $this->SanitizeForSQL($this->connection,$applicantsmemberno) . '",  
                  
                  "' . $this->SanitizeForSQL($this->connection,$firstname) . '", 
                  "'.$middlename.'", 
                  "' . $this->SanitizeForSQL($this->connection,$lastname) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$email) . '", 
                      now(),
                      now(),
                  "' . $pwd . '", 
                  "' . $this->SanitizeForSQL($this->connection,$phone) . '",
                  "' . $this->SanitizeForSQL($this->connection,$s_propertycode) . '",
                  "' . $this->SanitizeForSQL($this->connection,$s_processingfee) . '",
                  "' . $this->SanitizeForSQL($this->connection,$s_applicationfee) . '",
                  ' . $this->SanitizeForSQL($this->connection,$s_holdingdeposit) . ',
                  "' . $this->SanitizeForSQL($this->connection,$applicantinvited) . '",
                      "' . $this->SanitizeForSQL($this->connection,$applicantstype) . '", 
                      "' . $this->SanitizeForSQL($this->connection,$applicantstatus) . '" 
                  )' ;
          
         
          
          
          
                   if (mysqli_query($this->connection, $qry)) {
                      $lastid = mysqli_insert_id($this->connection);
                      mysqli_close($this->connection);
                      return $lastid ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return $lastid=0;
                   }

       } 


        

   //--- function to authenticate member token & retrieve the 
    //--- Members, style & profile contents 
    //   1:59 AM 12/20/2016---- Updated by pradeep on 23rd march 2017
   
         
        function AuthenticateToken($memberToken,$propertyID,$applicant_type)
    {
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
                }
 	    $qry = 'Select * from members where membertoken = "' .$memberToken. '" ' ; 
            
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
			
            $this->HandleError("failed session");
            mysqli_close($this->connection);
            return false;
        
        }  else 
        
        {
			
            $row = mysqli_fetch_assoc($result);
                if(session_status() === PHP_SESSION_NONE )
		        {
                  session_start();
                } else ;
				{
				  session_destroy(); // killed any previous session that may exists ;
				  session_start();
				}
               $_SESSION['Applicanttype']=$applicant_type;
               $_SESSION['memberid'] = $row['memberid'];
               $_SESSION['memberno'] = $row['memberno'];
               $_SESSION['membermasterid']  = $row['membermasterid'];
               $_SESSION['membermasterno']  = $row['membermasterno'];
               $_SESSION['membername']  = $row['membername'];
               $_SESSION['leaseofficephone']  = $row['leaseofficephone'];
               $_SESSION['token']  = $row['membertoken'];
               $_SESSION['applicationfee']  = $row['applicantfee'];
               $_SESSION['paymentsubmit']  = $row['paymentsubmit'];
               $_SESSION['propertycode']  = $propertyID;
               $_SESSION['pmspartner']  = $row['pmspartner'];
               // added y rizwan 4/20/2017 for session validation
			   $_SESSION['AOL_ACTIVE_SESSION'] = 'YES' ;
			   
			   
               if(($row['clickpaylandlordid'])!='' && ($row['clickpayllcid'])!='' )
               {
                    $_SESSION['landlordid']=$row['clickpaylandlordid'];
                    $_SESSION['llcid']=$row['clickpayllcid'];
                   
               }else
               {
                   $_SESSION['landlordid']=$row['tspclickpaylandlordid'];
                   $_SESSION['llcid']=$row['tspclickpayllcid'];
               }
               
               //obtaining processing fee from mastermember
                $qry = 'Select * from mastermember where mastermemberid = "' .$row['membermasterid'].'" and mastermemberno = "' .$row['membermasterno'].'"';
                $master_result = mysqli_query($this->connection,$qry);
                $row1 = mysqli_fetch_assoc($master_result);
                if(is_array($row1))
                    {
                      $_SESSION['Processingfee']  =$row1['processingfee'];
                    }else
                        {
                            $_SESSION['Processingfee']  =0;
                        }
                      	}
if($propertyID!="")
{
    $qry = 'Select * from property where propertymemberid = "' .$_SESSION['memberid']. '" and propertymemberno="'.$_SESSION['memberno'].'" and propertycode="'.$propertyID.'"';
         $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
			
            $this->HandleError("failed session");
            mysqli_close($this->connection);
            return false;
        
        }  else
        {
               $prop_row = mysqli_fetch_assoc($result);
               $_SESSION['propertycode']  = $propertyID;
               $_SESSION['memberaddress']  = $prop_row['propertyaddress'];
               $_SESSION['membercity']  = $prop_row['propertycity'];
               $_SESSION['memberstate']  = $prop_row['propertystate'];
               $_SESSION['memberzip']  = $prop_row['propertyzip'];
               $_SESSION['leaseofficeemail']  = $prop_row['propertyoffemail'];
               $_SESSION['styleid']  = $prop_row['styleid'];
               $_SESSION['profileid']  = $prop_row['profileid'];
               $_SESSION['applicationfee']  = $prop_row['applicationfee'];
			   $_SESSION['notificationemail1']  = $prop_row['propertynotifyemail1'];
               $_SESSION['notificationemail2']  = $prop_row['propertynotifyemail2'];
               $_SESSION['notificationemail3']  = $prop_row['propertynotifyemail3'];
               $_SESSION['notificationemail4']  = $prop_row['propertynotifyemail4'];
               $_SESSION['notificationemail5']  = $prop_row['propertynotifyemail5'];
               if(($prop_row['clickpaylandlordid'])!='' && ($prop_row['clickpayllcid'])!='' )
               {
                    $_SESSION['landlordid']=$prop_row['clickpaylandlordid'];
                    $_SESSION['llcid']=$prop_row['clickpayllcid'];
                  
               }else
               {
                   $_SESSION['landlordid']=$prop_row['tspclickpaylandlordid'];
                   $_SESSION['llcid']=$prop_row['tspclickpayllcid'];
               }
               
               if($prop_row['Propertyname']!='')
               {
                   $_SESSION['membername']  = $prop_row['Propertyname'];
               }
            
        }
            

    //authenticate_propertyID();
    
}else
{
               $_SESSION['propertycode']  = '';
               $_SESSION['memberaddress']  = $row['memberaddress'];
               $_SESSION['membercity']  = $row['membercity'];
               $_SESSION['memberstate']  = $row['memberstate'];
               $_SESSION['leaseofficeemail']  = $row['leaseofficeemail'];
               $_SESSION['memberzip']  = $row['memberzip'];
               $_SESSION['styleid']  = $row['styleid'];
               $_SESSION['profileid']  = $row['profileid'];
               $_SESSION['applicationfee']  = $row['applicantfee'];
			   $_SESSION['notificationemail1']  = $row['notificationemail1'];
               $_SESSION['notificationemail2']  = $row['notificationemail2'];
               $_SESSION['notificationemail3']  = $row['notificationemail3'];
               $_SESSION['notificationemail4']  = $row['notificationemail4'];
               $_SESSION['notificationemail5']  = $row['notificationemail5'];
}
              $styleqry = 'Select * from profilestyle where idprofilestyle = "' .$_SESSION['styleid']. '"; ' ; 
              $resultStyle = mysqli_query($this->connection,$styleqry); 
              
              $styleRow = mysqli_fetch_assoc($resultStyle);
              
              if(!$resultStyle || mysqli_num_rows($resultStyle) <= 0)
                {
                    $this->HandleError("failed session");
                    mysqli_close($this->connection);
                    return false;
                }  
            else{
           $_SESSION['colorcodewelcome'] = '#'.$styleRow['colorcodewelcome'];
           $_SESSION['colorcodefooter']  = '#'.$styleRow['colorcodefooter'];
           $_SESSION['colorcodebutton']  = '#'.$styleRow['colorcodebutton'];
           $_SESSION['colorcodebuttonhover'] = '#'.$styleRow['colorcodebuttonhover'] ;
           $_SESSION['colorcodeurllink']= '#'.$styleRow['colorcodeurllink'];
           $_SESSION['storedimage']  = $styleRow['storedimage'];
		   $_SESSION['logowidth']  = $styleRow['logowidth'].'px' ;
		   $_SESSION['logoheight'] = $styleRow['logoheight'].'px' ;
		   
        }
            mysqli_close($this->connection);
            return true;   
    }					
		//Note last name memberid , memberno is not req for temp
		//purpose but it is a mandatory feild to insert
		//so that we supplied these values
		
				
		//Note last name memberid , memberno is not req for temp
		//purpose but it is a mandatory feild to insert
		//so that we supplied these values
		
		

//for Invited  applicants
function applicantInvited(     
                $applicantstype,
                $applicantsidapplication,
                $applicantsfirtsname, 
                $applicantslastname,
                $applicantsmemberid, 
                $applicantsmemberno,
                $applicantsemail,
                $applicantsstatus ,
                $invitationmessage,
                $applicantsinvited,
                $applicantsproperty,
                $processingfee,      
                $screeningfee,       
                $holdingdeposit
                )
	{
                   
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
			
			
                if($processingfee=='')
                {
                  $processingfee=0;
                }
                if($screeningfee=='')
                {
                  $screeningfee=0;
                }
                if($holdingdeposit=='')
                {
                  $holdingdeposit=0;
                }

          $qry = 'INSERT INTO applicants (
                applicantstype,
                applicantsidapplication,
                applicantsfirtsname, 
                applicantslastname,
                applicantsmemberid, 
                applicantsmemberno,
		applicantsemail, 
                applicantsstatus,
                invitationmessage,
                applicantsinvitationdate,
                applicantsinvited,
                applicantsproperty, 
                processingfee,      
                screeningfee,       
                holdingdeposit     

                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$applicantstype) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicantsidapplication) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicantsfirtsname) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantslastname) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantsmemberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantsmemberno) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantsemail) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantsstatus) . '",
                  "' . $this->SanitizeForSQL($this->connection,$invitationmessage) . '",
                      now(),
                  "' . $this->SanitizeForSQL($this->connection,$applicantsinvited) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantsproperty) . '",
                  "' . $this->SanitizeForSQL($this->connection,$processingfee) . '",
                  "' . $this->SanitizeForSQL($this->connection,$screeningfee) . '",
                  "' . $this->SanitizeForSQL($this->connection,$holdingdeposit) . '"
                  );' ;
			
		
          
                  if (mysqli_query($this->connection, $qry)) {
                      $lastid = mysqli_insert_id($this->connection);
                     mysqli_close($this->connection);
                     return $lastid ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return $lastid=0;
                   }
        }
				
		//for deleteing selected applicants
		function deleteApplicant($idapplicants){
            if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}
           $qry = "DELETE FROM applicants WHERE idapplicants ='".$idapplicants."'";
          
           mysqli_query($this->connection,$qry);
           
          }
		  
		   function selectApplicants($applicantsidapplication)
	{
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}
                $ar = [] ;
 	    $qry = "Select * from applicants where applicantsidapplication = '".$applicantsidapplication."' and applicantstype in('A','G') ";
             
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;      
        }
        }
        function  retriveAmount($applicationid)
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
          $qry = "select sum(screeningfee + processingfee) as totalamount from applicants where applicantsidapplication =".$applicationid." and applicantstype in('A','P','G');";  
          
          if (mysqli_query($this->connection, $qry)) {
       $result = mysqli_query($this->connection, $qry);
       
           $row = mysqli_fetch_assoc($result);
           mysqli_close($this->connection);
                return $row;   
        }
    
      }
           function  removeAmount($applicationid)
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
          $qry = "select sum(screeningfee + processingfee) as invitedamount from applicants where applicantsinvited='Y' and applicantsidapplication =".$applicationid.";";  
          
          if (mysqli_query($this->connection, $qry)) {
       $result = mysqli_query($this->connection, $qry);
       
           $row = mysqli_fetch_assoc($result);
           mysqli_close($this->connection);
                return $row;   
        }
    
      }	  
           
      function screeningProcessingInvity($applicationid){
            if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                 $qry = "select sum(screeningfee) as screeningfeeselected, sum(processingfee) as processingfeeselected from applicants where applicantsinvited !='Y' and applicantstype in('A','G','P') and applicantsidapplication =".$applicationid.";";  
                if (mysqli_query($this->connection, $qry)) {
       $result = mysqli_query($this->connection, $qry);
       
           $row = mysqli_fetch_assoc($result);
           mysqli_close($this->connection);
                return $row;   
        }
          
      }
      
      function screeningProcessingAll($applicationid){
            if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                 $qry = "select sum(screeningfee) as screeningfeeall, sum(processingfee) as processingfeeall from applicants where applicantsidapplication =".$applicationid.";";  
                if (mysqli_query($this->connection, $qry)) {
            $result = mysqli_query($this->connection, $qry);
           $row = mysqli_fetch_assoc($result);
           mysqli_close($this->connection);
                return $row;   
        }
          
      }
      
      
      
function random_str($length) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}

        
        function updateApplicantPayment(
                $applicationid,
                $s_applicationfee,
                $s_processingfee ,
                $s_holdingdeposit,
                $paymentid,
                $paidby,
                $paymentstatus
                   )
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
			return false;
        }
                                $update_query = 'update applicants set  screeningfee = "' . $this->SanitizeForSQL($this->connection,$s_applicationfee) . '",
				   processingfee = "' . $this->SanitizeForSQL($this->connection,$s_processingfee) . '",
				   holdingdeposit = "' . $this->SanitizeForSQL($this->connection,$s_holdingdeposit) . '",
				   paymentid = "' . $this->SanitizeForSQL($this->connection,$paymentid) . '",
				   paymentdate = now(),
				   paidby = "' . $this->SanitizeForSQL($this->connection,$paidby) . '",
				   paymentstatus = "' . $this->SanitizeForSQL($this->connection,$paymentstatus) . '"
				   where
				   applicantsidapplication = "' .$applicationid.'"' ;
				    
        if(!mysqli_query($this->connection,$update_query))
        {
			error_log(print_r($update_query,true));
			error_log("step-5: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
}


        function updateSelectedAppPayment(
                $applicationid,
                $s_applicationfee,
                $s_processingfee ,
                $s_holdingdeposit,
                $paymentid,
                $paidby,
                $paymentstatus
                   )
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
			return false;
        }
                                $update_query = 'update applicants set  screeningfee = "' . $this->SanitizeForSQL($this->connection,$s_applicationfee) . '",
				   processingfee = "' . $this->SanitizeForSQL($this->connection,$s_processingfee) . '",
				   holdingdeposit = "' . $this->SanitizeForSQL($this->connection,$s_holdingdeposit) . '",
				   paymentid = "' . $this->SanitizeForSQL($this->connection,$paymentid) . '",
				   paymentdate = now(),
				   paidby = "' . $this->SanitizeForSQL($this->connection,$paidby) . '",
				   paymentstatus = "' . $this->SanitizeForSQL($this->connection,$paymentstatus) . '"
				   where
				   applicantsidapplication = "' .$applicationid.'" and applicantsinvited = "N"';
			error_log($update_query);	    
        if(!mysqli_query($this->connection,$update_query))
        {
			
			error_log("step-5: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
}

function  retrivePaidApplicants($applicationid,$applicantid)
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
          $qry = "SELECT applicantsfirtsname FROM applicants where applicantsidapplication='" . $applicationid . "' and idapplicants='" . $applicantid . "'";  
          error_log($qry);
          if (mysqli_query($this->connection, $qry)) {
       $result = mysqli_query($this->connection, $qry);
       
           $row = mysqli_fetch_assoc($result);
           mysqli_close($this->connection);
                return $row;   
        }
    
          }
          
          function addTransaction(
                  $paymenttype,
                  $paymentvendor,
                  $paymentapplicationreference,
                  $paymentmemberid,
                  $paymentmemberno,
                  $paymentproperty,
                  $paymentlandlordid,
                  $paymentllcid,
                  $paymentscreeningfee,
                  $paymentprocessingfee,
                  $paymentholdingdeposit,
                  $paymentsecuritydeposit,
                  $paymenttotal,
                  $paymentstatus
                  
                )
	{
                   
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
          $qry = 'INSERT INTO paymenttransactions (
                  paymentdate,
                  paymenttype,
                  paymentvendor,
                  paymentapplicationreference,
                  paymentmemberid,
                  paymentmemberno,
                  paymentproperty,
                  paymentlandlordid,
                  paymentllcid,
                  paymentscreeningfee,
                  paymentprocessingfee,
                  paymentholdingdeposit,
                  paymentsecuritydeposit,
                  paymenttotal,
                  paymentstatus
                  )
                  VALUES
                  (
                  now(),  
                  "' . $this->SanitizeForSQL($this->connection,$paymenttype) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$paymentvendor) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$paymentapplicationreference) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentmemberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentmemberno) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentproperty) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentlandlordid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentllcid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentscreeningfee) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentprocessingfee) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentholdingdeposit) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentsecuritydeposit) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymenttotal) . '",
                  "' . $this->SanitizeForSQL($this->connection,$paymentstatus) . '"
                  );' ;
          error_log($qry);
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
        }

        function  paymentProvider($paymentproviderid)
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
          $qry = "Select * from paymentprovider where paymentproviderid = '" . $paymentproviderid . "'";  
         
          if (mysqli_query($this->connection, $qry)) {
       $result = mysqli_query($this->connection, $qry);
       
           $row = mysqli_fetch_assoc($result);
           mysqli_close($this->connection);
                return $row;   
        }
    }
    
    function paymentPayAll($idapplicants)

	{
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

		$ar = [] ;
	$qry = "Select * from applicants where applicantsidapplication = '".$idapplicants."' and applicantsstatus ='I'";
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
	}	  
		  
	//For updating transaction table 9:21 AM 2/2/2017 in payment completion page

	  function updateTransaction(
                $paymenttoken,
                $paymentapplicationreference,
                $paymentresponsedate,
                $paymentresponsereference,                       
                $paymentstatus,
                $applicationid,
		$paymentrespjson
                )
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
			return false;
        }
                                $update_query = 'update paymenttransactions set  paymentdate = now(),
				   paymentapplicationreference = "' . $this->SanitizeForSQL($this->connection,$paymentapplicationreference) . '",
				   paymenttoken = "' . $this->SanitizeForSQL($this->connection,$paymenttoken) . '",
				   paymentresponsedate = "' . $this->SanitizeForSQL($this->connection,$paymentresponsedate) . '",
				   paymentresponsereference = "' . $this->SanitizeForSQL($this->connection,$paymentresponsereference) . '",
				   paymentstatus = "' . $this->SanitizeForSQL($this->connection,$paymentstatus) . '",
				paymentrespjson = "' . $this->SanitizeForSQL($this->connection,$paymentrespjson) . '"
				   where
				   paymentapplicationreference = "' .$applicationid.'"';

			
	    
        if(!mysqli_query($this->connection,$update_query))
        {
			error_log("step-5: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
}
           
function updatePaidApplicantAll(
                $paymentstatus,
                $applicationid,
                $paymentapplicationreference,
                $paidamount,
		$paidby,
		$applicantsstatus
                   )
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
			return false;
        }
                                $update_query = 'update applicants set  paymentstatus = "' . $this->SanitizeForSQL($this->connection,$paymentstatus) . '",
                                    paymentapprovalreference = "' . $this->SanitizeForSQL($this->connection,$paymentapplicationreference) . '",
                                     paidamount = "' . $this->SanitizeForSQL($this->connection,$paidamount) . '",
paidby = "' . $this->SanitizeForSQL($this->connection,$paidby) . '",
applicantsstatus = "' . $this->SanitizeForSQL($this->connection,$applicantsstatus) . '",
                                    applicantsstatusdate = now() 
				    where
				   applicantsidapplication = "' .$applicationid.'"';	

error_log($update_query);
    
        if(!mysqli_query($this->connection,$update_query))
        {
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
}

    function updatePaidApplicantSelected(
                $paymentstatus,
                $applicationid,
                $paymentapplicationreference,
                $paidamount,
		$paidby,
		$applicantsstatus
                
                   )
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
			return false;
        }
                                $update_query = 'update applicants set  paymentstatus = "' . $this->SanitizeForSQL($this->connection,$paymentstatus) . '",
                                      paymentapprovalreference = "' . $this->SanitizeForSQL($this->connection,$paymentapplicationreference) . '",
                                      paidamount = "' . $this->SanitizeForSQL($this->connection,$paidamount) . '",
paidby = "' . $this->SanitizeForSQL($this->connection,$paidby) . '",
applicantsstatus = "' . $this->SanitizeForSQL($this->connection,$applicantsstatus) . '",
                                      applicantsstatusdate = now() 
				    where
				   applicantsidapplication = "' .$applicationid.'" and applicantsinvited="N"';
	
            
        if(!mysqli_query($this->connection,$update_query))
        {
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
}


function  singleInvityAmtDisp($applicationid,$applicantid)
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
           $qry=" select sum(screeningfee + processingfee) as invityAmount from applicants 
 where applicantsidapplication=". $applicationid ." and idapplicants = ". $applicantid .";";
          error_log($qry);
          if (mysqli_query($this->connection, $qry)) {
       $result = mysqli_query($this->connection, $qry);
       
           $row = mysqli_fetch_assoc($result);
           mysqli_close($this->connection);
                return $row;   
        }
    
      }

      function singleInvityDetailDisp($applicationid,$applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
        $qry = "Select * from applicants where applicantsidapplication = '".$applicationid."' and idapplicants = '".$applicantid."' and applicantsinvited='Y' ";
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}
	
function  singleInvityScreeningProcessingFee($applicationid,$applicantid)
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
           $qry=" select sum(screeningfee) as invityscreeningfee , sum(processingfee) as invityprocessingfee from applicants 
 where applicantsidapplication=". $applicationid ." and idapplicants = ". $applicantid .";";
          
          if (mysqli_query($this->connection, $qry)) {
       $result = mysqli_query($this->connection, $qry);
       
           $row = mysqli_fetch_assoc($result);
           mysqli_close($this->connection);
                return $row;   
        }
    
      }

function updatePaidApplicantSingle(
                $paymentstatus,
                $applicationid,
                $paymentapplicationreference,
                $paidamount,
                $paidby,
                $applicantsstatus,
                $idapplicants
                   )
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
			return false;
        }
                                $update_query = 'update applicants set  paymentstatus = "' . $this->SanitizeForSQL($this->connection,$paymentstatus) . '",
                                      paymentapprovalreference = "' . $this->SanitizeForSQL($this->connection,$paymentapplicationreference) . '",
                                      paidamount = "' . $this->SanitizeForSQL($this->connection,$paidamount) . '",
                                      paidby = "' . $this->SanitizeForSQL($this->connection,$paidby) . '",
                      		      applicantsstatus = "' . $this->SanitizeForSQL($this->connection,$applicantsstatus) . '",
                                      applicantsstatusdate = now() 
				    where
				   applicantsidapplication = "' .$applicationid.'"and idapplicants="'.$idapplicants.'"';
	
            
        if(!mysqli_query($this->connection,$update_query))
        {
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
}

//get question's
    function getquestion_details($mastermemberid,$mastermemberno)
    {
          if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
        if (isset($_SESSION['idprofilex']))
	   {
		$linkid =   $_SESSION['idprofilex'];     
        $ar = [] ;
        $qry = "SELECT masterquestionid,masterquestion FROM masterquestions where masterquestionid in(select questionid from questions where questionlinkprofileid='".$linkid."') AND masterquestionmasterid='".$mastermemberid."' AND masterquestionmasterno='".$mastermemberno."'";   
         // error_log($qry);
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
	    mysqli_close($this->connection);
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
	   }
	   else
	   {
			return false;
		
	   }
    }
	
	function retrieveinvited($applicationid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
        $qry = "Select * from applicants where applicantsidapplication = '".$applicationid."' and applicantsinvited='Y' ";
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}
      
	
//Update application status when authorization, payment & application is complete


function updatepaidApplicationStatus(
                       $applicationid,
                       $appstatusfinal
                    )
        {
            if(!$this->DBLogin())
                {
                    $this->HandleError("Database login failed!");
                                return false;
                }
            $update_query = 'update application set  applicationStatus = "' . $this->SanitizeForSQL($this->connection,$appstatusfinal) . '",
                set applicationcompletiondate = now()
                where
                applicantsidapplication = "' .$applicationid.'"';
             if(!mysqli_query($this->connection,$update_query))
                {
                    $this->HandleDBError("Error updating data to the table\nquery:$update_query");
                                mysqli_close($this->connection);
                    return false;
                }
		
		mysqli_close($this->connection);		
                return true;
        }



//To retieve coapplicants
        
       function retrieveCoapp($applicationid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
        $qry = "Select * from applicants where applicantsidapplication = '".$applicationid ."' and applicantstype !='P' and applicantstype in('A','G','P') and applicantsinvited !='Y'";

        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}

	//------------------------ Sarfaraz Functions End -----------------------
	
/* ==============================================================
					Manoj Functions start
	================================================================= */	
	
// Manoj function to get profile details for selected profile only
	
		function GetprofileRow($mastermemberid, $mastermemberno) {
        if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }
		if (isset($_SESSION['idprofilex']))
		{
		$idprofile = $_SESSION['idprofilex'];
		 	
        $ar = [];
			$qry = "Select * from profile where idprofile = {$idprofile}";
			  //error_log($qry);
		$result = mysqli_query($this->connection, $qry);
		//error_log(print_r($result, true));
		if (!$result || (mysqli_num_rows($result) <= 0)) {
			 mysqli_close($this->connection);
             return false;
        } 
		else 
		{
			mysqli_close($this->connection);
            while ($row = mysqli_fetch_assoc($result)) 
			{
                array_push($ar, $row);
            }
			//error_log("IAM HERE");
			//error_log(print_r($ar, true));
            return $ar;
        }
		}
		else
		{
			return false;	
		}
    }
	
	
	// Manoj function to get Market Source Data -- selected options
	function get_selected_options($tabname,$col1,$col2) {
     
        if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }
		
       if (isset($_SESSION['idprofilex']))
	   {
			$ar = [];
			 
			$idprofile = $_SESSION['idprofilex']; 
			$qry = "select ".$col1.",".$col2." from ".$tabname." where linkidprofile=".$idprofile;
			$result = mysqli_query($this->connection, $qry);
			 if (!$result || mysqli_num_rows($result) <= 0) 
			 {
				 mysqli_close($this->connection);
				 return false;
			 } 
			 else 
			 {
				 mysqli_close($this->connection);
				 while ($row = mysqli_fetch_assoc($result)) 
				 {
					 array_push($ar, $row);
				 }
	 
				 return $ar;
			 }
	   }
	   else
	   {
		return false;
	   }
    }
	
	/* function to update table:- "Profile" */
	function update_selected_table_filed($table,$profile_id,$column_name,$value)
	{
		 if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }	
		$qry ="UPDATE ".$table." SET ".$column_name."='".$value."' WHERE   idprofile=".$profile_id;
		$result = mysqli_query($this->connection, $qry);
		if ($result) 
		{	 
			mysqli_close($this->connection); 
			return true ;
		   
		}
	    else
	    {
			mysqli_close($this->connection);
			return false;
	    }
		
	}
	
	function retrievequestion_details($mastermemberid,$mastermemberno)
    {
          if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
        if (isset($_SESSION['idprofilex']))
	   {
		$linkid =   $_SESSION['idprofilex'];     
        $ar = [] ;
        //$qry = "SELECT masterquestionid,masterquestion FROM masterquestions where masterquestionid in(select questionid from questions where questionlinkprofileid='".$linkid."') AND masterquestionmasterid='".$mastermemberid."' AND masterquestionmasterno='".$mastermemberno."'";   
        $qry = "select * from questions inner join masterquestions on questions.questionid = masterquestions.masterquestionid where questionlinkprofileid = '".$linkid."' AND masterquestionmasterid='".$mastermemberid."' AND masterquestionmasterno='".$mastermemberno."'" ;
		 // error_log($qry);
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
	    mysqli_close($this->connection);
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
	   }
	   else
	   {
		   return false;
		
	   }
    }
	
		//------------------------ venkat Functions -----------------------
	   //Called from 'build your app' gets the profiles from DB
         function Getprofile($mastermemberid, $mastermemberno) {
        if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];

        $qry = "Select * from profile where mastermemberid = '" . $mastermemberid . "' and mastermemberno = '" . $mastermemberno . "'";

        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } else {
			mysqli_close($this->connection);
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($ar, $row);
            }

            return $ar;
        }
    }
    
          /* Insert and Load existing profile */
    //Called from 'build your app'&'membersetup' adds the profiles into DB
      function addprofile(
                $profilename,
                $mastermemberid,
                $mastermemberno,
                $previousaddress,
                $prevadd_val,
                $reasonforleaving,
                $employment_value,
                $bank_info, 
                $bank_select, 
                $credit_info,
                $credit_value, 
                $person_info, 
                $person_value, 
                $aboutus, 
                $question_Selection,
                $employment,
                $policytext,
                $disclosuretext,
                $petsinfo,
                $pets_value
                )
	{
            
            
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}

                
                //error_log("add profile");
                $qry = 'INSERT INTO profile ( 
                  profilename,
                  mastermemberid,
                  mastermemberno,
                  prevaddressreq,
                  minprevaddress,
                  reasonforleavingreq,
                  minemploymnthistreq,
                  includebankaccount,
                  minbankaccountreq,
                  includecreditref,
		  mincreditrefreq,
	          includepersoanalref,
                  minpersonalrefreq,
                  requiredmarketsource,
                  requiredquestions,
                  emphistoryreq,
                  policytext,
                  disclosuretext,
                  ispetallowed,
                  maximumpetsallowed
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$profilename) . '",               
                  "' . $this->SanitizeForSQL($this->connection,$mastermemberid) . '",
		          "' . $this->SanitizeForSQL($this->connection,$mastermemberno) . '",
                  "' . $this->SanitizeForSQL($this->connection,$previousaddress) . '",
                  "' . $this->SanitizeForSQL($this->connection,$prevadd_val) . '",
                  "' . $this->SanitizeForSQL($this->connection,$reasonforleaving) . '",
                  "' . $this->SanitizeForSQL($this->connection,$employment_value) . '",
                  "' . $this->SanitizeForSQL($this->connection,$bank_info) . '",
                  "' . $this->SanitizeForSQL($this->connection,$bank_select) . '",
                  "' . $this->SanitizeForSQL($this->connection,$credit_info) . '",
                  "' . $this->SanitizeForSQL($this->connection,$credit_value) . '",
                  "' . $this->SanitizeForSQL($this->connection,$person_info) . '",
                  "' . $this->SanitizeForSQL($this->connection,$person_value) . '",
                  "' . $this->SanitizeForSQL($this->connection,$aboutus) . '",
                  "' . $this->SanitizeForSQL($this->connection,$question_Selection) . '",
                  "' . $this->SanitizeForSQL($this->connection,$employment) . '",
                  "' . $this->SanitizeForSQL($this->connection,$policytext) . '",
                  "' . $this->SanitizeForSQL($this->connection,$disclosuretext) . '",   
                  "' . $this->SanitizeForSQL($this->connection,$petsinfo) . '",   
                  "' . $this->SanitizeForSQL($this->connection,$pets_value) . '"   
                      
                  )' ;
                          
          
          
          
                  if (mysqli_query($this->connection, $qry)) {
                     $new_insertion= mysqli_insert_id($this->connection);
                     mysqli_close($this->connection);
                   
                     return $new_insertion ;
                    // error_log($qry);
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }

       }
     
         //Called from 'build your app' updates the profiles
    function updateprofile(
                $profileid,
                $profilename,
                $previousaddress, 
                $prevadd_val,
                $reasonforleaving, 
                $employment_value,
                $bank_info, 
                $bank_select, 
                $credit_info,
                $credit_value, 
                $person_info, 
                $person_value, 
                $aboutus, 
                $question_Selection,
                $employment,
                $policy_text,
                $disclosure_text,
                $petsinfo,
                $pets_value
                   )
    {
        
        if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}
        
        
        
                      $update_query = 'update profile set profilename =  "' . $this->SanitizeForSQL($this->connection,$profilename) . '",
                                                        prevaddressreq =   "' . $this->SanitizeForSQL($this->connection,$previousaddress) . '",
                                                        minprevaddress =   "' . $this->SanitizeForSQL($this->connection,$prevadd_val) . '",
                                                        reasonforleavingreq = "' . $this->SanitizeForSQL($this->connection,$reasonforleaving) . '",                                         
                                                        minemploymnthistreq=   "' . $this->SanitizeForSQL($this->connection,$employment_value) . '",
                                                        includebankaccount=   "' . $this->SanitizeForSQL($this->connection,$bank_info) . '",
                                                        minbankaccountreq=   "' . $this->SanitizeForSQL($this->connection,$bank_select) . '",
                                                        includecreditref=   "' . $this->SanitizeForSQL($this->connection,$credit_info) . '",
                                                        mincreditrefreq=   "' . $this->SanitizeForSQL($this->connection,$credit_value) . '",
                                                        includepersoanalref=   "' . $this->SanitizeForSQL($this->connection,$person_info) . '",
                                                        minpersonalrefreq=  "' . $this->SanitizeForSQL($this->connection,$person_value) . '",
                                                        requiredmarketsource= "' . $this->SanitizeForSQL($this->connection,$aboutus) . '",
                                                        requiredquestions=   "' . $this->SanitizeForSQL($this->connection,$question_Selection) . '",
                                                        emphistoryreq=   "' . $this->SanitizeForSQL($this->connection,$employment) . '",
                                                        policytext=   "' . $this->SanitizeForSQL($this->connection,$policy_text) . '",
                                                        disclosuretext=   "' . $this->SanitizeForSQL($this->connection,$disclosure_text) . '",    
                                                        ispetallowed=   "' . $this->SanitizeForSQL($this->connection,$petsinfo) . '",   
                                                        maximumpetsallowed=   "' . $this->SanitizeForSQL($this->connection,$pets_value) . '"    
                                                          where
                                                        idprofile = "' .$profileid.'"' ;
                      
        if(!mysqli_query($this->connection,$update_query))
        {
			//error_log(print_r($update_query,true));
			//error_log("step-5: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
      
    
    //INserting values into Market source
    //Called from 'build your app' insertion&updates the marketsource
    function insert_MS($linkid,$mastersourceid,$tab_name,$col1,$col2)
    {
          if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }
        
        
        
      $insert_query='INSERT INTO '.$tab_name.' ('.$col1.','.$col2.')
                  VALUES(
                  "' . $this->SanitizeForSQL($this->connection,$linkid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$mastersourceid) . '"                         
                  )' ;        
         //error_log($insert_query);
        if (mysqli_query($this->connection, $insert_query)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }          
        
    }
    
    
    

      /*Add and update Market source*/
    
      ////Called from 'build your app' gets 'mastermarketsource'
    function marketSource($sourcemastermemberid, $sourcemastermemberno) {
        if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];

        $qry = "Select sourceid,sourcedescription,externalid from mastermarketsource where sourcemastermemberid = '" . $sourcemastermemberid . "' and sourcemastermemberno = '" . $sourcemastermemberno . "'";

        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } else {
			mysqli_close($this->connection);
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($ar, $row);
            }

            return $ar;
        }
    }
    
    ////Called from 'build your app' gets 'masterquestions'
    function questions($sourcemastermemberid,$sourcemastermemberno) {
        if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];

        $qry = "Select masterquestionid, masterquestion from masterquestions where masterquestionmasterid= '" . $sourcemastermemberid . "' and masterquestionmasterno= '" . $sourcemastermemberno . "'";

        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } else {
			mysqli_close($this->connection);
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($ar, $row);
            }

            return $ar;
        }
    }
    
    
    ////Called from 'build your app' gets 'marketsource'&'questions' for profiles
    function get_market_questions($tabname,$col1,$col2) {
     
        if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];

      
     //$qry = "Select masterquestionid, masterquestion from masterquestions where masterquestionmasterno= 
     //'" . $sourcemastermemberid . "'";
       $qry = "select ".$col1.",".$col2." from ".$tabname."";
       
      
      

        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } else {
			mysqli_close($this->connection);
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($ar, $row);
            }

            return $ar;
        }
    }
    
   
    ////Called from 'build your app' deletes 'marketsource'&'questions' for profiles in update mode
    function delete_market_questions($tabname,$col_name,$id_profile)
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                //error_log("in update");
                
                      $delete_question = "delete from ".$tabname." where ".$col_name."=".$id_profile."";
                      //error_log($delete_question);
                      
        if(!mysqli_query($this->connection,$delete_question))
        {
			//error_log(print_r($delete_question,true));
			//error_log("step-5: Delete query failed");
                        $this->HandleDBError("Error updating data to the table\nquery:$delete_question");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
    
	//Called from propertysetup.php retrives the property data
      function get_property($membermasterid,$membermasterno)

	{
          
          //
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

		$ar = [] ;
		
 	    $qry = "Select * from property where propertymemberid = '".$membermasterid."' and propertymemberno = '".$membermasterno."'";
        
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
			mysqli_close($this->connection);
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
	}
   
     //Called from propertysetup.php updates the property data
       function update_member_property(
                               $applicationfee,
                               $styleid,
                               $paymentcollection,
                               $paymentprovider,
                               $propertynotifyemail1,
                               $propertynotifyemail2,
                               $propertynotifyemail3,
                               $propertynotifyemail4,
                               $propertynotifyemail5,
                               $propertyofficehrs,
                               $propertyofficeemail,
                               $landlordid,
                               $llcid,
                               $profile_id,
                               $intrgrationVendor,
                               $vendorSelect,
                               $vendorAccountId,
                               $vendorPropertyid,
                               $vendorAgentid,
                               $vendorAgentfname,
                               $vendorAgentlname,
                               $idmembers
                   ) {
               if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                 $updateqry = 'update property set      applicationfee = "' . $this->SanitizeForSQL($this->connection,$applicationfee) . '",
							styleid = "' . $this->SanitizeForSQL($this->connection,$styleid) . '",
							paymentsubmit = "' . $this->SanitizeForSQL($this->connection,$paymentcollection) . '",
							paymentprovider = "' . $this->SanitizeForSQL($this->connection,$paymentprovider) . '",
							propertynotifyemail1 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail1) . '",
							propertynotifyemail2 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail2) . '",
							propertynotifyemail3 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail3) . '",
							propertynotifyemail4 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail4) . '",
							propertynotifyemail5 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail5) . '",
							propertyofficehours = "' . $this->SanitizeForSQL($this->connection,$propertyofficehrs) . '",
							propertyoffemail = "' . $this->SanitizeForSQL($this->connection,$propertyofficeemail) . '",                                                        
                                                        clickpaylandlordid = "' . $this->SanitizeForSQL($this->connection,$landlordid) . '",
                                                        clickpayllcid = "' . $this->SanitizeForSQL($this->connection,$llcid) . '",
                                                        profileid = "' . $this->SanitizeForSQL($this->connection,$profile_id) . '",
                                                        pmsintegrationisactive = "' . $this->SanitizeForSQL($this->connection,$intrgrationVendor) . '",							
                                                        pmspartner = "' . $this->SanitizeForSQL($this->connection,$vendorSelect) . '",							
                                                        resmanaccountid = "' . $this->SanitizeForSQL($this->connection,$vendorAccountId) . '",							
                                                        resmanpropertyid = "' . $this->SanitizeForSQL($this->connection,$vendorPropertyid) . '",							
                                                        resmanagentid = "' . $this->SanitizeForSQL($this->connection,$vendorAgentid) . '",							
                                                        resmanagentfirstname = "' . $this->SanitizeForSQL($this->connection,$vendorAgentfname) . '",							
                                                        resmanagentlastname = "' . $this->SanitizeForSQL($this->connection,$vendorAgentlname) . '"							
                                                             where
                                                        idproperty = "' .$idmembers.'"' ;	
                              			    
        if(!mysqli_query($this->connection,$updateqry))
        {
            $this->HandleDBError("Error updating data to the table\nquery:$updateqry");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
           }

             function update_all_properties(
                               $applicationfee,
                               $styleid,
                               $paymentcollection,
                               $paymentprovider,
                               $propertynotifyemail1,
                               $propertynotifyemail2,
                               $propertynotifyemail3,
                               $propertynotifyemail4,
                               $propertynotifyemail5,
                               $propertyofficehrs,
                               $propertyofficeemail,
                               $landlordid,
                               $llcid,
                               $profile_id,
                               $intrgrationVendor,
                               $vendorSelect,
                               $vendorAccountId,
                               $vendorPropertyid,
                               $vendorAgentid,
                               $vendorAgentfname,
                               $vendorAgentlname,
                               $propertymemberid,
                               $propertymemberno
                   ) {
               if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                 $updateqry = 'update property set      applicationfee = "' . $this->SanitizeForSQL($this->connection,$applicationfee) . '",
							styleid = "' . $this->SanitizeForSQL($this->connection,$styleid) . '",
							paymentsubmit = "' . $this->SanitizeForSQL($this->connection,$paymentcollection) . '",
							paymentprovider = "' . $this->SanitizeForSQL($this->connection,$paymentprovider) . '",
							propertynotifyemail1 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail1) . '",
							propertynotifyemail2 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail2) . '",
							propertynotifyemail3 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail3) . '",
							propertynotifyemail4 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail4) . '",
							propertynotifyemail5 = "' . $this->SanitizeForSQL($this->connection,$propertynotifyemail5) . '",
							propertyofficehours = "' . $this->SanitizeForSQL($this->connection,$propertyofficehrs) . '",
							propertyoffemail = "' . $this->SanitizeForSQL($this->connection,$propertyofficeemail) . '",  
                                                        clickpaylandlordid = "' . $this->SanitizeForSQL($this->connection,$landlordid) . '",
                                                        clickpayllcid = "' . $this->SanitizeForSQL($this->connection,$llcid) . '",
                                                        profileid = "' . $this->SanitizeForSQL($this->connection,$profile_id) . '",
                                                        pmsintegrationisactive = "' . $this->SanitizeForSQL($this->connection,$intrgrationVendor) . '",							
                                                        pmspartner = "' . $this->SanitizeForSQL($this->connection,$vendorSelect) . '",							
                                                        resmanaccountid = "' . $this->SanitizeForSQL($this->connection,$vendorAccountId) . '",							
                                                        resmanpropertyid = "' . $this->SanitizeForSQL($this->connection,$vendorPropertyid) . '",							
                                                        resmanagentid = "' . $this->SanitizeForSQL($this->connection,$vendorAgentid) . '",							
                                                        resmanagentfirstname = "' . $this->SanitizeForSQL($this->connection,$vendorAgentfname) . '",							
                                                        resmanagentlastname = "' . $this->SanitizeForSQL($this->connection,$vendorAgentlname) . '"							
                                                        where
                                                        propertymemberid = "' .$propertymemberid.'" and propertymemberno="'.$propertymemberno.'"' ;	
                 
                                               			    
        if(!mysqli_query($this->connection,$updateqry))
        {
            $this->HandleDBError("Error updating data to the table\nquery:$updateqry");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
       }
     /*Created by venkat
       function helps applicant-welcome page to retrive member's master market source descrotion*/
        function Get_marketsource($profileid)
        {
            if(!$this->DBLogin())
         {
          $this->HandleError("Database login failed!");
          return false;
         }

         $ar = [] ;

        $qry = "select sourcedescription from mastermarketsource where idmastermarketsource in (select mastersourceid from marketsource where linkidprofile='". $profileid ."')";
        $result = mysqli_query($this->connection,$qry);

       if(!$result || mysqli_num_rows($result) <= 0)
       {
        mysqli_close($this->connection);
        return false;

        } else 

        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
                return $ar;     
        }
        }
		
		/*Created by rizwan added new function to use the view of the marketing source
          function helps applicant-welcome page to retrive member's master market source descrotion
       */
        function Get_new_marketsource($profileid,$memberid)
        {
            if(!$this->DBLogin())
         {
          $this->HandleError("Database login failed!");
          return false;
         }

        $ar = [] ;
  
        $qry = "select sourcedescription,sourceid from market_view where sourcemastermemberid = '".$memberid."' and linkidprofile = '". $profileid .";'";
		//error_log(print_r('=== Inside new marketing source query ===',true)) ;
		//error_log(print_r($qry,true)) ; 
		
        $result = mysqli_query($this->connection,$qry);

       if(!$result || mysqli_num_rows($result) <= 0)
       {
        mysqli_close($this->connection);
        return false;

        } else 

        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
                return $ar;     
        }
        }
		
		
 /*Created by venkat
     function helps applicant-welcome page to check membres selected market source*/
function Get_market_profilecount($profileid)
{
       if(!$this->DBLogin())
         {
          $this->HandleError("Database login failed!");
          return false;
         }
        
         $qry="select count(linkidprofile) from marketsource where linkidprofile='".$profileid."'";
          $result = mysqli_query($this->connection, $qry);
$ar1=[];
        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        }
        else {
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($ar1, $row);
            }

            return $ar1;
        }

}
/*Created by venkat
     function helps applicant-welcome page to check membres selected market source*/
function get_mktsrc_chk($profid)
{
    
       if(!$this->DBLogin())
         {
          $this->HandleError("Database login failed!");
          return false;
         }
        
         $qry="select requiredmarketsource from profile where idprofile='".$profid."'";
         
          $result = mysqli_query($this->connection, $qry);
          
         $ar1=[];
        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        }
        else {
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($ar1, $row);
            }

            return $ar1;
        }
         
         
}
/*Created by venkat
     function helps applicant-01 page to get member's selected profile questions*/
 function Get_profile_qusetions($profileid)
 {
            if(!$this->DBLogin())
         {
          $this->HandleError("Database login failed!");
          return false;
         }

         $ar = [] ;

        //$qry = "select masterquestionid,masterquestion from masterquestions where  idmasterquestions in (select questionid from questions where questionlinkprofileid='". $profileid ."')";
        $qry = "select * from questions INNER JOIN masterquestions ON questions.questionid=masterquestions.idmasterquestions where questions.questionlinkprofileid='". $profileid ."'";
		$result = mysqli_query($this->connection,$qry);

       if(!$result || mysqli_num_rows($result) <= 0)
       {
        mysqli_close($this->connection);
        return false;

        } else 

        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
                return $ar;     
        }
        }
        /*Created by venkat
     function helps applicant-01 page to get applicants address*/
        function get_applicant_address($appID,$applicantID)
        {
             if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = "select appaddressstreet,applicantaddressunit,appaddresscity,appaddressstate,appaddressszip from applicantaddress where appaddressidapplication=".$appID." and appaddressidapplicant=".$applicantID;
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=0;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }
            
        }
         /*Created by venkat
         function helps applicant-01 page validate session applicant ID*/
        function get_applicant_address_primarykey($appID,$applicantID)
        {
             if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = "select idapplicantaddress from applicantaddress where appaddressidapplication=".$appID." and appaddressidapplicant=".$applicantID;
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=0;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }
            
        }
        /*Created by venkat
     function helps applicant-01 page validate session applicant ID*/
        function get_applicant($appID,$applicantID)
        {
              if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = "select * from applicants where applicantsidapplication=".$appID." and idapplicants=".$applicantID;
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            
            
            while ($row = mysqli_fetch_assoc($result)) 
            { 
                   array_push($ar, $row); 
            }

            return $ar;
        }
            
        }
        function Get_states()
        {
            if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

		$ar = [] ;
		
 	    $qry = "Select * from statecodes";
        
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
        }
          /*
        * Created by sarfraz and modified by venkat on 11Jan2017,this helps loading applicant 
        * address details into DB
        */
       
       function applicantAddress(
               $appaddressidapplication,
               $appaddressidapplicant,
               $appaddresstype,
               $appaddressstreet,
               $appaddress_unitapt,
               $appaddresscity,
               $appaddressstate,
               $appaddressszip
                )
	{
                    //error_log("inside applicant Address");
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
          $qry = 'INSERT INTO applicantaddress (
                  appaddressidapplication,
                  appaddressidapplicant,
                  appaddresstype,
                  appaddressstreet,
                  applicantaddressunit,
                  appaddresscity,
                  appaddressstate,
                  appaddressszip
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$appaddressidapplication) . '",
                  "' . $this->SanitizeForSQL($this->connection,$appaddressidapplicant) . '",
                  "' . $this->SanitizeForSQL($this->connection,$appaddresstype) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$appaddressstreet) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$appaddress_unitapt) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$appaddresscity) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$appaddressstate) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$appaddressszip) . '"
                  );' ;
          
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }


       } 
       
	   
	   //created by venkat to update tables modified on 
       function update_applicant_data($fieldnames,
                                    $fieldvalues,
                                    $tablename,
                                    $col_name,
                                    $col_val,
                                    $col1,
                                    $col2,
                                    $col1_val,
                                    $col2_val)
       {
            if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                $query="";
                
           for($i=0;$i<=count($fieldnames)-1;$i++)
           {
               
               //error_log(count($fieldnames));
               //error_log("fieldnames".$fieldnames[$i]);
               if($fieldvalues[$i]=="now()")
               {
                   $query.=$fieldnames[$i].'='.$this->SanitizeForSQL($this->connection,$fieldvalues[$i]).',';
               }else
               {
                  $query.=$fieldnames[$i].'="'.$this->SanitizeForSQL($this->connection,$fieldvalues[$i]).'",'; 
               }
               
               
               
               error_log("fieldvalues".$fieldvalues[$i]);
           }
           $query='update '. $tablename .' set '.$query;
           $query=rtrim($query,",");
           
           
           
           
           //updating only applicants table
           if(($col_val=="" && $col_name=="")&& (($col1!="") && ($col2!="")))
           {
                
                $query.=' where '.$col1.'="'.$col1_val.'" and '.$col2.'="'.$col2_val.'"';
                
           }
           //updating applicants information table with applicantsID&appID
           if(($col_val!="" && $col_name!="")&& (($col1!="") && ($col2!="")))
           {
           $query.=' where '.$col_name.'="'.$col_val.'" and '.$col1.'="'.$col1_val.'" and '.$col2.'="'.$col2_val.'"';
           }
           
           //updating applicants information table with only appID
           if(($col_val!="" && $col_name!="")&& (($col1!="") && ($col2=="")))
           {
               $query.=' where '.$col_name.'="'.$col_val.'" and '.$col1.'="'.$col1_val.'"';
           }
           
           //updating applicantion table with only appID
            if(($col_val=="" && $col_name=="")&& (($col1!="") && ($col2=="")))
           {
                
               $query.=' where '.$col1.'="'.$col1_val.'"'; 
           
           }
            //updating any table with single where clause
                        if(($col_val!="" && $col_name!="")&& (($col1=="") && ($col2=="")))
           {
                
               $query.=' where '.$col_name.'="'.$col_val.'"'; 
           
           }
           
            
           error_log($query);
         
           
                

                
        if(!mysqli_query($this->connection,$query))
        {
			error_log(print_r($query,true));
			error_log("Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$query");
			mysqli_close($this->connection);
            return false;
        }
		
           mysqli_close($this->connection);		
           return true;
           
           
       }
       
       function Sanitize_phone($phonenum)
       {
           if($phonenum=="" || $phonenum==NULL)
           {
               return $phonenum;
               
           }
                $phonenum=str_replace("-","",$phonenum);
                $phonenum=str_replace(" ","",$phonenum);
                $phonenum=str_replace("(","",$phonenum);
                $phonenum=str_replace(")","",$phonenum);
           return $phonenum;
       }
        /*
        * Created by sarfraz and modified by venkat on 12Jan2017,this helps loading applicant 
        * details into DB
        */

	/* Modified by Pradeep on 23-02-2017 */

      function updateApplicant(
                    $firstname,
                    $midddlename,
                    $lastname,
                    $email,
                    $applicantsuffix,
                    $applicantdrivinglicense,
                    $applicantdrivinglicstate,
                    $applicantdob, 
                    $applicantssn,
                    $app_mobile_phone,
                    $applicantsempincome,
                    $incometype,
                    $app_homephone,
                    $app_workphone,
                    $applcant_rent,
                    $applcant_reasonforleaving,
                    $applicant_type,
                    $Applicant_status,
                    $applcnt_curnt_restype,
                    $appID,
                    $idapplicants                  
                   ) {
               
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                $applicantssn=str_replace("-","",$applicantssn);
                //mpbile phone
                $app_mobile_phone=str_replace("-","",$app_mobile_phone);
                $app_mobile_phone=str_replace(" ","",$app_mobile_phone);
                $app_mobile_phone=str_replace("(","",$app_mobile_phone);
                $app_mobile_phone=str_replace(")","",$app_mobile_phone);
                
                $app_homephone=str_replace("-","",$app_homephone);
                $app_homephone=str_replace(" ","",$app_homephone);
                $app_homephone=str_replace("(","",$app_homephone);
                $app_homephone=str_replace(")","",$app_homephone);
                
                $app_workphone=str_replace("-","",$app_workphone);
                $app_workphone=str_replace(" ","",$app_workphone);
                $app_workphone=str_replace("(","",$app_workphone);
                $app_workphone=str_replace(")","",$app_workphone);
                
                $applicantdob=str_replace("-","/",$applicantdob);
               
                
                
                
                $updateqry = 'update applicants set     applicantsfirtsname = "' . $this->SanitizeForSQL($this->connection,$firstname) . '",
							applicantmidname = "' . $this->SanitizeForSQL($this->connection,$midddlename) . '",
							applicantslastname = "' . $this->SanitizeForSQL($this->connection,$lastname) . '",
							applicantsemail = "' . $this->SanitizeForSQL($this->connection,$email) . '",
							applicantsuffix = "' . $this->SanitizeForSQL($this->connection,$applicantsuffix) . '",
							applicantdrivinglicense = "' . $this->SanitizeForSQL($this->connection,$applicantdrivinglicense) . '",
							applicantdrivinglicstate = "' . $this->SanitizeForSQL($this->connection,$applicantdrivinglicstate) . '",
							applicantdob = "' . $this->SanitizeForSQL($this->connection,$applicantdob) . '",
							applicantssn = "' . $this->SanitizeForSQL($this->connection,$applicantssn) . '",
                                                        applicantphoneno = "' . $this->SanitizeForSQL($this->connection,$app_mobile_phone) . '",
							applicantsempincome = ' . $this->SanitizeForSQL($this->connection,$applicantsempincome) . ',
							appincometype = "' . $this->SanitizeForSQL($this->connection,$incometype) . '",
                                                        applicanthomephone = "' . $this->SanitizeForSQL($this->connection,$app_homephone) . '",
                                                        applicantworkphone = "' . $this->SanitizeForSQL($this->connection,$app_workphone) . '",
                                                        applicantscurrentrent = ' . $this->SanitizeForSQL($this->connection,$applcant_rent) . ',
                                                        appreasonforleaving = "' . $this->SanitizeForSQL($this->connection,$applcant_reasonforleaving) . '",
                                                        applicantstype = "' . $this->SanitizeForSQL($this->connection,$applicant_type) . '",
                                                        applicantsstatus = "' . $this->SanitizeForSQL($this->connection,$Applicant_status) . '",
                                                        applicantscurrentrestype = "' . $this->SanitizeForSQL($this->connection,$applcnt_curnt_restype) . '"
                                                        where applicantsidapplication="'.$appID .'" and idapplicants = "' .$idapplicants.'"' ;	
                                          
                error_log("update applicant".$updateqry);
                
                

                
        if(!mysqli_query($this->connection,$updateqry))
        {
			error_log(print_r($updateqry,true));
			error_log("Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$updateqry");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
           }
           /*
        * Created by sarfraz and modified by venkat on 12Jan2017,this helps loading applicant 
        * details into DB
        */
            function applicantEmployment(
                $applicantempname,
                $applicantempaddress,
                $applicantemptype,
                $applicantempcity,
                $applicantempstate,
                $applicantempzip,
                $applicantempphone,
                $applicantemptitle, 
                $applicantempsupervisor,
                $applicantempyears,
                $applicantempmonths,
                $applicantempunitapp,
                $_appid,
                $_applicantid
                )
	{
//                $applicantempphone
                $applicantempphone=str_replace("-","",$applicantempphone);
                $applicantempphone=str_replace(" ","",$applicantempphone);
                $applicantempphone=str_replace("(","",$applicantempphone);
                $applicantempphone=str_replace(")","",$applicantempphone);
                
                    error_log("inside applicant Address");
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
          $qry = 'INSERT INTO applicantemployment (
                    applicantempname,
                    applicantempaddress,
                    applicantemptype,
                    applicantempcity,
                    applicantempstate,
                    applicantempzip,
                    applicantempphone,
                    applicantemptitle, 
                    applicantempsupervisor,
                    applicantempyears,
                    applicantempmonths,
                    applicantempapartment,
                    applicantempidapplication,
                    applicantempidapplicants
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$applicantempname) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicantempaddress) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$applicantemptype) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$applicantempcity) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$applicantempstate) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$applicantempzip) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicantempphone) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicantemptitle) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$applicantempsupervisor) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$applicantempyears) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantempmonths) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantempunitapp) . '",
                  "' . $this->SanitizeForSQL($this->connection,$_appid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$_applicantid) . '"
                  );' ;
          error_log("inserrt_emp".$qry);
          
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }

       } 
         /*
        * Created by sarfraz and modified by venkat on 18Jan2017,this helps getting applicant 
        * Employement details from DB
        */
        function get_applicant_Emplymnt($appID,$applicantID)
        {
             if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = "select * from applicantemployment where applicantempidapplication=".$appID." and applicantempidapplicants=".$applicantID;
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=0;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }
            
        }
          /*
        * Created by sarfraz and modified by venkat on 18Jan2017,this helps loading applicant 
        * vehicles details into DB
        */
         function Load_applicant_Vehicle(
                 $vehiclesmake,
                 $vehiclesmodel,
                 $vehiclesyear,
                 $vehiclescolor,
                 $_appid,
                 $vehiclesplateno,
                 $vehicleregdate                       
                )
	{
                    
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
          $qry = 'INSERT INTO appvehicles (
                 vehiclesmake,
                 vehiclesmodel,
                 vehiclesyear,
                 vehiclescolor,
                 vehiclesidapplications,
                 vehiclesplateno,
                 vehiclesregistrationstate
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$vehiclesmake) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$vehiclesmodel) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$vehiclesyear) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$vehiclescolor) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$_appid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$vehiclesplateno) . '",
                  "' . $this->SanitizeForSQL($this->connection,$vehicleregdate) . '"
                  
                  );' ;
          
          
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     error_log("im in vehicle");
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
        }

        /*Created by Venkat help updating fields in application*/
        function Update_application($fieldname,$fieldval,$appid)
        {
            if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                 $qry ='update application set '. $fieldname .'="' . $this->SanitizeForSQL($this->connection,$fieldval) . '" where idapplication="'.$this->SanitizeForSQL($this->connection,$appid).'"';
                 error_log("update app".$qry);
                   if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
                   }
                    /*
  * Created by sarfraz and modified by venkat on 18Jan2017,this helps loading applicant 
        * pets details into DB updated by pradeep on 16-03-2017
        */
         function applicantPets(
                 $petstype,
                 $petsbreed,
                 $petsname,
                 $petsweight,
                 $petscolor,
                 $petsage,
                 $petsgender,
                 $petstagno,
                 $appID
                )
	{
                    error_log("inside applicant Address");
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
          $qry = 'INSERT INTO apppets (
                 petstype,
                 petsbreed,
                 petsname,
                 petsweight,
                 petscolor,
                 petsage,
                 petsgender,
                 petstagno,
                 petsidapplication
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$petstype) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$petsbreed) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$petsname) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$petsweight) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$petscolor) . '",
                  "' . $this->SanitizeForSQL($this->connection,$petsage) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$petsgender) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$petstagno) . '",
                  "' . $this->SanitizeForSQL($this->connection,$appID) . '"
                  );' ;
         
                  if (mysqli_query($this->connection, $qry)) {
                     $lastid = mysqli_insert_id($this->connection);
                     mysqli_close($this->connection);
                     return $lastid ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
        }
        
        /*created by venkat used to get application vechicles data from DB*/
        function Get_app_vechicle($appID)
        {
             if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = 'select vehiclesmake,vehiclesmodel,vehiclesyear,vehiclescolor,vehiclesplateno,vehiclesregistrationstate,idvehicles from appvehicles where vehiclesidapplications="'.$appID.'"';
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=0;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        } 
        
               }
               
               /*Created by venkat helps Getting application data from DB*/
               function Get_Application($appID)
               {
                           if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = 'select * from application where idapplication="'.$appID.'"';
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            
            
            while ($row = mysqli_fetch_assoc($result)) 
            { 
                   array_push($ar, $row); 
            }

            return $ar;
        }
        }
        /*Created by venkat helps getting applicant pets information*/
        function get_pets($appID)
        {
            if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = 'select petstype,petsbreed,petsname,petsweight,petscolor,petsage,petsgender,petstagno,idpets from apppets where petsidapplication="'.$appID.'"';
       error_log($qry);
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=1;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }  
        }
         function applicantbankinfo(
               $Applcantionid,
               $accounttype,
               $bankname,
               $bankbranch,
               $bankphone,
               $approxbalance
               
                )
	  {
                    error_log("inside applicant Address");
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                
          $qry = 'INSERT INTO appbank (
                  idapplicationid,
                  accounttype,
                  bankname,
                  bankbranch,
                  bankphone,
                  approxbalance
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$Applcantionid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$accounttype) . '",
                  "' . $this->SanitizeForSQL($this->connection,$bankname) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$bankbranch) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$bankphone) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$approxbalance) . '" 
                  
                  );' ;
          
          error_log("bank query".$qry);
          
          
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
       } 
       /*Created by venkat helps getting applicant bank information*/
        function get_Bank_info($applcntionID)
        {
            if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = 'select accounttype,bankname,bankbranch,bankphone,approxbalance,idappbank from appbank where idapplicationid="'.$applcntionID.'"';
       error_log($qry);
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=1;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }  
        }
        /*Created by sarfraz and modified by venkat*/
         function applicantCreditRef(
                 $appliantID,
                 $creditorname,
                 $credittype,
                 $creditorphone,
                 $monthlypayment
                )
	{
                    
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                
                $creditorphone=str_replace("-","",$creditorphone);
                $creditorphone=str_replace(" ","",$creditorphone);
                $creditorphone=str_replace("(","",$creditorphone);
                $creditorphone=str_replace(")","",$creditorphone);
                
          $qry = 'INSERT INTO appcreditref (
                 idapplicant,
                 creditorname,
                 credittype,
                 creditorphone,
                 monthlypayment
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$appliantID) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$creditorname) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$credittype) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$creditorphone) . '",
                  "' . $this->SanitizeForSQL($this->connection,$monthlypayment) . '"
                  );' ;
          error_log($qry);
          
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
        }
         /*Created by venkat helps getting applicant creditrefernce information*/
        function get_credit_info($applcntID)
        {
            if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = 'select creditorname,credittype,creditorphone,monthlypayment,idappcreditref from appcreditref where idapplicant="'.$applcntID.'"';
       error_log($qry);
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=1;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }  
        }
        /*Created by sarfraz and modified by venkat on 20jan2017 ,Function helps loading applicants personal reference data into DB*/
        function applicantPersonalRef(
                 $appid,
                 $applcntid,
                 $referencename,
                 $relationship,
                 $referencephone,
                 $referenceaddress,
                 $referencecity,
                 $referencestate,
                 $referencezip
                )
	{
                   
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                $referencephone=str_replace("-","",$referencephone);
                $referencephone=str_replace(" ","",$referencephone);
                $referencephone=str_replace("(","",$referencephone);
                $referencephone=str_replace(")","",$referencephone);
                
                
          $qry = 'INSERT INTO apppersonalref (
                 idapplication,
                 idapplicant,
                 referencename,
                 relationship,
                 referencephone,
                 referenceaddress,
                 referencecity,
                 referencestate,
                 referencezip
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$appid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applcntid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$referencename) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$relationship) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$referencephone) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$referenceaddress) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$referencecity) . '",
                  "' . $this->SanitizeForSQL($this->connection,$referencestate) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$referencezip) . '"
                  );' ;
               error_log("Personal refernce".$qry);
          
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
        }
        /*created by venkat helps getting applicant personal ref */
        function get_personal_info($appid, $applcntid)
        {
            if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = 'select referencename,relationship,referencephone,referenceaddress,referencecity,referencestate,referencezip,idapppersonalref from apppersonalref where idapplicant="'.$applcntid.'" and idapplication="'.$appid.'"';
       error_log($qry);
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=1;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }  
            
        }
        /*Created by Sarfraz modified by venkat on 20Jan2017 helps loading emergency data into DB*/
        function applicantEmergencyContacts(
                 $appid,
                 $applcntid,                       
                 $appcontactsname,
                 $appcontactsphone,
                 $appcontactsstreet,
                 $appcontactscity,
                 $appcontactsstate,
                 $appcontactszip,
                 $appcontactsrelations
                )
	{
                    
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                
                $appcontactsphone=str_replace("-","",$appcontactsphone);
                $appcontactsphone=str_replace(" ","",$appcontactsphone);
                $appcontactsphone=str_replace("(","",$appcontactsphone);
                $appcontactsphone=str_replace(")","",$appcontactsphone);
                
                
                
          $qry = 'INSERT INTO appcontacts (
                 appcontactsidapplication,
                 appcontactsidapplicant,
                 appcontactsname,
                 appcontactsphone,
                 appcontactsstreet,
                 appcontactscity,
                 appcontactsstate,
                 appcontactszip,
                 appcontactsrelations
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$appid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applcntid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$appcontactsname) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$appcontactsphone) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$appcontactsstreet) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$appcontactscity) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$appcontactsstate) . '",
                  "' . $this->SanitizeForSQL($this->connection,$appcontactszip) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$appcontactsrelations) . '"
                  );' ;
          
          error_log("emergency contact details".$qry);
          
          
          
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
        }
        /*Created by venkat helps getting applicant emergency information*/
        function Get_Emergency_info($appid, $applcntid)
        {
            if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = 'select appcontactsrelations,appcontactsname,appcontactsphone,appcontactsstreet,appcontactscity,appcontactsstate,appcontactszip,idappcontacts from appcontacts where appcontactsidapplicant="'.$applcntid.'" and appcontactsidapplication="'.$appid.'"';
       error_log($qry);
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=1;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }  
            
        }
        /*Created by by venkat on 27Jan2017 helps loading applicant questions data into DB*/
        function applicantquestions($_appid,
                                    $_applicantid,
                                    $appcnt_ques_id,
                                    $appcnt_ques,
                                    $appcnt_ques_answer,
                                    $appcnt_ques_detail)
                                       
	{
                    
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                 $qry = 'INSERT INTO appquestions (
                 appquestionsidapplication,
                 appquestionsidapplicant,
                 appquestionsidquestion,
                 appquestionsdescription,
                 appquestionsanswer,
                 appquestionsdetail
                 
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$_appid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$_applicantid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$appcnt_ques_id) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$appcnt_ques) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$appcnt_ques_answer) . '", 
                  "' . $this->SanitizeForSQL($this->connection,$appcnt_ques_detail) . '" 
                  );' ;
          
          error_log("market questions".$qry);
          
          
          
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
        }
        //created by venkat on 30jan2017 helps app to get the applicant questions from DB
          function Get_questions_info($appid, $applcntid)
        {
            if (!$this->DBLogin()) {
            $this->HandleError("Database login failed!");
            return false;
        }

        $ar = [];
       $qry = 'select appquestionsanswer,appquestionsdetail,idappquestions from appquestions where appquestionsidapplicant="'.$applcntid.'" and appquestionsidapplication="'.$appid.'"';
       error_log($qry);
       
        $result = mysqli_query($this->connection, $qry);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=1;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }  
            
        }
        
        /* Creatyed by venkat validates the Secondary invitee* 
         */
        
        function Authenticate_Invitee($appID,$ApplicantID)
        {
            if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
                }
 	$qry = 'Select * from applicants where applicantsidapplication =' .$appID. ' and idapplicants='.$ApplicantID.'' ; 
          error_log($qry);  
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
			
            $this->HandleError("failed session");
            mysqli_close($this->connection);
            return false;
        
        }  else 
        
        {
            mysqli_close($this->connection);
            return true;
            
        }
        }
        
        function Get_applicant_status($appID,$applicantID)
        {
            $ar = [] ;
             if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                $delete_sel_question='select applicantsstatus from applicants where applicantsidapplication='.$appID.' and idapplicants='.$applicantID;
                error_log($delete_sel_question);
         $result = mysqli_query($this->connection,$delete_sel_question);
        

         
        $ar=[];
        
      

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } 
        else {
	    mysqli_close($this->connection);
            $i=1;
            
            while ($row = mysqli_fetch_assoc($result)) 
            {
               foreach($row as $x => $x_value) {
                   
                   array_push($ar, $x_value); 
                   
              }
            $i++;
           
            }

            return $ar;
        }  
        
        
	}
              
    //------------------------ venkat Functions End-----------------------
   
	


//---------------------------------Pradeep functions Start-------------------

   //Function to add application created by sarfraz and modified by pradeep on jan 24-2017
	 function addApplication(
                $applicationmemberid,
                $applicationmemberno,
                $applicationmastermemberid,
                $applicationmastermemberno,
                $applicationtoken,
                $applicationstatus,
		$marketselection,
                 $sourceid,
		$otherdescription,
                $s_rent,
                $s_unitno,
                $s_bedroom,
                $s_holdingdeposit,
                $s_securitydeposit,
                $s_feedeposit
                )
                 
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
		if($sourceid=='')
                {
                  $sourceid=0;
                }
                if($s_rent=='')
                {
                  $s_rent=0;
                }
                if($s_holdingdeposit=='')
                {
                  $s_holdingdeposit=0;
                }
                if($s_securitydeposit=='')
                {
                  $s_securitydeposit=0;
                }
                if($s_feedeposit=='')
                {
                  $s_feedeposit=0;
                }
               
          $qry = 'INSERT INTO application (
                  applicationmemberid,
                  applicationmemberno, 
                  applicationmastermemberid,
                  applicationmastermemberno,
                  applicationdate,
                  applicationtoken,
                  applicationlastactivitydate,
                  applicationstatus,
                  marketsourcename,
                  marketsourceid,
                  marketsourceother,
                  futurerent,
                  applicationunitno,
                  bedroomtype,
                  applicationholdingdeposit,
                  applicationsecuritydeposit,
                  otherfee
                  
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$applicationmemberid) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicationmemberno) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicationmastermemberid) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicationmastermemberno) . '",  
                   now(), 
                  "' . $this->SanitizeForSQL($this->connection,$applicationtoken) . '" ,
                 now(),
                  "' . $this->SanitizeForSQL($this->connection,$applicationstatus).'",
                  "' . $this->SanitizeForSQL($this->connection,$marketselection).'",
                  "' . $this->SanitizeForSQL($this->connection,$sourceid).'",
                  "' . $this->SanitizeForSQL($this->connection,$otherdescription).'",
                  ' . $this->SanitizeForSQL($this->connection,$s_rent).',
                  "' . $this->SanitizeForSQL($this->connection,$s_unitno).'",
                  "' . $this->SanitizeForSQL($this->connection,$s_bedroom).'",
                  ' . $this->SanitizeForSQL($this->connection,$s_holdingdeposit).',
                  ' . $this->SanitizeForSQL($this->connection,$s_securitydeposit).',
                  ' . $this->SanitizeForSQL($this->connection,$s_feedeposit).'
                               )';
                              
          error_log($qry);
                  if (mysqli_query($this->connection, $qry)) {
                      error_log("im in application ".$sourceid);
					
                      $lastid = mysqli_insert_id($this->connection);
                     mysqli_close($this->connection);
                     return $lastid ;
					 
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return $lastid=0;
                   }

       } 
	
        
      

              /*Add and update new question into MasterQuestion called from masterquestionsetup*/
    function masterquestionid($masterquestionmasterid, $masterquestionmasterno)
    {
        $ar1=[];
        if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}
                $query_id='select max(masterquestionid)+1 from masterquestions where masterquestionmasterid = "'.$masterquestionmasterid.'" and masterquestionmasterno = "'.$masterquestionmasterno.'";';
                $result = mysqli_query($this->connection, $query_id);

        if (!$result || mysqli_num_rows($result) <= 0) {
            mysqli_close($this->connection);
            return false;
        } else {
            while ($row = mysqli_fetch_assoc($result)) {
                array_push($ar1, $row);
            }

            return $ar1;
        }
                
    }
    
    // called from masterquestionsetup
     function retrieveQuestions($membermasterid,$membermasterno)

	{
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

		$ar = [] ;
		
 	    $qry = "Select * from masterquestions where masterquestionmasterid = '".$membermasterid."' and masterquestionmasterno = '".$membermasterno."'";
        
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
	}
    // called from masterquestionsetup
    function addquestion(
                $masterquestionmasterid,
                $masterquestionmasterno,
                $masterquestionid,
                $masterquestion,
                $masterquestionrequired,
                $masterdetailrequired         
            )
        {
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
          $qry = 'INSERT INTO masterquestions ( 
                  masterquestionmasterid,
                  masterquestionmasterno,
                  masterquestionid,
                  masterquestion,
                  masterquestionrequired,
                  masterdetailrequired
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$masterquestionmasterid) . '",               
                  "' . $this->SanitizeForSQL($this->connection,$masterquestionmasterno) . '",               
                  "' . $this->SanitizeForSQL($this->connection,$masterquestionid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$masterquestion) . '",
		  "' . $this->SanitizeForSQL($this->connection,$masterquestionrequired) . '",
                  "' . $this->SanitizeForSQL($this->connection,$masterdetailrequired) . '"                
                  )' ;
                                                     
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }

       }
       
       //called from masterquestionsetup
       function updatequestion(
                $idmasterquestions,
                $masterquestionmasterid,
                $masterquestionmasterno,
                $masterquestion,
                $masterquestionrequired,
                $masterdetailrequired   
                )
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
               
                      $update_question = 'update masterquestions set'
                                    . ' masterquestionmasterid="' . $this->SanitizeForSQL($this->connection,$masterquestionmasterid) . '",
                                        masterquestionmasterno="' . $this->SanitizeForSQL($this->connection,$masterquestionmasterno) . '",
                                        masterquestion="' . $this->SanitizeForSQL($this->connection,$masterquestion) . '",
                                        masterquestionrequired="' . $this->SanitizeForSQL($this->connection,$masterquestionrequired) . '",
                                        masterdetailrequired="' . $this->SanitizeForSQL($this->connection,$masterdetailrequired) . '"
                                        where
                                        idmasterquestions = "' .$idmasterquestions.'"';
                          
                      if (mysqli_query($this->connection, $update_question)) {
                           error_log("im in update");
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
    }
     //called from masterquestionsetup
     function questionids($masterquestionmasterid,$masterquestionmasterno)
        {
            $ar = [] ;
             if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                $delete_sel_question='select questionid from questions where questionlinkprofileid in (select idprofile FROM profile where mastermemberid="' . $masterquestionmasterid . '" and  mastermemberno="' . $masterquestionmasterno . '") ';
                
         $result = mysqli_query($this->connection,$delete_sel_question);
        

         
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
            while($row = mysqli_fetch_object($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
        
        
	}
                
      
          
    
    // called from masterquestionsetup
     function deletequestion(
                $idmasterquestions,  
                $masterquestionmasterid,
                $masterquestionmasterno,
                $masterquestionid,
                $masterquestion,
                $masterquestionrequired,
                $masterdetailrequired   
                   )
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
                $delete_question = 'delete from masterquestions  where idmasterquestions = "' .$idmasterquestions.'" and masterquestionmasterid = "' . $masterquestionmasterid . '" and masterquestionmasterno = "' . $masterquestionmasterno . '"';
                     
        if(!mysqli_query($this->connection,$delete_question))
        {
			
                        $this->HandleDBError("Error updating data to the table\nquery:$delete_question");
			mysqli_close($this->connection);
            return false;
        }
	    mysqli_close($this->connection); 		
            return true;
    }
    
    function retrieveOccupants($applicantsidapplication)

	{
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

		$ar = [] ;
 	    $qry = "Select * from applicants where applicantsidapplication = '".$applicantsidapplication."' and applicantstype in('O','C','M')";
        
        $result = mysqli_query($this->connection,$qry);
       
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
	}
        
        function occupantAdded(
                $applicantstype,
                $applicantsidapplication,
                $applicantsfirtsname, 
                $applicantslastname,                
                $memberno, 
                $memberid,
				$applicantsemail,
                $applicant_ssn,
                $applicant_dob
                )
	{
                   
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
                
          $applicant_ssn=  str_replace("-", "", $applicant_ssn);
          $applicant_ssn=  str_replace("(", "", $applicant_ssn);
          $applicant_ssn=  str_replace(")", "", $applicant_ssn); 
          
        
          
         $applicant_dob = strtotime($applicant_dob);
         $applicant_dob= date("Y-m-d", $applicant_dob);
             
         
          $qry = 'INSERT INTO applicants (
                applicantstype,
                applicantsidapplication,
                applicantsfirtsname, 
                applicantslastname,               
                applicantsmemberid, 
                applicantsmemberno,
				applicantsemail,
                applicantssn,
                applicantdob
                  )
                  VALUES
                  (
                  "' . $this->SanitizeForSQL($this->connection,$applicantstype) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicantsidapplication) . '",  
                  "' . $this->SanitizeForSQL($this->connection,$applicantsfirtsname) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantslastname) . '",                 
                  "' . $this->SanitizeForSQL($this->connection,$memberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$memberno) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicantsemail) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicant_ssn) . '",
                  "' . $this->SanitizeForSQL($this->connection,$applicant_dob) . '"
                  );' ;
          error_log($qry);
                  if (mysqli_query($this->connection, $qry)) {
                      $lastid = mysqli_insert_id($this->connection);
                     mysqli_close($this->connection);
                     return $lastid ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return $lastid=0;
                   }
        }        
        
      
        function deleteOccupant($idapplicants){
            error_log("in delete block");
            if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}
           $qry = "DELETE FROM applicants WHERE idapplicants ='".$idapplicants."'";
           error_log($qry);
           mysqli_query($this->connection,$qry);
           
          }
          
          function marketsourceid($marketselection,$s_membermasterid,$s_membermasterno)
          {
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

		$ar = [] ;
 	    $qry = "Select sourceid from mastermarketsource where sourcedescription = '".$marketselection."' and sourcemastermemberid = '".$s_membermasterid."' and sourcemastermemberno = '".$s_membermasterno."'";
        
        $result = mysqli_query($this->connection,$qry);
       
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
            while($row = mysqli_fetch_assoc($result))
            {
            array_push($ar, $row);  
            }
		return $ar;     
        }
	}

        //to delete existing one in vehicle section created by pradeep 23/02/2017  
         function deleteVehicle($idapplicants){
            error_log("in delete block");
            if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}
           $qry = "DELETE FROM appvehicles WHERE vehiclesidapplications ='".$idapplicants."'";
          
           mysqli_query($this->connection,$qry);
           
          }
        
        
	
    			// send secondary applicant mail to verify lastname and ssn for online application pradeep 23/02/2017 
    function secondaryApplicantEmail($applicantsidapplication,$lastid,$applicantsmemberid,$applicantsmemberno,$applicantsemail,$applicantsfirtsname,$applicantslastname,$token,$s_firstname,$s_lastname,$s_membername) 
    {
        
		$primaryappname =$s_firstname.' '.$s_lastname ; //
		$propertyname = $s_membername ;
		$s_propertycode='';
		$link = $this->sitename.'/applyonline/Invitee-landing.php?token='.$token.'&ApplicationID='.$applicantsidapplication.'&ApplicantID='.$lastid.'&sec_verify=secverify&propertyID='.$s_propertycode.'' ;
		
		
        $EmailSubject      = "Invitation for Online Rental Application";
		$sendtoemailaddress= $applicantsemail ;  
        $emailTitle        = ''  ;
 	
        $confirmcode   = '';
        $confirm_url   = '';
 
        $Emailmessage  = "<p>Dear " .$applicantsfirtsname. ' ' .$applicantslastname. ",</p>";
		$Emailmessage .= "<p>" .$primaryappname. " included you as a co-applicant for rental application at " .$propertyname."</p>";
		$Emailmessage .= "<p>Please click the link below to verify your identity and authorize to process the application.</p>";
		$Emailmessage .= "<p>".$link."</p>" ;
		//$Emailmessage .= "<p>Message From Sender:<br>" ;
		$Emailmessage .= "<p>If you have any questions, please contact The Screening Pros&#39; support at (800) 877-3179.</p>" ;
		$Emailmessage .= "<br /><br /><br />";
		$Emailmessage .= "<p>Thank you,</p>";
		$Emailmessage .= "<p>The Screening Pros Support Team<br />";
		$Emailmessage .= "www.thescreeningpros.com</p>";

		include 'email_generator1.php'; 
 
        if(!$this->SendPhpEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending application authorization notification email.");
            return false;
         error_log("email fail");
        }
        return true;
         
    }


    
    function validateemail($loginemail,$loginpassword)
        {
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
	$decpassword=md5($loginpassword);	
        $ar = [] ;
		
		
		   $qry = 'Select * from applicants where applicantsemail="'.$loginemail.'" and applicantpassword="'.$decpassword.'"';
		
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}

       // update co-applicants authorization by verifying ssn and lname, created by pradeep on 27-02-2017
        
        function updateauthrizeapplicants($authorization,$ip,$_appid,$_applicantid,$applicantstatus)			 			 					  
	{
		
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
	   
                        
                        $qry = 'update applicants set  appconsent = "' . $this->SanitizeForSQL($this->connection,$authorization) . '",
				   appconsentfromip = "' . $this->SanitizeForSQL($this->connection,$ip) . '",
				   applicantsstatus = "' . $this->SanitizeForSQL($this->connection,$applicantstatus) . '",
				   appconsentdate = now()
				  
				   where
				   applicantsidapplication = "' .$_appid.'" and idapplicants = "' .$_applicantid.'"';
			
				
	    
        if(!mysqli_query($this->connection,$qry))
        {
			error_log("step-5: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$qry");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
}


function validate_email()
        {
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		
		   $qry = "Select applicantsemail from applicants";
		
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}


/*********************Updating invited applicant status created by pradeep on 28-02-2017 ***********/

function updateinvitedapplicant(
                $_appid,
                $_applicantid,
                $password,
                $applicantsatus  
                )
    {
                if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
               
                      $update_question = 'update applicants set'
                                    . ' applicantpassword="' . $this->SanitizeForSQL($this->connection,$masterquestionmasterid) . '",
                                        applicantsstatus="' . $this->SanitizeForSQL($this->connection,$masterquestionmasterno) . '"
                                        where
                                        applicantsidapplication = "'.$_appid.'" and idapplicants = "'.$_applicantid.'"';
                          
                      if (mysqli_query($this->connection, $update_question)) {
                           
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
    }

	  // function to insert/update totalresidents created by Pradeep on feb15-2017
        
	function retrieveResidents($applicationid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		
		   $qry = "Select * from applicants where applicantsidapplication = '".$applicationid."' and applicantstype in('A','P') ";
		
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}
	
	      // function to update totalapplicants and total residents created by pradeep on 06th mar 2017
        function ApplicationStatusupdate(
                                $applicantsidapplication,
                                $totalapplicants,
                                $totalresidents,
                                $occupants,
                                $appsstatus,
                                $s_applicationprimaryzip,
                                $avgincome
                                )			 			 					  
	{
		
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
               if($appsstatus=="C")
               {
                 $appdate="applicationcompletiondate=now()"; 
               }else{
                   $appdate='';
               }
	    $qry = 'update application set
		           applicationtotalapplicant = "' . $this->SanitizeForSQL($this->connection,$totalapplicants) . '",
		           applicationtotalresidents     = "' . $this->SanitizeForSQL($this->connection,$totalresidents) . '",
		           applicationtotaloccupant     = "' . $this->SanitizeForSQL($this->connection,$occupants) . '",
		           applicationstatus     = "' . $this->SanitizeForSQL($this->connection,$appsstatus) . '",
		           applicationprimaryzip     = "' . $this->SanitizeForSQL($this->connection,$s_applicationprimaryzip) . '",
		           applicationaverageincome     = "' . $this->SanitizeForSQL($this->connection,$avgincome) . '",
                           ' . $appdate . '
				   where
				   idapplication = "' .$applicantsidapplication. '" ' ;
            error_log($qry);
                 if (mysqli_query($this->connection, $qry)) {
                         mysqli_close($this->connection);
                         return true ;
                 }      
	}
        

        
	//    function to update applicantsatus created by pradeep on 06 march 2017
    function updateapplicantstatus(
                    $_appid,
                    $_applicantid,
                    $applicantsatus  
                    )
        {
                    if(!$this->DBLogin())
                    {
                      $this->HandleError("Database login failed!");
                      return false;
                    }

                          $update_question = 'update applicants set'
                                        . ' applicantsstatus="' . $this->SanitizeForSQL($this->connection,$applicantsatus) . '",
                                            applicantsstatusdate=now()
                                            where
                                            applicantsidapplication = "'.$_appid.'" and idapplicants = "'.$_applicantid.'"';

                          if (mysqli_query($this->connection, $update_question)) {
                         mysqli_close($this->connection);
                         return true ;
                       }
                       else
                       {
                         mysqli_close($this->connection);
                         return false;
                       }
        }
        

	  //    function to update disclosure time and date created by pradeep on 14 march 2017
        function updatedisclosuretime($appid,$applicantid)
        {
                    if(!$this->DBLogin())
                    {
                      $this->HandleError("Database login failed!");
                      return false;
                    }

                          $update_query = 'update applicants set disclosureagreeddate=now()
                                            where
                                            applicantsidapplication = "'.$appid.'" and idapplicants = "'.$applicantid.'"';

                        
                          if (mysqli_query($this->connection, $update_query)) {
                         mysqli_close($this->connection);
                         return true ;
                         
                       }
                       else
                       {
                         mysqli_close($this->connection);
                         return false;
                       }
        }
        
        
        //to delete existing one in pet section created by pradeep 14/03/2017  
         function deleteapplicantPets($appid,$petid){
            if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}
                if($petid=='')
                {
                    $qry = "DELETE FROM apppets WHERE petsidapplication ='".$appid."'";
                }else
                {
                    $qry = "DELETE FROM apppets WHERE petsidapplication ='".$appid."' and idpets ='".$petid."'";
                }
          
           mysqli_query($this->connection,$qry);
           
          }
	
		    //to delete employmenthistory section created by pradeep 17/03/2017  
         function deleteapplicantemployment($_applicantid){
            if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}
                
                    $qry = "DELETE FROM applicantemployment WHERE  applicantempidapplicants ='".$_applicantid."'";
           
           mysqli_query($this->connection,$qry);
           mysqli_close($this->connection);
           
          }
	
	 //to delete employmenthistory section created by pradeep 20/03/2017  
         function deleteapplicantaddress($_applicantid){
            if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}
                
                    $qry = "DELETE FROM applicantaddress WHERE  appaddressidapplicant ='".$_applicantid."'";
           
           mysqli_query($this->connection,$qry);
           mysqli_close($this->connection);
           
          }

	function membernotificationemail($email,$fname,$lname,$phone,$applicantemail,$propertyname,$unitnumber)
    {
        
        $EmailSubject      = "An Online Application is just started";
        $sendtoemailaddress= $email ;  
        $confirmcode   = '';
        $confirm_url   = '';
        $emailTitle   = '';
 
		$Emailmessage .= "<p>An online application is just started by {$fname} {$lname} for {$propertyname}.</p>";
		$Emailmessage .= "<p>Following are the applicant details</p>";
                if($unitnumber!='')
                {$Emailmessage .= "<p>Unit Number:{$unitnumber}</p>";}
		$Emailmessage .= "<p>Phone number:{$phone}</p>";
		$Emailmessage .= "<p>Email Id:{$applicantemail}</p>" ;
		$Emailmessage .= "<br /><br /><br />";
		$Emailmessage .= "<p>Thank you,</p>";
		$Emailmessage .= "<p>The Screening Pros Support Team<br />";
		$Emailmessage .= "www.thescreeningpros.com</p>";

		include 'email_generator.php'; 
 
        if(!$this->SendPhpEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending member/property notification email.");
            return false;
        }
        return true;
    }


	  // function to retrieve proprtyunit details created by Pradeep on 09 april-2017
        
	function retrieveunitselection($s_membermasterid,$s_membermasterno,$s_propertycode)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
            if($s_propertycode!='')
                {
		   $qry = "Select * from propertyunit where unitmemberid = '".$s_membermasterid."' and unitmemberno= '".$s_membermasterno."' and unitextpropertyid= '".$s_propertycode."' and (unitleasedstatus='available' || unitleasedstatus='on_notice') ";
                }
                else
                {
                    $qry = "Select * from propertyunit where unitmemberid = '".$s_membermasterid."' and unitmemberno= '".$s_membermasterno."' and (unitleasedstatus='available' || unitleasedstatus='on_notice') ";
                }
		
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}
         // function to retrieve selected proprtyunit details created by Pradeep on 09 april-2017
        
	function retrieveselectedproperty($selectedid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		
		   $qry = "Select * from propertyunit where idpropertyunit = '".$selectedid."' ";
		
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}
        
		// Pradeep Missing functions
		
		
		function CreateNewProfile($masterMemberid,$masterMemberno,$defprofile)

	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		$yesno = 'Y' ;
                
		$policytext = "<ol>" 
		            . "<li>" 
					. "<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>"
					. "</li>"
					. "<li>"
					. "<p>No one with an Eviction will be accepted.</p>"
					. "</li>"
					. "<li>"
					. "<p>Combined income must be 3 X the rent.</p>"
					. "</li>"
					. "<li>"
					. "<p>Must show proof of income with last three (3) pay check stubs or W2.</p>"
					. "</li>"
					. "<li>"
					. "<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>"
					. "</li>"
					. "<li>"
					. "<p>Government issued ID that establishes employment authorization.</p>"
					. "</li>"
					. "<li>"
					. "<p>Current Utility Bill with applicants name on it.</p>"
					. "</li>"
					. "<li>"
					. "<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>"
					. "</li>"
					. "<li>"
					. "<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>"
					. "</li>"
					. "</ol>";
				
		$disclosure = "<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />"
					. "<br /><br />"
					. "In connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />"
					. "<br /><br />"
					. "I authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />"
					. "<br /><br />"
					. "AS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>" ;
								
	    $qry = 'Select * from profile where mastermemberid = "' .$masterMemberid.'" and mastermemberno = "' .$masterMemberno.'" and profilename = "' .$defprofile.'" ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
          $qry = 'INSERT INTO profile ( 
		          mastermemberid,
                          mastermemberno,
                          profilename,
			  prevaddressreq,
			  minprevaddress,
			  reasonforleavingreq,
                          emphistoryreq,
                          minemploymnthistreq,
                          includebankaccount,
                          minbankaccountreq,
			  includecreditref,
			  mincreditrefreq,
			  includepersoanalref,
                          minpersonalrefreq,
			  requiredmarketsource,
			  requiredquestions,
			  questionsetid,
			  policytext,
			  disclosuretext,
                          leaseterm12,
                          leaseterm24,
                          leaseterm36,
                          leasetermm2m,
                          leasetermother,
                          occtypeminor,
                          occtypeadult,
                          occtypecaretaker,
                          minimumage
                  )
                  VALUES
                  (
                  
                  "' . $this->SanitizeForSQL($this->connection,$masterMemberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$masterMemberno) . '",
				  "' . $defprofile . '",
				  "' . $yesno . '",
                                  "1",
				  "' . $yesno . '",
                                  "' . $yesno . '",
                                  "1",
                                  "' . $yesno . '",
				  "1",
				  "' . $yesno . '",
				  "0",
                                  "' . $yesno . '",
				  "0",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "0",
				  "' . $this->SanitizeForSQL($this->connection,$policytext) . '",
				  "' . $this->SanitizeForSQL($this->connection,$disclosure) . '",
                                  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
                                   "18"   
				  )' ;
                  
				   
				  
                  if (mysqli_query($this->connection, $qry))
                    {
                      $lastid = mysqli_insert_id($this->connection);
                      mysqli_close($this->connection);
                       return $lastid;
                    }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
               
        }
	 
	}  
        
                
        //    function to update general questions to profile table created by pradeep on 07 April 2017
    function updategeneralsetup(
                            $profileid,
                            $minimumage,
                            $reasonforleaving,
                            $previousaddress,
                            $prevadd_val,
                            $employment,
                            $employment_value,
                            $petsinfo,
                            $pets_value,
                            $term12,
                            $term24,
                            $term36,
                            $termmtom,
                            $other,
                            $adult,
                            $minor,
                            $caretaker,
                            $bank_info,
                            $bank_select,
                            $credit_info,
                            $credit_value,
                            $person_info,
                            $person_value
                    )
        {
            if (!$this->DBLogin()) 
			{
				$this->HandleError("Database login failed!");
				return false;
			}	
				$qry = 'update profile set
		           minimumage = '. $this->SanitizeForSQL($this->connection, $minimumage) . ',
		           reasonforleavingreq = "'. $this->SanitizeForSQL($this->connection, $reasonforleaving) . '",
		           prevaddressreq = "'. $this->SanitizeForSQL($this->connection, $previousaddress) . '",
		           minprevaddress = '. $this->SanitizeForSQL($this->connection, $prevadd_val) . ',
		           emphistoryreq = "'. $this->SanitizeForSQL($this->connection, $employment) . '",
		           minemploymnthistreq = '. $this->SanitizeForSQL($this->connection, $employment_value) . ',
		           ispetallowed = "'. $this->SanitizeForSQL($this->connection, $petsinfo) . '",
		           maximumpetsallowed = '. $this->SanitizeForSQL($this->connection, $pets_value) .',
		           leaseterm12 = "'. $this->SanitizeForSQL($this->connection, $term12) . '",
		           leaseterm24 = "'. $this->SanitizeForSQL($this->connection, $term24) . '",
		           leaseterm36 = "'. $this->SanitizeForSQL($this->connection, $term36) . '",
		           leasetermm2m = "'. $this->SanitizeForSQL($this->connection, $termmtom) . '",
		           leasetermother = "'. $this->SanitizeForSQL($this->connection, $other) . '",
		           occtypeadult = "'. $this->SanitizeForSQL($this->connection, $adult) . '",
		           occtypeminor = "'. $this->SanitizeForSQL($this->connection, $minor) . '",
		           occtypecaretaker = "'. $this->SanitizeForSQL($this->connection, $caretaker) . '",
		           includebankaccount = "'. $this->SanitizeForSQL($this->connection, $bank_info) . '",
		           minbankaccountreq = '. $this->SanitizeForSQL($this->connection, $bank_select) . ',
		           includecreditref = "'. $this->SanitizeForSQL($this->connection, $credit_info) . '",
		           mincreditrefreq = '. $this->SanitizeForSQL($this->connection, $credit_value) . ',
		           includepersoanalref = "'. $this->SanitizeForSQL($this->connection, $person_info) . '",
		           minpersonalrefreq = '. $this->SanitizeForSQL($this->connection, $person_value) . '
				   where idprofile = '. $profileid ;
				   error_log(print_r($qry,true));
				if (mysqli_query($this->connection, $qry)) 
				{
					mysqli_close($this->connection);
					return true;
				} else 
				{
					mysqli_close($this->connection);
					error_log("Query not inserted");
					return false;
				}
		}
        
    
      //    function to update policy text created by pradeep on 07 April 2017
        function updatepolicytext($policy_text,$profileid)
        {
                    if(!$this->DBLogin())
                    {
                      $this->HandleError("Database login failed!");
                      return false;
                    }

                          $update_query = 'update profile set policytext = "' . $this->SanitizeForSQL($this->connection, $policy_text) . '"
                                            where
                                            idprofile = "'.$profileid.'"';

                        
                          if (mysqli_query($this->connection, $update_query)) {
                         mysqli_close($this->connection);
                         return true ;
                         
                       }
                       else
                       {
                         mysqli_close($this->connection);
                         return false;
                       }
        }
        
      //    function to update disclodure text created by pradeep on 07 April 2017
        function updatedisclosuretext($disclosure,$profileid)
        {
                    if(!$this->DBLogin())
                    {
                      $this->HandleError("Database login failed!");
                      return false;
                    }

                          $update_query = 'update profile set disclosuretext = "' . $this->SanitizeForSQL($this->connection, $disclosure) . '"
                                            where
                                            idprofile = "'.$profileid.'"';

                        
                          if (mysqli_query($this->connection, $update_query)) {
                         mysqli_close($this->connection);
                         return true ;
                         
                       }
                       else
                       {
                         mysqli_close($this->connection);
                         return false;
                       }
        }
        
		
		
		//pradeeep missing functions
		
		
		
        //    function to update unit selection to application created by pradeep on 09 April 2017
        function updateselectedproperty($slectedunitnumber,$slectedunitbedroom,$slectedunitrent,$slectedunitproperty,$_appid,$security,$slectedunitfloorid,$slectedunitleaseterm,$s_pmspartner)
        {
                    if(!$this->DBLogin())
                    {
                      $this->HandleError("Database login failed!");
                      return false;
                    }

                          $update_query = 'update application set 
                                            applicationunitno = "' . $this->SanitizeForSQL($this->connection, $slectedunitnumber) . '",
                                            bedroomtype = "' . $this->SanitizeForSQL($this->connection, $slectedunitbedroom) . '",
                                            futurerent = "' . $this->SanitizeForSQL($this->connection, $slectedunitrent) . '",
                                            guestmarketingname = "' . $this->SanitizeForSQL($this->connection, $slectedunitproperty) . '",
                                            applicationsecuritydeposit = "' . $this->SanitizeForSQL($this->connection, $security) . '",
                                            guestfloorplanid = "' . $this->SanitizeForSQL($this->connection, $slectedunitfloorid) . '",
                                            leaseterm = "' . $this->SanitizeForSQL($this->connection, $slectedunitleaseterm) . '",
                                            guestcardvendor = "' . $this->SanitizeForSQL($this->connection, $s_pmspartner) . '"
                                                
                                            where
                                            idapplication = "'.$_appid.'"';

                          if (mysqli_query($this->connection, $update_query)) {
                         mysqli_close($this->connection);
                         return true ;
                         
                       }
                       else
                       {
                         mysqli_close($this->connection);
                         return false;
                       }
        }
        
        function updateexternalid($extmarketid,$mastermemberid,$mastermemberno,$marketsourceid)
        {
                    if(!$this->DBLogin())
                    {
                      $this->HandleError("Database login failed!");
                      return false;
                    }

                          $update_query = 'update mastermarketsource set 
                                            externalid = "' . $this->SanitizeForSQL($this->connection, $extmarketid) . '"
                                            where
                                            sourcemastermemberid = "'.$mastermemberid.'" and sourcemastermemberno = "'.$mastermemberno.'" and sourceid = "'.$marketsourceid.'"';

                        
                          if (mysqli_query($this->connection, $update_query)) {
                         mysqli_close($this->connection);
                         return true ;
                         
                       }
                       else
                       {
                         mysqli_close($this->connection);
                         return false;
                       }
        }
        
//        function to update application status and date in secondary verify page created on 13th april 2017
        function updateapplicationthroughsec($_application,$appstatus)
        {
                    if(!$this->DBLogin())
                    {
                      $this->HandleError("Database login failed!");
                      return false;
                    }
                    if($appstatus=='C')
                    {
                        $appstattime='applicationcompletiondate=now()';
                    }else
                    {
                        $appstattime='';
                    }
                          $update_query = 'update application set 
                                            applicationstatus = "' . $this->SanitizeForSQL($this->connection, $appstatus) . '",
                                            '.$appstattime.'   
                                            where
                                            idapplication = "'.$_application.'"';

                        
                          if (mysqli_query($this->connection, $update_query)) {
                         mysqli_close($this->connection);
                         return true ;
                         
                       }
                       else
                       {
                         mysqli_close($this->connection);
                         return false;
                       }
        }
        
        
        	     	// send primary applicant mail to inform that secondary applicant declined his invitation for online application pradeep 13/04/2017 
    function secondaryApplicantdeclineemail($secapplicantfisrtname,$secapplicantlastname, $primaryapplicantfname,$primaryapplicantlname,$s_membername,$applicantsemail)
    {
        
		$primaryappname =$secapplicantfisrtname.' '.$secapplicantlastname ; //
		$propertyname = $s_membername ;
		$s_propertycode='';
                $sendtoemailaddress= $applicantsemail ;
		
        $EmailSubject      = "Declined notification for Online Rental Application";
        $emailTitle        = ''  ;
 	
        $confirmcode   = '';
        $confirm_url   = '';
 
        $Emailmessage  = "<p>Dear " .$primaryapplicantfname. ' ' .$primaryapplicantlname. ",</p>";
		$Emailmessage .= "<p>" .$primaryappname. " declined your invitation as a co-applicant for rental application at " .$propertyname."</p>";
		$Emailmessage .= "<p>If you have any questions, please contact The Screening Pros&#39; support at (800) 877-3179.</p>" ;
		$Emailmessage .= "<br /><br /><br />";
		$Emailmessage .= "<p>Thank you,</p>";
		$Emailmessage .= "<p>The Screening Pros Support Team<br />";
		$Emailmessage .= "www.thescreeningpros.com</p>";

		include 'email_generator1.php'; 
 
        if(!$this->SendPhpEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending application authorization notification email.");
            return false;
         error_log("email fail");
        }
        return true;
        
         
    }
          
//------------------------------End of Pradeep functions--------------------------

 
	
	//----------------------- Rizwan Functions Start here -----------------
	
	//--- Master Membership Add/Update Function used to create or update records - Called from api_membersetup.php --- 
       
	function LoadMasterMembers($masterMemberid,$masterMemberno,$masterMembername,$adminUserid,$adminUserno,$adminUseremail,$notifyClient,$reportUserid,$reportUserno,$reportUserpw,$processingfee,$screeningfee,$authorizationkey)

	{
		if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}

 	    $qry = 'Select * from mastermember where mastermemberid = "' .$masterMemberid.'" and mastermemberno = "' .$masterMemberno. '" ;';
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
          $qry = 'INSERT INTO mastermember (mastermemberid,
                  mastermemberNo,
				  mastermembername,
                  masteruserid,
                  masteruserno,
                  masteruseremail,
                  notifytoclient,
                  reportuserid,
				  reportrunuserno,
				  reportuserpwd,
				  processingfee,
				  screeningfee,
				  authorizationkey,
				  activateddate
                  )
                  VALUES
                  (
                  
                  "' . $this->SanitizeForSQL($this->connection,$masterMemberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$masterMemberno) . '",
				  "' . $this->SanitizeForSQL($this->connection,$masterMembername) . '",
                  "' . $this->SanitizeForSQL($this->connection,$adminUserid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$adminUserno) . '",
                  "' . $this->SanitizeForSQL($this->connection,$adminUseremail) . '",
                  "' . $this->SanitizeForSQL($this->connection,$notifyClient) . '",
                  "' . $this->SanitizeForSQL($this->connection,$reportUserid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$reportUserno) . '",
				  "' . $reportUserpw . '",
				  "' . $this->SanitizeForSQL($this->connection,$processingfee) . '",
				  "' . $this->SanitizeForSQL($this->connection,$screeningfee) . '",
				  "' . $this->SanitizeForSQL($this->connection,$authorizationkey) . '",
			      NOW() 
                  )' ;
                  
				 
				  
                  if (mysqli_query($this->connection, $qry))
				  {
                     mysqli_close($this->connection);
					 
					 // notify the member by email
					 if($notifyClient == 'Y')
					 {
						$this->NotifytoMemberEmail($adminUseremail,$masterMembername) ;
					 }
					 
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
               
        } else 
        
        {
           // already exists - update the master member
		   
		   $qry = 'update mastermember set
		           mastermembername = "' . $this->SanitizeForSQL($this->connection,$masterMembername) . '",
		           masteruserid     = "' . $this->SanitizeForSQL($this->connection,$adminUserid) . '",
		           masteruserno     = "' . $this->SanitizeForSQL($this->connection,$adminUserno) . '",
				   masteruseremail  = "' . $this->SanitizeForSQL($this->connection,$adminUseremail) . '",
				   reportuserid     = "' . $this->SanitizeForSQL($this->connection,$reportUserid) . '",
				   reportrunuserno  = "' . $this->SanitizeForSQL($this->connection,$reportUserno) . '",
				   reportuserpwd    = "' . $reportUserpw. '",
				   processingfee    = "' . $this->SanitizeForSQL($this->connection,$processingfee) . '",
				   updatedate       = NOW() 
				   where
				   mastermemberid = "' .$masterMemberid.'"
				   and
				   mastermemberno = "' .$masterMemberno. '" ' ;
				   				    
				   if (mysqli_query($this->connection, $qry))
				   {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }                   
        }

	}
	
	/* 
	 *  email notification section for Online application emails
	*/
	
	// notify to property about completion of application rizwan 01/17/2017
    function NotifytoMemberEmail($email,$mastermembername)
    {
        
        $EmailSubject      = "TSP Online Application Portal Activated";
		$sendtoemailaddress= $email ;  
        $emailTitle        = $mastermembername  ;
 	
        $confirmcode   = '';
        $confirm_url   = '';
 
        $Emailmessage  = "<p>Congratulations! </p>";
		$Emailmessage .= "<p>Your account has been activated to begin the setup and acceptance of online applications.</p>";
		$Emailmessage .= "<p>You have been designated as the account&#39;s administrator in an effort to configure online applications. You will be able to build each property&#39;s unique online application portal from one point of access.</p>";
		$Emailmessage .= "<p>You can sign into your TSP account to access the Online Application Portal setup within the <code>Setup tab</code> and selecting, <code>AOL Dashboard</code> button.</p>" ;
		$Emailmessage .= "<p>If you have any questions with the setup process, please contact member services at (800) 877-3179.</p>" ;
		$Emailmessage .= "<br /><br /><br />";
		$Emailmessage .= "<p>Thank you,</p>";
		$Emailmessage .= "<p>The Screening Pros Support Team<br />";
		$Emailmessage .= "www.thescreeningpros.com</p>";

		include 'email_generator.php'; 
 
        if(!$this->SendPhpEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending member/property notification email.");
            return false;
        }
        return true;
    }
	
	// send applicant invitation to completion the online application rizwan 02/01/2017 
     function inviteApplicantEmail($invitationmessage,$applicantsidapplication,$lastid,$applicantsmemberid,$applicantsmemberno,$applicantsemail,$applicantsfirtsname,$applicantslastname,$token,$s_propertycode,$s_firstname,$s_lastname,$s_membername) 
    {
        
		$primaryappname =$s_firstname.' '.$s_lastname ; //
		$propertyname = $s_membername ;
		$emailTitle        = ''  ;
		if($s_propertycode=''){
                   $link = $this->sitename.'/applyonline/Invitee-landing.php?token='.$token.'&ApplicationID='.$applicantsidapplication.'&ApplicantID='.$lastid.'&propertyID='.$s_propertycode.'' ; 
                }else{
                    $link = $this->sitename.'/applyonline/Invitee-landing.php?token='.$token.'&ApplicationID='.$applicantsidapplication.'&ApplicantID='.$lastid ;
                }
		
		
         $EmailSubject      = "Invitation for Online Rental Application";
		$sendtoemailaddress= $applicantsemail ; 
 	
        $confirmcode   = '';
        $confirm_url   = '';
 
        $Emailmessage  = "<p>Dear " .$applicantsfirtsname. ' ' .$applicantslastname. ",</p>";
		$Emailmessage .= "<p>" .$primaryappname. " sent you an invitation to complete an online rental application for " .$propertyname."</p>";
		$Emailmessage .= "<p>Please click the link below to begin your online application.</p>";
		$Emailmessage .= "<p>".$link."</p>" ;
		$Emailmessage .= "<p>Message From Sender:<br>" ;
		$Emailmessage .= $invitationmessage . "</p>";
		$Emailmessage .= "<p>If you have any questions, please contact The Screening Pros&#39; support at (800) 877-3179.</p>" ;
		$Emailmessage .= "<br /><br /><br />";
		$Emailmessage .= "<p>Thank you,</p>";
		$Emailmessage .= "<p>The Screening Pros Support Team<br />";
		$Emailmessage .= "www.thescreeningpros.com</p>";

		include 'email_generator1.php';  
 
        if(!$this->SendPhpEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending application invitation notification email.");
            return false;
         error_log("email fail");
        }
        return true;
         error_log("email final");
    }
	
	//--- Properties Add/Update Function used to create or update records - Called from api_membersetup.php --- 
       
	function LoadMemberProperties($memberid,$memberno,$propertyid,$propertyname,$propertyadd1,$propertycity,$propertystate,$propertyzip,$defaultprofileid,$defaultstyleid,$screeningfee,$propertypayprovider,$propertycplandlordid,$propertycpllcid)

	{
		if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}

 	    $qry = 'Select * from property where propertymemberid = "' .$memberid.'" and propertymemberno = "' .$memberno.'" and propertycode = "' .$propertyid. '" ;';
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
          $qry = 'INSERT INTO property (propertymemberid,
                  propertymemberno,
				  propertycode,
				  propertyname,
                  propertyaddress,
                  propertycity,
                  propertystate,
                  propertyzip,
				  styleid,
				  profileid,
				  paymentsubmit,
				  applicationfee,
				  paymentprovider,
				  clickpaylandlordid,
				  clickpayllcid,
                  createdate
                  )
                  VALUES
                  (
                  
                  "' . $this->SanitizeForSQL($this->connection,$memberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$memberno) . '",
				  "' . $this->SanitizeForSQL($this->connection,$propertyid) . '",
				  "' . $this->SanitizeForSQL($this->connection,$propertyname) . '",
                  "' . $this->SanitizeForSQL($this->connection,$propertyadd1) . '",
                  "' . $this->SanitizeForSQL($this->connection,$propertycity) . '",
                  "' . $this->SanitizeForSQL($this->connection,$propertystate) . '",
                  "' . $this->SanitizeForSQL($this->connection,$propertyzip) . '",
				  "' . $defaultstyleid . '",
				  "' . $defaultprofileid . '",
				  "' . 'REPORTRUN' . '",
				  "' . $screeningfee . '",
				  "' . $this->SanitizeForSQL($this->connection,$propertypayprovider) . '",
				  "' . $this->SanitizeForSQL($this->connection,$propertycplandlordid) . '",
				  "' . $this->SanitizeForSQL($this->connection,$propertycpllcid) . '",
                  NOW() 
                  )' ;
				  
				 
                                                     
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);	 
					 return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
               
        } else 
        
        {
           // already exists - update the master member
		   
		   $qry = 'update property set
		           propertyname     = "' . $this->SanitizeForSQL($this->connection,$propertyname) . '",
		           propertyaddress  = "' . $this->SanitizeForSQL($this->connection,$propertyadd1) . '",
		           propertycity     = "' . $this->SanitizeForSQL($this->connection,$propertycity) . '",
				   propertystate    = "' . $this->SanitizeForSQL($this->connection,$propertystate) . '",
				   propertyzip      = "' . $this->SanitizeForSQL($this->connection,$propertyzip) . '",
				   updatedate       = NOW() 
				   where
				   propertymemberid = "' .$memberid.'"
				   and
				   propertymemberno = "' .$memberno. '"
				   and
				   propertycode     = "' .$propertyid. '" ' ;
				   			    
				   if (mysqli_query($this->connection, $qry))
				   {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }                   
        }

	}
	
	//--- Default Marketing Source Add/Update Function used to create or update records - Called from api_membersetup.php --- 
       
	function LoadMarketingSource($masterMemberid,$masterMemberno,$marketsourceid,$marketsourcename,$defaultprofileid)

	{
		if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}

 	    $qry = 'Select * from mastermarketsource where sourcemastermemberid = "' .$masterMemberid.'" and sourcemastermemberno = "' .$masterMemberno.'" and sourceid = "' .$marketsourceid. '" ;';
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
          $qry = 'INSERT INTO mastermarketsource (sourcemastermemberid,
                  sourcemastermemberno,
                  sourceid,
                  sourcedescription,
				  createdate
                  )
                  VALUES
                  (
                  
                  "' . $this->SanitizeForSQL($this->connection,$masterMemberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$masterMemberno) . '",
				  "' . $this->SanitizeForSQL($this->connection,$marketsourceid) . '",
				  "' . $this->SanitizeForSQL($this->connection,$marketsourcename) . '",
                  NOW() 
                  )' ;
				 
                                                     
                  if (mysqli_query($this->connection, $qry))
				  {
					 $generatedMasterId = mysqli_insert_id($this->connection);
                     mysqli_close($this->connection);
					 $this->LinkMarketingSource($defaultprofileid,$generatedMasterId) ;
					 return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
               
        } else 
        
        {
           // already exists - update the master market source
		   
		   $qry = 'update mastermarketsource set
		           sourcedescription = "' . $this->SanitizeForSQL($this->connection,$marketsourcename) . '",
				   updatedate       = NOW() 
				   where
				   sourcemastermemberid = "' .$masterMemberid.'"
				   and
				   sourcemastermemberno = "' .$masterMemberno.'"
				   and
				   sourceid = "' .$marketsourceid. '" ';
			       	   				   				    
				   if (mysqli_query($this->connection, $qry))
				   {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }                   
        }

	}
	
	
	// create default marketing source link with default profile  
	function LinkMarketingSource($defaultprofileid,$generatedMasterId)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
       										
 	    $qry = 'Select * from marketsource where linkidprofile = "' .$defaultprofileid.'" and mastersourceid = "' .$generatedMasterId. '" ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0 )   
        {
			
          $qry = "INSERT INTO marketsource( 
		          linkidprofile,
                  mastersourceid,
				  recordstatus
				  )
                  VALUES
                  ("
				. "'{$defaultprofileid}',"
                . "'{$generatedMasterId}',"
				. "'A'"
			    . ")" ;
				
		        if (mysqli_query($this->connection, $qry))
				{
                    mysqli_close($this->connection);					
                }
				else
				{
					
					mysqli_close($this->connection);
				}		
        }
				
        return ;
				
	}
	
	
	//--- Members Add/Update Function used to create or update records - Called from api_membersetup.php --- 
       
	function LoadMembers($masterMemberid,$masterMemberno,$memberid,$memberno,$membertoken,$membername,$memberadd1,$membercity,$memberstate,$memberzip,$memberphone,$memberemail,$defaultprofileid,$defaultstyleid,$screeningfee,$memberpayprovider,$membercplandlordid,$membercpllcid)

	{
		if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}

 	    $qry = 'Select * from members where memberid = "' .$memberid.'" and memberno = "' .$memberno.'" and membermasterid = "' .$masterMemberid. '" and membermasterno = "' .$masterMemberno. '" ;';
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
          $qry = 'INSERT INTO members (
		          memberid,
                  memberno,
				  membername,
				  membermasterid,
				  membermasterno,
				  memberaddress,
                  membercity,
                  memberstate,
                  memberzip,
				  leaseofficephone,
				  leaseofficeemail,
				  membertoken,
				  styleid,
				  profileid,				 
				  applicantfee,
				  paymentsubmit,
				  paymentprovider,
				  clickpaylandlordid,
				  clickpayllcid,
                  datecreated
                  )
                  VALUES
                  (
                  
                  "' . $this->SanitizeForSQL($this->connection,$memberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$memberno) . '",
				  "' . $this->SanitizeForSQL($this->connection,$membername) . '",
				  "' . $this->SanitizeForSQL($this->connection,$masterMemberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$masterMemberno) . '",
				  "' . $this->SanitizeForSQL($this->connection,$memberadd1) . '",
                  "' . $this->SanitizeForSQL($this->connection,$membercity) . '",
                  "' . $this->SanitizeForSQL($this->connection,$memberstate) . '",
                  "' . $this->SanitizeForSQL($this->connection,$memberzip) . '",
				  "' . $this->SanitizeForSQL($this->connection,$memberphone) . '",
				  "' . $this->SanitizeForSQL($this->connection,$memberemail) . '",
				  "' . $this->SanitizeForSQL($this->connection,$membertoken) . '",
				  "' . $defaultstyleid . '",
				  "' . $defaultprofileid . '",
				  "' . $screeningfee . '",
				  "' . 'REPORTRUN' . '",
				  "' . $this->SanitizeForSQL($this->connection,$memberpayprovider) . '",
				  "' . $this->SanitizeForSQL($this->connection,$membercplandlordid) . '",
				  "' . $this->SanitizeForSQL($this->connection,$membercpllcid) . '",
                  NOW() 
                  )' ;
                  
				  
				  
                  if (mysqli_query($this->connection, $qry)) {
                     mysqli_close($this->connection);	 
					 return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
               
        } else 
        
        {
           // already exists - update the member
		   
		   $qry = 'update members set
		           membername       = "' . $this->SanitizeForSQL($this->connection,$membername) . '",
		           memberaddress    = "' . $this->SanitizeForSQL($this->connection,$memberadd1) . '",
		           membercity       = "' . $this->SanitizeForSQL($this->connection,$membercity) . '",
				   memberstate      = "' . $this->SanitizeForSQL($this->connection,$memberstate) . '",
				   memberzip        = "' . $this->SanitizeForSQL($this->connection,$memberzip) . '",
				   leaseofficephone = "' . $this->SanitizeForSQL($this->connection,$memberphone) . '",
				   leaseofficeemail = "' . $this->SanitizeForSQL($this->connection,$memberemail) . '",
				   dateedited       = NOW() 
				   where
				   memberid = "' .$memberid.'"
				   and
				   memberno = "' .$memberno. '"
				   and
				   membermasterid = "' .$masterMemberid. '"
				   and
				   membermasterno = "' .$masterMemberno. '" ' ;
				   
				   //error_log(print_r($qry,true)) ;
				   
				   if (mysqli_query($this->connection, $qry))
				   {
                     mysqli_close($this->connection);
                     return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }                   
        }

	}
	
	//--- Function used to create a default profile - Called from api_membersetup.php --- 
       
	function CreateDefaultProfile($masterMemberid,$masterMemberno)

	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
        $defprofile='*Default Profile' ;
		$yesno = 'Y' ;
		$policytext = "<ol>" 
		            . "<li>" 
					. "<p>Every person over the age of 18 must fill out an application and have their Credit checked. Application may be denied based on Credit Report.</p>"
					. "</li>"
					. "<li>"
					. "<p>No one with an Eviction will be accepted.</p>"
					. "</li>"
					. "<li>"
					. "<p>Combined income must be 3 X the rent.</p>"
					. "</li>"
					. "<li>"
					. "<p>Must show proof of income with last three (3) pay check stubs or W2.</p>"
					. "</li>"
					. "<li>"
					. "<p>You will need to provide a copy of Driver&#39;s License or valid photo I.D.</p>"
					. "</li>"
					. "<li>"
					. "<p>Government issued ID that establishes employment authorization.</p>"
					. "</li>"
					. "<li>"
					. "<p>Current Utility Bill with applicants name on it.</p>"
					. "</li>"
					. "<li>"
					. "<p>We will be checking all references on Application, including current landlord reference and employment reference.</p>"
					. "</li>"
					. "<li>"
					. "<p>In order to hold an apartment, a holding deposit is required. If an apartment is not taken by date requested, or canceled by Resident, deposit is forfeited.</p>"
					. "</li>"
					. "</ol>";
				
		$disclosure = "<p>Applicant represents that all of the above statements are true and correct and hereby authorizes their verification including, but not limited to, the obtaining of a credit report, and agrees to furnish additional credit references on request. Owner/Agent is authorized to obtain a credit report, now and in the future, as evidenced by signing below. Applicant expressly authorizes Landlord to contact all persons or firms named as references, former landlords and employers to verify the contents of this Application.<br />"
					. "<br /><br />"
					. "In connection with my application for rental and/or employment, I understand that background inquiries will be made on myself including consumer, criminal, driving and other reports. Employment reports may include information as to my character, work habits, performance and experience along with reasons for termination of past employment from previous employers. I understand that information will be requested from various federal, state and other agencies and entities, public and private, which maintain records concerning my past activities relating to driving, credit, criminal, civil and other experiences as well as claims involving me in insurance company files.<br />"
					. "<br /><br />"
					. "I authorize, without reservation, any party or agency contacted to furnish, completely and without limitation, any and all of the above mentioned information and any other information related thereto. Further, I will release from liability and will defend and hold harmless all requesters and suppliers of information in accordance herewith.<br />"
					. "<br /><br />"
					. "AS REQUIRED BY LAW, APPLICANT IS HEREBY NOTIFIED THAT A NEGATIVE CREDIT REPORT REFLECTING ON YOUR CREDIT RECORD MAY BE SUBMITTED TO A CREDIT REPORTING AGENCY IF YOU FAIL TO FULFILL THE TERMS OF YOUR CREDIT OBLIGATIONS.</p>" ;
								
 	    $qry = 'Select * from profile where mastermemberid = "' .$masterMemberid.'" and mastermemberno = "' .$masterMemberno.'" and profilename = "' .$defprofile.'" ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
          $qry = 'INSERT INTO profile ( 
		          mastermemberid,
                  mastermemberno,
				  profilename,
				  prevaddressreq,
				  minprevaddress,
				  reasonforleavingreq,
				  emphistoryreq,
                  minemploymnthistreq,
                  includebankaccount,
                  minbankaccountreq,
				  includecreditref,
				  mincreditrefreq,
				  includepersoanalref,
                  minpersonalrefreq,
				  requiredmarketsource,
				  requiredquestions,
				  questionsetid,
				  policytext,
				  disclosuretext,
				  leaseterm12,
				  leaseterm24,
				  leaseterm36,
				  leasetermother,
				  occtypeminor,
				  occtypeadult,
				  minimumage
                  )
                  VALUES
                  (
                  
                  "' . $this->SanitizeForSQL($this->connection,$masterMemberid) . '",
                  "' . $this->SanitizeForSQL($this->connection,$masterMemberno) . '",
				  "' . $defprofile . '",
				  "' . $yesno . '",
                  "1",
				  "' . $yesno . '",
                  "' . $yesno . '",
                  "1",
                  "' . $yesno . '",
				  "1",
				  "' . $yesno . '",
				  "0",
                  "' . $yesno . '",
				  "0",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "0",
				  "' . $this->SanitizeForSQL($this->connection,$policytext) . '",
				  "' . $this->SanitizeForSQL($this->connection,$disclosure) . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "' . $yesno . '",
				  "18"
				  )' ;
                  
				  //error_log(print_r($qry,true)) ;
				  
                  if (mysqli_query($this->connection, $qry))
				  {
                     mysqli_close($this->connection);	 
					 return true ;
                   }
                   else
                   {
                     mysqli_close($this->connection);
                     return false;
                   }
               
        }
	 
	}
	
	//--- Function used to create a default style - Called from api_membersetup.php --- 
       
	function CreateDefaultStyle($masterMemberid,$masterMemberno)

	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
        $defstyle='*Default Style' ;
		$yesno = 'Y' ;
								
 	    $qry = 'Select * from profilestyle where stylemastermemberid = "' .$masterMemberid.'" and stylemastermemberno = "' .$masterMemberno.'" and stylename = "' .$defstyle.'" ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
          $qry = "INSERT INTO profilestyle ( 
		          stylemastermemberid,
                  stylemastermemberno,
				  stylename,
				  logoname,
				  logoheight,
				  logowidth,
				  colorcodewelcome,
                  colorcodefooter,
                  colorcodebutton,
                  colorcodebuttonhover,
				  colorcodeurllink,
				  storedimage
                  )
                  VALUES
                  ("
				. "'{$this->SanitizeForSQL($this->connection,$masterMemberid)}',"
				. "'{$this->SanitizeForSQL($this->connection,$masterMemberno)}'," 
				. "'{$defstyle}',"
                . "'tsp-default-home-logo.png',"
				. "'100',"
				. "'200',"
				. "'9BC7DD',"
				. "'006395',"
				. "'006395',"
				. "'F58220 ',"
				. "'F58220',"
				. "'tsp-default-home-logo.png'" 				 
			    . ")" ;
                  
				  //error_log(print_r($qry,true)) ;
				  
                  if (mysqli_query($this->connection, $qry))
				  {
                     mysqli_close($this->connection);	 
					 return true ;
                   }
                   else
                   {
					 mysqli_close($this->connection);
                     return false;
                   }
               
        }
	 
	}
	
	//--- Function used to retrieve default profile id - Called from api_membersetup.php --- 
       
	function RetrieveDefaultProfile($masterMemberid,$masterMemberno)

	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
        $defprofile='*Default Profile' ;
										
 	    $qry = 'Select idprofile from profile where mastermemberid = "' .$masterMemberid.'" and mastermemberno = "' .$masterMemberno.'" and profilename = "' .$defprofile.'" ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
			mysqli_close($this->connection);
            return 0 ;
		}
		
		$row = mysqli_fetch_assoc($result);
		$id_profile = $row['idprofile'];
		return $id_profile ; 
	 
	}
	
	//--- Function used to retrieve default style id - Called from api_membersetup.php --- 
       
	function RetrieveDefaultStyle($masterMemberid,$masterMemberno)

	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
        $defstyle='*Default Style' ;	
 	    $qry = 'Select idprofilestyle from profilestyle where stylemastermemberid = "' .$masterMemberid.'" and stylemastermemberno = "' .$masterMemberno.'" and stylename = "' .$defstyle.'" ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
			mysqli_close($this->connection);
            return 0 ;
		}
		$row = mysqli_fetch_assoc($result);
		$id_style = $row['idprofilestyle'];
		return $id_style;
	 
	}
	
	// create default questions set for master member if not already exists
	function CreateDefaultQuestions($masterMemberid, $masterMemberno,$defaultprofileid)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
       										
 	    $qry = 'Select * from masterquestions where masterquestionmasterid = "' .$masterMemberid.'" and masterquestionmasterno = "' .$masterMemberno.'"  ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(mysqli_num_rows($result) > 0)  // already exists then don't do anything
        {
		   mysqli_close($this->connection);
           return ;
		}
		
		// create question set
		$questionid = 1 ;
		$question   = 'Has any civil judgment been entered against you for the collection of a debt in the past 10 years?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 2 ;
		$question   = 'Have you filed for bankruptcy in the past 10 years?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 3 ;
		$question   = 'Have you been evicted or refused to pay rent for any reason?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 4 ;
		$question   = 'Have you ever been sued by a landlord for non-payment of rent or any other reason? ' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 5 ;
		$question   = 'Have you or any person anticipated to occupy the premises ever been convicted of any criminal offense (misdemeanor or felony)?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 6 ;
		$question   = 'Have you or any person anticipated to occupy the premises ever been part of a plea agreement relating to any criminal activity?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 7 ;
		$question   = 'Have you or any person anticipated to occupy the premises ever been arrested, accused, detained, convicted, or otherwise involved in any sex related crime?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 8 ;
		$question   = 'Do you or any person anticipated to occupy the premises have any outstanding warrants?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 9 ;
		$question   = 'Are you or any person anticipated to occupy the premises now or have ever been listed on any sex offender list?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 10 ;
		$question   = 'Do you or any person anticipated to occupy the premises have any pending case or action relating to any type of criminal offense?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
		
		$questionid = 11 ;
		$question   = 'Do you have or intend to have water filled furniture in the apartment home?' ;
		$this->AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question) ;
	}
	
	// Add default questions set  
	function AddDefaultQuestions($masterMemberid,$masterMemberno,$defaultprofileid,$questionid,$question)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
       										
 	    $qry = 'Select * from masterquestions where masterquestionmasterid = "' .$masterMemberid.'" and masterquestionmasterno = "' .$masterMemberno.'" and masterquestionid = "' .$questionid. '" ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0 )   
        {
			
          $qry = "INSERT INTO masterquestions ( 
		          masterquestionmasterid,
                  masterquestionmasterno,
				  masterquestionid,
				  masterquestion,
				  masterquestionrequired 
				  )
                  VALUES
                  ("
				. "'{$this->SanitizeForSQL($this->connection,$masterMemberid)}',"
				. "'{$this->SanitizeForSQL($this->connection,$masterMemberno)}'," 
				. "'{$questionid}',"
                . "'{$question}',"
				. "'Y'"				 				 
			    . ")" ;
				
		        if (mysqli_query($this->connection, $qry))
				{
                    mysqli_close($this->connection);
					// create question link with default profile
					$this->LinkDefaultQuestions($defaultprofileid,$questionid)	;		
                }
				else
				{
					mysqli_close($this->connection);
				}
		
        }
				
        return ;
				
	}
	
	// create default question link with default profile  
	function LinkDefaultQuestions($defaultprofileid,$questionid)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
       										
 	    $qry = 'Select * from questions where questionlinkprofileid = "' .$defaultprofileid.'" and questionid = "' .$questionid. '" ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0 )   
        {
			
          $qry = "INSERT INTO questions( 
		          questionlinkprofileid,
                  questionid 
				  )
                  VALUES
                  ("
				. "'{$defaultprofileid}',"
                . "'{$questionid}'"				 
			    . ")" ;
				
		        if (mysqli_query($this->connection, $qry))
				{
                    mysqli_close($this->connection);					
                }
				else
				{
					//error_log(print_r($qry,true)) ;
					mysqli_close($this->connection);
				}		
        }
				
        return ;
				
	}
	
	
	// Function to verify the master token id to allow the user to login to dashboard
	function ValidateMasterAuthorization($authorizationkey)

	{
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

 	    $qry = "Select * from mastermember where authorizationkey = '".$authorizationkey."'";
        
        $result = mysqli_query($this->connection,$qry);
            
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
			$row = mysqli_fetch_assoc($result);
		    mysqli_close($this->connection);
		    return $row;
            
        }
  
	}
	
	// Function to validate the master memebr and token to autheticate the session start - called from dashboard-home.php
	
	function VerifyMasterMembers($masterMemberid,$masterMemberno,$authorizationkey)

	{
		if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}

 	    $qry = 'Select * from mastermember where mastermemberid = "' .$masterMemberid.'" and mastermemberno = "' .$masterMemberno. '" and authorizationkey = "' .$authorizationkey. '" ;';
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0)
		{
		   mysqli_close($this->connection);
		   return false ;
		}
		
		return true ;
	}
	
	
	// Function to create the admin session for user that are transfered from the TSP main menu
	// The adminsession table will be purge periodically to remove the session records that are older than the current date
	function generateAdminSession($masterMemberid,$masterMemberno,$authorizeduserid,$authorizeduserno,$authorizedusertype,$authorizedusername,$masterAuthkey,$authorizeduserkey)
	{
		if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}

 	    $qry = "INSERT INTO adminsession( 
		          userhashkey,
                  usertoken,
				  adminmasterid,
				  adminmasterno,
				  sessionuserid,
				  sessionuserno,
				  sessionusertype,
				  sessionusername,
				  timestamp
				  )
                  VALUES
                  ("
				. "'{$authorizeduserkey}',"
                . "'{$masterAuthkey}',"
				. "'{$masterMemberid}',"
				. "'{$masterMemberno}',"
				. "'{$authorizeduserid}',"
				. "'{$authorizeduserno}',"
				. "'{$authorizedusertype}',"
				. "'{$authorizedusername}',"
				. "NOW()"
			    . ")" ;
				
		        if (mysqli_query($this->connection, $qry))
				{
                    mysqli_close($this->connection);
					return true ;
                }
				else
				{
					mysqli_close($this->connection);
					return false;
				}
		
	}
	
	function validateAdminSession($token)
	{
		if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}

 	    $qry = "Select * from adminsession where userhashkey = '". $token ."'";
        
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) != 1) 
        {
            mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
			$row = mysqli_fetch_assoc($result);
		    mysqli_close($this->connection);
		    return $row;
            
        }
 	    
		
	}
	
	// function to calculate the dashboard analysis
	function QueryCalculations($mastermemberid,$mastermemberno,$dates, $selectedmember)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$ar = [];
		$calculations = [];
		
		$datear = explode("-", $dates);
		
		$datestart = date("Y/m/d H:i:s", strtotime($datear[0]));
		$dateend = date("Y/m/d H:i:s", strtotime($datear[1]. ' 23:59:59'));
				
		if($selectedmember == 'All')
		{
			$qry = "select sum(case when applicationstatus != 'E' then 1 else 0 end) as totalapplications,
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' then 1 else 0 end) as completed, 
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'R' then 1 else 0 end) as reviewpending,
						sum(case when applicationstatus = 'I' or applicationstatus = 'P' then 1 else 0 end) as pending, 
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' and applicationscreeningdecision = 'A' then 1 else 0 end) as approve,
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' and applicationscreeningdecision = 'C' then 1 else 0 end) as conditional,
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' and applicationscreeningdecision = 'D' then 1 else 0 end) as decline,
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' and applicationscreeningdecision = ''  then 1 else 0 end) as nodecision
						from application
						where applicationmastermemberid = '$mastermemberid' AND applicationmastermemberno = '$mastermemberno'
						AND applicationdate BETWEEN '$datestart' AND '$dateend';";
		}
        else
		{
			$mbr = explode("-", $selectedmember);
			$memberid = $mbr[0] ;
			$memberno = $mbr[1] ;
			$qry = "select sum(case when applicationstatus != 'E' then 1 else 0 end) as totalapplications,
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' then 1 else 0 end) as completed, 
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'R' then 1 else 0 end) as reviewpending,
						sum(case when applicationstatus = 'I' or applicationstatus = 'P' then 1 else 0 end) as pending, 
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' and applicationscreeningdecision = 'A' then 1 else 0 end) as approve,
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' and applicationscreeningdecision = 'C' then 1 else 0 end) as conditional,
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' and applicationscreeningdecision = 'D' then 1 else 0 end) as decline,
						sum(case when applicationstatus = 'C' and applicationscreeningstatus = 'C' and applicationscreeningdecision = ''  then 1 else 0 end) as nodecision
						from application
						where applicationmastermemberid = '$mastermemberid' AND applicationmastermemberno = '$mastermemberno'
						AND applicationmemberid = '$memberid' AND applicationmemberno = '$memberno'  
						AND applicationdate BETWEEN '$datestart' AND '$dateend';";
		}	
		
		$result = mysqli_query($this->connection,$qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
		{
			mysqli_close($this->connection);
			return ['0', '0', '0', '0', '0', '0', '0', '0'];
		}

		$row = mysqli_fetch_assoc($result);
		
		mysqli_close($this->connection);		
		return array_map(function($v){return $v ?: '0';}, $row);
		
	}
	
	// function to calculate the dashboard analysis - Application count by ZIP 
	function QueryApplicationbyZip($mastermemberid,$mastermemberno,$dates, $selectedmember)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$ar = [];
		$calculations = [];
		
		$datear = explode("-", $dates);
		
		$datestart = date("Y/m/d H:i:s", strtotime($datear[0]));
		$dateend = date("Y/m/d H:i:s", strtotime($datear[1]. ' 23:59:59'));
						
		if($selectedmember == 'All')
		{
			$qry = "select applicationprimaryzip, count(idapplication) as countzip from application 					 					    
						where applicationstatus = 'C'
						AND applicationmastermemberid = '$mastermemberid' AND applicationmastermemberno = '$mastermemberno'
						AND applicationdate BETWEEN '$datestart' AND '$dateend'
						group by applicationprimaryzip
						order by countzip desc
						limit 10 ;";						
		}
        else
		{
			$mbr = explode("-", $selectedmember);
			$memberid = $mbr[0] ;
			$memberno = $mbr[1] ;
			$qry = "select applicationprimaryzip, count(idapplication) as countzip from application 					 
						where applicationstatus = 'C'
						AND applicationmastermemberid = '$mastermemberid' AND applicationmastermemberno = '$mastermemberno'
						AND applicationmemberid = '$memberid' AND applicationmemberno = '$memberno' 
						AND applicationdate BETWEEN '$datestart' AND '$dateend'
						group by applicationprimaryzip
						order by countzip desc
						limit 10 ;";
		}	
		
		//error_log(print_r($qry,true));	
		$result = mysqli_query($this->connection,$qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
		{
			mysqli_close($this->connection);
			return ;
		}
					
		$resjson = '' ;
		
		while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
		{
						
			if($row['applicationprimaryzip'] == '')
			{
			  $zipcode = 'XXXXX' ;									 
			}
			else
			{
			  $zipcode = $row['applicationprimaryzip'] ;									 
			}
		 
			$resjson   .= '{"label":"'
					   . "{$zipcode}" . '",'
					   . '"value":"'
					   . "{$row['countzip']}"
					   . '"},' ;
						
		}
		
		mysqli_close($this->connection);	
		//error_log(print_r($resjson,true));	
		return $resjson ;		
	}
	
	// function to calculate the dashboard analysis - Application count by Marketing Source
	function QueryApplicationbyMarket($mastermemberid,$mastermemberno,$dates, $selectedmember,$allcompleted)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$ar = [];
		$calculations = [];
		
		$datear = explode("-", $dates);
		
		$datestart = date("Y/m/d H:i:s", strtotime($datear[0]));
		$dateend = date("Y/m/d H:i:s", strtotime($datear[1]. ' 23:59:59'));
				
		if($selectedmember == 'All')
		{
			$qry = "select marketsourcename, count(marketsourceid) as countmarketsource from application 					 					    
						where applicationstatus = 'C'
						AND applicationmastermemberid = '$mastermemberid' AND applicationmastermemberno = '$mastermemberno'
						AND applicationdate BETWEEN '$datestart' AND '$dateend'
						group by marketsourcename
						order by countmarketsource desc
						limit 10 ;";						
		}
        else
		{
			$mbr = explode("-", $selectedmember);
			$memberid = $mbr[0] ;
			$memberno = $mbr[1] ;
			$qry = "select marketsourcename, count(marketsourceid) as countmarketsource from application 					 
						where applicationstatus = 'C'
						AND applicationmastermemberid = '$mastermemberid' AND applicationmastermemberno = '$mastermemberno'
						AND applicationmemberid = '$memberid' AND applicationmemberno = '$memberno' 
						AND applicationdate BETWEEN '$datestart' AND '$dateend'
						group by marketsourcename
						order by countmarketsource desc
						limit 10 ;";
		}	
		
		
		
		$result = mysqli_query($this->connection,$qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
		{
			mysqli_close($this->connection);
			return ;
		}
					
		$marketjson  = '' ;
		
		while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC))
		{
						
			if($row['marketsourcename'] == '')
			{
			  $sourcename = 'Unknown' ;									 
			}
			else
			{
			  $sourcename = $row['marketsourcename'] ;									 
			}
			$mktaverage = 0 ;
		    if($allcompleted > 0 )
			{
			  $mktaverage = floor(round((intval($row['countmarketsource'])  / intval($allcompleted)) * 100, 0, PHP_ROUND_HALF_UP)) ;	
			}
		    
			
			$marketjson   .= '{"label":"'
					   . "{$sourcename}" . '",'
					   . '"value":"'
					   . "{$mktaverage}"
					   . '"},' ;
						
		}
		
		mysqli_close($this->connection);	
		//error_log(print_r($resjson,true));	
		return $marketjson ;		
	}
	
	// function to pulled applicants records 
	function retrieveApplicants($applicationid,$applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		if($applicantid == '')
		{
		   $qry = "Select * from applicants where applicantsidapplication = '".$applicationid."' and applicantstype in('A','G','P') ";
		}
 	    else
		{
		   $qry = "Select * from applicants where applicantsidapplication = '".$applicationid."' and idapplicants = '".$applicantid."' and applicantstype in('A','G','P') ";
		}
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}
	
	// function to pulled applicants for signature 
	function retrieveSignerApplicants($applicationid,$applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		if($applicantid == '')
		{
		   $qry = "Select * from applicants where applicantsidapplication = '".$applicationid."' and applicantsinvited != 'Y' and applicantstype in('A','G','P') ";
		}
 	    else
		{
		   $qry = "Select * from applicants where applicantsidapplication = '".$applicationid."' and idapplicants = '".$applicantid."' and applicantstype in('A','G','P') ";
		}
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}
	
	// function to insert/update applicant signature
	function captureApplicantSignature($applicationid,$signerid,$signature,$signtype,$signfont)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$qry = 'Select * from applicantssignature where applicationid = "' .$applicationid.'" and applicantid = "' .$signerid. '" ;'; 
		               
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0 )   
        {
			
          $qry = "INSERT INTO applicantssignature( 
		          applicationid,
                  applicantid,
				  signaturetype,
				  signaturefont,
				  signatureimage,
				  signaturedatetime
				  )
                  VALUES
                  ("
				. "'{$applicationid}',"
                . "'{$signerid}',"
				. "'{$signtype}',"
				. "'{$signfont}',"
				. "'{$signature}',"
				. "NOW()"
			    . ")" ;
				
		        if (mysqli_query($this->connection, $qry))
				{
                    mysqli_close($this->connection);					
                }
				else
				{
					//error_log(print_r($qry,true)) ;
					mysqli_close($this->connection);
				}
							
        } else
		
		{
		   $qry = 'update applicantssignature set
		           signaturetype = "' .$signtype. '",
				   signaturefont = "' .$signfont. '",
				   signatureimage= "' .$signature. '",
				   signaturefont = "' .$signfont. '",
				   signaturedatetime= NOW() 
				   where
				   applicationid = "' .$applicationid.'"
				   and
				   applicantid  = "' .$signerid.'" ';
				    
			       //error_log(print_r($qry,true)) ;	   				   				    
				   if (mysqli_query($this->connection, $qry))
				   {
                     mysqli_close($this->connection);                    
                   }
                   else
                   {
                     mysqli_close($this->connection);
                   }  	
						
		}
		
		return ;
	}
	
	// Retrieve applications from dashboard grid
	function RetrieveApplications($qry1, $where)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = $qry1 . ' WHERE ' . $where . ';'  ;
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/10/2017 Retrieve Address records
	function RetrieveApplicantAddress($applicationid, $applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from applicantaddress where appaddressidapplication = "' .$applicationid.'" and appaddressidapplicant = "' .$applicantid. '" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/10/2017 Retrieve Employment records
	function RetrieveApplicantEmployment($applicationid, $applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from applicantemployment where applicantempidapplication = "' .$applicationid.'" and applicantempidapplicants = "' .$applicantid. '" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/11/2017 Retrieve Pet's records
	function RetrieveApplicantPets($applicationid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from apppets where petsidapplication = "' .$applicationid.'" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve Vehivles records
	function RetrieveApplicantVehicles($applicationid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from appvehicles where vehiclesidapplications = "' .$applicationid.'" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve Bank records
	function RetrieveApplicantBank($applicationid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from appbank where idapplicationid = "' .$applicationid.'" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve Bank records
	function RetrieveApplicantCredit($applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from appcreditref where idapplicant = "' .$applicantid.'" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve Personal reference
	function RetrieveApplicantPersonal($applicationid, $applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from apppersonalref where idapplication = "' .$applicationid.'" and idapplicant = "' .$applicantid. '" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve Personal reference
	function RetrieveApplicantEmergency($applicationid, $applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from appcontacts where appcontactsidapplication = "' .$applicationid.'" and appcontactsidapplicant = "' .$applicantid. '" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve Applicant question ad answer sets
	function RetrieveApplicantQuestions($applicationid, $applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from appquestions where appquestionsidapplication = "' .$applicationid.'" and appquestionsidapplicant = "' .$applicantid. '" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve Applicant Payments 
	function RetrieveApplicantPayments($paymentid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from paymenttransactions where paymentapplicationreference = "' .$paymentid.'" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve all Applicants under a payment id 
	function RetrieveAllPaidApplicants($paymentid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from applicants where paymentid = "' .$paymentid.'" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve all Applicants under a payment id 
	function RetrieveApplicantDocuments($applicationid, $applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
        $ar = [] ;
		
		$qry = 'Select * from applicantdocuments where applicationid = "' .$applicationid.'" and applicantid = "' .$applicantid. '" ;'; 
		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/12/2017 Retrieve Applicants signature
	function RetrieveApplicantSignature($applicationid, $applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$ar = [] ;
		
		$qry = 'Select * from applicantssignature where applicationid = "' .$applicationid.'" and applicantid = "' .$applicantid. '" ;'; 
		               
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	
	// Rizwan Added 03/12/2017 Return site name 
	function ReturnSiteName()
	{
		$site = $this->sitename ;
		return $site ;
	}
	
	// Rizwan Added 03/17/2017 Retrieve Member info
	function RetrieveSingleMember($memberid, $memberno)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$ar = [] ;
		
		$qry = 'Select * from members where memberid = "' .$memberid.'" and memberno = "' .$memberno. '" ;'; 
		               
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	// Rizwan Added 03/17/2017 Retrieve Member info
	function RetrieveSingleProperty($memberid, $memberno, $propertycode)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$ar = [] ;
		
		$qry = 'Select * from property where propertymemberid = "' .$memberid.'" and propertymemberno = "' .$memberno.'" and propertycode = "' .$propertycode. '" ;'; 
		               
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
		
	}
	
	function RetrieveSingleStyle($masterMemberid,$masterMemberno,$styleid)

	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
        
		$ar = [] ; 	
 	    $qry = 'Select * from profilestyle where stylemastermemberid = "' .$masterMemberid.'" and stylemastermemberno = "' .$masterMemberno.'" and idprofilestyle = "' .$styleid.'" ;'; 
		               
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
            array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
	 
	}
	
	// Rizwan Added 03/22/2017 Retrieve all Member info - called from switchmembers.php 
	function RetrieveAllMaster()

	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
        
		$masterMemberid = '*HQ'   ;
		$masterMemberno = '*HQNO' ;
		
		$ar = [] ; 	
 	    $qry = 'Select * from mastermember where mastermemberid != "'.$masterMemberid.'" and mastermemberno != "'.$masterMemberno.'" ;'; 
		               
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        
        {
          while($row = mysqli_fetch_assoc($result))
          {
            array_push($ar, $row);  
          }
		  mysqli_close($this->connection);
		  return $ar;      
		}
	 
	}
	// Rizwan added on 03/29/2017 
	function UpdateApplicationStatus($applicationid,$memberid,$memberno,$status,$error,$TransactionNo,$decision,$decisiontext,$reportlink,$crimstatus) 
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		if($status == 'I')
		{
		  $update_query = 'update application set applicationscreeningstatus = "' . $status . '" , applicationscreeningsubmitdate = now() ,' ;                	
		} else
		{
		  $update_query = 'update application set applicationscreeningstatus = "' . $status . '" , screeningupdatedate = now(),' ;
		}
		$update_query .= 'screeningerror                 = "' . $error . '" ,
		                  screeninginquiryno             = "' . $TransactionNo . '" ,
						  applicationscreeningdecision   = "' . $decision . '" ,
						  screeningreportlink            = "' . $reportlink . '" ,
						  screeningcrimstatus            = "' . $crimstatus . '" ,
						  screeningdecisiontext          = "' . $decisiontext . '"  
				   where
				   idapplication       = "' .$applicationid.'" and
				   applicationmemberid = "' .$memberid. '"    and
				   applicationmemberno = "' .$memberno. '" ' ;
		
		//error_log(print_r($update_query,true)) ;           
        if(!mysqli_query($this->connection,$update_query))
        {
			$this->HandleError("Error updating application table for screening status update");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
	
	// Rizwan added on 03/30/2017 
	function UpdateApplicationRent($applicationid,$rentamount) 
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }		
		 
		$update_query = 'update application set futurerent = "' . $rentamount . '"  
				         where			          
				         idapplication = "' .$applicationid. '" ' ;
		
		//error_log(print_r($update_query,true)) ;           
        if(!mysqli_query($this->connection,$update_query))
        {
			$this->HandleError("Error updating application table for rent update");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
	
	// Rizwan added this on 04/08/2017 - Data pulled from RESMAN GetAvailableMarketing2_0
	 
	function LoadPropertyUnits($s_memberid, $s_memberno,$s_propertycode,$resmanpropertyid,$unitid,$unittype,$unitbedrooms,$unitbathrooms,$marketingname,$securitydeposit,$floorlevel,$effectiverent,$terms,
                               $minsquarefeet,$maxsquarefeet,$marketrent,$uniteconomicstatus,$unitoccupancyStatus,$unitleasedstatus,$floorplanid,$floorplanname,$buildingid,$availabledate,$allamenities) 
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$qry = 'Select * from propertyunit where unitmemberid = "' .$s_memberid.'" and unitmemberno = "' .$s_memberno. '" and unitextpropertyid = "' .$resmanpropertyid. '" and unitid = "' .$unitid. '" ;'; 
				
        $result = mysqli_query($this->connection,$qry); 
        
        if(!$result || mysqli_num_rows($result) <= 0 )   
        {
		  $empty='' ;
          $qry = "INSERT INTO propertyunit( 
		          unitmemberid , 
				  unitmemberno ,
				  unitpropertyno , 
				  unitextpropertyid , 
				  unitextpropertyname , 
				  unitextpropertyaddress ,
				  unitextpropertycity , 
				  unitextpropertystate ,
				  unitextpropertyzip ,
				  unitid,
				  unitfloorplanid, 
				  unitbuildingid,
				  floorlevel,
				  unitfloorplanname, 
				  unitbedrooms , 
				  unitbathrooms ,
				  propertymarketingname,
				  minsquarefeet,
				  maxsquarefeet,
				  marketrent, 
				  uniteconomicstatus, 
				  unitoccupancystatus ,
				  unitleasedstatus ,
				  securitydeposit ,
				  holdingdeposit, 
				  petspermitted,
				  availabilitydate,
				  ameneties,
				  effectiverent,
				  leasetermoffer,
				  lastupdate
				  )
                  VALUES
                  ("
				. "'{$s_memberid}',"
                . "'{$s_memberno}',"
				. "'{$s_propertycode}',"
				. "'{$resmanpropertyid}',"
				. "'{$empty}',"
				. "'{$empty}',"
				. "'{$empty}',"
				. "'{$empty}',"
				. "'{$empty}',"
				. "'{$unitid}',"
				. "'{$floorplanid}',"
				. "'{$buildingid}',"
				. "'{$floorlevel}',"
				. "'{$floorplanname}',"
				. "'{$unitbedrooms}',"
				. "'{$unitbathrooms}',"
				. "'{$marketingname}',"
				. "'{$minsquarefeet}',"
				. "'{$maxsquarefeet}',"
				. "'{$marketrent}',"
				. "'{$uniteconomicstatus}',"
				. "'{$unitoccupancyStatus}',"
				. "'{$unitleasedstatus}',"
				. "'{$securitydeposit}',"
				. "0,"
				. "'{$empty}',"
				. "'{$availabledate}',"
				. "'{$allamenities}',"
				. "'{$effectiverent}',"
				. "'{$terms}',"
				. "NOW()"
			    . ")" ;
				
				error_log(print_r($qry,true)) ;
				
		        if (mysqli_query($this->connection, $qry))
				{
                    mysqli_close($this->connection);					
                }
				else
				{
					//error_log(print_r($qry,true)) ;
					mysqli_close($this->connection);
				}
							
        } else
		
		{
		   $qry = 'update propertyunit set
		           unitfloorplanid = "' .$floorplanid. '",
				   unitbuildingid  = "' .$buildingid. '",
				   floorlevel      = "' .$floorlevel. '",
				   unitfloorplanname= "' .$floorplanname. '",
				   propertymarketingname = "' .$marketingname. '",
				   unitbedrooms     = "' .$unitbedrooms. '",
				   unitbathrooms    = "' .$unitbathrooms. '",
				   minsquarefeet    = "' .$minsquarefeet. '",
				   maxsquarefeet    = "' .$maxsquarefeet. '",
				   marketrent       = "' .$marketrent. '",
				   uniteconomicstatus = "' .$uniteconomicstatus. '", 
				   unitoccupancystatus= "' .$unitoccupancyStatus. '",
				   securitydeposit  = "' .$securitydeposit. '",
				   availabilitydate = "'.$availabledate. '" ,
				   ameneties        = "'.$allamenities. '" ,
				   unitleasedstatus = "' .$unitleasedstatus. '",
				   effectiverent    = "' .$effectiverent. '",
				   leasetermoffer   = "' .$terms. '",
				   lastupdate       = NOW() 
				   where
				   unitmemberid = "' .$s_memberid.'"
				   and
				   unitmemberno = "' .$s_memberno.'"
				   and
				   unitextpropertyid = "' .$resmanpropertyid. '"
				   and
				   unitid = "' .$unitid. '" ' ;
				   	   
				    
			       //error_log(print_r($qry,true)) ;	   				   				    
				   if (mysqli_query($this->connection, $qry))
				   {
                     mysqli_close($this->connection);                    
                   }
                   else
                   {
                     mysqli_close($this->connection);
                   }  	
						
		}
		
		return ;
	}
	
	
	// Rizwan added on 04/12/2017 - Generic function to update /insert record for any table
	function UpdateInsertRecord($qry,$where) 
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }		
		
		if($where != '')
		{
		  $update_query = $qry .' where '.$where ;
		} else
		{
		  $update_query = $qry ;
		}
		   	         		
		error_log(print_r($update_query,true)) ;           
        if(!mysqli_query($this->connection,$update_query))
        {
			$this->HandleError("Error updating/inserting application table for rent update");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
	
	
	// ---------------------- Rizwan Functions End ------------------------
	
	//----------------------- Andres Functions Start Here --------------------
	
	function getDocuments($applicationid,$applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$ar = [];
		
		$qry = 'SELECT * FROM applicantdocuments
					WHERE applicationid = ' . $this->SanitizeForSQL($this->connection, $applicationid) .
					      ' AND applicantid = ' . $this->SanitizeForSQL($this->connection, $applicantid) . ';' ;
		
		$result = mysqli_query($this->connection, $qry);

		if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }
		else 
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}               
		
	}
	
	function saveDocument($applicationid, $applicantid, $filedescription, $file)
	{
		$rand = mt_rand(9999, 99999);
		$info = pathinfo($file['file']['name']);
		//$ext = $info['extension']; // get the extension of the file
		$newname = $applicationid . '-'  . $applicantid . '-' . $rand . '-' . $file['file']['name']; 
		
		$target = 'uploads/'.$newname;
		move_uploaded_file($file['file']['tmp_name'], $target);
		
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$qry = 'INSERT INTO applicantdocuments (applicationid, applicantid, documenttitle,
						docexternalname, docinternalname, uploaddate)
						VALUES (
						' . $applicationid . ',
						' . $applicantid . ',
						"' . $this->SanitizeForSQL($this->connection, $filedescription) . '",
						"' . $this->SanitizeForSQL($this->connection, $file['file']['name']) . '",
						"' . $newname . '",
						NOW());';

		 $result = mysqli_query($this->connection,$qry);
		 mysqli_close($this->connection);
		/*
		if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }
		else 
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}        */       
		
	}
	
	function deleteDocuments($documentid,$applicationid,$applicantid)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$ar = [];
		
		$qry = 'DELETE From applicantdocuments
					WHERE idapplicantdocuments = ' . $this->SanitizeForSQL($this->connection, $documentid) .				      
						  ' AND applicationid = ' . $this->SanitizeForSQL($this->connection, $applicationid) .
					      ' AND applicantid = ' . $this->SanitizeForSQL($this->connection, $applicantid) . ';' ;
		
		$result = mysqli_query($this->connection, $qry);

		mysqli_close($this->connection);
        return ;             
		
	}
	
	function getMasterMemberUrls($memberid, $memberno)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$ar = [];
		
		$qry = 'SELECT idmembers, memberid, memberno, membername, membertoken 
		FROM members WHERE membermasterid = "' . $this->SanitizeForSQL($this->connection, $memberid) . '"
		AND membermasterno = "' . $this->SanitizeForSQL($this->connection, $memberno) . '";' ;
		
		$result = mysqli_query($this->connection, $qry);

		if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }
		else 
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		} 
		
		mysqli_close($this->connection);
		
        return $ar;    
	}
	
	function get_submembers($memberid, $memberno)
	{
		if(!$this->DBLogin())
        {
			$this->HandleError("Database login failed!");
			return false;
		}
		
		$ar = [];
		
		$qry = 'SELECT Propertyname, propertycode, propertyaddress, propertycity, propertystate, propertyzip  
		FROM property WHERE propertymemberid = "' . $this->SanitizeForSQL($this->connection, $memberid) . '"
		AND propertymemberno = "' . $this->SanitizeForSQL($this->connection, $memberno) . '";' ;
		
		$result = mysqli_query($this->connection, $qry);

		if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }
		else 
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		} 
		
		mysqli_close($this->connection);
		
        return $ar; 
	}
	
	//----------------------- Andres Functions End Here --------------------
	
	
    //------- Main Operations Online Application ----------------------
    
    // prequal DB login 
    function DBLogin()
    {

        //$this->connection = mysql_connect($this->db_host,$this->username,$this->pwd);
        $this->connection = mysqli_connect($this->db_host,$this->username,$this->pwd,$this->database);
        if(!$this->connection)
        {   
            $this->HandleDBError("Database Login failed! Please make sure that the DB login credentials provided are correct");
            return false;
        }
        
        return true;
    }
	function set_timezone()
	{
		
		$timezone = "America/Los_Angeles"; // Pacific time 
		if(function_exists('date_default_timezone_set'))
		{ 
			date_default_timezone_set($timezone); 
		}
		
	}
	
	/*
    Sanitize() function removes any potential threat from the
    data submitted. Prevents email injections or any other hacker attempts.
    if $remove_nl is true, newline chracters are removed from the input.
    */
    function Sanitize($str,$remove_nl=true)
    {
        $str = $this->StripSlashes($str);

        if($remove_nl)
        {
            $injections = array('/(\n+)/i',
                '/(\r+)/i',
                '/(\t+)/i',
                '/(%0A+)/i',
                '/(%0D+)/i',
                '/(%08+)/i',
                '/(%09+)/i'
                );
            $str = preg_replace($injections,'',$str);
        }

        return $str;
    }
	
	function SanitizeForSQL($link,$str)
    {
        if( function_exists( "mysqli_real_escape_string" ) )
        {
              $ret_str = mysqli_real_escape_string($link, $str );
        }
        else
        {
              $ret_str =  $str ;
        }
        return $ret_str;
    }
	
    function StripSlashes($str)
    {
        if(get_magic_quotes_gpc())
        {
            $str = stripslashes($str);
        }
        return $str;
    }  
    
	function LogOut()
    {
        if (session_status() == PHP_SESSION_ACTIVE)
		{      
		  $sessionvar = $this->GetLoginSessionVar();       
		  $_SESSION[$sessionvar]=NULL;       
		  unset($_SESSION[$sessionvar]);
		  session_destroy();
		}
    }
		
	//------- Main Operations Functions End----------------------
	
	//-------Public Helper functions for Online Application -------------
    function GetSelfScript()
    {
        return htmlentities($_SERVER['PHP_SELF']);
    }    
    
    function SafeDisplay($value_name)
    {
        if(empty($_POST[$value_name]))
        {
            return'';
        }
        return htmlentities($_POST[$value_name]);
    }
    
    function RedirectToURL($url)
    {
        header("Location: $url");
        exit;
    }
    
    function GetSpamTrapInputName()
    {
        return 'sp'.md5('KHGdnbvsgst'.$this->rand_key);
    }
    
    function GetErrorMessage()
    {
        if(empty($this->error_message))
        {
            return '';
        }
        $errormsg = nl2br(htmlentities($this->error_message));
        return $errormsg;
    }
	
    //-------Private Helper functions-----------
    
    function HandleError($err)
    {
        $this->error_message .= $err."\r\n";
    }
    
    function HandleDBError($err)
    {
        $this->HandleError($err."\r\n mysqlerror:".mysqli_error($this->connection));
    }
    
    function GetFromAddress()
    {
        if(!empty($this->from_address))
        {
            return $this->from_address;
        }

        $host = $_SERVER['SERVER_NAME'];

        $from ="nobody@$host";
        return $from;
    } 
	
	//-------Private / Public Helper functions End -----------
	
	/* rizwan 01/17/2017 - Generic php mail function */

	function SendPhpEmail($sendtoemailaddress,$emailsubject,$messageToSend)
    { 
	
		// Always set content-type when sending HTML email
		$headers  = "MIME-Version: 1.0" . "\r\n";
		$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
	
		// More headers
		$headers .= 'From: support@thescreeningpros.com' . "\r\n";
		//$headers .= 'Cc: rizwana@thescreeningpros.com' . "\r\n";
	
	
	   if(!mail($sendtoemailaddress,$emailsubject,$messageToSend,$headers))
	   {
         return false ;
       }  
	   
       return true ;
	   
    }
	
	// ------------------- End of Online Application Functions -------------
	
		
	// Code from below will be deleted after the completion pof project 
	
	
	
	 //*******************************************//
    //--- Authenticate XML POST Keys - Prequal ---
	//    Match the provided keyid and Key
    //*******************************************//
	function GetAuthenticationKeys($autkeyid,$autkey)

	{
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

 	    $qry = "Select * from authorizationkeys where keyid = '".$autkeyid."' and keyvalue = '".$autkey."'";
        
        $result = mysqli_query($this->connection,$qry);
              
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            $this->HandleError("Authorization Error. Unable to match the provided key");
			mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
		   mysqli_close($this->connection);
           return true ;  
        }
  
	}   
    
	//*******************************************//
    //--- Retrieve the Keys for psoting- Prequal---
	//    Retrieve the key using the provided keyid
    //*******************************************//
	function RetrieveAuthenticationKeys($autkeyid)

	{
		if(!$this->DBLogin())
        	{
            	 $this->HandleError("Database login failed!");
            	 return false;
        	}

 	    $qry = "Select * from authorizationkeys where keyid = '".$autkeyid."'";
        
        $result = mysqli_query($this->connection,$qry);
              
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
            $this->HandleError("Authorization Error. Unable to match the provided key");
			mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
			$row = mysqli_fetch_assoc($result);
		    mysqli_close($this->connection);
		    return $row;
            
        }
  
	}
	
    //--- Membership Add/Update Function used to create or update records - Called from api_getmembers.php --- 
       
	
    //AO-----------------------------------------------------------------------------------
	function check_insert_properties($x)
	{
		$str = "";
		$ar = [];
        $checked = $x;
              
        for($i = 0; $i <= 4; $i++)
		{
			if(in_array(strval($i), $checked))
			{
				switch($checked[array_search(strval($i), $checked)])
				{
					case '0': $str .= "'Y', ";
						break;
					case '1': $str .= "'Y', ";
						break;
					case '2': $str .= "'Y', ";
						break;
					case '3': $str .= "'Y', ";
						break;
					case '4': $str .= "'Y', ";
						break;
				}
			}
			else
			{
				switch($i)
				{
					case 0: $str .= "'', ";
						break;
					case 1: $str .= "'', ";
						break;
					case 2: $str .= "'', ";
						break;
					case 3: $str .= "'', ";
						break;
					case 4: $str .= "'', ";
						break;
				}
			}
		}
        return $str;
    }
	
	function check_update_property($x)
	{
		$str = "";
		$ar = [];
        $checked = $x;
              
        for($i = 0; $i <= 4; $i++)
		{
			if(in_array(strval($i), $checked))
			{
				switch($checked[array_search(strval($i), $checked)])
				{
					case '0': $str .= "Studio = 'Y', ";
						break;
					case '1': $str .= "OneBedroom = 'Y', ";
						break;
					case '2': $str .= "TwoBedroom = 'Y', ";
						break;
					case '3': $str .= "ThreeBedroom = 'Y', ";
						break;
					case '4': $str .= "FourBedroom = 'Y', ";
						break;
				}
			}
			else
			{
				switch($i)
				{
					case 0: $str .= "Studio = '', ";
						break;
					case 1: $str .= "OneBedroom = '', ";
						break;
					case 2: $str .= "TwoBedroom = '', ";
						break;
					case 3: $str .= "ThreeBedroom = '', ";
						break;
					case 4: $str .= "FourBedroom = '', ";
						break;
				}
			}
		}
        return $str;
    }
	
	function check_billing($billing, $address1, $address2, $city, $state, $zip, $update)
	{
		$str = '';
		
		if($billing == 'Y')
		{
			if($update != 'Y')
			{
				$str = "'address1', 'address2', "
			. "'city', 'state', 'zip' ";
			}
			else
			{
				$str = "BillingAddress1 = '{$this->SanitizeForSQL($this->connection,$address1)}', BillingAddress2 = '{$this->SanitizeForSQL($this->connection,$address2)}', "
				. "BillingCity = '{$this->SanitizeForSQL($this->connection,$city)}', BillingState = '{$this->SanitizeForSQL($this->connection,$state)}', "
				. "BillingZip = '{$this->SanitizeForSQL($this->connection,$zip)}' ";
			}
		}
		else
		{
			if($update != 'Y')
			{
				$str = "'{$this->SanitizeForSQL($this->connection,$address1)}', '{$this->SanitizeForSQL($this->connection,$address2)}', "
				. "'{$this->SanitizeForSQL($this->connection,$city)}', '{$this->SanitizeForSQL($this->connection,$state)}', '{$this->SanitizeForSQL($this->connection,$zip)}' ";
			}
			else
			{
				$str = "BillingAddress1 = '{$this->SanitizeForSQL($this->connection,$address1)}', BillingAddress2 = '{$this->SanitizeForSQL($this->connection,$address2)}', "
				. "BillingCity = '{$this->SanitizeForSQL($this->connection,$city)}', BillingState = '{$this->SanitizeForSQL($this->connection,$state)}', BillingZip = '{$this->SanitizeForSQL($this->connection,$zip)}' ";
			}
		}
		return $str;
	}
	

	
	function InitMember($memberid, $memberno)
	{		
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}

 	    $qry = "SELECT * FROM members WHERE MemberId = '"
		. $this->SanitizeForSQL($this->connection, $memberid) . "' AND MemberNo = '"
		. $this->SanitizeForSQL($this->connection, $memberno) . "';";

        $result = mysqli_query($this->connection,$qry);
		
		$row = mysqli_fetch_assoc($result);
		
		return $row;
	}
	
	
	
	
	
	// rizwan 09/16/2016 added the property add and update function for tricon american home integration
	function CheckProperty($memberid, $memberno, $externalid)
	{		
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}

		$qry = "SELECT * FROM property WHERE PropertyMemberId = '"
		. $this->SanitizeForSQL($this->connection, $memberid) . "' and PropertyMemberNo = '"
		. $this->SanitizeForSQL($this->connection, $memberno) . "' and propertyexternalid = '"
		. $this->SanitizeForSQL($this->connection, $externalid) . "';";
		 	    
        $result = mysqli_query($this->connection,$qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
		{
			return false ;
		}
		else
		{
		    return true ;
		}
	}
	
	function addInterfaceProperty($property_memberid, $property_memberno, $property_extid, $property_name, $property_address1, $property_address2, $city, $state, $zip,$phone, $email1, $property_rent, $property_beds, $property_baths, $property_lat, $property_lng, $property_sqft, $property_url, $membername, $membertoken,$partnerid)
						 			 					  
	{
		
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
			
			// set bedroom type
			$onebed  ='' ;
			$twobed  ='' ;
			$threebed='' ;
			$fourbed ='' ;
			
			if($property_beds == "1" )
			{
			  $onebed =  "Y" ;
			} elseif($property_beds == "2")
			{
			  $twobed = "Y" ;
			} elseif($property_beds == "3")
			{
			  $threebed = "Y" ;
			} elseif($property_beds == "4" || $property_beds == "5" || $property_beds == "6")
			{
			  $fourbed = "Y" ;
			}
			//error_log(print_r('Insert level',true)) ;
			//error_log(print_r($property_beds,true)) ;
			//error_log(print_r($onebed,true)) ;
			//error_log(print_r($twobed,true)) ;
			//error_log(print_r($threebed,true)) ;
			//error_log(print_r($fourbed,true)) ;

 	    $qry = "INSERT INTO prequal.property "
		. "(idproperty, PropertyMemberId, PropertyMemberNo, PropertyName, PropertyAddress1, PropertyAddress2, "
		. "PropertyCity, PropertyState, PropertyZip,  PropertyPhone, PropertyStatus, PropertyToken, PropertyCreated, "
		. "PropertyCreatedBy, PropertyUpdated, PropertyUpdatedBy,  PropertyEmail1, PropertyEmail2, PropertyType, "
		. "Studio, OneBedroom, TwoBedroom, ThreeBedroom, FourBedroom, PropertySchedule, BillingtoMember, "
		. "BillingAddress1, BillingAddress2, BillingCity, BillingState,BillingZip, onlineweburl,allowcriminalrun, "
		. "propertyexternalid,propertybaths,propertylat,propertylng,propertysqft,propertyweburl,Lowrent,highrent,rent2income, "
		. "minscore,deductmonthlyobligation,depositrequirement,deposit1text,deposit1FICO,deposit2text,deposit2FICO,deposit3text,deposit3FICO, "
		. "criteriaupdatedate,propertypartnerid,singlefamilyrent) "
		. "VALUES( "
		. "0, "
		. "'{$property_memberid}', " 
		. "'{$property_memberno}', " 
		. "'{$this->SanitizeForSQL($this->connection,$property_name)}', "
		. "'{$this->SanitizeForSQL($this->connection,$property_address1)}', "
		. "'{$this->SanitizeForSQL($this->connection,$property_address2)}', "
		. "'{$this->SanitizeForSQL($this->connection,$city)}', "
		. "'{$this->SanitizeForSQL($this->connection,$state)}', "
		. "'{$this->SanitizeForSQL($this->connection,$zip)}', "
		. "'{$this->SanitizeForSQL($this->connection,$phone)}', "
		. "'A', "
		. "'{$membertoken}|" . mt_rand(100000, 10000000) . "', "
		. "NOW(), "
		. "'AUTO', "
		. "NOW(), "
		. "'AUTO', "
		. "'{$this->SanitizeForSQL($this->connection,$email1)}', "
		. "'', "
		. "'S', "
		. "'', "
		. "'{$onebed}',"
		. "'{$twobed}',"
		. "'{$threebed}',"
		. "'{$fourbed}',"
		. "'', "
		. "'Y', "
		. "'', "
		. "'', "
		. "'', "
		. "'', "
		. "'', "
		. "'', "
		. "'', " 
		. "'{$property_extid}', "
		. "'{$property_baths}', "
		. "'{$property_lat}', "
		. "'{$property_lng}', "
		. "'{$property_sqft}', "
		. "'{$property_url}', "
		. "0.00, "
		. "0.00, "
		. "3.0, "
		. "500, "
		. "'Y', "
		. "'Y', "
		. "'Cosigner required', "
		. "550,"
		. "'1.5 month security deposit', "
		. "600,"
		. "'1 month security deposit', "
		. "600,"
		. "NOW(), "
		. "'{$partnerid}', "
		. "{$property_drent}) " ;
		
		//error_log(print_r($qry,true)) ;
		if(!mysqli_query($this->connection,$qry))
        {
			error_log(print_r($qry,true));
			$this->HandleDBError("Error inserting data to the property table:$qry");
			mysqli_close($this->connection);
            return false;
        } else
		{
			mysqli_close($this->connection);
			//error_log(print_r('Successfully insert property',true));
			return true ;
		}
        
	}
	
	function updateInterfaceProperty($property_memberid, $property_memberno, $property_extid, $property_name, $property_address1, $property_address2, $city, $state, $zip,
						 $phone, $email1, $property_rent, $property_beds, $property_baths, $property_url, $membername)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
			
			// set bedroom type
			$onebed  ='' ;
			$twobed  ='' ;
			$threebed='' ;
			$fourbed ='' ;
			
			if($property_beds == "1" )
			{
			  $onebed = "Y" ;
			} elseif($property_beds == "2")
			{
			  $twobed = "Y" ;
			} elseif($property_beds == "3")
			{
			  $threebed = "Y" ;
			} elseif($property_beds == "4" || $property_beds == "5" || $property_beds == "6")
			{
			  $fourbed = "Y" ;
			} 
			
			//error_log(print_r('Update level',true)) ;
			//error_log(print_r($property_beds,true)) ;
			//error_log(print_r($onebed,true)) ;
			//error_log(print_r($twobed,true)) ;
			//error_log(print_r($threebed,true)) ;
			//error_log(print_r($fourbed,true)) ;
			
			$qry = "UPDATE prequal.property SET "
			. "PropertyName = '{$this->SanitizeForSQL($this->connection,$property_name)}', "
			. "PropertyAddress1 = '{$this->SanitizeForSQL($this->connection,$property_address1)}', "
			. "PropertyAddress2 = '{$this->SanitizeForSQL($this->connection,$property_address2)}', "
			. "PropertyCity   = '{$this->SanitizeForSQL($this->connection,$city)}', "
			. "PropertyState  = '{$this->SanitizeForSQL($this->connection,$state)}', "
			. "PropertyZip    = '{$this->SanitizeForSQL($this->connection,$zip)}', "
			. "PropertyPhone  = '{$this->SanitizeForSQL($this->connection,$phone)}', "
			. "PropertyEmail1 = '{$this->SanitizeForSQL($this->connection,$email1)}', "
			. "singlefmilyrent= {$property_rent}, "
			. "OneBedroom = '{$onebed}', "
			. "TwoBedroom = '{$twobed}', "
			. "ThreeBedroom = '{$threebed}', "
			. "FourBedroom = '{$fourbed}', "
			. "propertyweburl = '{$property_url}' "
			 
			. "WHERE PropertyMemberId = '{$property_memberid}' and PropertyMemberNo = '{$property_memberno}' and propertyexternalid =  '{$property_extid}' ;";
			
			$result = mysqli_query($this->connection,$qry);
			mysqli_close($this->connection); 
	}
	
	function CheckAdditionalHomes($applicationid)
	{		
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}

		$qry = "SELECT * FROM appadditional WHERE idfromapplicant = '"
		. $this->SanitizeForSQL($this->connection, $applicationid) . "';";
		 	    
        $result = mysqli_query($this->connection,$qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
		{
			return false ;
		}
		else
		{
		    return true ;
		}
	}
	
	function RetrieveAdditionalHomes($applicationid)
	{		
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}

		$qry = "SELECT * FROM appadditional WHERE idfromapplicant = '"
		. $this->SanitizeForSQL($this->connection, $applicationid) . "';";
		 	    
        $result = mysqli_query($this->connection,$qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
        {
          mysqli_close($this->connection);
          return false;   
        }
		
		$addhomeresult = mysqli_fetch_assoc($result);
		mysqli_close($this->connection);
		
		return $addhomeresult ;
				
	}
	
	function addAdditionalHomes($applicantid, $html)			 			 					  
	{
		
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
									
 	    $qry = "INSERT INTO prequal.appadditional "
		. "(idappadditionaldata,idfromapplicant, additionaldata) "
		. "VALUES( "
		. "0, "
		. "'{$applicantid}', " 
		. "'{$this->SanitizeForSQL($this->connection,$html)}')" ;
				
        $result = mysqli_query($this->connection,$qry) ;
		if($result)
		{
			return true ;
		}
		 else
		{
			return false ;
		}
	}
	
	function updateAdditionalHomes($applicantid, $html)			 			 					  
	{
		
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
	    $qry = "UPDATE prequal.appadditional  SET "
			. "additionaldata = '{$this->SanitizeForSQL($this->connection,$html)}' " 
			. "WHERE idfromapplicant = '{$applicantid}' ;";
			
			$result = mysqli_query($this->connection,$qry);
	}
	// end of Rizwan update for Tricon American Homes interface
	
	function Login($username, $password)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
			
		$pass = md5($password);	
			
		$login = "SELECT applicantemail, apppassword, idapplicant FROM prequal.applicant WHERE applicantemail = '"
		. $this->SanitizeForSQL($this->connection,$username) . "' AND apppassword = '" . $this->SanitizeForSQL($this->connection,$pass) . "';";
		
		$result = mysqli_query($this->connection, $login);
		
		$rows = mysqli_num_rows($result);
		
		if($rows > 0)
		{
			$_SESSION['AppEmail'] 	 = $username;
			return true; //true if login successfull
		}
		else
		{
			return false;
		}
	}
	
	function PropertyLinks($userid, $userno)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
			
			$ar = [];
			
			$applications = "SELECT * FROM prequal.property WHERE PropertyMemberId = '$userid' AND PropertyMemberNo = '$userno';";
			
			$result = mysqli_query($this->connection, $applications);
			
			while($row = mysqli_fetch_assoc($result))
			{
				array_push($ar, $row);  
			}
			
			return $ar;
	}
	
	function PullApplications($username)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
			
			$ar = [];
			
			$applications = "SELECT * FROM prequal.applicant WHERE applicantemail = '" . $this->SanitizeForSQL($this->connection, $username) . "';";
			
			$result = mysqli_query($this->connection, $applications);
			
			while($row = mysqli_fetch_assoc($result))
			{
				array_push($ar, $row);  
			}
			
			return $ar;
	}
	
	function InitApplication($appid)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
		
		$qry = "SELECT * FROM prequal.applicant LEFT JOIN prequal.property ON
		(applicant.appmemberid = property.PropertyMemberId AND applicant.appmemberno = property.PropertyMemberNo
		AND applicant.apppropertyid = property.idproperty) WHERE idapplicant = '" . $this->SanitizeForSQL($this->connection, $appid) . "';";
		
		$result = mysqli_query($this->connection, $qry);
		 
		$approw = mysqli_fetch_assoc($result);

		$_SESSION['s_Token']        = $approw['PropertyToken'];
		$_SESSION['s_PropertyName'] = $approw['PropertyName'];
		$_SESSION['s_MemberId']     = $approw['PropertyMemberId'];
		$_SESSION['s_MemberNo']     = $approw['PropertyMemberNo'];
		$_SESSION['s_Address1']     = $approw['PropertyAddress1'];
		$_SESSION['s_Address2']     = $approw['PropertyAddress2'];
		$_SESSION['s_City']         = $approw['PropertyCity'];
		$_SESSION['s_State']        = $approw['PropertyState'];
		$_SESSION['s_Zip'] 			= $approw['PropertyZip'];
		$_SESSION['s_Phone'] 		= $approw['PropertyPhone'];
		$_SESSION['s_Email1'] 		= $approw['PropertyEmail1'];
		$_SESSION['s_Schedule'] 	= $approw['PropertySchedule'];
		$_SESSION['s_onlineweburl'] = $approw['onlineweburl'];
		// applicant info from session
		$_SESSION['FirstName'] 		= $approw['appfirstname'];
		$_SESSION['LastName'] 		= $approw['applastname'];
		$_SESSION['AppEmail'] 		= $approw['applicantemail'];
		$_SESSION['applicantID']  	= $approw['idapplicant'];
		
		$_POST['MidName'] = $approw['appmidname'];
		
		$_POST['Phone'] = $approw['appphone'];
		
		$_POST['Suffix'] = $approw['appsuffix'];
		$_POST['Address'] = $approw['appaddress'];
		$_POST['Unit'] = $approw['appaddressunit'];
		$_POST['City'] = $approw['appcity'];
		$_POST['State'] = $approw['appstate'];
		$_POST['Zip'] = $approw['appzip'];
		$_POST['DesireUnit'] = $approw['desireunittype'];
		$_POST['Income'] = $approw['appincome'];
		$_POST['Rent'] = $approw['monthlyrent'];
		$_POST['Message'] = $approw['messagetoproperty'];
		$_POST['FreezPin'] = $approw['appsecuritypin'];
		
		$mdate = strtotime($approw['appmoveindate']); 
		$dob   = strtotime($approw['appdob']);
		
		$_POST['Movedate'] = date('m/d/Y', $mdate);
		$_POST['dateofbirth'] = date('m/d/Y', $dob);
		
		$unitType = '';
		if($approw['Studio'] == 'Y' || $approw['OneBedroom'] == 'Y' || $approw['TwoBedroom'] == 'Y' || $approw['ThreeBedroom'] == 'Y' || $approw['FourBedroom'] == 'Y')
		   {
			$unitType .= '<option value="" selected>Select</option>' ;
			
			if($approw['Studio'] == 'Y')
			{
				if($approw['desireunittype'] == 'S')
				{
					$unitType .= '<option value="S" selected>Studio</option>' ;
				}
				else
				{
					$unitType .= '<option value="S">Studio</option>' ;
				}
			}	
			if($approw['OneBedroom'] == 'Y')
			{
				if($approw['desireunittype'] == '1')
				{
					$unitType .= '<option value="1" selected>1 Bedroom</option>' ;
				}
				else
				{
					$unitType .= '<option value="1">1 Bedroom</option>' ;
				}
			}
			if($approw['TwoBedroom'] == 'Y')
			{
				if($approw['desireunittype'] == '2')
				{
					$unitType .= '<option value="2" selected>2 Bedroom</option>' ;
				}
				else
				{
					$unitType .= '<option value="2">2 Bedroom</option>' ;
				}
			}
			if($approw['ThreeBedroom'] == 'Y')
			{
				if($approw['desireunittype'] == '3')
				{
					$unitType .= '<option value="3" selected>3 Bedroom</option>' ;
				}
				else
				{
					$unitType .= '<option value="3">3 Bedroom</option>' ;
				}
			}
			if($approw['FourBedroom'] == 'Y')
			{
				if($approw['desireunittype'] == '4')
				{
					$unitType .= '<option value="4" selected>4+ Bedroom</option>';
				}
				else
				{
					$unitType .= '<option value="4">4+ Bedroom</option>';
				}
			}
			
		   } else
		   
		   {
			 // set default value here
			 $unitType .= '<option value="" selected>Select</option>' ;
			 $unitType .= '<option value="S">Studio</option>' ;
			 $unitType .= '<option value="1">1 Bedroom</option>' ;
			 $unitType .= '<option value="2">2 Bedroom</option>' ;
			 $unitType .= '<option value="3">3 Bedroom</option>' ;
			 $unitType .= '<option value="4">4+ Bedroom</option>' ;
		   }
		   
		   $_SESSION['s_UnitType']  = $unitType ;
	
	}
	
	function VerifyCode($code, $email)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
		
		$qry = "SELECT * FROM prequal.emailverify WHERE loginemail = '"
		. $this->SanitizeForSQL($this->connection, $email) . "' AND generatedcode = '"
		. $this->SanitizeForSQL($this->connection, $code) . "' AND TIMESTAMPDIFF(MINUTE,generationtime,NOW()) < 20;";
		
		
		$result = mysqli_query($this->connection, $qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
        {
            return false;
		}
		else
		{
			return true;
		}
	}
	
	function CompleteVerification($code, $email)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
			
		$qry = "UPDATE prequal.emailverify SET verified = 'Y', verifieddate = NOW() WHERE generatedcode = '"
		. $this->SanitizeForSQL($this->connection, $code) . "' AND loginemail = '"
		. $this->SanitizeForSQL($this->connection, $email) . "';";

		$result = mysqli_query($this->connection, $qry);
			
		if(mysqli_affected_rows($this->connection) <= 0)
        {
			$this->HandleError("Unable to Verify code to the database");
			mysqli_close($this->connection);
            return false;
		}
		return true;
	}
	
	function NewCode($email)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}

		$newcode = mt_rand(1000,10000);
		
		$qry = "UPDATE prequal.emailverify SET generatedcode = '"
		. $this->SanitizeForSQL($this->connection,$newcode) . "', generationtime = NOW() WHERE loginemail = '"
		. $this->SanitizeForSQL($this->connection,$email) . "';";

		$result = mysqli_query($this->connection,$qry);
		
		if(mysqli_affected_rows($this->connection) <= 0)
        {
			$this->HandleError("Unable to create a new code in the database from NewCode function");
			mysqli_close($this->connection);
            return false;
		}
		//send email to user
		$this->SendUserConfirmationEmail($email, $newcode);
		
		mysqli_close($this->connection);
		return true;
	}
	
	function Notifications($userid, $memberno)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
			
		$icon = '';
		$str = '';
		$ar = [];
			
		$qry = "SELECT TIMESTAMPDIFF(HOUR,notifydate,NOW()) AS hoursago, notifymemberid, notifymemberno, notifydate, notifytype, notifytitle, notifydetails, notifyreadflag, idnotifications
		FROM prequal.notifications WHERE notifymemberid = '$userid' AND notifymemberno = '$memberno' AND notifyreadflag = '' ORDER BY notifydate DESC;";
		
		$result = mysqli_query($this->connection,$qry);

		if(!$result || mysqli_num_rows($result) <= 0)
        {
            return [];
		}
		
		while($row = mysqli_fetch_assoc($result))
		{
			array_push($ar, $row);  
		}
			
		return $ar;
	}
	
	function HideNotification($id)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }

		$qry = "UPDATE prequal.notifications SET notifyreadflag = 'Y' WHERE idnotifications = '{$id}';";

        $result = mysqli_query($this->connection,$qry);
    
        if(mysqli_affected_rows($this->connection) <= 0)
        {
			$this->HandleError("Unable hide a notification");
			mysqli_close($this->connection);
            return false;
		}
		
		mysqli_close($this->connection);
	}
	
	function Applicants($memberid, $memberno, $dates, $prty)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$ar = [];
		
		$datear = explode(" - ", $dates);
		
		$datestart = date("Y/m/d H:i:s", strtotime($datear[0]));
		$dateend = date("Y/m/d H:i:s", strtotime($datear[1]));
		
		$datestart = date('Y-m-d H:i:s', strtotime($datestart . ' -1 day'));
		$dateend = date('Y-m-d H:i:s', strtotime($dateend . ' +1 day'));
		
		if($prty == "All")
		{
			$str = "";
		}
		else
		{
			$str = "AND apppropertyid = '$prty' ";
		}
		
		$qry = "SELECT * FROM prequal.applicant
		WHERE profilestatus = 'C'
		AND appmemberid = '$memberid'
		AND appmemberno = '$memberno'
		AND profilecreateddate BETWEEN '$datestart' AND '$dateend' $str;";
		
		$result = mysqli_query($this->connection,$qry);
    
        if(mysqli_affected_rows($this->connection) <= 0)
        {
			$this->HandleError("Unable to grab Applicants");
			mysqli_close($this->connection);
            return false;
		}
		
		while($row = mysqli_fetch_assoc($result))
		{
			array_push($ar, $row);  
		}
		
		mysqli_close($this->connection);
		
		return $ar;
	}
	
	function Averages($memberid, $memberno, $sprty, $dates)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$ar = [];
		
		$datear = explode(" - ", $dates);
		
		$datestart = date("Y/m/d H:i:s", strtotime($datear[0]));
		$dateend = date("Y/m/d H:i:s", strtotime($datear[1]));
		
		$datestart = date('Y-m-d H:i:s', strtotime($datestart . ' -1 day'));
		$dateend = date('Y-m-d H:i:s', strtotime($dateend . ' +1 day'));
		
		if($sprty == 'All')
		{
			$prty = "";
		}
		else
		{
			$prty = " and i.apppropertyid = '$sprty' ";	
		}
		
		/*
		$qry = "SELECT avg(total) as Average
					FROM
					  (SELECT DATE_FORMAT(i.profilecreateddate, '%Y-%m') as 'period',
							  COUNT(idapplicant) as 'total',
							  i.appmemberid, i.appmemberno
						 FROM applicant i where i.appmemberid='$memberid' and i.appmemberno='$memberno' and Year(i.profilecreateddate) = EXTRACT(YEAR FROM NOW()) and i.profilestatus = 'C' and i.appresult != '' and i.appresult != 'E' $prty
						 GROUP BY period 
						 HAVING COUNT(idapplicant) > 0 
					  ) as T1
					  group by appmemberid, appmemberno  
					  
					  UNION ALL
					  
					SELECT (avg(total2) / count(total)) as prequal
						FROM
						  (SELECT DATE_FORMAT(i.profilecreateddate, '%Y-%m') as 'period',
								  COUNT(idapplicant) as 'total',
								  i.appmemberid, i.appmemberno
							 FROM applicant i where i.appmemberid='$memberid' and i.appmemberno='$memberno' and Year(i.profilecreateddate) = EXTRACT(YEAR FROM NOW()) and i.profilestatus = 'C' and i.appresult != '' and i.appresult != 'E' $prty
							 GROUP BY period 
							 HAVING COUNT(idapplicant) > 0
						  ) as T1, 
						  (SELECT DATE_FORMAT(i.profilecreateddate, '%Y-%m') as 'period',
								  COUNT(idapplicant) as 'total2',
								  i.appmemberid, i.appmemberno
							 FROM applicant i where i.appmemberid='$memberid' and i.appmemberno='$memberno' and Year(i.profilecreateddate) = EXTRACT(YEAR FROM NOW()) and i.profilestatus = 'C' and i.appresult='A'  $prty
						  ) as T2
					
					UNION ALL
					  
					SELECT (avg(total2) / count(total)) as prequal
						FROM
						  (SELECT DATE_FORMAT(i.profilecreateddate, '%Y-%m') as 'period',
								  COUNT(idapplicant) as 'total',
								  i.appmemberid, i.appmemberno
							 FROM applicant i where i.appmemberid='$memberid' and i.appmemberno='$memberno' and Year(i.profilecreateddate) = EXTRACT(YEAR FROM NOW()) and i.profilestatus = 'C' and i.appresult != '' and i.appresult != 'E' $prty
							 GROUP BY period 
							 HAVING COUNT(idapplicant) > 0
						  ) as T1, 
						  (SELECT DATE_FORMAT(i.profilecreateddate, '%Y-%m') as 'period',
								  COUNT(idapplicant) as 'total2',
								  i.appmemberid, i.appmemberno
							 FROM applicant i where i.appmemberid='$memberid' and i.appmemberno='$memberno' and Year(i.profilecreateddate) = EXTRACT(YEAR FROM NOW()) and i.profilestatus = 'C' and i.appresult='C'  $prty
						  ) as T2
					  
					  UNION ALL
					  
					SELECT (avg(total2) / count(total)) as prequal
						FROM
						  (SELECT DATE_FORMAT(i.profilecreateddate, '%Y-%m') as 'period',
								  COUNT(idapplicant) as 'total',
								  i.appmemberid, i.appmemberno
							 FROM applicant i where i.appmemberid='$memberid' and i.appmemberno='$memberno' and Year(i.profilecreateddate) = EXTRACT(YEAR FROM NOW()) and i.profilestatus = 'C' and i.appresult != '' and i.appresult != 'E' $prty
							 GROUP BY period 
							 HAVING COUNT(idapplicant) > 0
						  ) as T1, 
						  (SELECT DATE_FORMAT(i.profilecreateddate, '%Y-%m') as 'period',
								  COUNT(idapplicant) as 'total2',
								  i.appmemberid, i.appmemberno
							 FROM applicant i where i.appmemberid='$memberid' and i.appmemberno='$memberno' and Year(i.profilecreateddate) = EXTRACT(YEAR FROM NOW()) and i.profilestatus = 'C' and i.appresult='D'  $prty
						  ) as T2
					  
					  UNION ALL  
  
					SELECT avg(avgincome) as Average
					FROM
					  (SELECT DATE_FORMAT(i.profilecreateddate, '%Y-%m') as 'period',
							  SUM(appincome) as 'total',
							  i.appmemberid, i.appmemberno, (SUM(i.appincome) / COUNT(i.idapplicant)) as avgincome
						 FROM applicant i where i.appmemberid='$memberid' and i.appmemberno='$memberno' and profilestatus = 'C' and i.appresult != '' and i.appresult != 'E' $prty  AND profilecreateddate BETWEEN '$datestart' AND '$dateend'
						 GROUP BY period 
						 HAVING COUNT(idapplicant) > 0 
					  ) as T1
					  group by appmemberid, appmemberno
					  
					  UNION ALL
					  
					  SELECT (sum(appscore) / COUNT(idapplicant)) as avgscore
					  FROM applicant i 
					  where i.appmemberid='$memberid' and i.appmemberno='$memberno' and i.profilestatus = 'C' and i.appresult != '' and i.appresult != 'E' $prty  AND profilecreateddate BETWEEN '$datestart' AND '$dateend';";
					  */
		$qry = "SELECT avg(avgincome) as Average
					FROM
					  (SELECT DATE_FORMAT(i.profilecreateddate, '%Y-%m') as 'period',
							  SUM(appincome) as 'total',
							  i.appmemberid, i.appmemberno, (SUM(i.appincome) / COUNT(i.idapplicant)) as avgincome
						 FROM applicant i where i.appmemberid='$memberid' and i.appmemberno='$memberno' and profilestatus = 'C' and i.appresult != '' and i.appresult != 'E' $prty  AND profilecreateddate BETWEEN '$datestart' AND '$dateend'
						 GROUP BY period 
						 HAVING COUNT(idapplicant) > 0 
					  ) as T1
					  group by appmemberid, appmemberno
					  
					  UNION ALL
					  
					  SELECT (sum(appscore) / COUNT(idapplicant)) as scoreavg
					  FROM applicant i 
					  where i.appmemberid='$memberid' and i.appmemberno='$memberno' and i.profilestatus = 'C' and i.appresult != '' and i.appresult != 'E' $prty  AND profilecreateddate BETWEEN '$datestart' AND '$dateend';";
		
		$result = mysqli_query($this->connection,$qry);
		$count = 0;
    
        if(mysqli_affected_rows($this->connection) <= 0)
        {
			$this->HandleError("Unable to grab Averages");
			mysqli_close($this->connection);
            return [0, 0];
		}
		
		while($row = mysqli_fetch_assoc($result))
		{
			array_push($ar, round(floatval($row['Average'])));
			$count++;
		}
		
		mysqli_close($this->connection);
		/*
		if($count < 6)
		{
			return [0, 0, 0, 0, 0, 0];
		}*/
		if($count < 2)
		{
			return [0, 0];
		}
		error_log(print_r($qry,true));
		return $ar;
		
	}
	
	function Members()
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$ar = [];
		
		$qry = "SELECT * FROM members;";
		
		$result = mysqli_query($this->connection,$qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
        {
            $this->HandleError("Could not grab members from database");
			mysqli_close($this->connection);
            return false;
        }
		
		while($row = mysqli_fetch_assoc($result))
		{
			array_push($ar, $row);  
		}
		
		mysqli_close($this->connection);
		
		return $ar;
	}
	
	function getApplicantInfo($appnumber, $applicantid)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$ar = [];
		
		$qry = "SELECT * FROM applicants WHERE applicantsidapplication = '" . $appnumber . "' AND idapplicants = '" . $applicantid . "';";
		
		$result = mysqli_query($this->connection,$qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
        {
            $this->HandleError("Could not grab members from database");
			mysqli_close($this->connection);
            return false;
        }
		
		while($row = mysqli_fetch_assoc($result))
		{
			array_push($ar, $row);  
		}
		
		mysqli_close($this->connection);
		
		return $ar;
	}
	
	//AO--------------------------------------------------------------------------------------------
    
	//---Authenticate Token and pulled property/membership record (Added by Rizwan 05/04/2016) --- 

	
	
	/* Rizwan added on 9/21/2016 to authenticate the Member token and property id from partner site like Tricon American Homes
	 * The process will validate the membersip token and then pull the property token using the membership info and external property id. 
    */

	function AuthenticateMemberToken($memberToken)
    {
		if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}

 	    $qry = 'Select * from members where MemberToken = "' .$memberToken. '" ' ; 
        		
        $result = mysqli_query($this->connection,$qry);
        
        if(!$result || mysqli_num_rows($result) <= 0)
        {
						
            $this->HandleError("Member Token Authentication Error. Unable to match the provided token.");
			mysqli_close($this->connection);
            return false;
        
        } else 
        
        {
			
		  $row = mysqli_fetch_assoc($result);
		  mysqli_close($this->connection) ;
		  
		  return $row ;
		  
		}
	}		
	function PullexternalProperty($memberid, $memberno, $externalid)
	{		
		if(!$this->DBLogin())
        	{
              $this->HandleError("Database login failed!");
              return false;
        	}

		$qry = "SELECT * FROM property WHERE PropertyMemberId = '"
		. $this->SanitizeForSQL($this->connection, $memberid) . "' and PropertyMemberNo = '"
		. $this->SanitizeForSQL($this->connection, $memberno) . "' and propertyexternalid = '"
		. $this->SanitizeForSQL($this->connection, $externalid) . "';";
		 	    
        $result = mysqli_query($this->connection,$qry);
		
		if(!$result || mysqli_num_rows($result) <= 0)
		{
		  return false ;
		}
		else
		{
		  $propertyResult  = mysqli_fetch_assoc($result);
		  mysqli_close($this->connection) ;
		  return $propertyResult ;
		}
	}
	
	
    
	//--------- Resident Registration Functions -------------
	
	function RegisterResident()
    {
        if(!isset($_POST['submitted']))
        {
		  
           return false;
        }
        
        $formvars = array();
        
        if(!$this->ValidateRegistrationSubmission())
        {
			
            return false;
        }
        
        $this->CollectRegistrationSubmission($formvars);
        
        if(!$this->SaveToDatabase($formvars))
        {
			
            return false;
        }
        
       // if(!$this->SendUserConfirmationEmail($formvars))
       // {
       //     return false;
       // }

       // $this->SendAdminIntimationEmail($formvars);
        
        return true;
    }
	
	/*  -------------------------------------------------------------------------------------
	    update the residents - the functions called from 2nd step of application registration
	    updateResidents() - Called from applicantform-step-02.php
	    Rizwan: 05/11/2016 
	    -------------------------------------------------------------------------------------
    */
	function updateResident()
    {
        if(!isset($_POST['submitted']))
        {
		   
           return false;
        }
        
        $formvars    = array();
		        
        if(!$this->ValidateupdateSubmission())
        {
			
            return false;
        }
        
        $this->CollectupdateSubmission($formvars);
        
        if(!$this->updateToDatabase($formvars))
        {
			
            return false;
        }
                      
        return true;
    }

	
	function ValidateRegistrationSubmission()
    {
        $digit = $_SESSION['digit'] ;
		 
        $validator = new FormValidator();
		
		$validator->addValidation("FirstName","req","First name is required.");
        $validator->addValidation("LastName","req","Last name is required.");
        $validator->addValidation("inputEmail3","req","Email is required.");
        $validator->addValidation("inputEmail3","email","Please enter the correct email");
        $validator->addValidation("inputEmail4","req","Confirmation email is required.");
        $validator->addValidation("inputEmail4","email","Please enter the correct confirmation email.");
		$validator->addValidation("captcha","req","Incorrect captcha code is provided");
		$validator->addValidation("password","req","Password is required");
		$validator->addValidation("txtConfirmPassword","req","Password confirmation is required");
				
        if(!$validator->ValidateForm())
        {
            $error='';
            $error_hash = $validator->GetErrors();
            foreach($error_hash as $inpname => $inp_err)
            {
                $error .= $inpname.':'.$inp_err."\n";
            }
            $this->HandleError($error);
			
            return false;
        }
		
		if($_POST['captcha'] != $digit )
		{
			$this->error_message = 'Incorrect Security Code entered.' ;
			return false;
		}
		if($_POST['password'] != $_POST['txtConfirmPassword']  )
		{
			$this->error_message = 'Password do not match!. Please renter.' ;
			return false;
		}
		
        return true;
    }
    
	function ValidateupdateSubmission()
    { 
        $validator = new FormValidator();
		
		$validator->addValidation("dateofbirth","req","Date of Birth is required.");
		$validator->addValidation("Phone","req","Phone number is required.");
        $validator->addValidation("Address","req","Address is required.");
        $validator->addValidation("City","req","City is required");
        $validator->addValidation("State","req","State code is required.");
        $validator->addValidation("Zip","req","Zip code is required.");
		$validator->addValidation("Income","req","Monthly income is required");
		$validator->addValidation("DesireUnit","req","Unit size is required");
		$validator->addValidation("Rent","req","Desire Maximum Monthly Rent is required");
		$validator->addValidation("Movedate","req","Expected move-in date is required");
				
        if(!$validator->ValidateForm())
        {
            $error='';
            $error_hash = $validator->GetErrors();
            foreach($error_hash as $inpname => $inp_err)
            {
                $error .= $inpname.':'.$inp_err."\n";
            }
            $this->HandleError($error);
			
            return false;
        }
					
        return true;
    }
	
    function CollectRegistrationSubmission(&$formvars)
    {
        $formvars['FirstName']   = $this->Sanitize($_POST['FirstName']);
        $formvars['LastName']    = $this->Sanitize($_POST['LastName']);
        $formvars['inputEmail3'] = $this->Sanitize($_POST['inputEmail3']);
        $formvars['password']    = $this->Sanitize($_POST['password']);    
    }
    
	function CollectupdateSubmission(&$formvars)
    {
        $formvars['MidName']   = $this->Sanitize($_POST['MidName']);
        $formvars['Suffix']    = $this->Sanitize($_POST['Suffix']);
		$formvars['dateofbirth']  = $this->Sanitize($_POST['dateofbirth']) ;
        $formvars['Phone']     = $this->Sanitize($_POST['Phone']);
        $formvars['Address']   = $this->Sanitize($_POST['Address']);
		$formvars['Unit']      = $this->Sanitize($_POST['Unit']);
		$formvars['City']      = $this->Sanitize($_POST['City']);
		$formvars['State']     = $this->Sanitize($_POST['State']);
		$formvars['Zip']       = $this->Sanitize($_POST['Zip']);
		$formvars['Income']    = $this->Sanitize($_POST['Income']);
		$formvars['Rent']      = $this->Sanitize($_POST['Rent']);
		$formvars['DesireUnit']= $this->Sanitize($_POST['DesireUnit']);
		$formvars['Movedate']  = $this->Sanitize($_POST['Movedate']);
	    $formvars['Message']   = $this->Sanitize($_POST['Message']);
		$formvars['Freezpin']  = $this->Sanitize($_POST['Freezpin']);
    }
	
	function SaveToDatabase(&$formvars)
    {
        if(!$this->DBLogin())
        {
			
            $this->HandleError("Database login failed!");
            return false;
        }
        
                    
        if(!$this->InsertIntoDB($formvars))
        {
			
            $this->HandleError("Resident Registration failed - Database insert failed!");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);
        return true;
    }
	
	function updateToDatabase(&$formvars)
    {
        if(!$this->DBLogin())
        {
			
			
            $this->HandleError("Database login failed!");
			return false;
        }
        
                    
        if(!$this->UpdateIntoDB($formvars))
        {
			
            $this->HandleError("Update Registration failed - Database update failed!");
            return false;
        }

        return true;
    }
	
	
	function InsertIntoDB(&$formvars)
    {
		if(!$this->DBLogin())
        {
			
			error_log(print_r($formvar,true));
            $this->HandleError("Database login failed!");
			return false;
        }
		
        $status = 'I' ;
		
        $insert_query = 'insert into applicant (
		applicantemail,
        apppassword,
        appfirstname,
        applastname,
        appmemberid,
        appmemberno,
		apppropertyid,
		profilecreateddate,
        profilestatus
		)
        values
        (
 		"' . $this->SanitizeForSQL($this->connection,$formvars['inputEmail3']) . '",
        "' . md5($formvars['password']) . '",
        "' . $this->SanitizeForSQL($this->connection,$formvars['FirstName']) . '",
		"' . $this->SanitizeForSQL($this->connection,$formvars['LastName']) . '",
        "' . $_SESSION['s_MemberId']  .'" ,
		"' . $_SESSION['s_MemberNo']  .'" ,
		"' . $_SESSION['s_PropertyId']  .'" ,
		NOW(),
		"' . $status. '" 
		)' ;      
        if(!mysqli_query($this->connection,$insert_query ))
        {
			error_log(print_r($insert_query,true));
			error_log("step-5: QUERY FAILED");
            $this->HandleDBError("Error inserting data to the table\nquery:$insert_query");
			mysqli_close($this->connection);
            return false;
        }
		
		// obtain the last insert id
		   $applicantID = mysqli_insert_id ($this->connection) ;
	    // record digits in session variable
           $_SESSION['applicantID'] = $applicantID;
		   $_SESSION['FirstName']   = $formvars['FirstName'] ;
		   $_SESSION['LastName']    = $formvars['LastName'] ;
		   $_SESSION['AppEmail']    = $formvars['inputEmail3'] ;
		   
		   mysqli_close($this->connection);
        return true;
    }
	
	function UpdateIntoDB(&$formvars)
    {
		if(!$this->DBLogin())
        {
			error_log("Update Registration - Database login failed!");
			error_log(print_r($formvar,true));
            $this->HandleError("Database login failed!");
			return false;
        }
		
        $applicantID = $_SESSION['applicantID'] ;
		$AppEmail    = $_SESSION['AppEmail'] ;
		
        $date = date('Y-m-d H:i:s');
        $status = 'I' ;
		$date = $formvars['Movedate'] ;
		$dobdate = $formvars['dateofbirth'] ;
        $move_date = date("Y-m-d", strtotime($date));			
		$dob_date  = date("Y-m-d", strtotime($dobdate));
		
		$update_query = 'update applicant set
		               appmidname     = "' . $this->SanitizeForSQL($this->connection,$formvars['MidName']) . '",
		               appsuffix      = "' . $this->SanitizeForSQL($this->connection,$formvars['Suffix']) . '",
		               appaddress     = "' . $this->SanitizeForSQL($this->connection,$formvars['Address']) . '",
		               appaddressunit = "' . $this->SanitizeForSQL($this->connection,$formvars['Unit']) . '",
				       appcity        = "' . $this->SanitizeForSQL($this->connection,$formvars['City']) . '",
				       appstate       = "' . $this->SanitizeForSQL($this->connection,$formvars['State']) . '",
				       appzip         = "' . $this->SanitizeForSQL($this->connection,$formvars['Zip']) . '",
					   appdob         = "' . $this->SanitizeForSQL($this->connection,$dob_date) . '",
				       appphone       = "' . $this->SanitizeForSQL($this->connection,$formvars['Phone']) . '",
				       appincome      = "' . $this->SanitizeForSQL($this->connection,$formvars['Income']) . '",
					   monthlyrent    = "' . $this->SanitizeForSQL($this->connection,$formvars['Rent']) . '",
					   appmoveindate  = "' . $this->SanitizeForSQL($this->connection,$move_date) . '",
					   desireunittype = "' . $this->SanitizeForSQL($this->connection,$formvars['DesireUnit']) . '",
					messagetoproperty = "' . $this->SanitizeForSQL($this->connection,$formvars['Message']) . '",
					   appsecuritypin = "' . $this->SanitizeForSQL($this->connection,$formvars['Freezpin']) . '"
				   where
				   idapplicant    = "' .$applicantID.'" and
				   applicantemail = "' .$AppEmail. '" ' ;
		
            
        if(!mysqli_query($this->connection,$update_query))
        {
			error_log(print_r($update_query,true));
			error_log("step-5: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
	
	/* --------------------------------------------------------------------------------------------------------------
	    RetrieveProperty Info using the Memberid, Memberno and property id
	    RetrieveProperty() ;
	    Rizwan: 05/125	   
	   --------------------------------------------------------------------------------------------------------------
    */
	function RetrieveProperty($MemberId, $MemberNo, $PropertyId)
	{
		if(!$this->DBLogin())
        	{
            	  $this->HandleError("Database login failed!");
            	  return false;
        	}
					
		$query = "SELECT * FROM prequal.property WHERE idproperty = '{$PropertyId}' AND PropertyMemberId = '{$MemberId}' AND PropertyMemberNo = '{$MemberNo}';";
		
		$result = mysqli_query($this->connection, $query);
		
		if(!$result || mysqli_num_rows($result) <= 0)
        {
            $this->HandleError("Authorization Error. Unable to match the provided key");
			mysqli_close($this->connection);
            return false;   
        }
		
		$propertyresult = mysqli_fetch_assoc($result);
		mysqli_close($this->connection);
		return $propertyresult  ;
				
	}
	
	/* --------------------------------------------------------------------------------------------------------------
	    Retrieve Application Info using the Application id and applicant email
	    RetrieveResident() ;
	    Rizwan: 05/12/2016	   
	   --------------------------------------------------------------------------------------------------------------
    */
	
	function RetrieveResident()
    {
				
        if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }   
        
		$appID = $_SESSION['applicantID'] ;
		$email = $_SESSION['AppEmail'] ;
        
        $query = "Select * from applicant where idapplicant ='" . $appID . "' and applicantemail = '" . $email . "' " ;
		
		$result = mysqli_query($this->connection,$query);

        if(!$result || mysqli_num_rows($result) <= 0)
        {
            $this->HandleError("There is no applicantion associated with email: $email");
			mysqli_close($this->connection);
            return false;
        }
		
        $approw = mysqli_fetch_assoc($result) ;
		
        mysqli_close($this->connection);
        return $approw;
    }
  	
	function RetrieveApplicant($appID)
    {
				
        if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }   
        
		       
        $query = "Select * from applicant where idapplicant ='" . $appID . "' " ;
		
		$result = mysqli_query($this->connection,$query);

        if(!$result || mysqli_num_rows($result) <= 0)
        {
            $this->HandleError("There is no applicantion associated with applicant id: $appID");
			mysqli_close($this->connection);
            return false;
        }
		
        $approw = mysqli_fetch_assoc($result) ;
		
        mysqli_close($this->connection);
        return $approw;
    }
	
	
	
	function UpdateApplicationErrorStatus($AppId,$AppEmail,$Status,$Errormsg) 
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$update_query = 'update applicant set
		                 profilestatus  = "' . $Status . '" ,
					     responsedate   = now() ,
					     responsestatus = "' . $Errormsg .'" 						  
				   where
				   idapplicant    = "' .$AppId.'" and
				   applicantemail = "' .$AppEmail. '" ' ;
		           
        if(!mysqli_query($this->connection,$update_query))
        {
			error_log(print_r($update_query,true));
			error_log("Function UpdateApplicationErrorStatus: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
	
	function UpdateApplicationResult($AppId,$AppEmail,$Status,$respMessage,$respInqno,$respOverall,$respNocredit,$respIncome,$landlordcollection,$pastdueutilities,$totaleviction,$apprentqualify,$respFico,$respFicoscore,$respMaxrent,$respObligations,$offer1,$offer2,$offer3,$offer4,$offer5,$offer6,$offer7,$respRentratio,$deprequirement) 
    {
			
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!") ;
            return false;
        }
		
		$update_query = 'update applicant set
		                 profilestatus  = "' . $Status . '" ,
					     responsedate   = now() ,
						 responseid     = "' . $respInqno . '" ,
						 appresult      = "' . $respOverall . '" ,
						 responsestatus = "' . $respMessage . '" ,
						 appresult      = "' . $respOverall . '" ,
						 landlordcollection = "' . $landlordcollection . '" , 
						 pastdueutilities = "' . $pastdueutilities . '" ,
						 totaleviction    = "' . $totaleviction . '" , 
						 apprentqualify   = "' . $apprentqualify . '" ,
						 appscore         = "' . $respFicoscore . '" , 
						 maxrentqualify   = "' . $respMaxrent . '" , 
						 monthlyobligation= "' . $respObligations . '" ,
						 offer1 = "' . $offer1 . '" ,
						 offer2 = "' . $offer2 . '" ,
						 offer3 = "' . $offer3 . '" ,
						 offer4 = "' . $offer4 . '" ,
						 offer5 = "' . $offer5 . '" ,
						 offer6 = "' . $offer6 . '" ,
						 offer7 = "' . $offer7 . '" ,
						 resprentratio = "' . $respRentratio . '" ,
						 depositrequirement = "' . $deprequirement . '" ,
						 scoredecision = "' . $respFico . '" ,
						 nocreditreport= "' . $respNocredit . '" ,
						 rentratiodecision= "' . $respIncome . '" 
				   where
				   idapplicant    = "' .$AppId.'" and
				   applicantemail = "' .$AppEmail. '" ' ;
		           
        if(!mysqli_query($this->connection,$update_query))
        {
			error_log(print_r($update_query,true));
			error_log("Function UpdateApplicationResult: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
	
	// Function UpdateCriminalStatus added Rizwan on 7/31/2016
	function UpdateCriminalStatus($AppId,$userid,$CrimInqno,$Status) 
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$update_query = 'update applicant set
		                 criminqtransno = "' . $CrimInqno . '" ,
		                 criminalresult = "' . $Status . '" ,
					     crimrundate    = now() ,
					     crimrunuser    = "' . $userid . '"
				   where
				   idapplicant    = "' .$AppId.'" ' ;  
		           
        if(!mysqli_query($this->connection,$update_query))
        {
			error_log(print_r($update_query,true));
			error_log("Function UpdateCriminalStatus: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
	
	// Function UpdateCriminalResult added Rizwan on 8/4/2016
	function UpdateCriminalResult($AppId,$responseId,$crimInqno,$Status,$Resultpdf) 
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
		$update_query = 'update applicant set
		                 criminalresult = "' . $Status . '",
						 crimresultpdf  = "' . $Resultpdf. '"
				   where
				   idapplicant   = "' .$AppId.'"  and
				   responseid    = "' .$responseId.'" and
				   criminqtransno= "' .$crimInqno.'"' ;
				   
        if(!mysqli_query($this->connection,$update_query))
        {
			error_log(print_r($update_query,true));
			error_log("Function UpdateCriminalStatus: Update query failed");
            $this->HandleDBError("Error updating data to the table\nquery:$update_query");
			mysqli_close($this->connection);
            return false;
        }
		
		mysqli_close($this->connection);		
        return true;
    }
	
	// Add Criminal notification - Rizwan added on 8/8/2016
	function AddNotification($memberid,$memberno,$notifytype,$notifytitle,$notifymessage) 
    {
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
	    $qry = "insert into prequal.notifications (notifymemberid, notifymemberno, notifydate, notifytype,
		notifytitle, notifydetails, notifyreadflag)
		VALUES ('$memberid', '$memberno',
		NOW(), '$notifytype', '$notifytitle', '$notifymessage', '');";
		
		$result = mysqli_query($this->connection,$qry);
	}
	/* ================================================================================== */
	
	/* Generic email sender function */

	function SendEmail($sendtoemailaddress,$emailsubject,$messageToSend)
    { 
	
	$mailer = new PHPMailer();
                
	$mailer->IsSMTP();  
	$mailer->CharSet = 'utf-8';                       	  // Set mailer to use SMTP
	$mailer->Host = 'localhost';   	 // Specify main and backup server
	//$mailer->Host = 'smtpout.secureserver.net';   	 // Specify main and backup server
	//$mailer->Host = '10.1.4.17';
	//$mailer->SMTPAuth = true;                       	// Enable SMTP authentication
	//$mailer->Username = 'support@residentprequal.com';  // SMTP username
	//$mailer->Password = '$pSecofr23';                	      // SMTP password
	//$mailer->SMTPSecure = 'tls';
	$mailer->Port =25;                          	     // Enable encryption, 'ssl' also accepted

	
	$mailer->From = 'support@residentprequal.com'; 
	$mailer->FromName = 'Prequalifier Support Team';
 	$mailer->AddAddress($sendtoemailaddress);                      		// Add a recipient

	$mailer->AddReplyTo('support@residentprequal.com', 'Information');
	$mailer->Subject = $emailsubject;

	$mailer->WordWrap = 50;                                    // Set word wrap to 50 characters
	//$mailer->AddAttachment('/var/tmp/file.tar.gz');         // Add attachments
	//$mailer->AddAttachment('/tmp/image.jpg', 'new.jpg');   // Optional name
	$mailer->IsHTML(true);                                  // Set email format to HTML
         
         
        $mailer->Body = $messageToSend ;
         

        if(!$mailer->Send())
        {
            return false;
        }
        return true;
    }
	
	//email confirm to user 05/18/2016 AO
    function SendUserConfirmationEmail($email, $verifycode)
    {
        
        $EmailSubject      = "Your Verification Code from ".$this->sitename;
		$sendtoemailaddress= $email ;  
        $emailTitle        = "Confirm Your Identity to Get Started";
 	
        $confirmcode   = $verifycode;
        $confirm_url   = '';
 
        $Emailmessage  = "<p>Hello, </p>";
		$Emailmessage .= "<p>Thanks for using ".$this->sitename."</p>";
		$Emailmessage .= "Please use the code below and enter it to access your account on " . $this->sitename . ".<br /><br/ >";
		$Emailmessage .= "<b style='font-size:14px;'>" . $verifycode."</b><br />";
		$Emailmessage .= "<p>Note: Code will expire in 20 minutes.</p><br /><br />";
		$Emailmessage .= "<p>Regards,</p>";
		$Emailmessage .= "<p>Support Team<br />";
		$Emailmessage .= $this->sitename."</p>";

		include 'email_generator.php'; 
 
        if(!$this->SendEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending registration confirmation email.");
            return false;
        }
        return true;
    }
	
	//email temporary password 09/09/2016 AO
    function NewUserTmpPassword($email, $userid, $tmppassword)
    {
		//---!Email that send user info--------------!
		$EmailSubject      = "Resident Prequal Account";
		$sendtoemailaddress= $email ;  
        $emailTitle        = "An account has been created for you";

        //$confirmcode   = $verifycode;
        $confirm_url   = '';
 
        $Emailmessage  = "<p>Hello, </p>";
		//$Emailmessage .= "<p>Thanks for using ".$this->sitename."</p>";
		$Emailmessage .= "<p>An account has been created for you.</p>";
		$Emailmessage .= "Please use the User ID below and enter it to access your account on " . $this->sitename . ".<br /><br/ >";
		$Emailmessage .= "<b style='font-size:14px;'>" . $userid ."</b><br />";
		$Emailmessage .= "<p>Note: Another email has been sent with a Temporary Password.</p>";
		$Emailmessage .= "<p>Regards,</p>";
		$Emailmessage .= "<p>Support Team<br />";
		$Emailmessage .= $this->sitename."</p>";

		include 'email_generator.php'; 
 
        if(!$this->SendEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending registration confirmation email.");
            return false;
        } 
		//---!--------------------------------!
		
        //----$ Email that sends the temporary password----$
        $EmailSubject      = "Resident Prequal Temporary Password";
		$sendtoemailaddress= $email ;  
        $emailTitle        = "Your Temporary Password";

        //$confirmcode   = $verifycode;
        $confirm_url   = '';
 
        $Emailmessage  = "<p>Hello, </p>";
		//$Emailmessage .= "<p>Thanks for using ".$this->sitename."</p>";
		//$Emailmessage .= "<p>Here is your temporary password</p>";
		$Emailmessage .= "Please use the temporary password below and enter it to access your account on " . $this->sitename . ".<br /><br/ >";
		$Emailmessage .= "<b style='font-size:14px;'>" . $tmppassword ."</b><br />";
		$Emailmessage .= "<p>Note: Another email has been sent containing your User ID.</p>";
		$Emailmessage .= "<p>Regards,</p>";
		$Emailmessage .= "<p>Support Team<br />";
		$Emailmessage .= $this->sitename."</p>";

		include 'email_generator.php'; 
 
        if(!$this->SendEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending registration confirmation email.");
            return false;
        }
		//----$----------------------------$
		
        return true;
    }
	
	//email confirm to user 05/31/2016 rizwan alam
    function SendMemberConfirmationEmail($email)
    {
        
        $EmailSubject      = "Your Membership for " .$this->sitename. "has been approved." ;
		$sendtoemailaddress= $email ;  
        $emailTitle        = "Congratulations!";
 	
        $confirmcode   = $verifycode;
        $confirm_url   = '';
 
        $Emailmessage  = "<p>Hello, </p>";
		$Emailmessage .= "<p>Your membership has been approved and activated for ".$this->sitename."</p>";
		$Emailmessage .= "Please login to your account on " . $this->sitename . " to complete the inititial setup.<br /><br/ >";
		$Emailmessage .= "<p></p><br />";
		$Emailmessage .= "<p>Regards,</p>";
		$Emailmessage .= "<p>Support Team<br />";
		$Emailmessage .= $this->sitename."</p>";

		include 'email_generator.php'; 
 
        if(!$this->SendEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending registration confirmation email.");
            return false;
        }
        return true;
    }
	
	//email from index.php contanct info
	function SendContactEmail($name, $company, $numberunits, $email, $phone, $current_tsp)
    {
        
        $EmailSubject      = "Email from ".$this->sitename;
		$sendtoemailaddress= "info@residentprequal.com";
        $emailTitle        = "Contact Us";
 	
        $confirmcode   = '';
        $confirm_url   = '';
 
        $Emailmessage  = "<p>Name: " . $name . "<br>";
		$Emailmessage  .= "Company: " . $company . "<br>";
		$Emailmessage  .= "Number of Units: " . $numberunits . "<br>";
		$Emailmessage  .= "Email: " . $email . "<br>";
		$Emailmessage  .= "Phone: " . $phone . "<br>";
		$Emailmessage  .= "TSP Client: " . $current_tsp . "<br>";
		$Emailmessage .= "</p>";
		$Emailmessage .= "<p>Thank you </p>";

		include 'email_generator.php'; 
 
        if(!$this->SendEmail($sendtoemailaddress,$EmailSubject,$messageToSend))
        {
            $this->HandleError("Failed sending contact us email.");
            return false;
        }
		
        return true;
    }

    function GetAbsoluteURLFolder()
    {
        $scriptFolder = (isset($_SERVER['HTTPS']) && ($_SERVER['HTTPS'] == 'on')) ? 'https://' : 'http://';
        $scriptFolder .= $_SERVER['HTTP_HOST'] . dirname($_SERVER['REQUEST_URI']);
        return $scriptFolder;
    }
    
    function SendAdminIntimationEmail(&$formvars)
    {
        if(empty($this->admin_email))
        {
            return false;
        }
        $mailer = new PHPMailer();
        
        $mailer->CharSet = 'utf-8';
        
        $mailer->AddAddress($this->admin_email);
        
        $mailer->Subject = "New registration: ".$formvars['name'];

        $mailer->From = $this->GetFromAddress();         
        
        $mailer->Body ="A new user registered at ".$this->sitename."\r\n".
        "Name: ".$formvars['name']."\r\n".
        "Email address: ".$formvars['email']."\r\n".
        "UserName: ".$formvars['username'];
        
        if(!$mailer->Send())
        {
            return false;
        }
        return true;
    }
    
    
    
    function IsFieldUnique($formvars,$fieldname,$tablefield)
    {
        $field_val = $this->SanitizeForSQL($formvars[$fieldname]);
        $qry = "select account_username from $this->tablename where $tablefield='".$field_val."'";
        $result = mysql_query($qry,$this->connection);   
        if($result && mysql_num_rows($result) > 0)
        {
            return false;
        }
        return true;
    }
	
	//--------- End of Resident Registration Functions --------
	
	
    
	/*=============================================================================*/
	/* Access the user using the email and verify that account was verified earlier */
	/*=============================================================================*/
	function GetUserFromEmail($email)
    {
        if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		
        $email = $this->SanitizeForSQL($this->connection,$email);
        
        $result = mysqli_query($this->connection,"Select * from prequal.emailverify where loginemail='$email'");  

        if(!$result || mysqli_num_rows($result) <= 0)
        {
         		   
			$newcode=mt_rand(1000,10000) ;
			// create a verification record			
			$insert_query = 'insert into prequal.emailverify (
			loginemail,
			generatedcode,
			generationtime,
			verified
			)
			values
			(
			"' . $this->SanitizeForSQL($this->connection,$email) . '",
			"' . $newcode . '",
			NOW(),
			"")';      
			if(!mysqli_query($this->connection,$insert_query ))
			{
				$this->HandleDBError("Error inserting data to the table\nquery:" . $insert_query);
				return false;
			}
			else
			{
				// send the email to user with generated code
				$this->SendUserConfirmationEmail($email, $newcode);
				
				return ['VERIFICATION_REQUIRED',$newcode] ;
			}  			 
		  			 
        }
		else // there is a verification record exists, check if verification is done or not
		{ 
			$email_rec = mysqli_fetch_assoc($result);
			
			if($email_rec['verified'] != 'Y')
			{
				$newcode=mt_rand(1000,10000) ;
				
				$update_query = "update prequal.emailverify set
		               generatedcode = '" . $newcode . "' ,
					   generationtime = NOW(),
					   verified = ''
				       where
				       loginemail   = '" .$email. "' " ;
				    		           
                if(!mysqli_query($this->connection,$update_query))
				{
			 
				 $this->HandleDBError("Error updating data to the table\nquery:$update_query");
					return false;
				}
				
				// send email to user with code
				$this->SendUserConfirmationEmail($email, $newcode);
				
				return ['VERIFICATION_REQUIRED',$newcode] ;
				
			}
			
			
		}
           
        return ['VERIFICATION_NOT_REQUIRED',''] ; 
    }
	
	
	
    //------- End of Prequal Functions ----------
    
    
    
    
    function GetLoginSessionVar()
    {
        $retvar = md5('LOffRqroBEQ3PN7');
        $retvar = 'usr_'.substr($retvar,0,10);
        return $retvar;
    }
    
    function CheckLoginInDB($username,$password)
    {
        if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }          
        $username = $this->SanitizeForSQL($username);
        $pwdmd5   = md5($password);
        $qry = "Select * from $this->tablename where account_username='$username' and account_password='$pwdmd5' and confirmcode='y'";
        
        $result = mysql_query($qry,$this->connection);
        
        if(!$result || mysql_num_rows($result) <= 0)
        {
            $this->HandleError("Error logging in. The username or password does not match");
            return false;
        }
        
        $row = mysql_fetch_assoc($result);
        
        
        $_SESSION['name_of_user']   = $row['account_name'];
        $_SESSION['email_of_user']  = $row['account_email'];
	$_SESSION['userid_of_user'] = $row['account_user_id'];
	$_SESSION['user_loginid']   = $row['account_username'];

	//-- Set admin id for adminstrator login

	if ($row['account_masterid'] <= 0)

	{  
	   $_SESSION['masterid_of_user'] = $row['account_user_id'];
	
	   //-- set the main admin property address - will use this for Rent Estimator - Zillow Tool
	

	   $_SESSION['property_address'] = trim($row['account_address']) . ', ' . trim($row['account_city']) . ', ' . trim($row['account_state']) . ' ' . trim($row['account_zip']);
    	   $_SESSION['property_city']    = trim($row['account_city']);
           $_SESSION['property_state']   = trim($row['account_state']);
    

	
        } else
	
	{
	   $_SESSION['masterid_of_user'] = $row['account_masterid'];
         
	   $_SESSION['property_address'] = ' ';
	   $_SESSION['property_city']    = ' ';
           $_SESSION['property_state']   = ' ';
    

	   	
        }


	$_SESSION[$this->GetLoginSessionVar()] = $username;

        
        return true;
    }
    
    function UpdateDBRecForConfirmation(&$user_rec)
    {
        if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }   
        $confirmcode = $this->SanitizeForSQL($_GET['code']);
        
        $result = mysql_query("Select account_name, account_username, account_email from $this->tablename where confirmcode='$confirmcode'",$this->connection);   
        if(!$result || mysql_num_rows($result) <= 0)
        {
            $this->HandleError("Invalid confirmation code provided.");
            return false;
        }
        $row = mysql_fetch_assoc($result);
        $user_rec['name'] = $row['account_name'];
	$user_rec['user'] = $row['account_username'];
        $user_rec['email']= $row['account_email'];
        
        $qry = "Update $this->tablename Set confirmcode='y' Where  confirmcode='$confirmcode'";
        
        if(!mysql_query( $qry ,$this->connection))
        {
            $this->HandleDBError("Error inserting data to the table\nquery:$qry");
            return false;
        }      
        return true;
    }
    
    function ResetUserPasswordInDB($user_rec)
    {
        $new_password = substr(md5(uniqid()),0,10);
        
        if(false == $this->ChangePasswordInDB($user_rec,$new_password))
        {
            return false;
        }
        return $new_password;
    }
    
    function ChangePasswordInDB($user_rec, $newpwd)
    {
        $newpwd = $this->SanitizeForSQL($newpwd);
        
        $qry = "Update $this->tablename Set account_password='".md5($newpwd)."' Where  account_user_id=".$user_rec['account_user_id']."";
        
        if(!mysql_query( $qry ,$this->connection))
        {
            $this->HandleDBError("Error updating the password \nquery:$qry");
            return false;
        }     
        return true;
    }
    
    

    function GetUserFromUserid($userid,&$user_rec)
    {
        if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }   
        $userid = $this->SanitizeForSQL($userid);
        
        $result = mysql_query("Select * from $this->tablename where account_username='$userid'",$this->connection);  

        if(!$result || mysql_num_rows($result) <= 0)
        {
            $this->HandleError("Userid: $userid does not exists!");
            return false;
        }
        $user_rec = mysql_fetch_assoc($result);

        
        return true;
    }
 
    function SendUserWelcomeEmail(&$user_rec)
    {
        
	$EmailSubject      = "Welcome to ".$this->sitename;
	$sendtoemailaddress= $user_rec['email'] ;  
        $emailTitle        = "Congratulation!";
 
        $Emailmessage  = "<p>Hello ".$user_rec['name'].",</p>";
	$Emailmessage .= "<p>Your registration with ".$this->sitename." is completed, which means you are already a step closer to screen your prospects and get the best tenant for your property.</p>";
	$Emailmessage .= "Please login to your Online Tenant Screening account using your user id <b> ".$user_rec['user']." </b> and order tenant credit checks and criminal background reports today.<br />";
	
	$Emailmessage .= "<p>Regards,</p>";
	$Emailmessage .= "<p>Support Team<br />";
	$Emailmessage .= $this->sitename."</p>";

	include 'sa_emailgenerator.php'; 

        if(!$this->SendEmail($sendtoemailaddress,$EmailSubject,$messageToSend))

        {
            $this->HandleError("Failed sending user welcome email.");
            return false;
        }
        return true;        
        
    }
    
    function SendAdminIntimationOnRegComplete(&$user_rec)
    {
        if(empty($this->admin_email))
        {
            return false;
        }
        $mailer = new PHPMailer();
        
        $mailer->CharSet = 'utf-8';
        
        $mailer->AddAddress($this->admin_email);
        
        $mailer->Subject = "New Registration Completed: ".$user_rec['name'];

        $mailer->From = $this->GetFromAddress();         
        
        $mailer->Body ="A new user registered at ".$this->sitename."\r\n".
        "User id: ".$user_rec['user']."\r\n";
        "Name...: ".$user_rec['name']."\r\n".
        "Email..: ".$user_rec['email']."\r\n";
        
        if(!$mailer->Send())
        {
            return false;
        }
        return true;
    }
    
    function GetResetPasswordCode($email)
    {
       return substr(md5($email.$this->sitename.$this->rand_key),0,10);
    }
    
    function SendResetPasswordLink($user_rec)
    {
	$email = $user_rec['account_email'];

        
	$EmailSubject      = "Password reset request at ".$this->sitename;
	$sendtoemailaddress= $email;  
        $emailTitle        = "Password Reset Request";
 	
        $link = $this->GetAbsoluteURLFolder().
                '/sa_resetpwd.php?email='.
                urlencode($user_rec['account_email']).'&code='.
                urlencode($this->GetResetPasswordCode($email));

         
        $Emailmessage  = "<p>Hello ".$user_rec['account_name'].",</p>";
	$Emailmessage .= "<p>We received a request to change your password on ".$this->sitename."</p>";
	$Emailmessage .= "Please click the link below to set a new password: <br />";
	$Emailmessage .= $link."<br />";
	$Emailmessage .= "<p>If you dont want to change your password, you can ignore this email.</p>";
	$Emailmessage .= "<p>Thank you,</p>";
	$Emailmessage .= "<p>Support Team<br />";
	$Emailmessage .= $this->sitename."</p>";

	include 'sa_emailgenerator.php'; 
 
        if(!$this->SendEmail($sendtoemailaddress,$EmailSubject,$messageToSend))

        {
            $this->HandleError("Failed sending password reset link email.");
            return false;
        }
        return true;

    }
    
    function SendNewPassword($user_rec, $new_password)
    {
        
	$email = $user_rec['account_email'];

        
	$EmailSubject      = "Your new password for ScreeningAdvantage account";
	$sendtoemailaddress= $email;  
        $emailTitle        = "New Password";
 	
                 
        $Emailmessage  = "<p>Hello ".$user_rec['account_name'].",</p>";
	$Emailmessage .= "<p>Your password is reset successfully.</p>";
	$Emailmessage .= "Following is your updated login id and password.<br />";

	$Emailmessage .= "Login Id : " .$user_rec['account_username']."<br />";
        $Emailmessage .= "Password : " .$new_password;

	$Emailmessage .= "<p>Thank you,</p>";
	$Emailmessage .= "<p>Support Team<br />";
	$Emailmessage .= $this->sitename."</p>";

	include 'sa_emailgenerator.php'; 
 
        if(!$this->SendEmail($sendtoemailaddress,$EmailSubject,$messageToSend))

        {
            $this->HandleError("Failed sending new password email.");
            return false;
        }
        return true;

	
    }    
    
    
    
      
    
    function Ensuretable()
    {
        $result = mysql_query("SHOW COLUMNS FROM $this->tablename");   
        if(!$result || mysql_num_rows($result) <= 0)
        {
            return $this->CreateTable();
        }
        return true;
    }
    
    function CreateTable()
    {
        $qry = "Create Table $this->tablename (".
                "id_user INT NOT NULL AUTO_INCREMENT ,".
                "name VARCHAR( 128 ) NOT NULL ,".
                "email VARCHAR( 64 ) NOT NULL ,".
                "phone_number VARCHAR( 16 ) NOT NULL ,".
                "username VARCHAR( 16 ) NOT NULL ,".
                "password VARCHAR( 32 ) NOT NULL ,".
                "confirmcode VARCHAR(32) ,".
                "PRIMARY KEY ( id_user )".
                ")";
                
        if(!mysql_query($qry,$this->connection))
        {
            $this->HandleDBError("Error creating the table \nquery was\n $qry");
            return false;
        }
        return true;
    }
    
    
    function MakeConfirmationMd5($email)
    {
        $randno1 = rand();
        $randno2 = rand();
        return md5($email.$this->rand_key.$randno1.''.$randno2);
    }


    function getUserIP()
    {
    	
	
        $client  = @$_SERVER['HTTP_CLIENT_IP'];
    	$forward = @$_SERVER['HTTP_X_FORWARDED_FOR'];
    	$remote  = $_SERVER['REMOTE_ADDR'];

    	if(filter_var($client, FILTER_VALIDATE_IP))
    	{
        	$ip = $client;
    	}
    	elseif(filter_var($forward, FILTER_VALIDATE_IP))
    	{
        $ip = $forward;
    	}
    	else
    	{
        $ip = $remote;
    	}  

    	return $ip;
    }
/* ********************************** */
/* ****  Add property Locations  **** */
/* ********************************** */

    function AddProperty()
    {
        if(!isset($_POST['submitted']))
        {
           return false;
        }
        
        $formvars = array();
        
        if(!$this->ValidatePropertySubmission())
        {
            return false;
        }
        
        $this->CollectPropertySubmission($formvars);
        
        if(!$this->SavePropertyToDatabase($formvars))
        {
            return false;
        }
                        
        return true;
    }

    function CollectPropertySubmission(&$formvars)
    {
	$formvars['adminid']   = $this->Sanitize($_POST['adminid']);
        $formvars['name']      = $this->Sanitize($_POST['name']);
        $formvars['type']      = $this->Sanitize($_POST['type']);
        $formvars['rent']      = $this->Sanitize($_POST['rent']);
        $formvars['address']   = $this->Sanitize($_POST['address']);
	$formvars['city']      = $this->Sanitize($_POST['city']);
	$formvars['state']     = $this->Sanitize($_POST['state']);
	$formvars['zip']       = $this->Sanitize($_POST['zip']);
	$formvars['adminuser'] = $this->Sanitize($_POST['adminuser']);
    }

    function ValidatePropertySubmission()
    {
        //This is a hidden input field. Humans won't fill this field.
        if(!empty($_POST[$this->GetSpamTrapInputName()]) )
        {
            //The proper error is not given intentionally
            $this->HandleError("Automated submission prevention: case 2 failed");
            return false;
        }
        
        $validator = new FormValidator();
	$validator->addValidation("name","req","Please provide property name");
        $validator->addValidation("type","req","please select property type");
        $validator->addValidation("rent","req","Please enter property expected market rent");
 	$validator->addValidation("address","req","Please provide property Stret address");
	$validator->addValidation("city","req","Please provide City");
	$validator->addValidation("state","req","Please provide State");        
	$validator->addValidation("zip","req","Please provide Zip code");

        if(!$validator->ValidateForm())
        {
            $error='';
            $error_hash = $validator->GetErrors();
            foreach($error_hash as $inpname => $inp_err)
            {
                $error .= $inpname.':'.$inp_err."\n";
            }
            $this->HandleError($error);
            return false;
        }        
        return true;
    }


    function SavePropertyToDatabase(&$formvars)
    {
        if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
        
                
        if(!$this->InsertIntoPropertyDB($formvars))
        {
            $this->HandleError("Inserting to Property Database failed!");
            return false;
        }
        return true;
    }
    
    function InsertIntoPropertyDB(&$formvars)
    {
    
        $date = date('Y-m-d H:i:s');
        $status='A';
       
        $insert_query = 'insert into propertylocation (
		account_user_id,
                property_name,
		property_address,
                property_city,
		property_state,
		property_zip,
                property_status,
		property_type,
		property_marketRent,
		property_updateuser,
		property_update
		 
                )
                values
                (
 		"' . $this->SanitizeForSQL($formvars['adminid']) .'",
                "' . $this->SanitizeForSQL($formvars['name']) . '",
		"' . $this->SanitizeForSQL($formvars['address']) . '",
		"' . $this->SanitizeForSQL($formvars['city']) . '",
		"' . $this->SanitizeForSQL($formvars['state']) . '",
		"' . $this->SanitizeForSQL($formvars['zip']) . '",
                "' . $status .'",
		"' . $this->SanitizeForSQL($formvars['type']) . '",
		"' . $this->SanitizeForSQL($formvars['rent']) . '",
		"' . $this->SanitizeForSQL($formvars['adminuser']) . '",
		"' . $date . '"
		)'; 
     
        if(!mysql_query( $insert_query ,$this->connection))
        {
            $this->HandleDBError("Error inserting data to the table\nquery:$insert_query");
            return false;
        }        
        return true;
    }

/* ********************************** */
/* *******   Add New Users    ******* */
/* ********************************** */

    function AddNewuser()
    {
        if(!isset($_POST['submitted']))
        {
           return false;
        }
        
        $formvars = array();
        
        if(!$this->ValidateNewUserSubmission())
        {
            return false;
        }
        
        $this->CollectNewUserSubmission($formvars);
        
        if(!$this->SaveNewUserToDB($formvars))
        {
            return false;
        }
        
        if(!$this->SendUserConfirmationEmail($formvars))
        {
            return false;
        }

                
        return true;
    }

    function ValidateNewUserSubmission()
    {
        //This is a hidden input field. Humans won't fill this field.
        if(!empty($_POST[$this->GetSpamTrapInputName()]) )
        {
            //The proper error is not given intentionally
            $this->HandleError("Automated submission prevention: case 2 failed");
            return false;
        }
        
        $validator = new FormValidator();
	$validator->addValidation("username","req","Please provide User login");
        $validator->addValidation("password","req","Please provide Password");
        $validator->addValidation("name","req","Please provide user Name");
        $validator->addValidation("email","email","The input for Email should be a valid email value");
        $validator->addValidation("email","req","Please provide Email");
         

        if(!$validator->ValidateForm())
        {
            $error='';
            $error_hash = $validator->GetErrors();
            foreach($error_hash as $inpname => $inp_err)
            {
                $error .= $inpname.':'.$inp_err."\n";
            }
            $this->HandleError($error);
            return false;
        }        
        return true;
    }
    
    function CollectNewUserSubmission(&$formvars)
    {
	$formvars['adminid']   = $this->Sanitize($_POST['adminid']);
	$formvars['name']      = $this->Sanitize($_POST['name']);
        $formvars['email']     = $this->Sanitize($_POST['email']);
        $formvars['username']  = $this->Sanitize($_POST['username']);
        $formvars['password']  = $this->Sanitize($_POST['password']);
	 
    }

    function SaveNewUserToDB(&$formvars)
    {
        if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
        
        if(!$this->IsFieldUnique($formvars,'email','account_email'))
        {
            $this->HandleError("This email is already assosciated with another user. Please use different email.");
            return false;
        }
        
        if(!$this->IsFieldUnique($formvars,'username','account_username'))
        {
            $this->HandleError("Login Id is already in used. Please try different login.");
            return false;
        }        
        if(!$this->InsertNewUserToDB($formvars))
        {
            $this->HandleError("Inserting of User to Database failed!");
            return false;
        }
        return true;
    }

    function InsertNewUserToDB(&$formvars)
    {
    
        $confirmcode='y'; 
        $date = date('Y-m-d H:i:s');
                
        $insert_query = 'insert into '.$this->tablename.'(
		account_username,
        account_password,
        account_name,
		account_email,
        confirmcode,
		account_masterid,
		account_update
		 
                )
                values
                (
 		"' . $this->SanitizeForSQL($formvars['username']) . '",
                "' . md5($formvars['password']) . '",
                "' . $this->SanitizeForSQL($formvars['name']) . '",
		"' . $this->SanitizeForSQL($formvars['email']) . '",
                "' . $confirmcode . '",
		"' . $this->SanitizeForSQL($formvars['adminid']) . '",
		"' . $date . '"
		)';      
        if(!mysql_query( $insert_query ,$this->connection))
        {
            $this->HandleDBError("Error inserting data to the table\nquery:$insert_query");
            return false;
        }        
        return true;
    }


    function getbgcolor($trcount)
    {

	$blue="\"background-color: #EEFAF6;\"";
	$green="\"background-color: #D4F7EB;\"";
	$odd=$trcount%2;
    	if($odd==1){return $blue;}
    	else{return $green;}    

    }

    function RetrieveAddress($userId)
    {
        if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }          
         
        $qry = "Select account_address, account_city, account_state, account_zip from $this->tablename where account_user_id='$userId' ";
        
        $result = mysql_query($qry,$this->connection);
        
        if(!$result || mysql_num_rows($result) <= 0)
        { 
            return false;
        }
        
        $row = mysql_fetch_assoc($result);
        
                
	{  	
	   // set the main admin property address - will use this for Rent Estimator - Zillow Tool

	   $_SESSION['property_address'] = trim($row['account_address']) . ', ' . trim($row['account_city']) . ', ' . trim($row['account_state']) . ' ' . trim($row['account_zip']) ;
    	   $_SESSION['property_city']    = trim($row['account_city']);
           $_SESSION['property_state']   = trim($row['account_state']);
 	}

	   return true;

    }
/* === End of All Functions === */


/*  codes for New customize your style 
			Author=Mohan */
			
	function insrtintotable($style_Name,
							$select_your_logo,
							$select_your_logoname,
							$logo_name,
							$logo_height,
							$logo_width,
							$welcome_color,
							$footer_color,
							$button_color,
							$hover_color,
							$link_color,
							$select_style_Id)
							
	{
				if(!$this->DBLogin())
			{
			  $this->HandleError("Database login failed!");
			  return false;
			}
			$qry="select * from stylecustomizingtable where StyleName= '".$this->SanitizeForSQL($this->connection,$style_Name)."' and id='".$this->SanitizeForSQL($this->connection,$select_style_Id)."'";
			$inserttocustomizeyourstyle = 'insert into stylecustomizingtable(StyleName,
																			 Selectedlogopath,
																			 imageName,
																			 LogoName,
																			 LogoHeight,
																			 LogoWidth,
																			 WelcomeColor, 
																			 footercolor,
																			 buttoncolor,
																			 buttonhovercolor,
																			 linkcolor)
																			 
																			 Values(
																			 "' . $this->SanitizeForSQL($this->connection,$style_Name) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$select_your_logo) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$select_your_logoname) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$logo_name) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$logo_height) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$logo_width) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$welcome_color) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$footer_color) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$button_color) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$hover_color) . '",
																			 "' . $this->SanitizeForSQL($this->connection,$link_color) . '"
																			 
																				)';
																			
												 
		$result=mysqli_query($this->connection,$qry);		
		if(!$result || mysqli_num_rows($result) <= 0)
        { 
				$Result1 = mysqli_query($this->connection,$inserttocustomizeyourstyle);		
				if(!$Result1)
				{
				  error_log("Error in Inserting the records");	
				  mysqli_close($this->connection);
				  return false;
				}
				else
				{ 
					mysqli_close($this->connection);
					return "inserted";
				}	
        }else
			{	
				$update_query = 'update stylecustomizingtable set
											StyleName = "'.$this->SanitizeForSQL($this->connection,$style_Name).'",
											Selectedlogopath = "'.$this->SanitizeForSQL($this->connection,$select_your_logo).'",
											imageName = "'.$this->SanitizeForSQL($this->connection,$select_your_logoname).'",
											LogoName = "'.$this->SanitizeForSQL($this->connection,$logo_name).'",
											LogoHeight = "'.$this->SanitizeForSQL($this->connection,$logo_height).'",
											LogoWidth = "'.$this->SanitizeForSQL($this->connection,$logo_width).'",
											WelcomeColor = "'.$this->SanitizeForSQL($this->connection,$welcome_color).'",
											footercolor = "'.$this->SanitizeForSQL($this->connection,$footer_color).'",
											buttoncolor = "'.$this->SanitizeForSQL($this->connection,$button_color).'",
											buttonhovercolor = "'.$this->SanitizeForSQL($this->connection,$hover_color).'",
											linkcolor = "'.$this->SanitizeForSQL($this->connection,$link_color).'"					
											where
											id = "'.$this->SanitizeForSQL($this->connection,$select_style_Id).'"';
				
							$result = mysqli_query($this->connection,$update_query);
							if(!$result)
							{
								mysqli_close($this->connection);
								return false;
							}
							else
							{
								mysqli_close($this->connection);
								return "updated";
							}
						
				
			}
								
		
	}
	
	/* storing uploaded image to perticular folder */
	
	function moveuploadedfile($tmp_name, $uploads_dir)
	{
			if(!$this->DBLogin())
			{
			  $this->HandleError("Database login failed!");
			  return false;
			}
			if(move_uploaded_file($tmp_name, $uploads_dir))
			{
				error_log("done");
			}else
			{
				error_log("not done");
			}
	}
	
	/* fetching style names from database */
	
	function SelectStyles()					
	{
				if(!$this->DBLogin())
			{
			  $this->HandleError("Database login failed!");
			  return false;
			}
			$qry="select * from stylecustomizingtable";																 
			$result=mysqli_query($this->connection,$qry);	
			$ar=[];
	if(!$result || mysqli_num_rows($result) <= 0)
        {
           mysqli_close($this->connection);
           return false;
        
        }  else 
        {
          while($row = mysqli_fetch_assoc($result))
          {
              array_push($ar, $row);  
          }
		  return $ar;      
		}
	}
	
	/* fetching style data from database */
	
  function customizedstyle($styleId)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		$qry = "select * from stylecustomizingtable where id={$styleId}";
		//error_log($qry);
		$result = mysqli_query($this->connection,$qry);
		if(!$result || mysqli_num_rows($result) <= 0)
		{
			mysqli_close($this->connection);
			return false;
		}
		$ar= [];
		while($row = mysqli_fetch_assoc($result))
		{
			array_push($ar, $row);  
		}
		mysqli_close($this->connection);
		return $ar;
	}
	
	 
	 
	 
	/*  copy style codes */
	 
	 function addedstylename($newstylename)
	{
		if(!$this->DBLogin())
        {
            $this->HandleError("Database login failed!");
            return false;
        }
		$qry = "select * from stylecustomizingtable where StyleName='{$newstylename}'";
		error_log($qry);
		$result = mysqli_query($this->connection,$qry);
		if(!$result || mysqli_num_rows($result) <= 0)
		{
			mysqli_close($this->connection);
			return "Notexist";
		}else
		{
			mysqli_close($this->connection);
			return "Exist";
		}
	
		
	}
	
}

?>