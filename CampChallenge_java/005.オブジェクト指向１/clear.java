/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.object.servlet;

/**
 *
 * @author enomo
 */



/**クリアクラスを作成
 * weight重さ
 * price価格
 * @author enomo
 */
public class clear {
    public int weight;
    public int price;
    
}


/**zeroクラスを継承
 * weight,priceに0をかけてクリアする
 * @author enomo
 */
class zero extends clear{
    public int clearWeight=weight*0;
    public int clearPrice=price*0;
} 
