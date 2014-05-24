package com.iver99.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.iver99.vo.User;

public class SessionProduce {
	
	/**
	 * 产生session对象
	 * @return
	 */
	public static Session getSession()
	{
		Configuration cfg=new Configuration();
		SessionFactory sessionFactory =cfg.configure().buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		
		return session;
	}

}
