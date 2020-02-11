package jstlel;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/_01")
public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int iVal = 10;
		long lVal = 10;
		float fVal = 1.4f;
		boolean bVal = true;
		String contents = "가\n나\n다\n";

		// 객체 테스트
		Object obj = null;
		UserVo vo = new UserVo();
		vo.setNo(95l);
		vo.setName("최인효");

		// Map을 사용한 여러값 한번에 넘기기
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("i", iVal);
		map.put("l", lVal);
		map.put("f", fVal);
		map.put("b", bVal);

		request.setAttribute("i", iVal);
		request.setAttribute("l", lVal);
		request.setAttribute("f", fVal);
		request.setAttribute("b", bVal);
		request.setAttribute("obj", obj);
		request.setAttribute("vo", vo);
		request.setAttribute("contents", contents);

		request.setAttribute("map", map);

		request.getRequestDispatcher("WEB-INF/views/01.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
