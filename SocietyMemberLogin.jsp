<%-- 
    Document   : newjsp
    Created on : Apr 12, 2019, 11:08:40 AM
    Author     : Acer
--%>

<%@page import="dbcon.Dbconnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

String email=request.getParameter("email");
String password=request.getParameter("password");

   String query="select * from member where email='"+email+"'and password='"+password+"'";
   Connection con=Dbconnection.getConnection();
   Statement st=con.createStatement();
  ResultSet r=st.executeQuery(query);
   if(r.next()){
       session.setAttribute("email",email);
       String pwd=r.getString("password");
       if(pwd.equalsIgnoreCase("waiting")){
           %>
            <script type="text/javascript">
           window.alert("PLEASE SET YOUR PASSWORD BEFORE LOGIN ");
          window.location="societyMember.jsp";
           </script>
           <%
       }
     %>
       <script type="text/javascript">
           window.alert("LOGIN SUCCESSFULLY");
          window.location="SocietyHome.jsp";
           </script>
       <%
   }else{
       %>
       <script type="text/javascript">
           window.alert("please provide correct username/password");
          window.location="societyMember.jsp";  
           </script>
       <%
   }





%>