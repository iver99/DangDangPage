package com.iver99.action;

import com.iver99.dao.RegisterDao;
import com.iver99.dao.impl.RegisterDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	private String email;
	private String loginName;
	private String password;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		/**测试信息*/
		System.out.println("*******"+email+" "+loginName+" "+password+"***********");
		
		
		RegisterDao registerDao=new RegisterDaoImpl();
		if(registerDao.register(loginName, password, email)== "success")
			return SUCCESS;
		else
			return ERROR;
	}
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	

}
