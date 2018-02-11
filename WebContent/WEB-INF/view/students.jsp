<%@page import="domain.UserVO"%>
<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
response.addHeader("Access-Control-Allow-Origin", "*");  
response.setHeader("Access-Control-Allow-Headers", "origin, x-requested-with, content-type, accept");
%>
<%! 
	UserDAO userDAO = new UserDAO();
	String students[] = null; 
	String schoolName = "";
	
%>
<%if(session.getAttribute("userVO") != null){ %>
<%
schoolName = ((UserVO)session.getAttribute("userVO")).getSchool(); 
students = userDAO.getSchoolStudents(schoolName);
%>
{
	school:<%=schoolName%>,
	students:[
<%for(int i = 0; i < students.length; i++){%>
	<%=students[i]%>
	<%if(i != students.length-1) {%>,<%}%>	
<%}%>
]
}
<%}else{%>false<%}%>
