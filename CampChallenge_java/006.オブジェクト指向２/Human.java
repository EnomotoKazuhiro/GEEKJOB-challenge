/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.blackjack;

import java.util.ArrayList;

/**
 *
 * @author enomo
 */

    public abstract class Human {
    
    ArrayList<Integer> myCards= new ArrayList<>();
    
    public abstract int open();//abstractな公開メソッド
    
    public abstract void setCard(ArrayList cards);//ArrayListを引数とした、abstractな公開メソッド
    
   public abstract boolean checkSum();//abstractな公開メソッド
    
    

    
}
