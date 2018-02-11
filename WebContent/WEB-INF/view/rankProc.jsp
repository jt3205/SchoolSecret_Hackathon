<%@page import="service.SecretService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%
response.addHeader("Access-Control-Allow-Origin", "*");  
response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
%>
<%!
	SecretService service = new SecretService();
%>
<%=service.getBestSecretJson(Integer.parseInt(request.getParameter("page")))%>