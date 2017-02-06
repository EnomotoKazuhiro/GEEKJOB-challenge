<%-- 
    Document   : basic2-10
    Created on : 2017/02/06, 10:31:20
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
            
        //リクエスト
        String number = request.getParameter("NUM");
        
        //String型→int型
        int num =Integer.parseInt(number);
        int count1 =0;
        int count2 =0;
        int count3 =0;
        int count4 =0;
        String other = "";
        
        
        if (num%2 == 0){
            while(num%2 == 0){
               num=num/2;
               count1=count1+1;
               
            }
        }
        if (num%3 == 0){
            while(num%3 == 0){
               num=num/3;
               count2=count2+1;
               
            }
        }
        if (num%5 == 0){
            while(num%5 == 0){
               num=num/5;
               count3=count3+1;
               
                   
            }
        }
        if (num%7 == 0){
            while(num%7 == 0){
                num=num/7;
                count4=count4+1;
            }
        }
        if (num==1){
            
            other="無し";
        }else if (num !=1){
            other=Integer.toString(num);
        }
        
            
       
        out.print(number);
        out.print("　　　2×"+count1+"個、3×"+count2+"個、5×"+count3+"個、7×"+count4+"個");
        out.print("その他の数字"+other);



        
        %>
    </body>
</html>
