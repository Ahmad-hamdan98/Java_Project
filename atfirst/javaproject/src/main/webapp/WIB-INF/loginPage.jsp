<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/loginPage.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>

<c:if test="${logoutMessage != null}">
    <c:out value="${logoutMessage}"></c:out>
</c:if>

<c:if test="${errorMessage != null}">
    <c:out value="${errorMessage}"></c:out>
</c:if>

<h1>Welcome</h1>
<main>
	<form:form action="/register" method="post" modelAttribute="user" class="register">
		<table>
			<thead>
		    	<tr>
		            <td colspan="2" class="title">Register</td>
		        </tr>
	   		 </thead>
		    <thead>
		    	<tr>
		            <td class="float-left">First Name:</td>
		            <td class="float-right">
						<form:input class="input inputs" path="firstName"/>
		            </td>
		        </tr>
		        <tr><td><form:errors path="firstName" class="text-danger"/></td> </tr>
		        <tr>
		            <td class="float-left">Last Name:</td>
		            <td class="float-right">
						<form:input class="input inputs" path="lastName"/>
		            </td>
		        </tr>
		        <tr><td><form:errors path="lastName" class="text-danger"/></td> </tr>
		        <tr>
		            <td class="float-left">Email:</td>
		            <td class="float-right">
						<form:input class="input inputs" path="email" type="email"/>
		            </td>
		        </tr>
		        <tr><td><form:errors path="email" class="text-danger"/></td> </tr>
		        <tr>
		            <td class="float-left">Password:</td>
		            <td class="float-right">
						<form:input class="input inputs" path="password" name="email" type="password"/>
		            </td>
		        </tr>
		        <tr><td><form:errors path="password" class="text-danger"/></td> </tr>
		        <tr>
		            <td class="float-left">Confirm PW:</td>
		            <td class="float-right">
						<form:input class="input inputs" path="confirm" type="password"/>
		            </td>
		        </tr>
		        <tr><td><form:errors path="confirm" class="text-danger"/></td> </tr>
		    </thead>
		    <tr class="button-area">
	        	<td colspan=2><input class="input btn btn-success" type="submit" value="Register"/></td>
	        </tr>
		</table>
	</form:form>
	<form:form action="/login" method="post" modelAttribute="user"  class="login">
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	<table>
		<thead>
	    	<tr>
	            <td colspan="2" class="title">Login</td>
	        </tr>
	    </thead>
	    <thead>
	        <tr>
	            <td class="float-left">Email:</td>
	            <td class="float-right">
					<form:input class="input inputs" path="email" type="email"/>
	            </td>
	        </tr>
	        <tr><td><form:errors path="email" class="text-danger"/></td> </tr>
	        <tr>
	            <td class="float-left">Password:</td>
	            <td class="float-right">
					<form:input class="input inputs" path="password" type="password"/>
	            </td>
	        </tr>
	        <tr><td><form:errors path="password" class="text-danger"/></td> </tr>
	    </thead>
	    <tr class="button-area">
	       	<td colspan=2><input class="input btn btn-success" type="submit" value="Login"/></td>
	    </tr>
	</table>
</form:form>
</main>
    
</body>
</html>