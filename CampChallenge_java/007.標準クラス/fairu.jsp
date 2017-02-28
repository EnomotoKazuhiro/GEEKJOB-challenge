<%-- 
    Document   : fairu
    Created on : 2017/02/20, 18:19:54
    Author     : enomo
--%>

<%@page  contentType="text/html" pageEncoding="UTF-8" import= "java.util.*,java.text.*,java.io.*"%>
<%@page import= "java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
        //課題：「ファイルに自己紹介を書き出し、保存して下さい。」    
            
        File prof=new File(application.getRealPath("profile.txt"));
        
       //上書きモードでオブジェクト生成
        FileWriter fw =new FileWriter(prof);
        
        //上書き書き込み
        fw.write("こんにちは。榎本和弘です。\r\n");
        
        
        //上書きクローズ
        fw.close();
        
        
        
        
        //課題：
        
        
        //
        File prof2=new File(application.getRealPath("profile.txt"));

        FileReader fr = new FileReader(prof);
        
        BufferedReader br = new BufferedReader(fr);
        
        out.print(br.readLine());

        br.close();
        
        %>
    </body>
</html>
