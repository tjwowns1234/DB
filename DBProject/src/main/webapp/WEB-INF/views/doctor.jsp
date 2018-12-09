<html>
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
      <a class="navbar-brand" href="http://localhost:8080/main">병원 전산 시스템</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText"
        aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav animate side-nav">
            
          <li class="nav-item">
            <a class="nav-link" href="#" title="Registor"> <img class="register" src="http://localhost:8080/resources/stylesheets/desk.png" style="width: 38;"><span class="ttip"> Register</span></a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="#" title="Doctor"><img class="doctor" src="http://localhost:8080/resources/stylesheets/doctor.png" style="width: 42;"> <span class="ttip"> Doctor</span></a>
            </li>
          <li class="nav-item">
            <a class="nav-link" href="#" title="Hospitalization"> <img class="hospitalization" src="http://localhost:8080/resources/stylesheets/admission.png" style="width: 38;"><span class="ttip"> Hospitalization</span></a>
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
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">
                  <button type="button" class="button" onclick="location.href='clinic.html'">진료</button>
              </h5>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">진료 대기 현황</h5>
              <p class="card-text" style="padding-top: 10px;">
                    <table class="table" style="text-align:center;">
                        <tbody>
                          <tr>
                            <th scope="row">환자 이름</th>
                          </tr>
                          <tr>
                            <td scope="row">이수형</td>
                          </tr>
                          <tr>
                            <td scope="row">강예지</td>
                          </tr>
                        </tbody>
                    </table>
                </p>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">처방전 목록</h5>
                    <table class="table">
                        <tbody>
                          <tr>
                            <th>날짜</th>
                            <th>환자 이름</th>
                            <th>질병 이름</th>
                          </tr>
                          <tr>
                            <td>8/13</td>
                            <td>ㅇㅇㅇ</td>
                            <td>감기</td>
                          </tr>
                          <tr>
                            <td>...</td>
                            <td>...</td>
                            <td>...</td>
                          </tr>
                        </tbody>
                    </table>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <div class="card-body">
                <h5 class="card-title">메모   
                   <input type="submit" value="저장" style="position:absolute; right:20;"></h5>

                <form>
                    <div class="form-group">
                    <textarea name="content" cols="50" rows="10" class="form-control"></textarea>
                    </div>
                </form>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
  </body>
  </html>