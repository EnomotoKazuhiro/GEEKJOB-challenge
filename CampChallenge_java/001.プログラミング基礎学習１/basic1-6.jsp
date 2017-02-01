<%-- 
    Document   : basic1-6
    Created on : 2017/02/01, 11:50:20
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
        //クエリストリング
        String product = request.getParameter("pro1"); 
        String price = request.getParameter("pro2"); 
        String amount = request.getParameter("pro3");   

        //文字を数字に変換：String型⇒int型
        int a =Integer.parseInt(product);
        int b =Integer.parseInt(price);    
        int c =Integer.parseInt(amount);    
        
        //商品種別条件振り分け
        if(a==1){
            out.println("商品種別：雑貨　");      
        
        }else if(a==2){
            out.println("商品種別：生鮮食品　");
        
        }else if(a==3){
            out.println("商品種別：その他　");
        }
        
        
        
        
        
        out.println("総額："+price+"円　");
        out.println("個数："+amount+"個　");
        
        
        
        out.println("一個当たりの金額："+b/c+"円　");
        
        
        //ポイント条件振り分け
        if(b>=5000){
            out.println(b*0.05+"ポイント");
        
        }else if(b>=3000){
            out.println(b*0.04+"ポイント");
            
        }else {
            out.println("0ポイント");
            }
        
        
           
        
        %>
    
    </body>
</html>

        