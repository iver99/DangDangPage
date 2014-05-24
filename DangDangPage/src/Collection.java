// default package



/**
 * Collection entity. @author MyEclipse Persistence Tools
 */

public class Collection  implements java.io.Serializable {


    // Fields    

     private Integer id;
     private Integer bookId;
     private Integer userId;


    // Constructors

    /** default constructor */
    public Collection() {
    }

    
    /** full constructor */
    public Collection(Integer bookId, Integer userId) {
        this.bookId = bookId;
        this.userId = userId;
    }

   
    // Property accessors

    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getBookId() {
        return this.bookId;
    }
    
    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public Integer getUserId() {
        return this.userId;
    }
    
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
   








}