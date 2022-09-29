<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="com.airline.model.Flight" %>
 <%@ page import="java.util.ArrayList" %>
 
 <% ArrayList<Flight> flightList  = (ArrayList<Flight>)request.getAttribute("flightDetails"); %>
 
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
        <a class="nav-link" href="login.jsp">Login</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="updateFlight.jsp">Add Flight</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Contact</a>
      </li>
    </ul>
  </div>
</nav>

<div class="container mt-3">
  <h2>Search Flights</h2>
  <p>Enter Your Source & Destination to search for a flight.</p>
  
  <form action = "FlightServlet" method = "POST">
    <div class="row">
      <div class="col">
        <input type="text" class="form-control" placeholder="Source" name="source">
      </div>
      <div class="col">
        <input type="password" class="form-control" placeholder="Destination" name="dest">
      </div>
    </div>
    <br>

	<button type="submit" name = "type" value = "getdetails" class="btn btn-primary">Submit</button>
  </form>

</div>

<% if(flightList != null)  { %>

<div class="container mt-3">
  <h2>Airline Data</h2>
        
  <table class="table table-striped">
    <thead>
      <tr>
        <th>flightID</th>
        <th>FlightName</th>
        <th>Source</th>
        <th>Dest</th>
        <th>Depat Time</th>
        <th>Arrival Time</th>
        <th>Seats</th>
        <th>Cost</th>
      </tr>
    </thead>
    <tbody>
    
    <% 
    
    for(Flight f : flightList) { %>
    
      <tr>
        <td><%=f.getFlightId()%></td>
        <td><%=f.getFlightName() %></td>
        <td><%= f.getSource() %></td>
        <td><%= f.getDestination() %></td>
        <td><%= f.getDepartureTime() %></td>
        <td><%= f.getArrivalTime() %></td>
        <td><%= f.getSeats() %></td>
        <td><%= f.getCost() %></td>
      </tr>
      
       <% } %>
    </tbody>
  </table>
</div>
	
	
 <% } %>

</body>
</html>