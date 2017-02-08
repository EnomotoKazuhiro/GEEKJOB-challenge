<%-- 
    Document   : hikisuu1
    Created on : 2017/02/07, 19:58:18
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
            String mes(int num){
                if(num%2 !=0){
                return"奇数です";
                }else return"偶数です"; 
        }
        
        
        %>       
        <%
            
            out.print(mes(5));
      
      
      
      
      %>
        
        
        
   
    </body>
</html>
