<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Resultado</title>
</head>
<body>
	<div>
		<h2> <fmt:message key="result" /> </h2>
		<p><fmt:message key="wpm" />: <fmt:formatNumber type="number" value="${ppm}" maxFractionDigits="2" /></p>
		
		<p>
		<c:choose>
			<c:when test="${ppm < 10}"> <fmt:message key="veryLow" /> </c:when>
			<c:when test="${ppm > 10 && ppm <= 40}"> <fmt:message key="low" /> </c:when>
			<c:when test="${ppm > 40 && ppm <= 50}"> <fmt:message key="medium" /> </c:when>
			<c:when test="${ppm > 50 && ppm <= 90}"> <fmt:message key="high" /> </c:when>
			<c:otherwise> <fmt:message key="veryHigh" /> </c:otherwise>
		</c:choose>
		</p>
	</div>
</body>
</html>