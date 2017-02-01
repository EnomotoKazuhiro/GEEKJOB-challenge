<%-- 
    Document   : basic1-5
    Created on : 2017/02/01, 11:24:33
    Author     : enomo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

int a = 2;

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
      if(a==1){//aが1のとき
        out.println("1です！");          
    
    }else if(a==2){
        out.println("プログラミングキャンプ！");
    
    }else{
        out.println("その他です！");
        }
      
      %>  
    </body>
</html>
