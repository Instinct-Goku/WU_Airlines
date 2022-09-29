package com.airline.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.airline.model.Flight;

public class FlightDao {
	
	  public static Connection getConnection() throws ClassNotFoundException{  
		  String url = "jdbc:mysql://localhost:3306/airline?useSSL=false";
			String user = "root";
			String pass = "admin";
			
			Class.forName("com.mysql.jdbc.Driver");
			
	        Connection con=null;  
	        	
	        try{  
	        	con = DriverManager.getConnection(url, user, pass);
	        	
	        }catch(Exception e){
	        	System.out.println(e);
	        }  
	        return con;  
	    }  
	
	
	public static ArrayList<Flight> getFlightDetails() throws SQLException, ClassNotFoundException {
		
		ArrayList<Flight> flights = new ArrayList<Flight>();
		
		
		try {
			
			Connection con = FlightDao.getConnection();
			
			String query = "select * from flight";
			
			Statement statement = con.createStatement();
			
			ResultSet result = statement.executeQuery(query);
			
			 while(result.next()){  
				 	Flight f = new Flight();	
	                f.setFlightId(result.getInt(1));  
	                f.setFlightName(result.getString(2));  
	                f.setSource(result.getString(3));  
	                f.setDestination(result.getString(4));  
	                f.setDepartureTime(result.getString(5));  
	                f.setArrivalTime(result.getString(6));
	                f.setCost(result.getInt(7));
	                f.setSeats(result.getInt(8));
	                
	                flights.add(f);
	            }  
			 con.close();  
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
		return flights;
		
	}
	
public static int setFlightDetails(Flight f) throws SQLException, ClassNotFoundException {
		
		int status = 0;
		
		
		try {
			
			Connection con = FlightDao.getConnection();
			
			 PreparedStatement ps = con.prepareStatement( 
					 "insert into flight values (default,?,?,?,?,?,?,?)");
				
			 ps.setString(1,f.getFlightName());
			 ps.setString(2,f.getSource());
			 ps.setString(3,f.getDestination());
			 ps.setString(4,f.getDepartureTime());
			 ps.setString(5,f.getArrivalTime());
			 ps.setInt(6,f.getCost());
			 ps.setInt(7,f.getSeats());
		
			 status=ps.executeUpdate();  
			 
			 con.close();  
			
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		
	
		return status;
	}
	

	
	
}
