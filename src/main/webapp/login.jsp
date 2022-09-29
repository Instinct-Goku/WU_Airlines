<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WU Airlines</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-light">
	
	  <div class="container-fluid">
	    <!-- Links -->
	    <a class="navbar-brand" href="#">WU Airlines</a>
	    <ul class="navbar-nav">
	      <li class="nav-item">
	        <a class="nav-link" href="#loginModal">Login</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">About</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Contact</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	
	<div class="container mt-3">
	  <h2>Enter Your Details Here!</h2>
	  <br>
	  <form action="">
	  
	  <div class="mb-3 mt-3">
	      <label for="email">Enter Your Full Name:</label>
	      <input type="text" class="form-control" id="email" placeholder="Enter name" name="name">
	    </div>
	    
	    <div class="mb-3 mt-3">
	      <label for="email">Enter Your Mobile Number:</label>
	      <input type="text" class="form-control" id="email" placeholder="Enter mobile number" name="mobile">
	    </div>
	  
	  	
	    <div class="mb-3 mt-3">
	      <label for="email">Email:</label>
	      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
	    </div>
	    
	    <div class="mb-3">
	      <label for="pwd">Password:</label>
	      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
	    </div>
	    
	    
	    <button type="submit" class="btn btn-primary">Submit</button>
	  </form>
</div>

</body>
</html>