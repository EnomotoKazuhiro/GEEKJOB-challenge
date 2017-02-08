<%-- 
    Document   : hikisuu-modori1
    Created on : 2017/02/08, 14:37:31
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
        <%!
        String profile(){
           return"idを入力してください";
       
       }
       String profile(int id){
           if(id==19900522){
                return"EnomotoKazuhiro　生年月日：1990年5月22日　住所：千代田区1-1-1";}
           else if(id==19970505){
                return"Monkey.D.Luffy　生年月日：1997年5月5日　住所：新世界サニー号";}
           else if(id==19600522){
                return"庵野 秀明　生年月日：1960年5月22日　住所：山口県宇部市（出生地）";
           }
           
           else return"idが間違っています";
       }
        
        
        %>
        <%
        out.print(profile(19600522));
        
        
        %>
        
        
    </body>
</html>
