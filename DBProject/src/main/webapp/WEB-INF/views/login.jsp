<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="resources/stylesheets/login.css " type="text/css" rel="stylesheet" id="login-css">
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Fira+Sans" rel="stylesheet">
</head>
<title>Login</title>
<body>
    <div class="jumbotron">
        <div class="container">
            <img src="http://localhost:8080/resources/stylesheets/hospital.png" style="width: 100px; padding-top: 40px;">
            <h2>SW병원</h2>
            
            <div class="box">
            <form name="form1" method="POST" action="login">
                <input type="number" placeholder="아이디" name="d_id">
                <input type="password" placeholder="비밀번호" name="d_password">
                <input type="hidden" name="type" value="1" checked>
                <input type="submit" class="btn btn-default full-width" value="로그인">
                </form>
            </div>
            <!--  onclick="document.getElementById('login').submit()" -->
            
        </div>
    </div>
</body>

</html>
