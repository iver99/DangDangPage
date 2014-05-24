package com.dd.index;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import com.dangdang.utils.DBUtils;
import com.dd.vo.Book;

public class Bookdo {

	// 获取编辑推荐图书的数据集合
	public static List<Book> getBookCateList() {
		Connection conn = DBUtils.getConn();
		List<Book> list_bcate = null;
		try {
			Statement stat = conn.createStatement();
			String sql = "SELECT id,book_Name,author,fixed_price,dang_price,"
					+ "publishing,publish_time FROM book where id between 1 and 2";
			ResultSet rs = stat.executeQuery(sql);

			list_bcate = new ArrayList<Book>();
			while (rs.next()) {
				int id = rs.getInt("id");
				String bookName = rs.getString("book_Name");
				String author = rs.getString("author");
				double fixed_price = rs.getDouble("fixed_price");
				double dang_price = rs.getDouble("dang_price");
				// int add_time = rs.getInt("add_time");
				// int editor_key = rs.getInt("editor_key");
				// int sale_sum = rs.getInt("sale_sum");
				String publish_time = rs.getString("publish_time");
				String publish = rs.getString("publishing");
				// String book_pic = rs.getString("book_pic");

				Book book = new Book(id, bookName, author, fixed_price,
						dang_price, publish_time, publish);
				list_bcate.add(book);
			}
			DBUtils.closeConn(rs, stat, conn, null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list_bcate;
	}

	// 获取热销图书的数据集合
	public static List<Book> getBookSale() {
		Connection conn = DBUtils.getConn();
		List<Book> list_bcate = null;
		try {
			Statement stat = conn.createStatement();
			String sql = "SELECT id,book_Name,author,fixed_price,dang_price,"
					+ "publishing,publish_time FROM book where id between 1 and 2";
			ResultSet rs = stat.executeQuery(sql);

			list_bcate = new ArrayList<Book>();
			while (rs.next()) {
				int id = rs.getInt("id");
				String bookName = rs.getString("book_Name");
				String author = rs.getString("author");
				double fixed_price = rs.getDouble("fixed_price");
				double dang_price = rs.getDouble("dang_price");
				// int add_time = rs.getInt("add_time");
				// int editor_key = rs.getInt("editor_key");
				// int sale_sum = rs.getInt("sale_sum");
				String publish_time = rs.getString("publish_time");
				String publish = rs.getString("publishing");
				// String book_pic = rs.getString("book_pic");

				Book book = new Book(id, bookName, author, fixed_price,
						dang_price, publish_time, publish);
				list_bcate.add(book);
			}
			DBUtils.closeConn(rs, stat, conn, null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list_bcate;
	}

	// 获取最新图书的数据集合
	public static List<Book> getNewBook() {
		Connection conn = DBUtils.getConn();
		List<Book> list_bcate = null;
		try {
			Statement stat = conn.createStatement();
			String sql = "SELECT id,book_Name,author,fixed_price,dang_price,"
					+ "publishing,publish_time FROM book where id between 1 and 2";
			ResultSet rs = stat.executeQuery(sql);

			list_bcate = new ArrayList<Book>();
			while (rs.next()) {
				int id = rs.getInt("id");
				String bookName = rs.getString("book_Name");
				String author = rs.getString("author");
				double fixed_price = rs.getDouble("fixed_price");
				double dang_price = rs.getDouble("dang_price");
				//int add_time = rs.getInt("add_time");
				//int editor_key = rs.getInt("editor_key");
				//int sale_sum = rs.getInt("sale_sum");
				String publish_time = rs.getString("publish_time");
				String publish = rs.getString("publishing");
				//String book_pic = rs.getString("book_pic");

				Book book = new Book(id, bookName, author, fixed_price,
						dang_price, publish_time, publish);
				list_bcate.add(book);
			}
			DBUtils.closeConn(rs, stat, conn, null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list_bcate;
	}

	// 根据ca_id得到书籍
	public static List<Book> getListByCa_id(int ca_id) {
		List<Book> list = new ArrayList<Book>();
		Connection conn = DBUtils.getConn();
		try {
			Statement stat = conn.createStatement();
			String sql = "SELECT id,book_Name,author,fixed_price,dang_price," +
					"publishing,publish_time FROM book where id between 1 and 2";
			ResultSet rs = stat.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt("id");
				String bookName = rs.getString("book_Name");
				String author = rs.getString("author");
				double fixed_price = rs.getDouble("fixed_price");
				double dang_price = rs.getDouble("dang_price");
				String publish_time = rs.getString("publish_time");
				String publish = rs.getString("publishing");

				Book book = new Book(id, bookName, author, fixed_price,
						dang_price, 
						publish_time, publish);
				list.add(book);
			}
			DBUtils.closeConn(rs, stat, conn, null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public static Book getBook(String book_id) {
		Connection conn = DBUtils.getConn();
		try {
			Statement stat = conn.createStatement();
			String sql = "SELECT id,book_Name,author,fixed_price,dang_price," +
					"publishing,publish_time FROM book where id between 1 and 2";
			ResultSet rs = stat.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt("id");
				String bookName = rs.getString("book_Name");
				String author = rs.getString("author");
				double fixed_price = rs.getDouble("fixed_price");
				double dang_price = rs.getDouble("dang_price");
				//int add_time = rs.getInt("add_time");
				//int editor_key = rs.getInt("editor_key");
				//int sale_sum = rs.getInt("sale_sum");
				String publish_time = rs.getString("publish_time");
				String publish = rs.getString("publishing");
				//String book_pic = rs.getString("book_pic");

				Book book = new Book(id, bookName, author, fixed_price,
						dang_price, 
						publish_time, publish);
				return book;
			}
			DBUtils.closeConn(rs, stat, conn, null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public static List<Book> getReMai() {
		List<Book> list = new ArrayList<Book>();
		Connection conn = DBUtils.getConn();
		try {
			Statement stat = conn.createStatement();
			String sql = "SELECT id,book_Name,author,fixed_price,dang_price," +
					"publishing,publish_time FROM book where id between 1 and 2";
			ResultSet rs = stat.executeQuery(sql);

			while (rs.next()) {
				int id = rs.getInt("id");
				String bookName = rs.getString("book_Name");
				String author = rs.getString("author");
				double fixed_price = rs.getDouble("fixed_price");
				double dang_price = rs.getDouble("dang_price");
				//int add_time = rs.getInt("add_time");
				//int editor_key = rs.getInt("editor_key");
				//int sale_sum = rs.getInt("sale_sum");
				String publish_time = rs.getString("publish_time");
				String publish = rs.getString("publishing");
				//String book_pic = rs.getString("book_pic");

				Book book = new Book(id, bookName, author, fixed_price,
						dang_price,
						publish_time, publish);
				list.add(book);

			}

			DBUtils.closeConn(rs, stat, conn, null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;

	}
}
