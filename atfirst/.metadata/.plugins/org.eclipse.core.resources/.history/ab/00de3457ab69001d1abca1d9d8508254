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
<meta charset="windows-1256">
<title>Add A Car</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>


	<form:form action="/addcar" method="post" modelAttribute="car">
			<form:input type="hidden" path="user" value="${user.id}"/>					
		
		<table>
			<tr>
				<td>
					<form:label path="cartype">Car_Type</form:label>
					<form:input path="cartype" class="form-control"/>
					<form:errors path="cartype" class="red"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:label path="description">description</form:label>
					<form:input type="textarea" path="description" class="form-control"/>
					<form:errors path="description" class="red"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:label path="carcolor">Car Color</form:label>
					<form:input path="carcolor" class="form-control"/>
					<form:errors path="carcolor" class="red"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:label path="model">model</form:label>
					<form:input  min="1990" max="2022" class="form-control" path="model"/>
					<form:errors path="model" class="red"/>
				</td>
			</tr>
			<tr>
			
			
                                			
                                 <br>
                                </tr>
                                
				<td> <br>
					<input type="submit"  class="btn btn-primary" value="Add Car">
				</td>
		

		
       		
		</table>

</form:form>
</body>
</html>