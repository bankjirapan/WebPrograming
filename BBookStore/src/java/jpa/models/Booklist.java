/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jpa.models;

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
@Table(name = "BOOKLIST")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Booklist.findAll", query = "SELECT b FROM Booklist b")
    , @NamedQuery(name = "Booklist.findById", query = "SELECT b FROM Booklist b WHERE b.id = :id")
    , @NamedQuery(name = "Booklist.findByBookid", query = "SELECT b FROM Booklist b WHERE b.bookid = :bookid")
    , @NamedQuery(name = "Booklist.findByBookname", query = "SELECT b FROM Booklist b WHERE b.bookname = :bookname")
    , @NamedQuery(name = "Booklist.findByCategory", query = "SELECT b FROM Booklist b WHERE b.category = :category")
    , @NamedQuery(name = "Booklist.findByDiscription", query = "SELECT b FROM Booklist b WHERE b.discription = :discription")
    , @NamedQuery(name = "Booklist.findByPrice", query = "SELECT b FROM Booklist b WHERE b.price = :price")})
public class Booklist implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Integer id;
    @Size(max = 50)
    @Column(name = "BOOKID")
    private String bookid;
    @Size(max = 100)
    @Column(name = "BOOKNAME")
    private String bookname;
    @Size(max = 100)
    @Column(name = "CATEGORY")
    private String category;
    @Size(max = 100)
    @Column(name = "DISCRIPTION")
    private String discription;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "PRICE")
    private Double price;

    public Booklist() {
    }

    public Booklist(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getBookid() {
        return bookid;
    }

    public void setBookid(String bookid) {
        this.bookid = bookid;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDiscription() {
        return discription;
    }

    public void setDiscription(String discription) {
        this.discription = discription;
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
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Booklist)) {
            return false;
        }
        Booklist other = (Booklist) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Controller.Booklist[ id=" + id + " ]";
    }
    
}
