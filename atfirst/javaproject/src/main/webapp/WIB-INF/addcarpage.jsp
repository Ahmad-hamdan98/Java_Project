<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
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
<body><br><br><br>
 <div class="row">
   <div class="col-lg-6 mx-auto">
     <div class="bg-white rounded-lg shadow-lg p-4">
	  <form role="form">
	  <form:form action="/addcar" method="post" modelAttribute="car">
	  <!-- <form:input type="hidden" path="user" value="${user.id}"/>-->
        <div class="tab-content">
          <!-- credit card info-->
          <div class="tab-pane fade show active">          
              <div class="form-group">
                <form:label path="cartype">Type</form:label>
                <form:input path="cartype" placeholder="Car Type" class="form-control" /> 
                <form:errors path="cartype" class="red"/>               
              </div>
              <br>
              
              <div class="form-group">
                <form:label path="model">Model</form:label>
                <form:input type="number" min="1990" max="2022" path="model" class="form-control" />
                <form:errors path="model" class="red"/>
              </div>
              <br>
              
              <div class="form-group">
                <form:label path="carcolor">Color</form:label>
                <form:input type="text" path="carcolor" placeholder="Car Color" class="form-control" />
                <form:errors path="carcolor" class="red"/>
              </div>
              <br>
              
              <div class="form-group">
                <form:label path="description">Description</form:label>
                <form:input type="textarea" rows="5" path="description" placeholder="Description for Car" class="form-control" />
                <form:errors path="description" class="red"/>
              </div> 
              <br>              
           </div>
         </div>
         <ul role="tablist" class="nav bg-light nav-pills rounded-pill nav-fill mb-3">
         	<li class="nav-item">
            <a data-toggle="pill" href="#" class="nav-link active rounded-pill"><i class="fa fa-credit-card"></i>
            Add My Car</a></li>
         </ul>
      </form:form>
      </form>
   </div>
  </div>
 </div>
</body>
</html>