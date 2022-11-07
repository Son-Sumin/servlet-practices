<%@page import="com.bitacademy.guestbook.dao.test.GuestbookDao"%>
<%@page import="com.bitacademy.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String password = request.getParameter("password");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setPassword(password);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect("/guestbook01");
	
%>