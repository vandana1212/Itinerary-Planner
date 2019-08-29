package com.itinerary.planner.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itinerary.planner.repository.moreplanrepository;
/**
 * Servlet implementation class StudentController
 */

@SuppressWarnings("serial")
public class moreplancontrol extends HttpServlet {
	private moreplanrepository moreplanrepository;
	private static String MOREPLAN = "content/MorePlan.jsp";
	private static String LOGIN_SUCCESS = "content/success.jsp";
	/*private static String STUDENT_LOGIN = "In.jsp";
	
	private static String LOGIN_FAILURE = "content/failure.jsp";*/

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public moreplancontrol() {
		super();
		moreplanrepository = new moreplanrepository();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		String forward = MOREPLAN;
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
		
			if (pageName.equals("MorePlan")) {
						moreplanrepository.listing(request.getParameter("leisure"),
						request.getParameter("sightseeing"),
						request.getParameter("distance"));
				forward = LOGIN_SUCCESS;
			} 
		
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
}