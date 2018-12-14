<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR" rel="stylesheet">
        <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            .card {
                box-shadow: none;
                border: none;
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body>
        <div class="card">
            <div class="card-body">
              <h4 class="card-title" style="text-align: center;">입원 환자 상세 정보</h4>
                <p class="card-text" style="padding-top: 10px;">
                    <table class="table" style="text-align: center;">
                        <thead>
                            <tr>
                                <th>환자명</th>
                                <th>입원 호실</th>
                                <th>입원 날짜</th>
                                <th>담당 의사</th>
                                <th>행동 요령</th>
                            </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>강예지</td>
                            <td>101호</td>
                            <td>2018-12-10</td>
                            <td>이수형</td>
                            <td>매일 오전 10시마다 약 먹이세요</td>
                        </tr>
                        </tbody>
                    </table>
                </p>
            </div>
        </div>
    </body>
</html>