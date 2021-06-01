<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
</head>
<body>
	<footer><!-- ⓒ : o > [한자] 누른후 찾기 , &copy; -->
		HRDKOREA Copyright &copy; 2019 All reserved
	</footer>
	

</body>
</html>

<!-- ★DB연결 해제코드 -->
<%
//con 의 값이 없다면 con을 접어라 & 빨간줄 무시해야함
try{
	if(con != null){
		con.close();
	}
	if(stmt != null){
		stmt.close();
	}
	if(ps != null){
		ps.close();
	}
	if(rs != null){
		rs.close();
	}
}
catch(Exception e){
	//모든 예외를 다 처리해줌
	e.printStackTrace();
}
%>

