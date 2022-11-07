package com.bitacademy.guestbook.dao.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.bitacademy.guestbook.vo.GuestbookVo01;

public class GuestbookDao01 {

	public Boolean insert(GuestbookVo01 vo) {
		boolean result = false;
		
		Connection conn = null;
		Statement stmt = null;
		
		try {
			conn = getConnection();
			
			stmt = conn.createStatement();
			
			String sql = " insert into guestbook values(?, ?, ?, ?, ?)";
			int count = stmt.executeUpdate(sql);
			
			result = count == 1;
			
		} catch (SQLException e) {
			System.out.println("Error:" + e);
		} finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}

	
	public List<GuestbookVo01> findAll() {
		List<GuestbookVo01> result = new ArrayList<>();

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = getConnection();
					
			stmt = conn.createStatement();

			String sql = " select ?, ?, ?, ?, date_format(reg_date, '%Y/%m/%d') from guestbook;";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				int no = rs.getInt(1);
				String name = rs.getString(2);
				String contents = rs.getString(3);
				String reg_date = rs.getString(4);

				GuestbookVo01 vo = new GuestbookVo01();
				vo.setNo(no);
				vo.setName(name);
				vo.setContents(contents);
				vo.setReg_date(reg_date);

				result.add(vo);
			}

		} catch (SQLException e) {
			System.out.println("Error: " + e);
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public Boolean deleteByPw(String password) {
		boolean result = false;
		
		Connection conn = null;  
		Statement stmt = null;
		
		try {
			conn = getConnection();
			
			stmt = conn.createStatement();

			String sql = "delete from guestbook where no= ? and  password= ?";
			int count = stmt.executeUpdate(sql);

			result = count == 1;
			
		} catch (SQLException e) {
			System.out.println("Error: " + e);
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	
	private Connection getConnection() throws SQLException {
		Connection conn = null;

		try {
			Class.forName("org.mariadb.jdbc.Driver");

			String url = "jdbc:mysql://127.0.0.1:3306/webdb?charset=utf8";
			conn = DriverManager.getConnection(url, "webdb", "webdb");
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로딩 실패: " + e);
		}
		return conn;
	}
	
}
