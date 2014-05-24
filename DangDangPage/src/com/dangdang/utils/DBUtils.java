package com.dangdang.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtils {
	private static String url = "jdbc:mysql://localhost:3306/dangdang";  // itstudy:数据库名称
	private static String username = "root";
	private static String password = "123456";
	
	
	// 加载数据库驱动 static语句块在加载类的时候初始化且只初始化一次
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	
	// 获取数据库连接
	public static Connection getConn(){
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//System.out.println("连接陈宫------------");
		return conn;
	}
	
	// 关闭数据库连接资源
	public static void closeConn(ResultSet rs,Statement stmt,Connection conn,PreparedStatement pstmt){
		try {
			if(null != rs){
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try {
				if(null != stmt){
					stmt.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				try {
					if(null != conn){
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}finally{
					if(null != pstmt){
						try {
							pstmt.close();
						} catch (SQLException e) {
							e.printStackTrace();
						}
					}
				}
			}
		}
	
	}

}
