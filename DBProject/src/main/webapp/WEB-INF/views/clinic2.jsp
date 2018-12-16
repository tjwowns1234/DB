<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="resources/stylesheets/doctor.css" rel="stylesheet">
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
            <a class="nav-link" href="#"><i class="fas fa-key"></i> Logout</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container-fluid">
        <div class="col">
        <iframe id="msearch" name="msearch" src="http://localhost:8080/msearch" style="display: none;"></iframe>
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">약품 검색/목록</h5>
            <form action="medisearch" method="POST" name="f1">
            	<input type="text" name="key">
            	<input type="hidden" name="r_id" value="${r_id}" checked>
            	<input type="submit" value="검색" class="btn btn-default btn-sm">
            </form>
            <form name="f2" method="POST" action="clinic3">
            <input type="submit" class="btn btn-default btn-sm" value="진료 마치기" style="position:relative; float:right; right:20;">
              <p class="card-text" style="padding-top: 10px;">
                    <table class="table">
                        <tbody>
                          <tr>
                            <th>약품 코드</th>
                            <th>약품 이름</th>
                            <th>약품 보험코드</th>
                            <th>추가</th>
                          </tr>
                          <c:forEach var="a" items="${list}">
                          <tr>
                            <td>${a.m_id }</td>
                            <td>${a.m_name }</td>
                            <td>${a.m_inurance_code }</td>
                            <td><input type="checkbox" value="${a.m_id }" name="m_id"></td>
                          </tr>
                          </c:forEach>
                        </tbody>
                        
                    </table>
                    <input type="hidden" name="r_id" value="${r_id}" checked>
             </form>
            </div>
          </div>
        </div>
      </div>
   </div>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>
</html>