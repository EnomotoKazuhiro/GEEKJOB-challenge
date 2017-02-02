<%-- 
    Document   : basic2-3
    Created on : 2017/02/01, 16:40:05
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
long ans=1;    
for(int i=0;i<20;i++){
            ans=ans*8;
            
}
out.print(ans);
%>
    </body>
</html>
