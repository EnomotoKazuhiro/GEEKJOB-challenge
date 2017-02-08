<%-- 
    Document   : hikisuu2
    Created on : 2017/02/07, 20:39:05
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
            int result(int a){
                return result(a,5,false);
        }
            
            int result(int a,int b,boolean c){
              int ans=0;  
              ans=a*b;
              if (c==true){
                  ans=ans*ans;
                  
              }else {return ans;}
            
             
                return ans;
        }
        
        
        
        %>
        <%
        out.print(result(2));
        
    
        
        %>
        
        
        
        
    </body>
</html>
