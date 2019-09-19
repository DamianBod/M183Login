<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="bean.LoginDao"%>
<jsp:useBean id="obj" class="bean.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loading...</title>
</head>
<body>
<%
boolean status = LoginDao.validate(obj);
if(status) {
	session.setAttribute("session", "true");
%>
<jsp:forward page="WEB-INF/Form.jsp" />
<%
} else {
	out.print("Login failed!");
}
%>
</body>
</html>