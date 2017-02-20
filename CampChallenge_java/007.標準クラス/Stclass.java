/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package St.packege;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Dateを使うためにimport
import java.util.*;

/**
 *
 * @author enomo
 */
public class Stclass extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        //Dateクラスを作成
        Date date=new Date();
        
        //Calendarクラスを作成
        Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        int yy =cal.get(Calendar.YEAR);
        int mm =cal.get(Calendar.MONTH)+1;
        int dd =cal.get(Calendar.DAY_OF_MONTH);
        int h1 =cal.get(Calendar.HOUR);
        int h2 =cal.get(Calendar.HOUR_OF_DAY);
        int m  =cal.get(Calendar.MINUTE);
        int s  =cal.get(Calendar.SECOND);
        
        
        
        
        //2016年1月1日0時0分0秒のタイムスタンプの作成
        Calendar AAA = Calendar.getInstance();
        AAA.set(2016, 1, 1, 0, 0, 0);
        Date class1=AAA.getTime();
        
        
        
        
        //課題タイムスタンプの表示
        /*
        2016年11月4日 10時0分0秒のタイムスタンプを作成し、
        「年-月-日 時:分:秒」で表示してください。
        */
        Calendar BBB = Calendar.getInstance();
        BBB.set(2016,11,4,10,0,0);
        Date class2=BBB.getTime();
        
        
        Calendar cal1 = Calendar.getInstance();
        cal1.setTime(class2);
        int yy2 =cal1.get(Calendar.YEAR);
        int mm2 =cal1.get(Calendar.MONTH);
        int dd2 =cal1.get(Calendar.DAY_OF_MONTH);
        int h12 =cal1.get(Calendar.HOUR);
        int h22 =cal1.get(Calendar.HOUR_OF_DAY);
        int m2  =cal1.get(Calendar.MINUTE);
        int s2  =cal1.get(Calendar.SECOND);
        
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Stclass</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>"+date+"</h1>");
            
            
            //課題：現在日時の表示
            out.println("課題：現在日時の表示<br>");
            out.println(yy+"年"+mm+"月"+dd+"日"+h1+"時"+m+"分"+s+"秒");//12時間表記
            out.println("<br>"+yy+"年"+mm+"月"+dd+"日"+h2+"時"+m+"分"+s+"秒<br>");//24時間表記
            
            out.println("<br>課題：タイムスタンプの作成");
            out.println("<br>TimeStamp型"+class1.getTime()+"<br>");//課題：タイムスタンプの作成
            
            
            //課題：タイムスタンプの表示
            out.println("<br>タイムスタンプの表示");
            out.println("<br>"+yy2+"年"+mm2+"月"+dd2+"日"+h22+"時"+m2+"分"+s2+"秒");//24時間表記
            
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
