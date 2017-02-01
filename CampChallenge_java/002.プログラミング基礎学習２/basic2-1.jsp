<%-- 
    Document   : basic2-1
    Created on : 2017/02/01, 15:43:18
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
        int num = 5;
        String mes="";
        switch(num){
            case 1:
                mes="one";
                break;
            case 2:
                mes="two";
                break;
            default:
                mes="想定外";
                break;
        }
        out.print(mes);
        
        
        
        
        
        %>
    </body>
</html>
