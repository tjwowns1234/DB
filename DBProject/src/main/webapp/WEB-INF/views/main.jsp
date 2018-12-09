<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>main</title>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
<%
	String type = (String)session.getAttribute("type");
	if(type.equals("1")) { // 의사일 경우
		%>
		<%@include file="main_doctor.jsp"%>
<%	}
%>
<%
	if(type.equals("2")) { // 간호사일 경우
	%>
	<%@include file="main_nurse.jsp"%>
<%	}
%>
</body>
</html>
