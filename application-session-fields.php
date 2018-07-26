<?php

if(isset($_SESSION['Selectedlogopath']))
   {
     $Selectedlogopath=$_SESSION['Selectedlogopath'];
   } else
   {
     $Selectedlogopath=''; 
   }
   
if(isset($_SESSION['LogoHeight']))
   {
     $LogoHeight=$_SESSION['LogoHeight'];
   } else
   {
     $LogoHeight=''; 
   }
   
 if(isset($_SESSION['LogoWidth']))
   {
     $LogoWidth=$_SESSION['LogoWidth'];
   } else
   {
     $LogoWidth=''; 
   }
   
 if(isset($_SESSION['WelcomeColor']))
   {
     $WelcomeColor=$_SESSION['WelcomeColor'];
   } else
   {
     $WelcomeColor=''; 
   }
 if(isset($_SESSION['footercolor']))
   {
     $footercolor=$_SESSION['footercolor'];
   } else
   {
     $footercolor=''; 
   }
 if(isset($_SESSION['buttoncolor']))
   {
     $buttoncolor=$_SESSION['buttoncolor'];
   } else
   {
     $buttoncolor=''; 
   } 
   
 if(isset($_SESSION['buttonhovercolor']))
   {
     $buttonhovercolor=$_SESSION['buttonhovercolor'];
   } else
   {
     $buttonhovercolor=''; 
   }
   
 if(isset($_SESSION['linkcolor']))
   {
     $linkcolor=$_SESSION['linkcolor'];
   } else
   {
     $linkcolor=''; 
   }
?>