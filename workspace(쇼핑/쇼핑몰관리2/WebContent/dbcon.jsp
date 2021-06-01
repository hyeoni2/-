<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//한글 깨짐 방지하기 위해 인코딩을 한다
request.setCharacterEncoding("UTF-8");
//오라클 드라이버를 로딩시킨다
Class.forName("oracle.jdbc.OracleDriver");
//커넥션 객체를 만들어서 연결시킨다
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "1234");
//구문객체를 만든다.
Statement stmt = con.createStatement();
//쿼리문으로 바꾸지 않고 바로 업데이트 시킬 수 있는 객체를 만든다.
PreparedStatement ps = null;
//sql문을 공백으로 비워놓는다.
String sql = "";
//결과셋을 null값으로 준다 
ResultSet rs = null;
%>