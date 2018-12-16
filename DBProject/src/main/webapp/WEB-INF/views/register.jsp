<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="resources/stylesheets/register.css" rel="stylesheet">
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

//         $(document).ready(function() {
//         $('#regview').click(function() {
//             var inpatient = $(this);
//             var tr = inpatient.parent();
//             var td = tr.children();
//             var name = td.eq(1).text();
            
//             $("regview.html").html(name)
//             var width = 700;
//             var height = 700;
//             var left = Math.ceil((window.screen.width-width)/2);
//             var top = Math.ceil((window.screen.height-height)/2);
//             window.open('http://localhost:8080/regview','진료 목록',"top="+top+",left="+left+",width="+width+",height="+height+",scrollbars=no");
//         }); 
//      });
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
            <a class="nav-link" href="#"><i class="fas fa-key"></i> Logout</a>
          </li>
        </ul>
      </div>
    </nav>
    <div class="container-fluid">
      <div class="row">
        <div class="col">
          <div class="card">
          
           <form action="reginsert" method="POST" name="f1">
           
            <div class="card-body">
              <h5 class="card-title">접수 등록
                    <input class="btn btn-default btn-sm" type="submit" value="저장" style="position: absolute; right: 20px;">
                </h5>
                <p class="card-text" style="padding-top: 10px;">
                    <table class="table">
                        <tbody>
                          <tr>
                            <td>성명</td>
                            <td>
                                <input type="text" class="form-control form-control-sm" id="patient_name" name="p_name">                                  
                              </td>
                          </tr>
                          <tr>
                            <td>주민번호</td>
                            <td>
                                <input type="text" class="form-control form-control-sm" id="patient_name" name="p_rrn">
                            </td>
                          </tr>
                            <tr>
                                <td>성별</td>
                                <td>
                                    <div class="gender_checkbox">
                                        <label class="checkbox-inline" style="margin-left:25%;"><input type="radio" name="p_gender" value="M" checked> M</label>
                                        <label class="checkbox-inline" style="margin-right:25%;"><input type="radio" name="p_gender" value="W"> W</label>
                                    </div>
                                </td>
                            </tr>
                          <tr>
                            <td>휴대폰 번호</td>
                            <td>
                                <input type="text" class="form-control form-control-sm" id="patient_phonenum" name="p_phone_number">  
                            </td>
                          </tr>
                            <tr>
                            <td>환자 상태</td>
                            <td>
                                <input type="text" class="form-control form-control-sm" id="patient_details" name="c_details">  
                            </td>
                          </tr>
                            <tr>
                            <td>담당 의사</td>
                            <td>
                                <select class="form-control form-control-sm" id="roomnum" name="d_id">
                                	<option id="doctor_select">=======담당 진료 의사를 선택 하세요======</option>
                                	<c:forEach var="a" items="${dvo}" >
                                    <option id="doctor_select" value="${a.d_id}">${a.d_name} / ${a.d_office_number} / ${a.d_major}</option>
                                   	</c:forEach>
                                </select>
                            </td>
                          </tr>
                        </tbody>
                    </table>
                    
            	</div>
            	</form>
          	</div>
        </div>

        <div class="col" id="regview">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">접수 현황</h5>
              <p class="card-text" style="padding-top: 10px;">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>접수번호</th>
                                <th>접수시간</th>
                                <th>성명</th>
                                <th>진료실</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="a" items="${rlist}">
                          <tr>
                            <td>${a.r_id }</td>
                            <td>${a.r_time }</td>
                            <td>${a.p_name }</td>
                            <td>${a.d_office_number }</td>
                          </tr>
                          </c:forEach>
                        </tbody>
                    </table>
                    <!--  
                    <div class="col" id="regview">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">접수 현황</h5>
              <p class="card-text" style="padding-top: 10px;">
                  <iframe id="register_table" name="register_table" src="http://localhost:8080/register_table" style="display: none;"></iframe>
                  <table class="table">
                      <thead>
                        <tr>
                            <th>접수번호</th>
                            <th>접수시간</th>
                            <th>성명</th>
                            <th>진료실</th>
                        </tr>
                    </thead>
                    <tbody id="tim">
                    </tbody>
                    </table>
                    -->
                </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
</body>
</html>