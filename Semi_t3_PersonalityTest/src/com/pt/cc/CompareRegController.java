package com.pt.cc;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CompareRegController" )
public class CompareRegController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
			//this "name" = friend's name
			//set this "name" to use nameCheck again
		
			//check if friend's name exists
		request.setAttribute("name", name);
		int result = ccDAO.nameCheck(request);
			//result == 1 : friend name exists
			//result == 0 : friend name doesn't exists
		
		String myName = request.getParameter("myName");
		String myMbti = request.getParameter("myMbti");
		request.setAttribute("myName", myName);
		request.setAttribute("myMbti", myMbti);
			//setting attribute to use at next page
		
		if (result == 0) {
			request.setAttribute("whetherDuplicated", 3); 
				//friend name doesn't exist => try again
			request.getRequestDispatcher("jsp/comparePage.jsp").forward(request, response);
		}else {
				//friend name exists => progress to next page
			ccDAO.regname(request);
				//registering my name & my mbti into DB
			
			String fMbti = ccDAO.searchMbti(request);
				//getting friend's mbti using friend's name
			request.setAttribute("fMbti", fMbti);
			
				//parameters set : name, myName, myMbti, fMbti
			request.getRequestDispatcher("jsp/comparePage2.jsp").forward(request, response);
		}
		

	
	
	
	}

}
