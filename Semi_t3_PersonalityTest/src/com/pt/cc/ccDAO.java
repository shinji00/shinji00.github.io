package com.pt.cc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;

import com.pt.main.DBManager;

public class ccDAO {
	
	/*
	public static void getAllname(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			//request.setCharacterEncoding("utf-8");
			con = DBManager.connect();

			String sql = "select * from result order by r_no";
			pstmt = con.prepareStatement(sql);
		
			rs = pstmt.executeQuery(); 

		ArrayList<Resultt> resultt = new ArrayList<Resultt>();
		Resultt r = null;
		while (rs.next()) {

			r = new Resultt();
			r.setR_name(rs.getString("r_name"));
			r.setR_mbti(rs.getString("r_mbti"));

			resultt.add(r);
		}
		request.setAttribute("resultt", resultt);
		
		
	} catch (Exception e) {
		e.printStackTrace();
		request.setAttribute("r", "DB error");
	} finally {
		DBManager.close(con, pstmt, rs);
	}

	}
	
	*/
	
	public static void regname(HttpServletRequest request) {

		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();

			String sql = "insert into result values (result_seq.nextval, ?, ?)";
			pstmt = con.prepareStatement(sql);
			
			String name = request.getParameter("myName");
			String mbti = request.getParameter("myMbti");
			
			pstmt.setString(1, name);
			pstmt.setString(2, mbti);
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB error!");
		} finally {
			DBManager.close(con, pstmt, null);
		}
	}


	

	public static int nameCheck(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = 0;

		try {
			request.setCharacterEncoding("utf-8");
			con = DBManager.connect();
			
			String sql = "select * from result where r_name = ?";
			pstmt = con.prepareStatement(sql);
			
			String name = request.getParameter("name");
			pstmt.setString(1, name);
			rs = pstmt.executeQuery(); 
			
			if (rs.next()) {
				x = 1; 
				// x = 0 : not duplicate
				// x = 1 : duplicate
			}
				
			return x;
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "error in namecheck");
		} finally {
			DBManager.close(con, pstmt, rs);
		}
		return x;
		
	}


	public static String searchMbti(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String fMbti = null;
		
		try {
			con = DBManager.connect();
			
			String sql = "select * from result where r_name = ?";
			pstmt = con.prepareStatement(sql);
			
			String fName = request.getParameter("name");

			pstmt.setString(1, fName);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				fMbti = rs.getString("r_mbti");
			}
			
			return fMbti;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB error!");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		return fMbti;
		
	}
}
		
		