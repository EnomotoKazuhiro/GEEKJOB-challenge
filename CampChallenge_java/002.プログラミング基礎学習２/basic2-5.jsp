<%-- 
    Document   : basic2-5
    Created on : 2017/02/02, 11:18:45
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
     <%//for文を利用して、0から100を全部足す処理
     int num=0;
     int ans=0;
     for(int i=0;i<101;i++){
         ans=ans+i;
     }
     out.print(ans);
     
     
     %>
     
    </body>
</html>
