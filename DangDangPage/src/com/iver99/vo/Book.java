package com.iver99.vo;

import java.util.Date;

public class Book {
	private int bookId;
	private String name;
	private float price;
	private String author;
	private String publish;
	private Date publishTime;
	private int totalPage;
	private int ISBN;
	private String authorSummary;
	private String Catalogue;
	/*private int parentId;
	private int sonId;*/
	private String picture;
	/**
	 * 无参构造器
	 * @return
	 */
	public Book(){}
	/**
	 * 有参构造器
	 * @return
	 */
	
	
	
	public int getBookId() {
		return bookId;
	}
	public Book(int bookId, String name, float price, String author,
			String publish, Date publishTime, int totalPage, int iSBN,
			String authorSummary, String catalogue, String picture) {
		super();
		this.bookId = bookId;
		this.name = name;
		this.price = price;
		this.author = author;
		this.publish = publish;
		this.publishTime = publishTime;
		this.totalPage = totalPage;
		ISBN = iSBN;
		this.authorSummary = authorSummary;
		Catalogue = catalogue;
		this.picture = picture;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public Date getPublishTime() {
		return publishTime;
	}
	public void setPublishTime(Date publishTime) {
		this.publishTime = publishTime;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getISBN() {
		return ISBN;
	}
	public void setISBN(int iSBN) {
		ISBN = iSBN;
	}
	public String getAuthorSummary() {
		return authorSummary;
	}
	public void setAuthorSummary(String authorSummary) {
		this.authorSummary = authorSummary;
	}
	public String getCatalogue() {
		return Catalogue;
	}
	public void setCatalogue(String catalogue) {
		Catalogue = catalogue;
	}
	/*public int getParentId() {
		return parentId;
	}
	public void setParentId(int parentId) {
		this.parentId = parentId;
	}
	public int getSonId() {
		return sonId;
	}
	public void setSonId(int sonId) {
		this.sonId = sonId;
	}*/
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}

}
