<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.List, br.com.alura.gerenciador.servlet.Empresa" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE hmtl>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
<body>
    
    <c:if test="${not empty nomeEmpresa }">
			Empresa ${ nomeEmpresa } cadastrada com sucesso!
			<br>
	</c:if>

	Lista de empresas: <br />

    <ul>
        <c:forEach items="${empresas}" var="empresa">
            <li>
            ${empresa.nome} - 
            <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
            <a href="/gerenciador/mostraEmpresa?id=${empresa.id}">Editar</a>
            <a href="/gerenciador/removeEmpresa?id=${empresa.id}">Remover</a>
            </li>
        </c:forEach>
    </ul>

</body>
</html>