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
                        <li class="active"><a href="SecretoryHome.jsp">Home</a></li>
                        <li><a href="FlatDetails.jsp">Flat Details</a></li>
                        <li><a href="View_Bill.jsp">View Bill</a></li>
                        
                        <li><a href="Hoseowner.jsp">Logout</a></li>
                                               
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
					<h3>BILL</h3>
                                        <table>
                                      
                                            <%
                                         
                    try{
              
  String email=(String)session.getAttribute("email");                       
String fno=(String)session.getAttribute("fno");
String ftype=(String)session.getAttribute("ftype");
String family=(String)session.getAttribute("family");
String vtype=(String)session.getAttribute("vtype");
String noofvehicle=(String)session.getAttribute("noofvehicle");


int ft=Integer.parseInt(ftype);
int fam=Integer.parseInt(family);
int vt=Integer.parseInt(vtype);
int noof=Integer.parseInt(noofvehicle);



int bcr=0;

if(vt==4){
bcr=150*noof;
}
if(vt==2){
bcr=80*noof;
}

int wtr=0;
if(ft==1){
  wtr=100;  
}else if(ft>=1&&ft<=3){
 wtr=110;   
}else if(ft>=3&&ft<=4){
 wtr=120;   
}else{
    wtr=150;
}
int park=0;
if(vt==2){
  park=50*noof;  
}
if(vt==4){
  park=70*noof;  
}

%>
<center>
    <style>
        table{
            border:none;
        }
        input{
            border:1px solid black;
        }
    </style>
    <form action="BillAction.jsp" method="post">
    <table>   
        <tr><th>FLAT NUMBER  : </th> <td><input type="text" name="fno" value="<%=fno%>" readonly=""></td></tr>
        <tr><th>FLAT TYPE  : </th><td><input type="text" name="ftype" value="<%=ftype%>" readonly="">Bed Room</td></tr>
<tr><th>FAMILY MEMBERS  : </th><td><input type="text" name="family" value="<%=family%>" readonly="">Members</td></tr>
<tr><th>VEHICLE  : </th><td><input type="text" name="vehicle" value="<%=vtype%>" readonly="">wheeler</td></tr>
<tr><th>NO.OF VEHICLE  : </th><td><input type="text" name="noofvehicle" value="<%=noofvehicle%>" readonly="">Only</td></tr>
  
<tr><th>MAINTENANCE</th></tr>
<tr><th>Flat Maintenance</th>
    <%if(ft==1&&fam<=2){%>
    <td><input type="text" name="maitenance" value="150" readonly=""></td>
<%}else if(ft==2&&fam<=4){
%>
    <td><input type="text" name="maitenance" value="250" readonly=""></td>
<%
}else if(ft==3&&fam<=8){
%>
    <td><input type="text" name="maitenance" value="350" readonly=""></td>
<%
}else{%>
 <td><input type="text" name="maitenance" value="550" readonly=""></td>
<%}%>
</tr>
<tr><th>Vehicle Maintenance</th>
    
    <td><input type="text" name="Vmain" value="<%=bcr%>"readonly="" ></td>
 
</tr>
<tr><th>WATER</th>
    <td><input type="text" name="water" value="<%=wtr%>" readonly="" ></td></tr>
<tr><th>PARKING</th>
    <td><input type="text" name="park" value="<%=park%>" readonly="" ></td></tr>
<tr><th>ENTER EVENT FUND</th>
    <td><input type="text" name="event" required=""></td></tr>
<tr><th>MONTH</th>
    <td><input type="date" name="date"  required="" ></td></tr>
<tr><th></th><td><input type="submit" value="SUBMIT"></td></tr>
    </table>
</form>
</center>


<%
                                    
                            
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