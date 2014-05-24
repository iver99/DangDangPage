package com.iver99.dao;

import java.util.List;


public interface BookDao {
	// 获取编辑推荐图书的数据集合
	public List getBookCateList();

	// 获取热销图书的数据集合
	public List getBookSale();

	// 获取最新图书的数据集合
	public List getNewBook();

	// 根据ca_id得到书籍
	//public List getListByCa_id(int ca_id);

	/*public Book getBook(String book_id);*/

	// 获取热卖图书
	public List getReMai();
}
