<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" id="bootstrap-css">
<link href="resources/stylesheets/main_doctor2.css" rel="stylesheet">
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
<!------ Include the above in your HEAD tag ---------->
<script>
    $(document).ready(function () {
  $('.leftmenutrigger').on('click', function (e) {
    $('.side-nav').toggleClass("open");
    $('#wrapper').toggleClass("open");
    e.preventDefault();
  });
});
    
    $(document).ready(function() {
       $('.inpatient').click(function() {
           var inpatient = $(this);
           var tr = inpatient.parent();
           var td = tr.children();
           var name = td.eq(1).text();
           
           $("inpatient_info.html").html(name)
           var width = 700;
           var height = 240;
           var left = Math.ceil((window.screen.width-width)/2);
           var top = Math.ceil((window.screen.height-height)/2);
           window.open('http://localhost:8080/inpatient_info','입원 환자 상세 정보',"top="+top+",left="+left+",width="+width+",height="+height+",scrollbars=no");
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
            <a class="nav-link" href="/register" title="Registor"> <img class="register" src="http://localhost:8080/resources/stylesheets/desk.png" style="width: 38px;"><span class="ttip"> Register</span></a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="/doctor" title="Doctor"><img class="doctor" src="http://localhost:8080/resources/stylesheets/doctor.png" style="width: 42px;"> <span class="ttip"> Doctor</span></a>
            </li>
          <li class="nav-item">
            <a class="nav-link" href="/hospitalization" title="Hospitalization"> <img class="hospitalization" src="http://localhost:8080/resources/stylesheets/admission.png" style="width: 38px;"><span class="ttip"> Hospitalization</span></a>
          </li>
        </ul>
        <ul class="navbar-nav ml-md-auto d-md-flex">
          <li class="nav-item">
            <a class="nav-link" href="#" title="logout"><i class="fas fa-key"></i> Logout</a>
          </li>
        </ul>
      </div>
    </nav>
    <div class="container-fluid">
        <div class="row">
      <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">입원 상세 정보</h5>
                <p class="card-text" style="padding-top: 10px;">
                    <table class="table" style="text-align: center;">
                        <thead>
                            <tr>
                                <th>호실</th>
                                <th>입원 환자</th>
                            </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>진료실</td>
                              
                            <td class="inpatient">
                                <nav class="cl-effect-7"><a href="#">강예지</a></nav></td>
                              
                          </tr>
                          <tr>
                            <td>대기 인원</td>
                             <td class="inpatient">
                                <nav class="cl-effect-7"><a href="#">홍길동</a></nav></td>
                          </tr>
                          <tr>
                            <td></td>
                             <td class="inpatient">
                                <nav class="cl-effect-7"><a href="#">이름</a></nav></td>
                          </tr>
                        </tbody>
                    </table>
                </p>
            </div>
        </div>
    </div>
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">입원 대기 목록</h5>
              <!--<h6 class="card-subtitle mb-2 text-muted">월</h6>-->
              <p class="card-text" style="padding-top: 10px;">
                    <table class="table" style="text-align: center;">
                        <thead>
                            <tr>
                                <th>진료 일자</th>
                                <th>환자</th>
                                <th>배정 호실</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <select class="form-control form-control-sm" id="roomnum" style="width:50%; margin-left: auto; margin-right: auto;">
                                    <option>101호</option>
                                    <option>102호</option>
                                    <option>103호</option>
                                    <option>104호</option>
                                </select>
                            </td>
                            <td>
                                <input class="btn btn-default btn-sm" type="submit" value="저장">
                            </td>
                          </tr>
                          <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <select class="form-control form-control-sm" id="roomnum" style="width:50%; margin-left: auto; margin-right: auto;">
                                    <option>101호</option>
                                    <option>102호</option>
                                    <option>103호</option>
                                    <option>104호</option>
                                </select>
                            </td>
                            <td>
                                <input class="btn btn-default btn-sm" type="submit" value="저장">
                            </td>
                          </tr>
                          <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <select class="form-control form-control-sm" id="roomnum" style="width:50%; margin-left: auto; margin-right: auto;">
                                    <option>101호</option>
                                    <option>102호</option>
                                    <option>103호</option>
                                    <option>104호</option>
                                </select>
                            </td>
                            <td>
                                <input class="btn btn-default btn-sm" type="submit" value="저장">
                            </td>
                          </tr>
                        </tbody>
                    </table>
                </p>
            </div>
          </div>
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">현재 간호사 근무 현황</h5>
                    <table class="table" style="text-align: center;">
                            <thead>
                                <tr>
                                    <th>근무 시작 시간</th>
                                    <th>간호사</th>
                                </tr>
                            </thead>
                            <tbody>
                              <tr>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                              </tr>
                              <tr>
                                <td></td>
                                <td></td>
                              </tr>
                            </tbody>
                        </table>
                </div>
          </div>
        </div>
    </div>
</div>
</div>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>
</html>