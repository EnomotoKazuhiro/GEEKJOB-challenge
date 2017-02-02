<%-- 
    Document   : basic2-8
    Created on : 2017/02/02, 16:52:03
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
        
        youso[2]="33";
        
        out.print(youso[2]);
        %>
    </body>
</html>
