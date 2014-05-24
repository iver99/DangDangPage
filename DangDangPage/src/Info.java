// default package



/**
 * Info entity. @author MyEclipse Persistence Tools
 */

public class Info  implements java.io.Serializable {


    // Fields    

     private Integer userId;
     private User user;
     private String name;
     private Integer age;
     private String sex;
     private String address;
     private Integer phone;


    // Constructors

    /** default constructor */
    public Info() {
    }

	/** minimal constructor */
    public Info(User user) {
        this.user = user;
    }
    
    /** full constructor */
    public Info(User user, String name, Integer age, String sex, String address, Integer phone) {
        this.user = user;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.address = address;
        this.phone = phone;
    }

   
    // Property accessors

    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public Integer getAge() {
        return this.age;
    }
    
    public void setAge(Integer age) {
        this.age = age;
    }

    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
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