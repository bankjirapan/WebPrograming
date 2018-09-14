/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.model;

/**
 *
 * @author INT303
 */
public class SimpleCalculator {
    private int x;
    private int y;
    private String operator;
    
    public int getResult(){
                    switch (operator) {
                case "+":
                    return x + y;
                    
                case "-":
                    return x - y;
                    
                case  "*":
                    return x * y;
                    
                case  "/":
                    return x / y;
                    
                default:
                    return 0;
            }
    }

    @Override
    public String toString() {
        return String.format("<h1> x=%d, y=%d, z=%s %d%s%d=%d</h1>\n", x, y, operator, x, operator, y, getResult());
    }
    
    
    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public SimpleCalculator() {
    }
    
}
