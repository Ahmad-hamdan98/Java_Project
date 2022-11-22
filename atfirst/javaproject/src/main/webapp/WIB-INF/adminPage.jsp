 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!-- c:out ; c:forEach etc. --> 
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/admin.css">
<title>Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1">  
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<style >

 .bg-image {
 	background-image: url("images/img3.jpg");

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  background-attachment: fixed;
  
  position: absolute;
      left: 0px;
      top: lpx;
      z-index: -1;
      width: 100%;
      height: 100%;
      -webkit-filter: blur(10px); /* Safari 6.0 - 9.0 */
      filter: blur(10px);
 }
</style>
<body>
<div class="bg-image"></div>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Online Garage</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/profile">Profile</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/about">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/mycart">My Cart</a>
        </li>
      </ul>
    		<li class="nav-item d-flex">
    		<form id="logoutForm" method="POST" action="/logout">
			    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			    <input type="submit" value="Logout!"  class="btn btn-outline-danger"/>
			</form>
			</li>
    </div>
  </div>
</nav>
   
<div class="container">
<h1>Welcome, ${currentUser.firstName}</h1>

<div class="main">
	<form:form action="/newpart" method="post" modelAttribute="addpart">
			<form:input type="hidden" path="user" value="${user.id}"/>		
			<h2>Add Parts</h2>			
		<table>
			<tr>
				<td>
					<form:label path="partName">Part Name</form:label>
					<form:input path="partName" class="form-control"/>
					<form:errors path="partName" class="red"/>
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
					<form:label path="price">Part price</form:label>
					<form:input type="number" min="1" path="price" class="form-control"/>
					<form:errors path="price" class="red"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:label path="amount">amount</form:label>
					<form:input  min="1"  class="form-control" path="amount"/>
					<form:errors path="amount" class="red"/>
				</td>
			</tr>
			<tr>
				<td>
					<form:label path="image">image</form:label>
					<form:input  class="form-control" path="image"/>
					<form:errors path="image" class="red"/>
				</td>
			</tr>
                                
				<td> <br>
					<input type="submit"  class="btn btn-primary" value="Add part">
				</td>
		</table>

</form:form>
<table class="table">
    <thead>
        <tr>
        	<th>Part Image</th>
            <th>Part Name</th>
            <th>Part Price</th>
            <th>Part Amount</th>
            <th>Delete Part </th> 
        </tr>
    </thead>
    <tbody>
    <c:forEach var="part" items="${allparts}">
	<tr>
		<td><img alt="image" src="${part.image}" style="height:100px;"> </td>
		<td>${part.partName}</td>
		<td>$${part.price}.00</td>
		<td>${part.amount}</td>
		<td>		 <form action="/deletee/${part.id}" >
		<!--     			 <input type="hidden" name="_method" value="delete"> 
		 -->    		<input type="submit" value="Delete" ></form></td>
	</tr>
	<hr>
	</c:forEach>
    </tbody>
</table>
</div>

</div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>