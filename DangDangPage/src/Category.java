// default package



/**
 * Category entity. @author MyEclipse Persistence Tools
 */

public class Category  implements java.io.Serializable {


    // Fields    

     private Integer catId;
     private String catName;
     private Integer parentId;
     private Integer sonId;


    // Constructors

    /** default constructor */
    public Category() {
    }

    
    /** full constructor */
    public Category(String catName, Integer parentId, Integer sonId) {
        this.catName = catName;
        this.parentId = parentId;
        this.sonId = sonId;
    }

   
    // Property accessors

    public Integer getCatId() {
        return this.catId;
    }
    
    public void setCatId(Integer catId) {
        this.catId = catId;
    }

    public String getCatName() {
        return this.catName;
    }
    
    public void setCatName(String catName) {
        this.catName = catName;
    }

    public Integer getParentId() {
        return this.parentId;
    }
    
    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    public Integer getSonId() {
        return this.sonId;
    }
    
    public void setSonId(Integer sonId) {
        this.sonId = sonId;
    }
   








}