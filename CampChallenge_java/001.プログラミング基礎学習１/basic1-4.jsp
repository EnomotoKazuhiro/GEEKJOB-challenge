<%-- 
    Document   : basic1-4
    Created on : 2017/02/01, 11:06:57
    Author     : enomo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
final String msg ="計算結果："; 
final int x = 10;
int a = 5;
int b = 3;
int c = 2;

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
      
      out.print(msg+(a+b+c)*x);
      
      
      %>  
        
        
        
        
    </body>
</html>
