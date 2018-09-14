/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.test;

import java.util.List;
import sit.int303.first.model.LineItem;
import sit.int303.first.model.ShoppingCart;
import sit.int303.mockup.model.Product;

/**
 *
 * @author INT303
 */
public class TestShoppingCart {

    public static void main(String[] args) {
        ShoppingCart cart = new ShoppingCart();
        Product p = new Product();
        p.setProductCode("S10.001");
        p.setProductName("chopper");
        p.setMsrp(100.0);
        cart.add(p);
        cart.add(p);

        p = new Product();
        p.setProductCode("S10.002");
        p.setProductName("cop");
        p.setMsrp(15.0);

        cart.add(p);
        cart.add(p);
        cart.add(p);

        List<LineItem> lines = cart.getLineItems();
        for (LineItem line : lines) {
            System.out.printf("%-8s %-15s %8.2f %2d %10.2f\n", line.getProduct().getProductCode(), line.getProduct().getProductName(), line.getSalePrice(),line.getQuantity(),line.getTotalPrice());
        }
        System.out.println("--------------------------------------------");
        System.out.println("Total Price _ " + cart.getTotalPrice());
        System.out.println("Total Quantity _ " + cart.getTotalQuantity());

        System.out.println("-------------");
        cart.remove("S10.001");
        System.out.println("Total Price _ " + cart.getTotalPrice());
        System.out.println("Total Quantity _ " + cart.getTotalQuantity());

        cart.remove(p);
        System.out.println("-------------");
        System.out.println("Total Price _ " + cart.getTotalPrice());
        System.out.println("Total Quantity _ " + cart.getTotalQuantity());
    }
}
