<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>2013041066 서재준 HW3 View Select 확인</h1>
	<c:forEach var="a" items="${vo}">
		<p>${a.ADDRESS} / ${a.PRICE} / ${a.PY}</p>
	</c:forEach>
</body>
</html>