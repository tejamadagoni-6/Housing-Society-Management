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
                        <li><a href="AdminHome.jsp">Home</a></li>
                        <li><a href="AddSocietyMember.jsp">Add Society Member</a></li>
                        <li><a href="societyBillAmount.jsp">Society  Bill Amount</a></li>
                        <li class="active"><a href="PendingBills.jsp">Pending Bills</a></li>
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
					<h3>PENDING BILL DETAILS</h3>
                                        <table>
                                            <tr>
                                            <th>FLAT NO</th>
                                              <th>FLAT MAINTENANCE</th>
                                            <th>VEHICLE MAINTENANCE</th>
                                            <th>WATER BILL</th>
                                            <th>PARKING BILL</th>
                                            <th>EVENT FUND</th>
                                              <th>MONTH</th><th>TOTAL</th><th>BILL STATUS</th>
                                                 </tr>
                                            <%
                                         
                    try{
                   Connection con=Dbconnection.getConnection();
                    Statement st=con.createStatement();
                    ResultSet r=st.executeQuery("select * from flatdetails WHeRE status='waiting'");
                    int alltotal=0;
                    String fno="";
                    while(r.next()){
             
                         fno=r.getString("fno");
                        String flatmaintenance=r.getString("flatmaintenance");
                         String vehiclemaintenance=r.getString("vehiclemaintenance"); 
String water=r.getString("water");
                         String parking=r.getString("parking"); 
String eventfund=r.getString("eventfund"); 
String month=r.getString("month"); 

int total=Integer.parseInt(flatmaintenance)+Integer.parseInt(vehiclemaintenance)+Integer.parseInt(water)+Integer.parseInt(parking)+Integer.parseInt(eventfund);

alltotal=alltotal+total;

                        %>
                        <tR>
                         <td><%=fno%></td>
                            <td><%=flatmaintenance%></td><td><%=vehiclemaintenance%></td>
                            <td><%=water%></td><td><%=parking%></td>
                            <td><%=eventfund%></td><td><%=month%></tD><td><%=total%></tD>
                            <td><%=r.getString("status")%></td>
                                       </tr>  
                                       
                   <% }%>
                                            
               <tr><td style="border:none;background:none;"></td><td style="border:none;background:none;"></td>
                                           <td style="border:none;background:none;"></td><td style="border:none;background:none;"></td>
                                           <td style="border:none;background:none;"></td>
                                           <td style="border:none;background:none;"></td>
                                           <td style="border:none;background:none;"></td><td><%=alltotal%>RS/-</td></tr>             
                    <%
}catch(Exception e){
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