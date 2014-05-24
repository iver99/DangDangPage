package com.iver99.action;

import com.iver99.dao.LoginDao;
import com.iver99.dao.impl.LoginDaoImpl;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{

	private String loginName;
	private String password;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		
		LoginDao loginDao=new LoginDaoImpl();
		String resultType=loginDao.checkLogin(loginName, password);
		if(resultType=="success"){   
			//正常登陆,把用户加入session
			
			return SUCCESS;
		}else if(resultType=="passDenied"){  
			//密码错误
			return "passDenied";
		}else                             
			//不存在此用户
			return "error";
		
		
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	

	
}
