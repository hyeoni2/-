<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원조회</title>
</head>
<body>
<%@include file="header.jsp" %>
<% try{	
%>	<section>
	
	<h2>회원목록조회/수정</h2>
	<table border="1" width = "400" style="margin: 0 auto;">
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>	
<%
		sql += "select custno, custname,";
		sql += " decode(grade, 'A', 'VIP', 'B', '일반', 'C', '직원'),";
		sql += " sales";
		sql += " from member_tbl_02";
		sql += " natural join (select custno,";
		sql += " sum(pcost*amount) as sales";
		sql += " from money_tbl_02";
		sql += " group by custno)";
		sql += " order by sales desc";
		
		rs = stmt.executeQuery(sql);
		
		while(rs.next()){
%>			
			<tr style="text-align: center;">
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
			<tr>
<%			
		}



%>		
	</table>
<%}catch(Exception e){
	e.printStackTrace();
}
%>
</section>

<%@include file="footer.jsp" %>

</body>
</html>