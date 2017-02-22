/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.blackjack;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author enomo
 */
public class BlackJack extends HttpServlet {

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
        
        
        //実際のブラックジャックの流れを書いていく
        
        //ディラーを作成
        Dealer dealer = new Dealer();
        
        //ディーラーに2枚カードを配ってmyCardsに追加
        dealer.setCard(dealer.deal());
        
        
        //ユーザーを作成
        User user = new User();
        
        //ユーザーにディーラーが2枚カードを配ってmyCardsに追加
        user.setCard(dealer.deal());
        
        
        //ユーザー：checkSumがfalseになるまで、hitし続ける
        //＝myCards合計が16以上になるまでカードを引く
        while(user.checkSum()){
            user.setCard(dealer.hit());
        }
        
         //ディーラー：checkSumがfalseになるまで、hitし続ける
        //＝myCards合計が16以上になるまでカードを引く
        while(dealer.checkSum()){
            dealer.setCard(dealer.hit());
        }
            
        //ディーラーとユーザーのカード比較（勝敗決め）
        
        //表示させる文字の初期化
        String output ="";
        
        if(user.open()>21){
            output="LOSE：ユーザーのバースト　ユーザー"+user.open()+"　ディーラー"+dealer.open();
        }
        else if(user.open()<=21 && (user.open()>dealer.open() || dealer.open()>21)){
            output="WIN：ユーザーの勝ち　ユーザー"+user.open()+"　ディーラー"+dealer.open();
        }
        else if(user.open()<dealer.open()){
            output="LOSE：ユーザーの負け　ユーザー"+user.open()+"　ディーラー"+dealer.open();
        }
        else output="引き分け　ユーザー"+user.open()+"　ディーラー"+dealer.open();
        
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BlackJack</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BlackJack at </h1>");
            out.println("ディーラー"+dealer.myCards);
            out.println("ユーザー"+user.myCards);
            out.println(output);
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
