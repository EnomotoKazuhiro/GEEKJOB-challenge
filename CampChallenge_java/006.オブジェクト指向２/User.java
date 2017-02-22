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
public class User extends Human{
    
    public User(){
        
        //ユーザー用にmyCardsを初期化
        ArrayList<Integer> myCards= new ArrayList<>();
    }
    
    
    @Override
    public void setCard(ArrayList cards){
    
        //myCardsにカードを追加
        this.myCards.addAll(cards);
    }
    
    
    
    @Override
    public boolean checkSum(){
        
        //合計値を初期化
        Integer sum = 0;
        
        
        //myCardの数字を合計する
        for(Integer num:this.myCards){
            sum += num;
        }
        if(sum<16){
            return true;
            //合計が16以上になるまでカードを引く
            
        }
        else return false;
    }
    
    @Override
    public int open(){
    
        int total = 0;
        
        //cardNumはカードの数字
        for(int cardNum:this.myCards){
            if(cardNum>10){
                
                //カードがJ,Q,Kの場合
                total += 10;
            }
            else
            //それ以外のカード
            total += cardNum;
            
                }
        return total;
    }
    
    
}
