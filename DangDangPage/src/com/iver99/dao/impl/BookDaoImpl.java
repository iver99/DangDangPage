package com.iver99.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.iver99.dao.BookDao;
import com.iver99.util.HibernateSessionFactory;


public class BookDaoImpl implements BookDao {

	Session session = null;
	Transaction tx = null;
	// 获取编辑推荐图书的数据集合
	@Override
	public List getBookCateList() {
		// TODO Auto-generated method stub
		session = HibernateSessionFactory.getSession();
		tx = session.beginTransaction();
		Query query = session
				.createQuery("from Book where bookId between 4 and 5");
		tx.commit();
	/*	*************test data***************/
		//System.out.println("list size"+query.list().size());
		//System.out.println("book1"+((Book)query.list().get(1)).getAuthor());
		System.out.println("******query*******"+query);
		List list = query.list();
		
		HibernateSessionFactory.closeSession();
		return list;
	}
	// 获取热销图书的数据集合
	@Override
	public List getBookSale() {
		// TODO Auto-generated method stub
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		Query query=session.createQuery("from Book where bookId between 1 and 3");
		List list=query.list();
		tx.commit();
		
		HibernateSessionFactory.closeSession();
		return list;
	}
	
	// 获取最新图书的数据集合
	@Override
	public List getNewBook() {
		// TODO Auto-generated method stub
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		Query query=session.createQuery("from Book where bookId between 1 and 4");
		List list=query.list();
		tx.commit();
		
		HibernateSessionFactory.closeSession();
		return list;
	}
	
	// 获取热卖图书
	@Override
	public List getReMai() {
		// TODO Auto-generated method stub
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		Query query=session.createQuery("from Book");
		List list=query.list();
		tx.commit();
		
		HibernateSessionFactory.closeSession();
		return list;
	}

	
	
}
