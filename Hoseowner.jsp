<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbcon.Dbconnection"%>
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
                margin-bottom:500px;
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
                        <li class="active"><a href="index.html">Home</a></li>
                        <li><a href="Admin.jsp">Admin</a></li>
                        <li><a href="societyMember.jsp">Society  Member</a></li>
                        <li><a href="Hoseowner.jsp">Secretory</a></li>
                                               
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
                                   
					<h3>Secretory Member Login</h3>
                                        <form name="login" action="SecretoryAction.jsp" method="post">
                                        <table>
                                            <tr>
                                                <td>UserName</td><td><input type="text" name="uname" required=""></td></tr>
                                            <tr><td>Password</td><td><input type="password" name="pass" required=""></td></tr>
                                            <tr> <td><input type="submit" value="Login"></td><td><input type="reset"></td>
                                                </tr>
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