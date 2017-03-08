<%-- 
    Document   : Session
    Created on : 2017/03/04, 11:22:20
    Author     : enomo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "javax.servlet.http.HttpSession,java.util.Date" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
        //現在時刻を取得    
        Date time = new Date();
        
        //セッションを作成する
        HttpSession hs = request.getSession(true);
        
        out.print("最終ログインは"+hs.getAttribute("Lastlogin"));
        
        //セッションをセットする
        hs.setAttribute("Lastlogin", time.toString());
        
        
        
        
        
        
        
        %>
        <h1>Hello World!</h1>
    </body>
</html>
