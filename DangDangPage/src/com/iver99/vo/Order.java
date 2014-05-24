package com.iver99.vo;

public class Order {

	private int orderId;
	private int UserId;
	private float totalPrice;
	private String address;
	private int phone;
	private User user;
	/**
	 * 无参构造器 
	 */
	public Order(){}
	/**
	 * 有参构造器
	 * @param orderId
	 * @param userId
	 * @param totalPrice
	 * @param address
	 * @param phone
	 */
	public Order(int orderId, int userId, float totalPrice, String address,
			int phone) {
		super();
		this.orderId = orderId;
		UserId = userId;
		this.totalPrice = totalPrice;
		this.address = address;
		this.phone = phone;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
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
