<%@page import="domain.UserVO"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
response.addHeader("Access-Control-Allow-Origin", "*");  
response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
%>
<%! UserDAO dao = new UserDAO();%>
<%
	dao.insertUser(new UserVO(request.getParameter("id"),request.getParameter("password"),request.getParameter("name"),request.getParameter("school"),request.getParameter("birth")));
%>