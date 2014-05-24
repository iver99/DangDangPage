package com.iver99.dao;

public interface RegisterDao {
	/**
	 * 注册方法DAO层接口
	 * @param loginName
	 * @param password
	 * @param email
	 * @return
	 */
	public String register(String loginName,String password,String email);

}
