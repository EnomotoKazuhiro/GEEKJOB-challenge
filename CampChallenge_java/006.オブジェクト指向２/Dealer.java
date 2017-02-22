/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.blackjack;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

/**
 *
 * @author enomo
 */
public class Dealer extends Human {//Humanクラスを継承してDealerクラスを定義 {
    
    ArrayList<Integer> cards = new ArrayList<>();
    
    public Dealer(){
    
    //ディーラー用にmyCardsを初期化
    ArrayList<Integer> myCards= new ArrayList<>();    
     

    //マーク４種類分
    for(int j=0;j<4;j++){
    
    //13枚カードを持たせる
    for(int i=1;i<14;i++){
    cards.add(i);
    
    }
    }
    
    //カードをシャッフル
    Collections.shuffle(cards);
    
    }
    
    public ArrayList<Integer> deal(){//cardsからランダムで2枚のカードをALにして返却するメソッド
   
        ArrayList<Integer> dealCards = new ArrayList<>();
       
        for(int i=0;i<2;i++){
           dealCards.add(cards.get(0));
           cards.remove(0);
        }
   
        return dealCards;
    
    }
    
    public ArrayList<Integer> hit(){////cardsからランダムで1枚のカードをALにして返却するメソッド
    
        ArrayList<Integer> hitCard = new ArrayList<>();
        
        hitCard.add(cards.get(0));
        cards.remove(0);
        
        return hitCard;
    }
    
    @Override
    public void setCard(ArrayList cards){
    
        //myCardsにカードを追加
        myCards.addAll(cards);
    }
    
    
    
    @Override
    public boolean checkSum(){
        
        //合計値を初期化
        Integer sum = 0;
        
        
        //myCardの数字を合計する
        for(Integer num:myCards){
            sum += num;
        }
        if(sum<16){
            return true;
            //合計が16以上になるまでカードを引く
        }
        else return false;
    }
    
    public int open(){
    
        int total = 0;
        
        //cardNumはカードの数字
        for(int cardNum:myCards){
            
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
