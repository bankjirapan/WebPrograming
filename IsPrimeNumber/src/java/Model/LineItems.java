/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import sit.int303.mockup.model.Product;

/**
 *
 * @author INT303
 */
public class LineItems {

    private Product product;
    private double salePrice;
    private int quantity;

    public LineItems() {
    }

    public LineItems(Product product) {
        //เรียก constracuter ตัวอื่น
       this(product,1);
    }

    public LineItems(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
        this.salePrice = product.getMsrp();
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public double getSalePrice() {
        return salePrice;
    }
    
    public double getTotalPrice(){
        return this.quantity * this.salePrice;
    }

    public void setSalePrice(double salePrice) {
        this.salePrice = salePrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

}
