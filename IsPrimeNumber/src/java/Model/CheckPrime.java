/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author INT303
 */
public class CheckPrime {

    private int numberInput;

    public int getNumberInput() {
        return numberInput;
    }

    public boolean CheckPrime() {

        for (int i = 2; i < numberInput; i++) {
            if (numberInput % i == 0) {
                return false;
            }
        }
        return true;
    }

    public void setNumberInput(int numberInput) {
        this.numberInput = numberInput;
    }

    @Override
    public String toString() {
        return "CheckPrime{" + "numberInput=" + numberInput + '}';
    }

}
