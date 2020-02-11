package jstlel;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/_02")
public class _02Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 객체가 오래 지속되는 순서
		// Application(ContextScope) Scope > Session Scope > Reqeust Scope > Page Scope
		// 2. EL의 같은 이름의 우선순위
		// Page Scope > Reqeust Scope > Session Scope > Application(ContextScope) Scope
		// 주의 : 같은 이름으로 여러범위에 값을 저장하지 말 것!

		// request scope
		UserVo vo1 = new UserVo();
		vo1.setNo(1l);
		vo1.setName("최인효1");
		request.setAttribute("vo", vo1);

		// session scope
		UserVo vo2 = new UserVo();
		vo2.setNo(2l);
		vo2.setName("최인효2");
		request.getSession(true).setAttribute("vo", vo2);

		request.getRequestDispatcher("WEB-INF/views/02.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
