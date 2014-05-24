package com.dd.vo;

import java.util.Date;



public class Book {
	private int id;
	private String bookName;
	private String author;
	private double fixed_price;
	private double dang_price;
	//private int editor_key;
	//private int sale_sum;
	//private int add_time;
	private String publish_time;
	private String publishing;
	//private String book_pic;
	//private int ca_id;
	
	
	public Book() {
		super();
	}
	public Book(int id, String bookName, String author, double fixed_price,
			double dang_price, String publish_time, String publishing) {
		super();
		this.id = id;
		this.bookName = bookName;
		this.author = author;
		this.fixed_price = fixed_price;
		this.dang_price = dang_price;
		this.publish_time = publish_time;
		this.publishing = publishing;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public double getFixed_price() {
		return fixed_price;
	}
	public void setFixed_price(double fixed_price) {
		this.fixed_price = fixed_price;
	}
	public double getDang_price() {
		return dang_price;
	}
	public void setDang_price(double dang_price) {
		this.dang_price = dang_price;
	}
	public String getPublish_time() {
		return publish_time;
	}
	public void setPublish_time(String publish_time) {
		this.publish_time = publish_time;
	}
	public String getPublishing() {
		return publishing;
	}
	public void setPublishing(String publishing) {
		this.publishing = publishing;
	}

	
	
	
	
	
}
