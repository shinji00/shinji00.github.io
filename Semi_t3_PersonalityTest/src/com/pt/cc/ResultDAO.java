package com.pt.cc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.http.HttpServletRequest;

import com.pt.cc.ResultMbtiSet;
import com.pt.main.DBManager;

public class ResultDAO {

	public static void setResult(HttpServletRequest request) {
		Connection con = null;	
		PreparedStatement pstmt = null;
		
		try {
			con = DBManager.connect();
			
			String sql = "insert into result values(result_seq.nextval, ?,?)";
			pstmt = con.prepareStatement(sql);
			
			String myName = request.getParameter("myName");
			String mbtiResult = request.getParameter("mbtiResult");
			
			pstmt.setString(1, myName);
			pstmt.setString(2, mbtiResult);
			
			if(pstmt.executeUpdate() == 1) {
				request.setAttribute("r", "¤µ¤¡");
			}else {
				request.setAttribute("r", "¤µ¤½");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB ");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}

	public static void searchResult(HttpServletRequest request) {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			con = DBManager.connect();
			
			String sql = "select * from result where r_name = ?";
			pstmt = con.prepareStatement(sql);
			
			String fName = request.getParameter("fName");

			pstmt.setString(1, fName);
			
			rs = pstmt.executeQuery();
			
			ResultMbtiSet friendR = null;
			
			if(rs.next()) {
				friendR = new ResultMbtiSet();
				friendR.setName(rs.getString("r_name"));
				friendR.setMbti(rs.getString("r_mbti"));
			}
			
			request.setAttribute("friendR", friendR);
			
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("r", "DB ");
		} finally {
			DBManager.close(con, pstmt, null);
		}
		
	}
	
	
	

}
