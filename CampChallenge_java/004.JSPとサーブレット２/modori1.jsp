<%-- 
    Document   : modori1
    Created on : 2017/02/08, 13:44:28
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
    String name(){
      return"正しく実行できませんでした";
      }      
    String birthday(){
      return"正しく実行できませんでした";
      }        
    String profile(){
      return"正しく実行できませんでした";
      }       
          
    //名前を表示するメソッド
    String name(boolean a){
          if (a==true){
            return"この処理は正しく実行できました";}
          else return"正しく実行できませんでした";
    }
    //誕生日を表示するメソッド
    String birthday(boolean b){
    if (b==true){
            return"この処理は正しく実行できました";}
          else return"正しく実行できませんでした";
    }
    //自己紹介を表示するメソッド
    String profile(boolean c){
    if (c==true){
            return"この処理は正しく実行できました";}
          else return"正しく実行できませんでした";
    }
    
    
%>
        <% 
         
       
            
            for(int i=0;i<5;i++){
            
            out.println(name(true));%><br><%
           
            out.println(birthday());%><br><%
            out.println(profile(true));%><br><%
            
            }
            

        
        
        %>
        
    </body>
</html>
