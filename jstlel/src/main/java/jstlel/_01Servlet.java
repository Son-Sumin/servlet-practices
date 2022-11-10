package jstlel;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//localhost:8080/jstlel/01
		
		// 값
		int iVal = 10;
		long lVal = 10;
		float fVal = 3.14f;
		boolean bVal = true;
		String sVal = "가나다라마바사";
		
		request.setAttribute("iVal", iVal);
		request.setAttribute("lVal", lVal);
		request.setAttribute("fVal", fVal);
		request.setAttribute("bVal", bVal);
		request.setAttribute("sVal", sVal);
		
		// 객체
		Object obj = null;
		request.setAttribute("obj", obj);
		
		UserVo userVo = new UserVo();
		userVo.setNo(10L);
		userVo.setName("둘리");
		request.setAttribute("userVo", userVo);
		
		// map 객체 접근
		Map<String, Object> map = new HashMap<>();
		map.put("iVal", iVal);
		map.put("lVal", lVal);
		map.put("fVal", fVal);
		map.put("bVal", bVal);
		map.put("sVal", sVal);
		request.setAttribute("m", map);  // map 객체를 m으로 접근
		
		request
			.getRequestDispatcher("/WEB-INF/views/01.jsp")
			.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
