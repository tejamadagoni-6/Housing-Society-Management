<%-- 
    Document   : BillAction
    Created on : Apr 13, 2019, 9:13:30 AM
    Author     : Acer
--%>

<%@page import="dbcon.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String fno=request.getParameter("fno");

String desc=request.getParameter("desc");
String maitenance=request.getParameter("maitenance");
String Vmain=request.getParameter("Vmain");
String water=request.getParameter("water");
String park=request.getParameter("park");
String event=request.getParameter("event");
String date=request.getParameter("date");
try{
    String quer="select count(*) from flatdetails where fno='"+fno+"' and month='"+date+"'";
    String query="update flatdetails set flatmaintenance='"+maitenance+"',vehiclemaintenance='"+Vmain+"',water='"+water+"',parking='"+park+"',eventfund='"+event+"',month='"+date+"' where fno='"+fno+"'";
  Connection con=Dbconnection.getConnection();
                    Statement st1=con.createStatement();
                    int count=0;
                    ResultSet r=st1.executeQuery(quer);
                    while(r.next()){
                     count=r.getInt(1);   
                    }
                    if(count==0){
                   Statement st=con.createStatement();  
                   int i=st.executeUpdate(query);
                   if(i>0){
                       %>
                       <script type="text/javascript">
                           window.alert("Bill Submitted Successfully");
                           window.location="FlatDetails.jsp";
                           </script>
                       <%
                   }else{
%>
                       <script type="text/javascript">
                           window.alert("Bill Submiting Failed");
                           window.location="FlatDetails.jsp";
                           </script>
                       <%
}
                    }else{
%>
                       <script type="text/javascript">
                           window.alert("This Flat Bill Already Generated");
                           window.location="FlatDetails.jsp";
                           </script>
                       <%
}

                     
}catch(Exception e){
   out.println(e); 
}
%>