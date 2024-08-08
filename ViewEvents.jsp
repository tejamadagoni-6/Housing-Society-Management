<%@page import="java.sql.ResultSet"%>
<%@page import="dbcon.Dbconnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
        <link href="table.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
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
                        <li><a href="SocietyHome.jsp">Home</a></li>
                        <li><a href="UpdateDetails.jsp">Update Details</a></li>
                        <li><a href="ViewBill.jsp">View Bill</a></li>
                        
                        <li class="active"><a href="ViewEvents.jsp">View Events</a></li>
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
					<h3>EVENT DETAILS</h3>
                                        <table align="center">
                                            <tr>
                                            <th>EVENT DATE</th>
                                              <th>EVENT NAME</th>
                                            <th>DESCRIPTION</th>
                                            
                                            </tr>
                                            <%
                                       String email=(String)session.getAttribute("email");  
                    try{
                   Connection con=Dbconnection.getConnection();
                    Statement st=con.createStatement();
                    ResultSet r=st.executeQuery("select * from event");
                    while(r.next()){
                            %>
                        <tR>
                         <td><%=r.getString("edate")%></td>
                            <td><%=r.getString("ename")%></td><td><%=r.getString("desc")%></td>
                                        </tr>   
                   <% }
                                            
                            
                    } catch(Exception e){
                        out.println(e);
                    }
                    
                                            
                                            
                                            %>
                                        </table>
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