<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>WU Airlines</title>
  <meta charset="utf-8">
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
  <h2>Update/Add Flights</h2>
  
   <form action="FlightServlet" method = "POST">
   
	 
	    <div class="mb-3 mt-3">
	      <label for="email">Enter Flight Name:</label>
	      <input type="text" class="form-control"  placeholder="Enter flight name" name="fname">
	    </div>
	    
	    <div class="mb-3 mt-3">
	      <label for="email">Enter Source:</label>
	      <input type="text" class="form-control" placeholder="Enter source" name="source">
	    </div>
	  
	  	
	    <div class="mb-3 mt-3">
	      <label for="email">Enter Destination:</label>
	      <input type="text" class="form-control" placeholder="Enter destination" name="dest">
	    </div>
	    
	    <div class="mb-3">
	      <label for="pwd">Enter Departure Time</label>
	      <input type="text" class="form-control" placeholder="YYYY-MM-DD HH:MM:SS" name="deptTime">
	    </div>
	    
	     <div class="mb-3">
	      <label for="pwd">Enter Arrival Time</label>
	      <input type="text" class="form-control"  placeholder="YYYY-MM-DD HH:MM:SS" name="arrTime">
	    </div>
	    
	    <div class="mb-3">
	      <label for="pwd">Enter Available Seats</label>
	      <input type="text" class="form-control"  placeholder="Enter available Seats" name="seats">
	    </div>
	    
	    <div class="mb-3">
	      <label for="pwd">Enter Cost</label>
	      <input type="text" class="form-control" placeholder="Enter cost" name="cost">
	    </div>
	    
	    <button type="submit" name = "type" value = "setDetail" class="btn btn-primary">Submit</button>
	  </form>

</div>



</body>
</html>