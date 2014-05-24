package com.iver99.vo;

public class Collection {
	private int id;
	
	private int userId;
	private int bookId;
	
	/**
	 * 无参构造器
	 */public Collection(){}
	/**
	 * 有参构造器
	 * @param userId
	 * @param bookId
	 */
	public Collection(int id,int userId, int bookId) {
		super();
		this.id=id;
		this.userId = userId;
		this.bookId = bookId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	
}
