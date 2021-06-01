<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 회원관리 ver 1.0</title>
</head>
<body>
	<%@ include file="header.jsp" %>
	<section>
		<div>
			<h2>회원 목록 조회/수정</h2>
		</div>
		<div>
			<table style="margin: 0 auto;" border="1" width="800">
				<tr>
					<th>회원번호</th>
					<th>회원성명</th>
					<th>고객등급</th>
					<th>매출</th>
				</tr>
				<%
					sql="select custno, custname,";
					sql+=" decode(grade, 'A','VIP','B','일반','C','직원') grade,";
					sql+=" sum(price) price";
					sql+=" from MEMBER_TBL_02 natural join money_tbl_02";
					sql+=" group by custno, custname, grade";
					sql+=" order by price desc";
					rs=stmt.executeQuery(sql);
					
					while(rs.next()){
				%>
						<tr>
							<td><%=rs.getString(1) %></td>
							<td><%=rs.getString(2) %></td>
							<td><%=rs.getString(3) %></td>
							<td><%=rs.getString(4) %></td>
						</tr>
				<%
					}
				%>
			</table>
		</div>
	</section>
	<%@ include file="footer.jsp" %>
</body>
</html>