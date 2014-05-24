package com.iver99.vo;

public class User {
	private int userId;
	private String loginName;
	private String password;
	private String email;
	//private Order order;
	//private Info info;
	/**
	 * 无参构造器
	 * @return
	 */
	public User(){}
	/**
	 * 有参构造器
	 * @return
	 */
	public User(int userId, String loginName, String password, String email) {
		
		this.userId = userId;
		this.loginName = loginName;
		this.password = password;
		this.email = email;
	}
	
	public int getUserId() {
		return userId;
	}
	
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	/*public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Info getInfo() {
		return info;
	}
	public void setInfo(Info info) {
		this.info = info;
	}*/

}
