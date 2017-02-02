<%-- 
    Document   : basic2-4
    Created on : 2017/02/02, 11:04:25
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
        <%//for文を用いてAを30個連結する処理
        char str ='A';
        for(int i=0;i<30;i++){
            out.print(str);
        }
       
        
        %>
    </body>
</html>
