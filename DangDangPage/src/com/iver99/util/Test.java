package com.iver99.util;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.iver99.vo.Book;

public class Test {
	
	
	
	public static void main(String[] args)
	{
		
		Session session=null;
		Transaction tx=null;
		session=HibernateSessionFactory.getSession();
		tx=session.beginTransaction();
		Query query=session.createQuery("from Book");
		
		tx.commit();
		List list=query.list();
		
		Book book=(Book)list.get(1);
		System.out.println("book id"+book.getBookId()+"book name"+book.getName());
		
		
		
		
	}

}
