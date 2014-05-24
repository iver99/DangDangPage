package com.iver99.dao;

import java.util.List;

import com.dd.vo.Category;

public interface IndexDao {

	// 获取图书分类的大类数据集合
	public List getBookCateList();
	
	// 获取图书分类的小类数据集合
	public List getBookCateListSon();
}
