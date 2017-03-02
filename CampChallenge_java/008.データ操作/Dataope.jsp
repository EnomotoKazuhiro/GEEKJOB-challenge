<%-- 
    Document   : Dataope
    Created on : 2017/03/02, 11:38:41
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
        <form action="./Output.jsp"method="post">
            名前:<input type=""text name="txtName"><br><br>
            
            性別:
            男<input type="radio" name="rdoMale" value="男性">
            女<input type="radio" name="rdoFemale" value="女性"><br><br>
            
            趣味:<textarea name="hobbyText"></textarea><br><br>
            
            <input type="submit" value="送信">
    </body>
</html>
