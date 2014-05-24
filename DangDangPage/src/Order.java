// default package



/**
 * Order entity. @author MyEclipse Persistence Tools
 */

public class Order  implements java.io.Serializable {


    // Fields    

     private Integer orderId;
     private User user;
     private Float totalPrice;
     private String address;
     private Integer phone;


    // Constructors

    /** default constructor */
    public Order() {
    }

    
    /** full constructor */
    public Order(User user, Float totalPrice, String address, Integer phone) {
        this.user = user;
        this.totalPrice = totalPrice;
        this.address = address;
        this.phone = phone;
    }

   
    // Property accessors

    public Integer getOrderId() {
        return this.orderId;
    }
    
    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public Float getTotalPrice() {
        return this.totalPrice;
    }
    
    public void setTotalPrice(Float totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getAddress() {
        return this.address;
    }
    
    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getPhone() {
        return this.phone;
    }
    
    public void setPhone(Integer phone) {
        this.phone = phone;
    }
   








}