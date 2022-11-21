 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!-- c:out ; c:forEach etc. --> 
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>All Cars</h1>
  <c:forEach var="car" items="${allcars}" > 
<p>Car Owner ${car.user.firstName}</p>
 <p>Car Type 	 ${car.cartype}</p>
  <p>Car Color	${car.carcolor}</p>
  <p> Car Model	 ${car.model}</p>
  <hr>
  </c:forEach>
</body>
</html>