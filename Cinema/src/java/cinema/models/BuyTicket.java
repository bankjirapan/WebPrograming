/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cinema.models;

import java.io.Serializable;

/**
 *
 * @author bankcom
 */
public class BuyTicket  implements Serializable{
    
   private String namecustomer;
   private String movieName;
   private String branch;
   private String theater;

    public BuyTicket() {
    }
   
   
   

    public BuyTicket(String namecustomer, String movieName, String branch, String theater) {
        this.namecustomer = namecustomer;
        this.movieName = movieName;
        this.branch = branch;
        this.theater = theater;
    }
   
   

    public String getNamecustomer() {
        return namecustomer;
    }

    public void setNamecustomer(String namecustomer) {
        this.namecustomer = namecustomer;
    }

    public String getMovieName() {
        return movieName;
    }

    public void setMovieName(String movieName) {
        this.movieName = movieName;
    }

    public String getBranch() {
        return branch;
    }

    public void setBranch(String branch) {
        this.branch = branch;
    }

    public String getTheater() {
        return theater;
    }

    public void setTheater(String theater) {
        this.theater = theater;
    }

   

    
   
    
}
