<%-- 
    Document   : Cookie
    Created on : 2017/03/02, 20:23:36
    Author     : enomo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "javax.servlet.http.Cookie"%>
<%@page import= "java.util.Date"%>
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
    
   
    //クッキーを格納する配列を作成
    Cookie cs[] = request.getCookies();
    
    //クッキーの記録があるかを判別して表示
    if(cs !=null){
        for(int i=0;i<cs.length;i++){
            if(cs[i].getName().equals("lastLogin")){
                out.print("前回ログインは"+cs[i].getValue());
            break;
                }
            }    
    }
    
     //ラストログインに追加するクッキーを作成    
    Cookie c = new Cookie("lastLogin",time.toString());
    
     //クッキーを追加
    response.addCookie(c);
   
    %>    
    </body>
</html>
