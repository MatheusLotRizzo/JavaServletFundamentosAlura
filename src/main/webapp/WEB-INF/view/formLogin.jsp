<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:url value="/entrada" var="linkEntrada" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="${linkEntrada}" method="post">
		Login: <br> 
		<input type="text" name="login"> <br><br>
		Senha: <br> 
		<input type="password" name="senha"> <br><br>
		
		<input type="hidden" name="acao" value="Login"/>
		
		<input type="submit"/>
	</form>
</body>
</html>