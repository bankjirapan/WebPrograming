/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.jpa.model;

import java.io.Serializable;
import java.util.Date;
import java.util.UUID;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author bankcom
 */
@Entity
@Table(name = "REGISTER")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Register.findAll", query = "SELECT r FROM Register r")
    , @NamedQuery(name = "Register.findByEmail", query = "SELECT r FROM Register r WHERE r.email = :email")
    , @NamedQuery(name = "Register.findByPassword", query = "SELECT r FROM Register r WHERE r.password = :password")
    , @NamedQuery(name = "Register.findByAcruvatekey", query = "SELECT r FROM Register r WHERE r.acruvatekey = :acruvatekey")
    , @NamedQuery(name = "Register.findByRegdate", query = "SELECT r FROM Register r WHERE r.regdate = :regdate")
    , @NamedQuery(name = "Register.findByActivatedate", query = "SELECT r FROM Register r WHERE r.activatedate = :activatedate")})
public class Register implements Serializable {

    private static final long serialVersionUID = 1L;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "EMAIL")
    private String email;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "PASSWORD")
    private String password;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 40)
    @Column(name = "ACRUVATEKEY")
    private String acruvatekey;
    @Column(name = "REGDATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date regdate;
    @Column(name = "ACTIVATEDATE")
    @Temporal(TemporalType.TIMESTAMP)
    private Date activatedate;

    public Register(String email, String password) {
        this.email = email;
        this.password = password;
        this.regdate = new Date();
        this.acruvatekey = UUID.randomUUID().toString().replace("-", "").substring(0, 15);
    }

    public Register() {
    }

    public Register(String email) {
        this.email = email;
    }

    public Register(String email, String password, String acruvatekey) {
        this.email = email;
        this.password = password;
        this.acruvatekey = acruvatekey;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAcruvatekey() {
        return acruvatekey;
    }

    public void setAcruvatekey(String acruvatekey) {
        this.acruvatekey = acruvatekey;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public Date getActivatedate() {
        return activatedate;
    }

    public void setActivatedate(Date activatedate) {
        this.activatedate = activatedate;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (email != null ? email.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Register)) {
            return false;
        }
        Register other = (Register) object;
        if ((this.email == null && other.email != null) || (this.email != null && !this.email.equals(other.email))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "sit.int303.jpa.model.Register[ email=" + email + " ]";
    }

}
