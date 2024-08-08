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
                        <li class="active"><a href="SocietyHome.jsp">Home</a></li>
                        <li><a href="UpdateDetails.jsp">Update Details</a></li>
                        <li><a href="ViewBill.jsp">View Bill</a></li>
                     
                        <li><a href="ViewEvents.jsp">View Events</a></li>
                        <li><a href="societyMember.jsp">Logout</a></li>                       
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
                                    
<%String email=(String)session.getAttribute("email");%>
<h3>UPDATE DETAILS</h3>
<form action="UpdateAction.jsp"  method="post">
    <table>
        <tr><th>FLAT NO<th>
                                <%try{
                                    Connection con=Dbconnection.getConnection();
                    Statement st1=con.createStatement();
                    ResultSet r=st1.executeQuery("select * from member where email='"+email+"'");
                    while(r.next()){
                                %>
            <td><input type="text" name="fno" value="<%=r.getString("flatnumber")%>" readonly=""></td>               
                                <%}
}catch(Exception e){
out.println(e);
}%>
                <tr>  
     <tr><th>FLAT TYPE<th><td><select name="ftype" required="">
                          <option></option>
                          <option value="1">Single BedRoom</option>
                          <option value="2">Double BedRoom</option>
                          <option value="3">Triple BedRoom</option>
                          <option value="other">Other</option>
          </select><tD><tr>

  <tr><th>FAMILY MEMBERS<th><td><input type="number" name="fmem" required=""><tD><tr> 
              <tr><th>VEHICLE<th><td><select name="vname" required="">
                          <option></option>
                          <option value="2">Two Wheeler</option>
                          <option value="4">Four Wheeler</option>
          </select><tD><tr>
 <tr><th>NUMBER OF VEHICLE<th><td><input type="number" name="noofvehicle" required=""><tD><tr> 
     <tr><th><th><td><input type="submit" value="UPDATE"><tD><tr> 
  
                   
    </table>
    </form>


				</div>
				
				
				
				</div>
	</div>
	
		
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