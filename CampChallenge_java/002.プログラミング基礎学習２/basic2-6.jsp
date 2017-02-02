<%-- 
    Document   : basic2-6
    Created on : 2017/02/02, 12:55:26
    Author     : enomo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <%
    double num=1000;
    
    while(num>100){
    num=num/2;}
    out.print(num);
    
    %>
    </body>
</html>
