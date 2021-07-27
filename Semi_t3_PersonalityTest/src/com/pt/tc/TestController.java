package com.pt.tc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestController")
public class TestController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		int n = Integer.parseInt(request.getParameter("n"));
		int a = Integer.parseInt(request.getParameter("a"));
		int b = Integer.parseInt(request.getParameter("b"));
		int c = Integer.parseInt(request.getParameter("c"));
		int d = Integer.parseInt(request.getParameter("d"));
		int e = Integer.parseInt(request.getParameter("e"));
		int f = Integer.parseInt(request.getParameter("f"));
		int g = Integer.parseInt(request.getParameter("g"));
		int h = Integer.parseInt(request.getParameter("h"));
		String mbtiResult = null;
		
		Result r = new Result(a, b, c ,d, e , f , g , h);
		request.setAttribute("r", r);
		
		if(n ==0) {
			request.getRequestDispatcher("jsp/test1.jsp").forward(request, response);
		}else if(n == 1) {
			request.getRequestDispatcher("jsp/test2.jsp").forward(request,response);			
		}else if(n == 2) {
			request.getRequestDispatcher("jsp/test3.jsp").forward(request,response);
		}else if(n == 3) {
			request.getRequestDispatcher("jsp/test4.jsp").forward(request,response);
		}else if(n == 4) {
			request.getRequestDispatcher("jsp/test5.jsp").forward(request,response);
		}else if(n == 5) {
			request.getRequestDispatcher("jsp/test6.jsp").forward(request,response);
		}else if(n == 6) {
			request.getRequestDispatcher("jsp/test7.jsp").forward(request,response);
		}else if(n == 7) {
			request.getRequestDispatcher("jsp/test8.jsp").forward(request,response);
		}else if(n == 8) {
			request.getRequestDispatcher("jsp/test9.jsp").forward(request,response);
		}else if(n == 9) {
			request.getRequestDispatcher("jsp/test10.jsp").forward(request,response);
		}else if(n == 10) {
			request.getRequestDispatcher("jsp/test11.jsp").forward(request,response);
		}else if(n == 11) {
			request.getRequestDispatcher("jsp/test12.jsp").forward(request,response);
		}else if(n == 12) {
			
			ResultMBTI r2 = new ResultMBTI("E", "N", "T", "J", "ENTJ");
			if(a < b) r2.setEIResult("I");
			if(c < d) r2.setNSResult("S");
			if(e < f) r2.setTFResult("F");
			if(g < h) r2.setJPResult("P");
			r2.setMBTIResult(r2.getEIResult()+r2.getNSResult()+r2.getTFResult()+r2.getJPResult());
			
			request.setAttribute("contentPage", "outputMbti.jsp");
			request.setAttribute("r2", r2);
			request.getRequestDispatcher("jsp/output.jsp").forward(request,response);
		}
			
	}

}
