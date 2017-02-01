<%-- 
    Document   : basic2-2
    Created on : 2017/02/01, 15:54:28
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
        char lan = 'あ';
        
        String mes="";
        switch(lan){
            case 'A':
                mes="英語";
                break;
            case 'あ':
                mes="日本語";
                break;
            
        }
        out.print(mes);
      
        %>
    </body>
</html>
