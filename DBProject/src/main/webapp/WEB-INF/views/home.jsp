<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Departments Entity</h1>
	<h3>넘버, 이름</h3>
	<c:forEach var="a" items="${DL}">
		<p>${a.dept_no}, ${a.dept_name}</p>
	</c:forEach>
<form name="form1" method="POST" action="index">
<input type="submit" value="클릭하면 index.jsp로 갑니다.">
</form>

</body>
</html>
