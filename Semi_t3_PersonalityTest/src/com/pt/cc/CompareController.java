
package com.pt.cc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pt.tc.Result;
import com.pt.tc.ResultMBTI;

@WebServlet("/CompareController")
public class CompareController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mbtiResult = request.getParameter("mbtiResult");
		request.setAttribute("mbtiResult", mbtiResult);
		request.setAttribute("whetherDuplicated", 2);
			//whetherDuplicated == 2 : default value
									//when no duplicate check is done
		
		request.getRequestDispatcher("jsp/comparePage.jsp").forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//duplicate check process

		String name = request.getParameter("name");	
		String mbti = request.getParameter("mbti");
		request.setAttribute("name", name);
		
			//check if name exists in DB
		int result = ccDAO.nameCheck(request);
			//result == 1 : duplicate
			//result == 0 : not duplicate
		
		request.setAttribute("mbtiResult", mbti);
		request.setAttribute("whetherDuplicated", result);
			//whetherDuplicated == 2 : default
			//whetherDuplicated == 1 : duplicate
			//whetherDuplicated == 0 : not duplicate
		request.getRequestDispatcher("jsp/comparePage.jsp").forward(request, response);

	
	}

}
