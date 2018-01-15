package com.itinerary.planner.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itinerary.planner.repository.logrepository;

/**
 * Servlet implementation class StudentController
 */

@SuppressWarnings("serial")
public class logcontrol extends HttpServlet {
	private logrepository logrepository;
	private static String PREVIOUS_TRAVEL= "content/PreviousTravel.jsp";
	private static String LOGIN_SUCCESS="content/success.jsp";
	/*private static String TOURIST_LOGIN = "content/Login.jsp";
	private static String LOGIN_SUCCESS = "content/success.jsp";
	private static String LOGIN_FAILURE = "content/failure.jsp";
		/**
	 * @see HttpServlet#HttpServlet()
	 */
	public logcontrol() {
		
		super();
		logrepository = new logrepository();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		  
		        String forward = "";        
		        
		        if (logrepository != null) {
		            
		            request.setAttribute("log", logrepository.display((String)request.getSession().getAttribute("loggedInUser")));                
		            forward = PREVIOUS_TRAVEL;
		        }
		        RequestDispatcher view = request.getRequestDispatcher(forward);
		        view.forward(request, response);
		    }
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		

		String forward = PREVIOUS_TRAVEL;
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
		
	}
}