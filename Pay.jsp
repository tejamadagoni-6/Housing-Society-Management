<%-- 
    Document   : Pay
    Created on : Apr 13, 2019, 11:52:17 AM
    Author     : Acer
--%>

<%@page import="dbcon.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String email=request.getParameter("email");
String fno=request.getParameter("fno");
String month=request.getParameter("month");
try{
Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
 Statement st1=con.createStatement();
                    int count=0;
                    ResultSet r=st.executeQuery("select count(*) from flatdetails where email='"+email+"'and fno='"+fno+"' and status!='waiting' and month='"+month+"'");
                    while(r.next()){
                     count=r.getInt(1);   
                    }
                    if(count==0){
  int i=st1.executeUpdate("update flatdetails set status='Bill Paid' where email='"+email+"'and fno='"+fno+"'"); 
  if(i>0){
      %>                
<script type="text/javascript">
    window.alert("BILL PAID SUCCESSFULLY");
    window.location="ViewBill.jsp";
    </script>
<%
                       
                    }else{
%>                
<script type="text/javascript">
    window.alert("FAILED TO PAYING BILL");
    window.location="ViewBill.jsp";
    </script>
<%
  }
                    }else{
%>                
<script type="text/javascript">
    window.alert("THIS MONTH BILL ALREADY PAID");
    window.location="ViewBill.jsp";
    </script>
<%
}
}catch(Exception e){
 out.println(e);   
}
%>