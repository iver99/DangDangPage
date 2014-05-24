package com.iver99.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.iver99.vo.Category;
import com.iver99.dao.IndexDao;
import com.iver99.util.HibernateSessionFactory;

public class IndexDaoImpl implements IndexDao {

	Session session = null;
	Transaction tx = null;

	@Override
	public List getBookCateList() {
		// TODO Auto-generated method stub
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		Query query = session
				.createQuery("from Category where parentId=1");
		List cate = query.list();
		tx.commit();
		
		HibernateSessionFactory.closeSession();
		return cate;
	}

	@Override
	public List getBookCateListSon() {
		// TODO Auto-generated method stub
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		Query query = session.createQuery("from Category where parentId in (select catId from Category where parentId=1)");
				/*.createQuery("from Category "
						+ "where parentId in " +
						"(select catId from Category where parentId=1");*/
		//Query query = session.createQuery("from User where loginName=?");
		List cate = query.list();
		tx.commit();
		
		HibernateSessionFactory.closeSession();
		return cate;
	}

}
