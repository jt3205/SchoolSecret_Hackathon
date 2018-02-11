<%@page import="domain.UserVO"%>
<%@page import="service.SecretService"%>
<%@page import="dao.SecretDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>

<%
response.addHeader("Access-Control-Allow-Origin", "*");  
response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
%>
<%! 
	SecretService secretService = new SecretService();
%>
<%=secretService.getSchoolSecretJson(((UserVO)session.getAttribute("UserVO")).getSchool(),Integer.parseInt(request.getParameter("page")))%>