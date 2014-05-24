package com.iver99.vo;

public class Info {
	
	private int userId;
	private String name;
	private String sex;
	private int age;
	private String address;
	private int phone;
	private User user;
	/**
	 * 无参构造器
	 */
	public Info(){}
	/**
	 * 有参构造器
	 * @param userId
	 * @param name
	 * @param sex
	 * @param age
	 * @param address
	 * @param phone
	 */
	public Info(int userId, String name, String sex, int age, String address,
			int phone) {
		super();
		this.userId = userId;
		this.name = name;
		this.sex = sex;
		this.age = age;
		this.address = address;
		this.phone = phone;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	
}
