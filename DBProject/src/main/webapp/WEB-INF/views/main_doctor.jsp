<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="resources/stylesheets/main_doctor.css" rel="stylesheet">
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
    <% 
                    String d_name = (String)session.getAttribute("d_name");
                    String d_office_number = (String)session.getAttribute("d_office_number");
                    String regcount = (String)session.getAttribute("regcount");
                    String count = (String)session.getAttribute("count");
                    %>
      <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">나의 정보</h5>
              <h6 class="card-subtitle mb-2 text-muted"><%= d_name %>님 반갑습니다.</h6>
                <p class="card-text" style="padding-top: 10px;">
                    <table class="table">
                    
                        <tbody> 
                          <tr>
                            <td>진료실</td>
                            <td><%= d_office_number %> 호</td>
                          </tr>
                          <tr>
                            <td>전체 대기 인원</td>
                            <td><%= regcount %> 명</td>
                          </tr>
                          <tr>
                          
                            <td>진료 한 환자 수</td>
                            <td><%= count %> 명</td>
                          </tr>
                         
                        </tbody>
                    </table>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <div class="card-body">	
              <h5 class="card-title">생일을 축하합니다</h5>
              <h6 class="card-subtitle mb-2 text-muted"><c:out value="${mon}"></c:out>월</h6>
              <p class="card-text" style="padding-top: 10px;">
                    <table class="table">
                        <tbody>
                          <tr>
                            <th scope="row">어제</th>
                            <td><c:forEach var="vo1" items="${Dbirth1}">${vo1.d_name} </c:forEach></td>
                          </tr>
                          <tr>
                            <th scope="row">오늘</th>
                            <td><c:forEach var="vo2" items="${Dbirth2}">${vo2.d_name} </c:forEach></td>
                          </tr>
                          <tr>
                            <th scope="row">내일</th>
                            <td><c:forEach var="vo3" items="${Dbirth3}">${vo3.d_name} </c:forEach></td>
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
              <h5 class="card-title">올해의 질병 Bar 차트</h5>
                <!-- 막대 차트 삽입 -->
                <div id="chart" style="margin: auto 0"></div>
                   <script>
                      var chart = c3.generate({
                          size: {
                              width: 500
                          },
                      bindto: '#chart',
                      data: {
                         columns: [
                        	 
                        	 ['건 수', 1508, 1289, 692, 656 , 629]
                         ],
                         type: 'bar',
                      },
                      bar: {
                         width: {
                            ratio: 0.4
                         }
                        },
                        axis: {
                         x: {
                            type: 'category',
                            categories: ['급성기관지염', '치은염 및 치주질환', '급성 편도염', '급성 상기도 감염','알레르기성 비염']
                         }
                         }
                      });
                   </script>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <div class="card-body">
                <h5 class="card-title">올해의 암 종류별 사망률</h5>
                <!-- 원형 차트 삽입 -->
                <div id="chart2"></div>
                <script>
                      var chart = c3.generate({
                      bindto: '#chart2',
                      data: {
                         columns: [
                        	 ['위암', 8264],
                             ['폐암', 17963],
                             ['간암', 11001],
                             ['대장암', 8432],
                             ['유방암', 2472],
                         ],
                         type: 'pie',
                            colors: {
                                '위암': 'c8d9eb',
                                '폐암': 'f0d9da',
                                '간암': '#CEF6EC',
                                '대장암': '#CECEF6',
                                '유방암': '#F6CEEC'
                                
                            }
                      },
                      });
                   </script>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
  </body>
  </html>