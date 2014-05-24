// default package

import java.util.HashSet;
import java.util.Set;


/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User  implements java.io.Serializable {


    // Fields    

     private Integer userId;
     private String loginName;
     private String password;
     private String email;
     private Set orders = new HashSet(0);
     private Set infos = new HashSet(0);


    // Constructors

    /** default constructor */
    public User() {
    }

    
    /** full constructor */
    public User(String loginName, String password, String email, Set orders, Set infos) {
        this.loginName = loginName;
        this.password = password;
        this.email = email;
        this.orders = orders;
        this.infos = infos;
    }

   
    // Property accessors

    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getLoginName() {
        return this.loginName;
    }
    
    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return this.email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public Set getOrders() {
        return this.orders;
    }
    
    public void setOrders(Set orders) {
        this.orders = orders;
    }

    public Set getInfos() {
        return this.infos;
    }
    
    public void setInfos(Set infos) {
        this.infos = infos;
    }
   








}