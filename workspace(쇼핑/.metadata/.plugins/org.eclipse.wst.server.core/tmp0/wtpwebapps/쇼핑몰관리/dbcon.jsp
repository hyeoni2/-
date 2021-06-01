<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%//자바 처음 시작
request.setCharacterEncoding("utf-8"); //소문자로 시작하는 거는 메소드 ()안에는 입력값 들어가야, String은 문자열, 한글 깨짐 방지 위함

//1.오라클 드라이버 로딩 ojdbc6.jar
Class.forName("oracle.jdbc.OracleDriver"); //oracle이라는 폴더안에 jdbc폴더안에 오라클드라이버를 가져오겠다.,라이브러리에 추가

//2. Connection 객체 생성 - rt.jar, 변수만 = 변수/메소드/값, (url 찾으려면 New Oracle에서 속성에서 찾기) java.sql.* : DriverManger,Connection
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");

//3.구문객체 생성
Statement stmt = con.createStatement(); //sql문없는 빈 구문객체
PreparedStatement ps = null; //참조하는 객체가 없다. , Statement의 문제점이 많아서 이용 , 아직 선언만 한 상태

/*
Statement 객체는 메모리에 동적 생성 - 넘겨주는 SQL문은 단순 문자열이기 때문에 DBMS(데이터베이스관리시스템)로 넘겨주면 
							  DBMS가 그 문자열을 쿼리로 컴파일하느라 시간이 오래 걸린다.
							  select(조회)할때 사용하면 편함
PreparedStatement 객체는 메모리에 상주 - 컴파일된 채로 넘기기 때문에 Statement보다 속도가 빠르다
								   sql이 있어야 가능
								   insert(추가), update(수정), delete(삭제)할 때 사용하면 편리
*/

/*------------------------------------옵션--------------------------------*/
//4.결과셋 선언
ResultSet rs = null;
//5.쿼리문 선언
String sql = "";//값이 없는 String 객체를 참조

%>