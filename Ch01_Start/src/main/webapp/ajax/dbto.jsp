<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   String name = request.getParameter("name");
   String age = request.getParameter("age");
   String salary = request.getParameter("salary");
%>

<%
//여긴 자바와 JSP 땅이다.
// String name = request.getParameter("name");
// String age = request.getParameter("age");
// String money = request.getParameter("salary");

	//여기서는 오라클 접속하는 코드들을 작성하야한다.
	try {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "jsp", "jsp");
		Statement stmt = con.createStatement();
		//name 문자이기에 '' 필요하지만 나머지는 숫자이기에 필요없음
		String sql = "insert into join" +" values('"+name+"', "+age+", "+salary+")";
		stmt.executeUpdate(sql);
		con.close();
		stmt.close();
	} catch (Exception e) {
         System.out.println(e.getMessage());
         
	}



%>

</body>
</html>