package com.airline.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airline.dao.FlightDao;
import com.airline.model.Flight;

/**
 * Servlet implementation class FlightServlet
 */
@WebServlet("/FlightServlet")
public class FlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FlightServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String type = request.getParameter("type");
		
		System.out.println(type);
		
		if(type.equals("getdetails")) {
			System.out.println("im in getdetails");
			try {
				ArrayList<Flight> flightDetails = FlightDao.getFlightDetails();
				
				request.setAttribute("flightDetails", flightDetails);
				
				getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
				
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(type.equals("setDetail")) {
			System.out.println("im in setDetails");
			
			String fightName = request.getParameter("fname");
			String source = request.getParameter("source");
			String dest = request.getParameter("dest");
			String arrivalTime = request.getParameter("arrTime");
			String deptTime = request.getParameter("deptTime");
			int seats = Integer.parseInt(request.getParameter("seats"));
			int cost = Integer.parseInt(request.getParameter("cost"));
			
			Flight f = new Flight();
			
			f.setFlightName(fightName);
			f.setSource(source);
			f.setDestination(dest);
			f.setArrivalTime(arrivalTime);
			f.setDepartureTime(deptTime);
			f.setCost(cost);
			f.setSeats(seats);
			
			int status;
			try {
				status = FlightDao.setFlightDetails(f);
				
				 if(status>0){  
					 System.out.println("successful");
			        }else{  
			        	System.out.println("Sorry! unable to update record");  
			        }  
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
		
		
		
	}

}
