<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%
    request.setCharacterEncoding("utf-8");//받을때
    response.setContentType("text/html;charset=utf-8");//보낼때
    %>
    
    <%
  String name =  request.getParameter("fname");//name="fname"

 
 %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dom_form.html 요청받아 서버에서 출력하기</title>
</head>
<body>
name: <%=name %><br>
</body>
</html>