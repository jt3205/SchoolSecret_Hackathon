<%@page import="domain.UserVO"%>
<%@page import="service.SecretService"%>
<%@page import="dao.SecretDAO"%>
<%@page import="domain.SecretVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
response.addHeader("Access-Control-Allow-Origin", "*");  
response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
%>
<%! 
	SecretVO vo = new SecretVO();
	SecretService service = new SecretService();
%>
<%
	vo.setOwnerId(((UserVO) session.getAttribute("userVO")).getId());
	vo.setContents(request.getParameter("contents").replaceAll("\n", "<br>"));
	vo.setSchool(((UserVO) session.getAttribute("userVO")).getSchool());
	service.insertSecret(vo, request.getParameterValues("target"));
%>