<%@page import="com.bitacademy.guestbook.dao.test.GuestbookDao01"%>
<%@page import="com.bitacademy.guestbook.vo.GuestbookVo01"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String contents = request.getParameter("message");
	
	GuestbookVo01 vo = new GuestbookVo01();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContents(contents);
	
	new GuestbookDao01().insert(vo);
	
	response.sendRedirect("/guestbook01");
	
%>