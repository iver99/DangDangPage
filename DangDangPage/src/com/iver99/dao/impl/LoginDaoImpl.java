package com.iver99.dao.impl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.iver99.dao.LoginDao;
import com.iver99.util.HibernateSessionFactory;
import com.iver99.vo.User;

public class LoginDaoImpl implements LoginDao {

	/**
	 * 用户登陆DAO层登陆验证方法实现
	 */
	@Override
	public String checkLogin(String loginName, String password) {
		// TODO Auto-generated method stub
		Session session = null;
		Transaction tx = null;
		User user = null;

		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();

		

		System.out.println("********" + loginName + password + "*********");
		Query query = session.createQuery("from User where loginName=?");// User不是user切记
		query.setParameter(0, loginName);
		query.setMaxResults(1);
		user = (User) query.uniqueResult();
		tx.commit();
		if (user == null) {
			System.out.println("没有此邮箱");
			return "error";
		}
		/*
		 * else if (user.getPassword() == password) {
		 * 
		 * System.out.println("欢迎回来" + user.getLoginName()); //tx.commit();
		 * return "success"; } else { //tx.commit(); System.out.println("密码错误");
		 * return "passDenied"; }
		 */
		else if (user.getPassword().equals(password)==false) {
			System.out.println("密码错误");
			return "passDenied";
		}

		else {
			System.out.println("welcome!"+user.getLoginName());
			return "success";
		}
	}

}
