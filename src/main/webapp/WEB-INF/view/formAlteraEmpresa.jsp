<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:url value="/entrada" var="linkEntrada" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="logout-parcial.jsp"/>
	
	<form action="${linkEntrada}" method="post">
		Id: <br> 
		<input type="text" name="id" value="${empresa.id}" readonly = "readonly"/> <br><br>
		Nome: <br> 
		<input type="text" name="nome" value="${empresa.nome}"> <br><br>
		Data Abertura: <br> 
		<input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>"> <br><br>
		<input type="submit"/>
		<input type="hidden" name="acao" value="AlteraEmpresa"/>
	</form>
</body>
</html>