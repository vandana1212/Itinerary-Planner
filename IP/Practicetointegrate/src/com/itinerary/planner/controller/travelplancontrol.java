package com.itinerary.planner.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itinerary.planner.repository.travelplanrepository;
import com.itinerary.planner.repository.touristrepository;
import com.itinerary.planner.model.travelplan;

/**
 * Servlet implementation class StudentController
 */

@SuppressWarnings("serial")
public class travelplancontrol extends HttpServlet {
	private travelplanrepository travelplanrepository;

	private static String TRAVELPLAN = "content/TravelPlan.jsp";
	private static String LOGIN_SUCCESS = "content/success.jsp";
	/*private static String STUDENT_LOGIN = "In.jsp";
	
	private static String LOGIN_FAILURE = "content/failure.jsp";*/

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public travelplancontrol() {
		super();
		travelplanrepository = new travelplanrepository();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		String forward = TRAVELPLAN;
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String pageName = request.getParameter("pageName");
		String forward = "";		
		
		if (travelplanrepository != null) {
			if (pageName.equals("TravelPlan")) {
					travelplan t=new travelplan();
					t.set_city_id(request.getParameter("city_name"));
					travelplanrepository.save(t.get_log_id(),
						t.get_city_id(),
						request.getParameter("hotelname"),
						request.getParameter("travelstart"),
						request.getParameter("travelfinish"));
				forward = LOGIN_SUCCESS;
			} 
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
}