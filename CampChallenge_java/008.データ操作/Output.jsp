<%-- 
    Document   : input
    Created on : 2017/03/02, 11:59:47
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
        //受け取るパラメータの文字コード
        request.setCharacterEncoding("UTF-8");
        
        //データを取得
        String n = request.getParameter("txtName");
        
        String m = request.getParameter("rdoMale");
        
        String fm = request.getParameter("rdoFemale");
        
        String ho = request.getParameter("hobbyText");
        

        out.print("名前："+n+"<br>");

        if(m !=null && fm==null){
            out.print("性別："+ m +"<br>");}
        else if(fm !=null && m==null){
            out.print("性別："+ fm +"<br>");
        }
        else
            out.print("性別を入力し直してください。"+"<br>");
        
        out.print("趣味："+ho +"<br>");

        %>
    </body>
</html>
