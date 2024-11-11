<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:if test="${not empty param.idioma}"> <fmt:setLocale value="${param.idioma}" scope="application" /></c:if>
<fmt:setBundle basename="lang" scope="application" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><fmt:message key="title" /></title>
</head>
<body>
	<div>
		<a href="index.jsp?idioma=pt_BR"><img alt="bandeira" src="./images/brazil.png" height="20"></a>
		<a href="index.jsp?idioma=es_ES"><img alt="bandeira" src="./images/spain.png" height="20"></a>
		<a href="index.jsp?idioma=en_US"><img alt="bandeira" src="./images/usa.png" height="20"></a>
	</div>

	<form method="post" action="TesteController">
		<h2><fmt:message key="title" /></h2>
		
		<div>
			<p>⁠ <fmt:message key="text" /> </p>
			<c:if test="${iniciar}">
				<textarea></textarea>
		 	</c:if>		
		</div>
		
		<div>
			<input type="hidden" name="tInicio" value="${tInicio}">
			<button name="oprt" value="iniciar"> <fmt:message key="start" /> </button>
			<button name="oprt" value="parar"><fmt:message key="stop" /></button>
		</div>
	</form>
</body>
</html>