<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border=1>
<c:forEach items="${sessionScope.ls}" var="z">
<tr>
<td>${z.id}</td>
<td>${z.username}</td>
<td>${z.password}</td>
<td>${z.email}</td>
<td>${z.gender}</td>
<td>${z.country}</td>
<td>${z.state}</td>
<td>${z.city}</td>
</tr>
</c:forEach>
</table>
</body></html>