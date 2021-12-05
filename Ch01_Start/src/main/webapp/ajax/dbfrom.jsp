<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSB::AJAX::DB</title>
</head>
<body>
	<%
	//여기서는 오라클 접속하는 코드들을 작성하야한다.
	try {
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		Class.forName(driver);
		Connection con = DriverManager.getConnection(url, "jsp", "jsp");
		Statement stmt = con.createStatement();
		String sql = "select *form join";
		ResultSet rs = stmt.executeQuery(sql);
		while(rs.next()) {
			String name = rs.getString("name");
			String age = rs.getString(2);
			String money = rs.getString("money");
			
			String strXML = "";
			strXML += "<join>";
			strXML += "<person>";
			strXML += "<name>"+name+"</name>";
			strXML += "<age>"+age+"</age>";
			strXML += "<salary>"+money+"</salary>";
			strXML += "</person>";
			strXML += "</join>";
			out.write(strXML);
			
		}
	} catch (Exception e) {
         System.out.println(e.getMessage());
         
	}
	%>

</body>
</html>