<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="resources/stylesheets/doctor2.css" rel="stylesheet">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<link href="resources/stylesheets/c3.css" rel="stylesheet">
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="resources/js/c3.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script>
    $(document).ready(function () {
  $('.leftmenutrigger').on('click', function (e) {
    $('.side-nav').toggleClass("open");
    $('#wrapper').toggleClass("open");
    e.preventDefault();
  });
});
</script>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
  <div id="wrapper" class="animate">
    <nav class="navbar header-top fixed-top navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="http://localhost:8080/main">SW병원</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav animate side-nav">
            
          <li class="nav-item">
            <a class="nav-link" href="/register" title="Registor"> <img class="register" src="http://localhost:8080/resources/stylesheets/desk.png" style="width: 38px;"><span class="ttip"> Register</span></a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="/doctor" title="Doctor"><img class="doctor" src="http://localhost:8080/resources/stylesheets/doctor.png" style="width: 42px;"> <span class="ttip"> Doctor</span></a>
            </li>
        </ul>
        <ul class="navbar-nav ml-md-auto d-md-flex">
          <li class="nav-item">
            <a class="nav-link" href="/logout"><i class="fas fa-key"></i> Logout</a>
          </li>
        </ul>
      </div>
    </nav>
    <div class="container-fluid">
    
	<div class="row">
        <div class="col">
            <div class="button">
               <div class="submit"><h3>환자 진료하기</h3></div>
               <div class="arrow">
                  <div class="top line"></div>
                  <div class="bottom line"></div>
               </div>
        </div>
      </div>
       </div>
      </div>
      <div class="row">

        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title" style="text-align: center;">나의 진료 대기 현황</h5>
              <p class="card-text" style="padding-top: 10px;">
                    <table class="table" style="text-align:center;">
                        <tbody>
                          <tr>
                            <th scope="row">환자 이름</th>
                          </tr>
                          <c:forEach var="a" items="${list }">
                          <tr>
                            <td scope="row">${a.p_name }</td>
                          </tr>
                          </c:forEach>
                        </tbody>
                    </table>
            </div>
          </div>
        </div>

        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">최근 처방 약품 목록</h5>
                    <table class="table">
                        <tbody>
                          <tr>
                            <th>환자 이름</th>
                            <th>약품 이름</th>
                          </tr>
                          <c:forEach var="b" items="${plist }">
                          <tr>
                            <td>${b.p_name}</td>
                            <td>${b.m_name}...</td>
                          </tr>
                          </c:forEach>
                        </tbody>
                    </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
    <script>
  function hover() {
       $(".button").on("mouseenter", function() {
         return $(this).addClass("hover");
       });
     }

     function hoverOff() {
       $(".button").on("mouseleave", function() {
         return $(this).removeClass("hover");
       });
     }

     function active() {
       $(".button").on("click", function() {
          location.href='http://localhost:8080/clinic';
       });
     }
     
     hover();
     hoverOff();
     active();
  </script>
  </body>
  </html>