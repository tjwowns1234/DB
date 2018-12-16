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
    <link href="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <meta http-equiv="pragma" content="no-cache">
    <script>
        
        function datasize() {
            var cell = 4; //고정값
            var datasize = 10;
            var content1 = "dwfsdfw";
            
            var arr = new Array();
            
            <c:forEach var="list" items="${rlist}">
            	arr.push("${list.r_id}");
            	arr.push("${list.r_time}");
            	arr.push("${list.p_name}");
            	arr.push("${list.d_office_number}");
            </c:forEach>
            
            var str = new Array();
            str = "";
            str += "<tr>";
            for(var i=0;i<cell;i++) {
                str += "<td>";
                str += arr[i];
                str += "</td>";
            }
            str += "</tr>";
            
            parent.document.getElementById("tim").innerHTML = str;
        }
    </script>
</head>
<body>
    <script>
        datasize();
    </script>
    <meta http-equiv="refresh" content="1;">
</body>