<%-- 
    Document   : EventAction
    Created on : Apr 13, 2019, 12:07:12 PM
    Author     : Acer
--%>

<%@page import="dbcon.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String edate=request.getParameter("edate");
String ename=request.getParameter("ename");
String desc=request.getParameter("desc");

try{
    Connection con=Dbconnection.getConnection();
 Statement st=con.createStatement();
   int i=st.executeUpdate("insert into event values('"+edate+"','"+ename+"','"+desc+"')");
     if(i>0){
          %>                
<script type="text/javascript">
    window.alert("EVENT CREATED Successfully");
    window.location="Create_Event.jsp";
    </script>
<%
                       
                    }else{
%>                
<script type="text/javascript">
    window.alert("creating event failed");
    window.location="Create_Event.jsp";
    </script>
<%

     }               
                  
}catch(Exception e){
  out.println(e);  
}

%>