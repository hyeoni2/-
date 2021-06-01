<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="header.jsp" %>
<%
	sql = "select nvl(max(memno),0)+1 from member";
	rs = stmt.executeQuery(sql);
	rs.next();
	String memno = rs.getString(1);

	sql = "select to_char(sysdate, 'yyyy-mm-dd') from dual";
	rs = stmt.executeQuery(sql);
	rs.next();
	String hiredate = rs.getString(1);
%>
<title>쇼핑몰관리 프로그램</title>
</head>
	<script type="text/javascript">
		function check() {
			if(f.memno.value == ""){
				alert("회원번호를 입력해주세요");
				return f.memno.focus;
			}
			if(f.name.value == ""){
				alert("이름을 입력해주세요");
				return f.name.focus;
			}
			if(f.address.value == ""){
				alert("주소를 입력해주세요");
				return f.address.focus;
			}
			if(f.hiredate.value == ""){
				alert("가입일을 입력해주세요");
				return f.hiredate.focus;
			}
			if(f.gender[0].checked == false && f.gender[1].checked == false){
				alert("성별을 선택해주세요");
				return;
			}
			if(f.tel1.value == ""){
				alert("전화번호를 입력해주세요");
				return f.tel1.focus;
			}
			if(f.tel2.value == ""){
				alert("전화번호를 입력해주세요");
				return f.tel2.focus;
			}
			if(f.tel3.value == ""){
				alert("전화번호를 입력해주세요");
				return f.tel3.focus;
			}

			f.submit();
		}
	
	
	</script>
<body>
	<section>
		<h2>회원수정</h2>
	<form action="insertPro.jsp" method="post" name="f">
		<table border="1" width = "400" style="margin: 0 auto;">
			<tr>
				<th>회원번호</th>
				<td><input type="text" name="memno" value="<%=memno %>" size="15" maxlength="4">자동입력</td>
			</tr>
			<tr>
				<th>회원이름</th>
				<td><input type="text" name="name" value="" size="25" maxlength="30"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" name="address" value="" size="35" maxlength="100"></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><input type="text" name="hiredate" value="<%=hiredate%>" size="25">자동입력</td>
			</tr>
			<tr>
				<th>성별</th>
				<td>
				&nbsp;&nbsp;<input type="radio" name="gender" value="F">남자
				&nbsp;&nbsp;<input type="radio" name="gender" value="M">여자
				</td>
			</tr>
			<tr>
				<th>전화번호</th>
				<td>
				<input type="text" name="tel1" value="" size="5" maxlength="3">-
				<input type="text" name="tel2" value="" size="5" maxlength="4">-
				<input type="text" name="tel3" value="" size="5" maxlength="4">
				</td>
			</tr>
			<tr>
				<th colspan="2">
				<input type="submit" name="" value="회원등록" onclick = "check(); return false">				
				<input type="button" name="" value="조회" onclick="location = 'select.jsp'">
				</th>
			</tr>
		
		
		</table>
	</form>
		
		
	</section>
	<%@include file="footer.jsp" %>

</body>
</html>