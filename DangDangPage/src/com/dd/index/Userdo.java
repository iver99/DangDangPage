package com.dd.index;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.dangdang.utils.Base64Util;
import com.dangdang.utils.DBUtils;
import com.dd.vo.Book;

public class Userdo {

	public static boolean isUser(String email,String password){
		Connection conn = DBUtils.getConn();
		try {
			Statement stat = conn.createStatement();
			String sql = "SELECT * from d_user where email='"+email+"' and password='"+Base64Util.produceDegistCode(password)+"'";
			ResultSet rs = stat.executeQuery(sql);

			while (rs.next()) {
				return true;
			}
			DBUtils.closeConn(rs, stat, conn, null);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
	public static boolean register(String email,String name,String password){
		Connection conn = DBUtils.getConn();
		boolean b = false;
		try {
			Statement stat = conn.createStatement();
			String sql = "insert into d_user(email,nickname,password) values('"+email+"','"+name+"','"+Base64Util.produceDegistCode(password)+"')";
			b = stat.execute(sql);
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return b;
	}
}
