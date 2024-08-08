<%-- 
    Document   : SecretoryAction
    Created on : Apr 12, 2019, 2:59:55 PM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String uname=request.getParameter("uname");

String pass=request.getParameter("pass");
try{
    if(uname.equalsIgnoreCase("secretory")&&pass.equalsIgnoreCase("secretory")){
     %>                
<script type="text/javascript">
    window.alert("Login SuccessFully");
    window.location="SecretoryHome.jsp";
    </script>
<%   
    }else{
%>                
<script type="text/javascript">
    window.alert("Login SuccessFully");
    window.location="Hoseowner.jsp";
    </script>
<%
}
    
}catch(Exception e){
    out.println(e);
}
%>