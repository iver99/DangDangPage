package com.iver99.dao.impl;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.iver99.dao.RegisterDao;
import com.iver99.util.HibernateSessionFactory;
import com.iver99.util.RandomID;
import com.iver99.vo.User;

public class RegisterDaoImpl implements RegisterDao{

	@Override
	public String register(String loginName, String password, String email) {
		// TODO Auto-generated method stub
		Session session=null;
		Transaction tx=null;
		User user=null;
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		user=new User();
		user.setEmail(email);
		//user.setInfo(null);
		user.setLoginName(loginName);
		//user.setOrder(null);
		user.setPassword(password);
		
		session.save(user);
		tx.commit();
		/******test data******/
		System.out.println("******user对象已保存*******");
		HibernateSessionFactory.closeSession();
		
		return "success";
	}
	

}
