<%-- 
    Document   : data5
    Created on : 2017/03/07, 14:56:19
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
        String name = request.getParameter("txtName");
        
        String male = request.getParameter("rdoMale");
        
        String feMale = request.getParameter("rdoFemale");
        
        String hobby = request.getParameter("hobbyText");
        
        
        String men ="";
        
        String women ="";
        
       
        

        //out.print("名前："+n+"<br>");

        if(male !=null && feMale==null){
            out.print("性別："+ male +"<br>");
            men = "checked";
            women = "";
        }
        else if(feMale !=null && male==null){
            out.print("性別："+ feMale +"<br>");
            men = "";
            women = "checked";
        }
        else
            out.print("性別を入力し直してください。"+"<br>");
        
        out.print("趣味："+hobby +"<br>");
        
        HttpSession hs = request.getSession(true);
        
        out.print(hs.getAttribute("txtName"));
        
        
        
        hobby=request.getParameter("hobbyText");
        
        
        

        hs.setAttribute("txtName", name);
        hs.setAttribute("rdoMale", male);
        hs.setAttribute("rdoFemale", feMale);
        hs.setAttribute("hobbyText",hobby);

        
        %>
        
        
        <h1>データ操作課題5</h1>
        
         <form action="./data5.jsp"method="post">
             名前:<input type=""text name="txtName"value="<%=hs.getAttribute("txtName")%>"><br><br>
            
            性別:
            男<input type="radio" name="rdoMale" value="男性"<%=men%>>
            女<input type="radio" name="rdoFemale" value="女性"<%=women%>><br><br>
            
            趣味:<textarea name="hobbyText"><%=hobby%></textarea><br><br>
            
            <input type="submit" value="送信">
        
        
        
    </body>
</html>
