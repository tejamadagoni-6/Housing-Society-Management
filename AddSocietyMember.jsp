<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Housing Society Management</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="css/overwrite.css">
	<link href="css/animate.min.css" rel="stylesheet"> 
	<link href="css/style.css" rel="stylesheet" />	
  <style>
            table
            {
                margin-bottom:200px;
                margin-left:500px;
            }
            table tr {
    background: whitesmoke;
    color:green;
    text-align: center;
    height:40px;
    margin-left:50px;
}
            
        </style>
  </head>
  <body>	
	<header id="header">
        <nav class="navbar navbar-fixed-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html">Housing Society Management</a>
                </div>				
                <div class="collapse navbar-collapse navbar-right">
                    <ul class="nav navbar-nav">
                        <li><a href="AdminHome.jsp">Home</a></li>
                        <li class="active"><a href="AddSocietyMember.jsp">Add Society Member</a></li>
                        <li><a href="societyBillAmount.jsp">Society  Bill Amount</a></li>
                        <li><a href="PendingBills.jsp">Pending Bills</a></li>
                        <li><a href="index.html">Logout</a></li>
                                               
                    </ul>
                </div>
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->	
<!--/#about-slider-->
	</div><!--/#slider-->
	
	<div id="feature">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h3>ADD Society Member</h3>
                                        <form name="add" action="AddMember" method="post" enctype="multipart/form-data">
                                        <table>
                                            <tr><td>Fast Name</td><td><input type="text" name="fname" required=""></td></tr>
                                           <tr><td>Last Name</td><td><input type="text" name="lname" required=""></td></tr>
                                           <tr><td>Email ID</td><td><input type="text" name="email" required=""></td></tr>
                                           <tr><td>Mobile Number</td><td><input type="text" name="Mobile" required=""></td></tr>
                                           <tr><td>Gender</td><td><select  name="gender" >
                                                       <option value="Male">Male</option>
                                                       <option value="FeMale">FeMale</option>
                                                       <option value="Others">Others</option>
                                                   </select>
                                               </td></tr>
                                               <tr><td>Age</td><td><input type="number" name="age" required=""></td></tr>
                                           <tr><td>Occupation</td><td><input type="text" name="occupation" required=""></td></tr>
                                       <tr><td>Monthly Income</td><td><input type="text" name="income" required=""></td></tr>
                                       
                                        <tr><td>Residential Address</td><td><input type="text" name="raddress" required=""></td></tr>
                                        <tr><td>Flat Number</td><td><input type="text" name="flatnumber" required=""></td></tr>
                                        <tr><td>User Name</td><td><input type="text" name="username" required=""></td></tr>
                                         <tr><td>Select Image</td><td><input type="file" name="image" required=""></td></tr>
                                        <tr><td><input type="submit" value="Add Society Member"></td><td><input type="Reset"></td></tr>
                                        </table>
                                        </form>
                                        	</div>
				
				
				
				</div>
	</div>
	
		<div class="text-center">
			<div class="copyright">
				&copy; 2019 <a target="_blank" href="#" title="Free Twitter Bootstrap WordPress Themes and HTML templates">Venkatarao Ganipisetty</a>. All Rights Reserved.
			</div>
            
		</div>									
	</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-2.1.1.min.js"></script>		
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>	
	<script src="js/parallax.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery.easing.min.js"></script>
	<script type="text/javascript" src="js/fliplightbox.min.js"></script>
	<script src="js/functions.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>	
  </body>
</html>