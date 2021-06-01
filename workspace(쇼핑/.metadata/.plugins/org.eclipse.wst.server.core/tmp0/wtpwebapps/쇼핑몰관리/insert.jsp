<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쇼핑몰 관리</title>
</head>
<!-- 자바스크립트 -->
<script type="text/javascript">
	//함수 = 메소드
	function check() {
		if(f.memno.value == "") { // == 같다, != 다르다 f.회원번호의 값이 없다면
			//경고창 띄우기
			alert("회원번호를 입력해주세요.");	
			//커서를 올린 후 끝낸다
			return f.memno.focus(); 
		}
		if(f.name.value == "") { // == 같다, != 다르다 f.회원번호의 값이 없다면
			//경고창 띄우기
			alert("이름을 입력해주세요.");	
			//커서를 올린 후 끝낸다
			return f.name.focus(); 
		}
		if(f.address.value == "") { // == 같다, != 다르다 f.회원번호의 값이 없다면
			//경고창 띄우기
			alert("주소를 입력해주세요.");	
			//커서를 올린 후 끝낸다
			return f.address.focus(); 
		}
		if(f.hiredate.value == "") { // == 같다, != 다르다 f.회원번호의 값이 없다면
			//경고창 띄우기
			alert("가입일을 입력해주세요.");	
			//커서를 올린 후 끝낸다
			return f.hiredate.focus(); 
		}
		//true && true => true 
		if(f.gender[0].checked == false && f.gender[1].checked == false ) { // == 같다, != 다르다 f.회원번호의 값이 없다면
			//경고창 띄우기
			alert("성별을 입력해주세요.");	
			return; 
		}
		if(f.tel1.value == "") { // == 같다, != 다르다 f.회원번호의 값이 없다면
			//경고창 띄우기
			alert("전화번호 앞자리를 입력해주세요.");	
			//커서를 올린 후 끝낸다
			return f.tel1.focus(); 
		}
		if(f.tel2.value == "") { // == 같다, != 다르다 f.회원번호의 값이 없다면
			//경고창 띄우기
			alert("전화번호 중간자리를 입력해주세요.");	
			//커서를 올린 후 끝낸다
			return f.tel2.focus(); 
		}
		if(f.tel3.value == "") { // == 같다, != 다르다 f.회원번호의 값이 없다면
			//경고창 띄우기
			alert("전화번호 끝자리를 입력해주세요.");	
			//커서를 올린 후 끝낸다
			return f.tel3.focus(); 
		}
		//모든 조건이 통과가 된다고 하면은 submit으로 넘어감
		f.submit();
	}

</script>

<body>
	<%@ include file = "header.jsp" %>
	<!-- header.jsp안에 dbcon.jsp가 포함 되어있음 그 아래에 자바 넣어야 함 -->
	<%
	/*가장 큰 회원번호를 가지고 오고 싶고 거기에 1을 올리고 싶다 ,넘겨줘야함,
	nvl = null의 값이면 0으로 만들어라, null이 아니면 맥스값으로*/
	
	//select(값 변경 x, 조회만 가능)만 실행할시 statment가 편함
	sql = "select nvl(max(memno),0)+1 from member";
	//DBMS에서 컴파일해야하기에 시간 오래걸림
	rs = stmt.executeQuery(sql);
	//rs가 데이터를 가리키기 때문에 그 다음인 next를 입력해야 1010을 가리킴
	rs.next();
	//첫번째 행에 있는 회원번호를 가져오겠다라는 뜻
	String memno = rs.getString(1); //a안에 1010이 들어감, 이렇게 안하고 value에 <%=으로 rs.getString(1)으로 처리 , memno라는 변수에 담아서 참조하도록 함
	
	//date라는 날짜를 문자열로(to_char : 날짜를 다양한 형태로 만들 수 있는 것)로 yyyy-mm-dd의 형태로 바꾸겠다.
	sql = "select to_char(sysdate, 'yyyy-mm-dd') from dual";
	rs = stmt.executeQuery(sql);
	rs.next();
	String hiredate = rs.getString(1);//hiredate라는 변수에 담아서 참조하도록 함
	%>
	<section>
		<div>
			<h2>회원등록</h2><!-- 진하게 , 자동 줄바꿈 =p의기능을 가짐 -->
		</div>
		
		<!-- submit을 하면 action에 있는 파일로 보내겠다. -->
		<form action="insertPro.jsp" method="post" name="f">
		<!-- style = "margin : 0 auto > 크롬에서도 표 가운데 정렬을 실행하기 위해서 실시 -->
			<table border = "1" width = "400" style = "margin: 0 auto">
			<tr>
				<th>회원번호</th> <!-- 진하게, 가운데 정렬 -->
				     <!-- 글자로 입력,  이름(쇼핑몰관리 sql과 동일한 이름으로, 값, 크기, 최대길이    -->
				<td><input type="text" name="memno" value="<%=memno %>" size="10" maxlength="4" readonly>자동입력</td>
			</tr>
			<tr>
				<th>회원이름</th> <!-- 진하게, 가운데 정렬 -->
				     <!-- 글자로 입력,  이름(쇼핑몰관리 sql과 동일한 이름으로, 값, 크기, 최대길이    -->
				<td><input type="text" name="name" value="" size="15" maxlength="30"></td>
			</tr>
			<tr>
				<th>주소</th> <!-- 진하게, 가운데 정렬 -->
				     <!-- 글자로 입력,  이름(쇼핑몰관리 sql과 동일한 이름으로, 값, 크기, 최대길이    -->
				<td><input type="text" name="address" value="" size="40" maxlength="100"></td>
			</tr>
			<tr>
				<th>가입일</th> <!-- 진하게, 가운데 정렬 -->
				     <!-- 글자로 입력,  이름(쇼핑몰관리 sql과 동일한 이름으로, 값, 크기, 최대길이    -->
				<td><input type="text" name="hiredate" value="<%=hiredate %>" size="15" maxlength="4" readonly>자동입력</td>
			</tr>
			<tr>
				<th>성별</th> <!-- 진하게, 가운데 정렬 -->
				     <!-- 글자로 입력,  이름 같아야(쇼핑몰관리 sql과 동일한 이름으로, 값, 사이즈나 길이 없애야, radio버튼의 이름은 같은 걸로 해야함 (둘 중 하나만 가능하게)   -->
				<td>
				&nbsp;&nbsp;<input type="radio" name="gender" value="M">남자
				&nbsp;&nbsp;<input type="radio" name="gender" value="F">여자
				</td>
			</tr>
			<tr>
				<th>전화번호</th> <!-- 진하게, 가운데 정렬 -->
				     <!-- 글자로 입력,  이름(쇼핑몰관리 sql과 동일한 이름으로, 값, 크기, 최대길이    -->
				<td>
				<input type="text" name="tel1" value="" size="5" maxlength="3">
				- <input type="text" name="tel2" value="" size="5" maxlength="4">
				- <input type="text" name="tel3" value="" size="5" maxlength="4">
				</td>
			</tr>
			<!-- 버튼만들어야함 -->
			<tr>
				<th colspan="2"> <!-- 두행을 하나로 합쳐주는 기능 --> <!-- check를 먼저 하고 넘어가겠다는 의미로 ; -->
				<input type="submit" value="회원등록" onclick="check(); return false">
														<!-- 위치 설정 후 회원조회화면이 보이도록해야함 / "가 있다면 '를 쓰기 -->
				<input type="button" value="조회" onclick= "location = 'select.jsp'">
				</th> <!-- 진하게, 가운데 정렬, td로 하게 되면 따로 align 설정해야함 -->
				    
			</tr>
			
			</table>
		</form>
		
	</section>
	<!-- DB연결을 해제하기 위해 footer에다가 해제코드를 연결해야함 -->
	<%@ include file = "footer.jsp" %>
</body>
</html>