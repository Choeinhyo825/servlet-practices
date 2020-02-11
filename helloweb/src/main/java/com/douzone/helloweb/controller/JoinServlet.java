package com.douzone.helloweb.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// post 방식으로 넘어오는 데이터 엔코딩
		// request.setCharacterEncoding("utf-8");
		// 서버 설정에서 URIEncoding="utf-8" 추가해주면 필요없음

		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String birthYear = request.getParameter("birthYear");
		String gender = request.getParameter("gender");
		String[] hobbys = request.getParameterValues("hobby");
		String desc = request.getParameter("desc");

		System.out.println("email : " + email);
		System.out.println("pass : " + pass);
		System.out.println("birthYear : " + birthYear);
		System.out.println("gender : " + gender);
		for (String h : hobbys)
			System.out.println("hobby : " + h);
		System.out.println("desc : " + desc);

		response.setContentType("text/HTML; charset=utf-8");
		response.getWriter().println("ok");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
