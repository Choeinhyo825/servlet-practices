package com.douzone.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.GuestbookDao;
import com.douzone.guestbook.vo.GuestbookVo;

//@WebServlet("/gb")
public class GuestbookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String action = request.getParameter("a");

		if ("insert".equals(action)) {
			String name = request.getParameter("name");
			String pass = request.getParameter("password");
			String contents = request.getParameter("message");
			GuestbookVo vo = new GuestbookVo();
			vo.setName(name);
			vo.setPass(pass);
			vo.setContents(contents);
			new GuestbookDao().insert(vo);
			response.sendRedirect(request.getContextPath() + "/gb");
		} else if ("deleteform".equals(action)) {
			String no = request.getParameter("no");
			request.setAttribute("no", no);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
		} else if ("delete".equals(action)) {
			Long no = Long.parseLong(request.getParameter("id"));
			String pass = request.getParameter("password");
			GuestbookVo vo = new GuestbookVo();
			vo.setNo(no);
			vo.setPass(pass);
			new GuestbookDao().delete(vo);
			response.sendRedirect(request.getContextPath() + "/gb");
		} else {
			// list(default) 처리
			List<GuestbookVo> list = new GuestbookDao().findAll();
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
