
import Model.LineItems;
import Model.ShopingCart;
import java.util.List;
import sit.int303.mockup.model.Product;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author INT303
 */
public class TestShopingCart {

    public static void main(String[] args) {
        ShopingCart cart = new ShopingCart();
        Product p = new Product();
        p.setProductCode("S19_111");
        p.setProductName("Computer");
        p.setMsrp(100.0);

        cart.add(p);
        cart.add(p);

        p = new Product();

        p.setProductCode("S19_112");
        p.setProductName("Macbook");
        p.setMsrp(15.0);

        cart.add(p);
        cart.add(p);
        cart.add(p);
        
        List<LineItems> lines = cart.getLineItems();
        for (LineItems line : lines) {
            
            System.out.printf("%-8s %-15s %8.2f %2d %10.2f\n",line.getProduct().getProductCode(),line.getProduct().getProductName(),line.getSalePrice(),line.getQuantity(),line.getTotalPrice());
            
        }

        System.out.println("Total price : " + cart.getTotalPrice());
        System.out.println("Total Quantity :" + cart.getTotalQuantity());

        cart.remove("S19_111");
        System.out.println("Total price : " + cart.getTotalPrice());
        System.out.println("Total Quantity :" + cart.getTotalQuantity());
        
        cart.remove(p);
        System.out.println("Total price : " + cart.getTotalPrice());
        System.out.println("Total Quantity :" + cart.getTotalQuantity());
    }

}
