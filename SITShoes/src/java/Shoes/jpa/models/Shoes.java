/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Shoes.jpa.models;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author bankcom
 */
@Entity
@Table(name = "SHOES")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Shoes.findAll", query = "SELECT s FROM Shoes s")
    , @NamedQuery(name = "Shoes.findByShoesid", query = "SELECT s FROM Shoes s WHERE s.shoesid = :shoesid")
    , @NamedQuery(name = "Shoes.findByShoesname", query = "SELECT s FROM Shoes s WHERE s.shoesname = :shoesname")
    , @NamedQuery(name = "Shoes.findByCategory", query = "SELECT s FROM Shoes s WHERE s.category = :category")
    , @NamedQuery(name = "Shoes.findByDescription", query = "SELECT s FROM Shoes s WHERE s.description = :description")
    , @NamedQuery(name = "Shoes.findByPrice", query = "SELECT s FROM Shoes s WHERE s.price = :price")})
public class Shoes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 500)
    @Column(name = "SHOESID")
    private String shoesid;
    @Size(max = 500)
    @Column(name = "SHOESNAME")
    private String shoesname;
    @Size(max = 500)
    @Column(name = "CATEGORY")
    private String category;
    @Size(max = 50)
    @Column(name = "DESCRIPTION")
    private String description;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "PRICE")
    private Double price;

    public Shoes() {
    }

    public Shoes(String shoesid) {
        this.shoesid = shoesid;
    }

    public String getShoesid() {
        return shoesid;
    }

    public void setShoesid(String shoesid) {
        this.shoesid = shoesid;
    }

    public String getShoesname() {
        return shoesname;
    }

    public void setShoesname(String shoesname) {
        this.shoesname = shoesname;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (shoesid != null ? shoesid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Shoes)) {
            return false;
        }
        Shoes other = (Shoes) object;
        if ((this.shoesid == null && other.shoesid != null) || (this.shoesid != null && !this.shoesid.equals(other.shoesid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Shoes.jpa.models.Shoes[ shoesid=" + shoesid + " ]";
    }
    
}
