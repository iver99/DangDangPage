package com.iver99.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	
	private static String url="jdbc:mysql://localhost:3306/dangdangpage";
	private static String username="root";
	private static String password="123456";
	static Connection conn=null;
	public static Connection getConnection(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(url, username, password);
			
		}catch(SQLException e)
		{
			System.out.println("SQLException!!");
			e.printStackTrace();
		}catch(ClassNotFoundException e)
		{
			System.out.println("Class not Found");
			e.printStackTrace();
		}
		
			return conn;//返回数据库连接对象conn
	}
	
	public static void closeConnetion(Connection conn,Statement stmt,ResultSet rs)
	{
		try{
			if(conn!=null)
				conn.close();
			if(stmt!=null)
				stmt.close();
			if(rs!=null)
				rs.close();
			
		}catch(SQLException e)
		{
			System.out.println("关闭数据库出错！");
			e.printStackTrace();
		}
	}
}
