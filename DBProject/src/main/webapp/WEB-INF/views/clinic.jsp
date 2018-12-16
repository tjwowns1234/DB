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
            <a class="nav-link" href="/logout"><i class="fas fa-key"></i> Logout</a>
          </li>
        </ul>
      </div>
    </nav>

    <div class="container-fluid">
        <div class="row">
        <div class="col">
        <form name="f1" action="clinic1" method="POST">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">진료
                    <input type="submit" class="btn btn-default btn-sm" value="저장하고 질병 정의 하러가기" style="position:relative; float:right; right:20;"></h5> 
                   <p class="card-text" style="padding-top: 10px;">
                    <table class="table">
                        <tbody>
                          <tr>
                            <th>환자 이름</th>
                            <td><c:out value="${p_name}"></c:out></td>
                          </tr>
                          <tr>
                            <th>의사 이름</th>
                            <td><c:out value="${d_name}"></c:out></td>
                          </tr>
                          <tr>
                            <th>진료 날짜</th>
                            <td><c:out value="${r_time}"></c:out> / <c:out value="${r_id}"></c:out></td>
                          </tr>
                          <tr>
                            <th>환자 상태</th>
                            <td><c:out value="${c_details}"></c:out></td>
                          </tr>
                          <tr>
                            <th>진료 내용</th>
                            <td>
                            <div class="form-group">
                                <textarea name="c_d_details" cols="50" rows="10" class="form-control"></textarea>
                            </div>
                            </td>
                          </tr>
                          <tr>
                            <th>의사 소견</th>
                            <td>
                            <div class="form-group">
                                <textarea name="c_opinion" cols="10" rows="5" class="form-control"></textarea>
                            </div>
                            </td>
                          </tr>
                        </tbody>
                    </table>
            </div>
          </div>
          <input type="hidden" name="r_id" value="${r_id}" checked>
          </form>
        </div>

        <!--  
        <div class="col">
        <iframe id="msearch" name="msearch" src="http://localhost:8080/msearch" style="display: none;"></iframe>
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">약 검색/목록
                <input type="submit" value="저장" style="position:relative; float:right; right:20;"></h5>
                
            <form action="msearch" method="POST" name="f1">
            <input type="text" name="key">
            <input type="submit" value="검색">
            </form>
              <p class="card-text" style="padding-top: 10px;">
                    <table class="table">
                        <tbody>
                          <tr>
                            <th>약 코드</th>
                            <th>약 이름</th>
                            <th>약 성분</th>
                            <th>추가</th>
                          </tr>
                          
                          <tr id="mlist">
                            <td>2934</td>
                            <td>타이레놀</td>
                            <td>...</td>
                            <td><input type="checkbox"></td>
                          </tr>
                          <tr>
                            <td>2934</td>
                            <td>타이레놀</td>
                            <td>...</td>
                            <td><input type="checkbox"></td>
                          </tr>
                        </tbody>
                    </table>
            </div>
          </div>
        </div>
        -->
      </div>
   </div>
  </div>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>
</html>