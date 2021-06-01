<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원매출조회</title>
</head>
<body>
<%@include file="header.jsp" %>
	<section>
			<h2>회원매출조회</h2>
		<table border="1" width = "500" style="margin: 0 auto;">
			<tr>
				<th>회원번호</th>
				<th>회원성명</th>
				<th>고객등급</th>
				<th>매출</th>
			</tr>
<%try{
			sql += "select custno, custname, decode(grade, 'A','VIP','B','일반','C','직원'), to_char(price,'L999,999,999,999')";
			sql += " from member_tbl_02 ";
			sql += " natural join";
			sql += " (select custno, sum(pcost*amount) as price";
			sql += " from money_tbl_02";
			sql += " group by custno)";
			sql += " order by price desc";
			
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
%>
				<tr style="text-align: center;">
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>	
				</tr>

<%	
}
%>
<%}catch(Exception e){
	e.printStackTrace();
}%>	
		</table>
	</section>


<%@include file="footer.jsp" %>
</body>
</html>