// default package

import java.util.Date;


/**
 * Book entity. @author MyEclipse Persistence Tools
 */

public class Book  implements java.io.Serializable {


    // Fields    

     private Integer bookId;
     private String name;
     private Float price;
     private String author;
     private String publish;
     private Date publishTime;
     private Integer totalPage;
     private Integer isbn;
     private String authorSummary;
     private String catalogue;
     private Integer parentId;
     private Integer sonId;


    // Constructors

    /** default constructor */
    public Book() {
    }

    
    /** full constructor */
    public Book(String name, Float price, String author, String publish, Date publishTime, Integer totalPage, Integer isbn, String authorSummary, String catalogue, Integer parentId, Integer sonId) {
        this.name = name;
        this.price = price;
        this.author = author;
        this.publish = publish;
        this.publishTime = publishTime;
        this.totalPage = totalPage;
        this.isbn = isbn;
        this.authorSummary = authorSummary;
        this.catalogue = catalogue;
        this.parentId = parentId;
        this.sonId = sonId;
    }

   
    // Property accessors

    public Integer getBookId() {
        return this.bookId;
    }
    
    public void setBookId(Integer bookId) {
        this.bookId = bookId;
    }

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public Float getPrice() {
        return this.price;
    }
    
    public void setPrice(Float price) {
        this.price = price;
    }

    public String getAuthor() {
        return this.author;
    }
    
    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPublish() {
        return this.publish;
    }
    
    public void setPublish(String publish) {
        this.publish = publish;
    }

    public Date getPublishTime() {
        return this.publishTime;
    }
    
    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    public Integer getTotalPage() {
        return this.totalPage;
    }
    
    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getIsbn() {
        return this.isbn;
    }
    
    public void setIsbn(Integer isbn) {
        this.isbn = isbn;
    }

    public String getAuthorSummary() {
        return this.authorSummary;
    }
    
    public void setAuthorSummary(String authorSummary) {
        this.authorSummary = authorSummary;
    }

    public String getCatalogue() {
        return this.catalogue;
    }
    
    public void setCatalogue(String catalogue) {
        this.catalogue = catalogue;
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