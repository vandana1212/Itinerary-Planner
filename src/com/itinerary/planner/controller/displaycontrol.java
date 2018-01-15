package com.itinerary.planner.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itinerary.planner.repository.*;
/**
 * Servlet implementation class StudentController
 */

@SuppressWarnings("serial")
public class displaycontrol extends HttpServlet {
	private displayrepository displayrepository;
	private static String DISPLAY= "content/Display.jsp";
	/*private static String TOURIST_LOGIN = "content/Login.jsp";
	private static String LOGIN_SUCCESS = "content/success.jsp";
	private static String LOGIN_FAILURE = "content/failure.jsp";
		/**
	 * @see HttpServlet#HttpServlet()
	 */
	public displaycontrol() {
		
		super();
		displayrepository = new displayrepository();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		  
		  //      String forward = "";        
		         
		        String[] arr;
			 	arr = request.getParameterValues("selected");
			   if (arr != null) 
			   {
			      for (int i = 0; i < arr.length; i++) 
			      {
			         System.out.println (arr[i]);
			      }
			   }
			   /*forward=DISPLAY;
		        RequestDispatcher view = request.getRequestDispatcher(forward);
		        request.setAttribute("ans", arr);
		        view.forward(request, response);*/
		    }
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		

		String forward = DISPLAY;
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
		
	}
}