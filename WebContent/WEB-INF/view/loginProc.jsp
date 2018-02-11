<%@ page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
response.addHeader("Access-Control-Allow-Origin", "*");  
response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
%>
<%! 
	UserDAO dao = new UserDAO();
%>
<% if(dao.login(request.getParameter("id"), request.getParameter("password"))) { 
	session.setAttribute("userVO", dao.getUser(request.getParameter("id")));
%>
	true
<% } else {%>
	false
<% } %>