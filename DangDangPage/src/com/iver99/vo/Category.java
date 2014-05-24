package com.iver99.vo;

public class Category {
	private int catId;
	private String catName;
	private int parentId;
	private int sonId;
	/**
	 * 无参构造器
	 */
	public Category(){}
	/**
	 * 有参构造器
	 * @param catId
	 * @param catName
	 * @param parentId
	 * @param sonId
	 */
	public Category(int catId, String catName, int parentId, int sonId) {
		super();
		this.catId = catId;
		this.catName = catName;
		this.parentId = parentId;
		this.sonId = sonId;
	}
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public int getParentId() {
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
	}
	
	

}
