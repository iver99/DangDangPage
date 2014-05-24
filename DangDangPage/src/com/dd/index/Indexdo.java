package com.dd.index;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.dangdang.utils.DBUtils;
import com.dd.vo.Category;

public class Indexdo {
	
	/*
	 * 1、连接数据库获取到相应的数据集合
	 * 2、在静态页中处理数据
	 */
	
	
	// 获取图书分类的大类数据集合
	public static List<Category> getBookCateList(){
		Connection conn = DBUtils.getConn();
		List<Category> list_bcate = null;
		try {
			Statement stat = conn.createStatement();
			String sql = "select id,name,parent_Id from category where parent_Id = 1";
			ResultSet rs = stat.executeQuery(sql);
			
			list_bcate = new ArrayList<Category>();
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				int parent_Id = rs.getInt("parent_Id");
				
				Category cate = new Category(id,name,parent_Id);
				list_bcate.add(cate);
			}
		DBUtils.closeConn(rs, stat, conn, null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list_bcate;
	}
	
	
	// 获取图书分类的小类数据集合
	public static List<Category> getBookCateListSon(){
		Connection conn = DBUtils.getConn();
		List<Category> list_bcate = null;
		try {
			Statement stat = conn.createStatement();
			String sql = "select id,name,parent_Id from category where parent_Id in (select id  from category where parent_Id = 1);";
			ResultSet rs = stat.executeQuery(sql);
			
			list_bcate = new ArrayList<Category>();
			while(rs.next()){
				int id = rs.getInt("id");
				String name = rs.getString("name");
				int parent_Id = rs.getInt("parent_Id");
				
				Category cate = new Category(id,name,parent_Id);
				list_bcate.add(cate);
			}
		DBUtils.closeConn(rs, stat, conn, null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list_bcate;
	}
	
}
