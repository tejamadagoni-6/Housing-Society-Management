<%-- 
    Document   : UpdateAction
    Created on : Apr 12, 2019, 2:41:35 PM
    Author     : Acer
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dbcon.Dbconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String email=(String)session.getAttribute("email");
String fno = request.getParameter("fno");
        String ftype = request.getParameter("ftype");
        String fmem = request.getParameter("fmem");
                String vname = request.getParameter("vname");
                String noofvehicle = request.getParameter("noofvehicle");
                try{
                    Connection con=Dbconnection.getConnection();
                    Statement st1=con.createStatement();
                    int count=0;
                    ResultSet r=st1.executeQuery("select count(*) from flatdetails where email='"+email+"'and fno='"+fno+"'");
                    while(r.next()){
                     count=r.getInt(1);   
                    }
                    if(count==0){
                    Statement st=con.createStatement();
                    int i=st.executeUpdate("insert into flatdetails value('"+email+"','"+fno+"','"+ftype+"','"+fmem+"','"+vname+"','"+noofvehicle+"','waiting','waiting','waiting','waiting','waiting','waiting','waiting')");
                    if(i>0){
                        %>                
<script type="text/javascript">
    window.alert("Flat Detials Updated Successfully");
    window.location="UpdateDetails.jsp";
    </script>
<%
                       
                    }else{
%>                
<script type="text/javascript">
    window.alert("Updating details failed");
    window.location="UpdateDetails.jsp";
    </script>
<%
}
}else{
%>
<script type="text/javascript">
    window.alert("Already Updated Your Flat Details");
    window.location="UpdateDetails.jsp";
    </script>
<%
}
                }catch(Exception e){
                  out.println(e);  
                }
               
%>