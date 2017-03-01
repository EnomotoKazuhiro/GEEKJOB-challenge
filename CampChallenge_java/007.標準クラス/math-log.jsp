<%-- 
    Document   : math-log
    Created on : 2017/03/01, 11:40:40
    Author     : enomo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.text.DecimalFormat,java.util.logging.Logger,java.util.Date,java.text.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        
        final Logger logger = Logger.getLogger("sample");
        
        
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日HH時mm分ss秒");
        
        //開始時刻を取得
        Date startDate= new Date(); 
        
            
        double num1 = 123456;
        double num2 = 100000;
        double num3 = -200000;
        double num4 = 1234.56;
        
        double num5 =num4/num1;
        
        DecimalFormat df1 = new DecimalFormat("###,###");
        
        DecimalFormat df2 = new DecimalFormat("###,###.00;(###,###.00)");
        
        DecimalFormat df3 = new DecimalFormat("######%");
        
        DecimalFormat df4 = new DecimalFormat("\u00A4######.##");
        
        
        out.print(df1.format(num1));
        
        out.print("<br>");
        
        out.print(df2.format(num2));
        
        out.print("<br>");
        
        out.print(df2.format(num3));
        
        out.print("<br>");
        
        out.print(df3.format(num4/num1));
        
        out.print("<br>");
        
        out.print(df3.format(num2/num3));
        
        out.print("<br>");
        
        out.print(df4.format(num4));
        
        out.print("<br>");
        
        
        
        
        //終了時刻を取得
        Date endDate = new Date();
        

        File log =new File(application.getRealPath("log.txt"));

        
        //ログファイルに書き込み
        FileWriter fw = new FileWriter(log);
        
        //writeはStringなのでSimpleDateFormatを利用
        fw.write(sdf.format(startDate)+"処理が開始されました。"+"<br>");
        
        fw.write(sdf.format(endDate)+"処理が終了しました。"+"<br>");
        
        fw.close();
        

        //ログファイルを読み込み
        FileReader fr = new FileReader(log);
        
        BufferedReader br = new BufferedReader(fr);

        String str="";
        while((str = br.readLine()) != null){
        out.print(str);
        }
        
        %>
        
    </body>
</html>
