<%-- 
    Document   : serv2-2
    Created on : 2017/02/07, 17:54:56
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
    //名前を表示するメソッド
    String name(){
    return"榎本和弘";
    }
    //誕生日を表示するメソッド
    String birthday(){
    return"1990/05/22";
    }
    //自己紹介を表示するメソッド
    String profile(){
    return "26歳です";
    }
    
    
%>
        <% 
         
       
            
            for(int i=0;i<10;i++){
            
            out.println(name());%><br><%
           
            out.println(birthday());%><br><%
            out.println(profile());%><br><%
            
            }
            

        
        
        %>
    </body>
</html>
