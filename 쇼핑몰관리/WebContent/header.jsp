<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="dbcon.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>header</title>
	<!-- 'stylesheet'로 모니터 화면에 보여줄 'text/css'로 이루어진 'style.css'파일이 이 html과 '연결(link)하라 -->
	<link href = "style.css" rel = "stylesheet" type= "text/css"> 
</head>
<body>
	<header><h2>쇼핑몰 관리 프로그램</h2></header>
	
	<nav>
	<a href = "insert.jsp">회원등록</a> 
	<a href = "select.jsp">회원조회/수정</a>
	<a href = "select2.jsp">매출조회</a>
	<a href = "index.jsp">홈으로</a>
	
	</nav>


</body>
</html>