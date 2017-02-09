<%-- 
    Document   : hiki-modo2
    Created on : 2017/02/09, 15:10:23
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
            
        
        int[] id=new int[3];
        
        
        
        
        String[] name=new String[3];
            name[0]="榎本和弘";
            name[1]="ハルカ";
            name[2]="ぽん太";
        
        String[] birth=new String[3];
            birth[0]="5/22";
            birth[1]="4/26";
            birth[2]="5/5";
        
        String[] add=new String[3];
            add[0]="岩手県";
            add[2]="ニトリ";
            
     for(int x=0;x<3;x++){
         
       out.print("名前："+name[x]+"　　");
       out.print("誕生日："+birth[x]+"　　");
       out.print("住所："+add[x]+"　　");
       
       %><br><%
       
       if(add[x]==null){
         continue;}
     }

        %>
        
        
        
    </body>
</html>
