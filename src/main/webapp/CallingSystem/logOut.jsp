<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.removeAttribute("isLogin");
	session.removeAttribute("local");
	session.removeAttribute("num");
	session.removeAttribute("isAdmin");
	response.sendRedirect("login.jsp");
%>
