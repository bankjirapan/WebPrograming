/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import sit.int303.mockup.model.Product;

/**
 *
 * @author INT303
 */
//Serializable คือการเขียนลง String
public class ShopingCart implements Serializable {
    //<key,value>

    private Map<String, LineItems> cart;

    public ShopingCart() {

        cart = new HashMap();
    }

    public void add(Product p) {
        LineItems line = cart.get(p.getProductCode());

        if (line == null) {
            //รับ Object มา แล้ว put ใส่
            cart.put(p.getProductCode(), new LineItems(p));
        } else {
            line.setQuantity(line.getQuantity() + 1);
        }
    }
     public void remove(Product p) {
     this.remove(p.getProductCode());
    }
     public void remove(String productCode) {
        cart.remove(productCode);
    }
     
     public double getTotalPrice(){
         
         //สร้างตัวแปร Double
         double sum = 0;
         
         //Collection Help inpomrt of java
         Collection<LineItems> lineItems = cart.values();
         
         //Loop for 
         for (LineItems lineItem : lineItems) {
             sum+=lineItem.getTotalPrice();
         }
        return sum;
     }  
     
      public int getTotalQuantity(){
         int sum = 0;
         //Correction เป็น Super class ของ list
         Collection<LineItems> lineItems = cart.values();
         for (LineItems lineItem : lineItems) {
             sum+=lineItem.getQuantity();
         }
        return sum;
     } 
      
      
      public List<LineItems> getLineItems(){
          return new ArrayList(cart.values());
      }

}
