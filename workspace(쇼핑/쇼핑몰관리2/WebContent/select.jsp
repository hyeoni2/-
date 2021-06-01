<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="header.jsp" %>
<title>쇼핑몰관리 프로그램</title>
</head>
<body>
<%
//조회를 누르면 나오는 표를 작성하는 것임
try{
%>	<section>
		<h2>회원조회</h2>
		<table border="1" width = "600" style="margin: 0 auto;">
			<tr>
				<th>회원번호</th>
				<th>이름</th>
				<th>주소</th>
				<th>가입일</th>
				<th>성별</th>
				<th>전화번호</th>
			</tr>
			
<%
	sql += "select memno, name, address,";
	sql += " to_char(hiredate, 'yyyy.mm.dd.'),";
	sql += " decode(gender, 'M', '남', 'F', '여'),";
	sql += " tel1, tel2, tel3";
	sql += " from member";
	
	rs = stmt.executeQuery(sql);
	
	while(rs.next()){
%>
	<tr style="text-align: center;">
		<td><a href="update.jsp?memno=<%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getString(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getString(6) %> - <%=rs.getString(7) %> -<%=rs.getString(8) %></td>
<%	
	}
%>
		</table>
	
	</section>
<%}catch(Exception e){
	e.printStackTrace();
}
%>
	<%@include file="footer.jsp" %>

</body>
</html>