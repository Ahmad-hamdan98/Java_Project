<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>About</title>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

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
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Dropdown
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/about">About Us</a>
        </li>
      </ul>
      <ul class="navbar-nav mb-2 mb-lg-0">
    	<li class="nav-item d-flex">
    		<form id="logoutForm" method="POST" action="/logout">
			    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			    <input type="submit" value="Logout!"  class="btn btn-outline-danger"/>
			</form>
		</li>
		</ul>
    </div>
  </div>
</nav>

<div class="text-center container my-5">
  <br />
  <br />
  <div class="card-header">
    <h2>About</h2>
  </div>
  <br />
  <br />
  <br />
  <div class="card-body d-flex justify-content-center align-content-center">
    <p class="card-text about-text col-8 d-block">
      Many car owners suffer from spending many hours waiting at the mechanic, 
      so our website aims to solve your problem,
	Our "Online Garage" is a website that allows people to make a connection between them and garage owners, 
	the owners of a garage would be able to add their products in the website and this will help people
	 to know about available parts in this garage and its prices. Also it allows people to book a date in 
	 the garage in order to make a change on their car like color ,,,ect.
    </p>
  </div>
</div>
<br />
<br />
<div class="row">
          <div class="col text-center title">
            <h5>Contact Us</h5>
          <!-- Address -->
          <a class="btn text-white btn-floating m-1" style="background-color: black" href="#!" role="button">
          	<i style="font-size:15px" class="fa">&#xf095;</i>
          </a>
           <!-- phone -->
          <a class="btn text-white btn-floating m-1" style="background-color: #3b5998" href="#!" role="button">
          	<i class="fab fa-facebook-f"></i>
          </a>
           <!-- Email -->
          <a class="btn text-white btn-floating m-1" style="background-color: red" href="#!" role="button">
          	<i style="font-size:15px" class="fa">&#xf0e0;</i>
          </a>
        </div>
        </div>
         <script src="https://kit.fontawesome.com/27d8b168ea.js" crossorigin="anonymous"></script>
         <script src="https://kit.fontawesome.com/27d8b168ea.js" crossorigin="anonymous"></script>
         <script src="https://kit.fontawesome.com/27d8b168ea.js" crossorigin="anonymous"></script>
         
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>
</html>