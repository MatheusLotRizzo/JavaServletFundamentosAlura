<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Servlets no Java</title>
	</head>
	
	<body>
		
		<c:import url="logout-parcial.jsp"/>
		
		<c:if test="${not empty nomeEmpresa }">
			Empresa ${ nomeEmpresa } cadastrada com sucesso!
		</c:if>
		
		<c:if test="${empty nomeEmpresa }">
			Empresa não cadastrada
		</c:if>
		
		<br>
		<!--  Teste ForEach<br>
		<c:forEach var="i" begin="1" end="10" step="2">
       		${i} <br />
     	</c:forEach> 
     	-->

	</body>
</html>