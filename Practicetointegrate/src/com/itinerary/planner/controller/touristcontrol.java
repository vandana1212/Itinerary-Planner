package com.itinerary.planner.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itinerary.planner.repository.touristrepository;

/**
 * Servlet implementation class StudentController
 */

@SuppressWarnings("serial")
public class touristcontrol extends HttpServlet {
	private touristrepository touristrepository;

	private static String STUDENT_SIGNUP = "CreateNewaccount.jsp";
	private static String STUDENT_LOGIN = "In.jsp";
	/*private static String LOGIN_SUCCESS = "content/success.jsp";
	private static String LOGIN_FAILURE = "content/failure.jsp";*/

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public touristcontrol() {
		super();
		touristrepository = new touristrepository();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {	
		String forward = STUDENT_SIGNUP;
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
		
		if (touristrepository != null) {
			if (pageName.equals("CreateNewaccount")) {
				if (touristrepository.findByUserName(request
						.getParameter("username"))) {
					request.setAttribute("message", "User Name exists. Try another user name");
					forward = STUDENT_SIGNUP;
					RequestDispatcher view = request
							.getRequestDispatcher(forward);
					view.forward(request, response);
					return;
				}

				touristrepository.save(request.getParameter("username"),
						request.getParameter("fname"),
						request.getParameter("lname"),
						request.getParameter("email"),
						request.getParameter("country_of_origin"),
						request.getParameter("password"));
				forward = STUDENT_LOGIN;
			} else if (pageName.equals("In")) {
				boolean result = touristrepository.findByLogin(
						request.getParameter("username"),
						request.getParameter("password"));
				if (result == true) {
					request.setAttribute("message","Successful Login");
				} else {
					request.setAttribute("message", "Login Failed. Try again");
				}
			}
		}
		RequestDispatcher view = request.getRequestDispatcher(forward);
		view.forward(request, response);
	}
}