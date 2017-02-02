<%-- 
    Document   : basic2-7
    Created on : 2017/02/02, 16:37:52
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
        
        String youso[] = {"10","100","soeda","hayashi","-20","118","END"};
        
        out.print(youso[6]);
        %>
    </body>
</html>
