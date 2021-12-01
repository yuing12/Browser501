<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
        String[] subj = {"java","Oracle","Jsp","String"};
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<ul>
<%
for(String s: subj){
    System.out.println("console out: "+s); //콘솔에 출력
    

	 %>
	 <li><%=s %></li>
<% 
}
%>
</ul>
</body>
</html>