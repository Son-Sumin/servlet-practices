<%@page import="com.bitacademy.guestbook.dao.test.GuestbookDao01"%>
<%@page import="com.bitacademy.guestbook.vo.GuestbookVo01"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	
	String index = request.getParameter("no");
	String password = request.getParameter("password");
	
	GuestbookVo01 vo = new GuestbookVo01();
	
	
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	
	
	new GuestbookDao01().deleteByPw(password);
	
	response.sendRedirect("/guestbook01");
	
%>

