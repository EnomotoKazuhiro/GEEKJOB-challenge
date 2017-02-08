<%-- 
    Document   : modori2
    Created on : 2017/02/08, 14:15:38
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
           if(id==0522){
           return"EnomotoKazuhiro　生年月日：1990年5月22日　住所：千代田区1-1-1";}
           else return"idが間違っています";
       }
       
       
       %>
       <%
       out.print(profile(522));
       
       %>
    </body>
</html>
