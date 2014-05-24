package com.iver99.dao;

public interface LoginDao {
	/**
	 * 登陆验证接口
	 * @param username
	 * @param password
	 * @return
	 */
	public String checkLogin(String loginName,String password);

}
