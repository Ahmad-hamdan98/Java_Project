<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>  
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>My Profile</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
</head>

<body>

<div class="container py-5">
    <div class="main-body">
          <div class="row gutters-sm">
          <h3>Hello ${currentUser.firstName}, This is your profile!</h3><br><br><br>
          
            <div class="col-md-3 mb-3">
              <div class="card ">
                <div class="card-body ">
                  <div class="d-flex flex-column align-items-center text-center"><br><br>
                    <i class='fas fa-user-circle' style='font-size:80px;color:grey'></i>
                    <div class="mt-3"><br>
                      <h4>${currentUser.firstName} ${currentUser.lastName}</h4>
                      <p class="text-secondary mb-1">${currentUser.email}</p><br><br>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            
            <c:forEach var="one" items="${currentUser.cars}">
            <div class="col-md-4 ">
              <div class="card mb-1">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-10">
                      <h6 class="mb-0">${one.cartype}</h6>
                    </div>
                    <div class="col-sm-2 text-secondary"><a href="/editcar/${one.id}">Edit</a>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-5">
                      <h6 class="mb-0">Model:</h6>
                    </div>
                    <div class="col-sm-6 text-secondary">
                      ${one.model}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-5">
                      <h6 class="mb-0">Color:</h6>
                    </div>
                    <div class="col-sm-6 text-secondary">
                      ${one.carcolor}
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-5">
                      <h6 class="mb-0">Description:</h6>
                    </div>
                    <div class="col-sm-6 text-secondary">
                      ${one.description}
                    </div>
                  </div> 
                </div>
              </div>
            </div>
            </c:forEach>
            
            
            
          </div>
        </div>
    </div>
</body>
</html>