package com.itinerary.planner.controller;

import java.io.IOException;
import com.itinerary.planner.model.*;
import java.util.*;

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
  //private static String TOURIST_LOGIN = "content/Login.jsp";
    private static String SUCCESS = "content/success.jsp";
    //private static String LOGIN_FAILURE = "content/failure.jsp";

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
          
    	String forward = SUCCESS;
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
            }
        
    

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        ArrayList< ArrayList<listing> > mainlist=new ArrayList< ArrayList<listing> >();
        ArrayList<listing> selectedList = new ArrayList<>();
        String[] selectedItems = request.getParameterValues("selected");
        if (selectedItems!=null)
        {
        for (String selectedItem : selectedItems) {
            listing Listing = new listing();
            Listing.set_description(request.getParameter("description" + selectedItem));
            Listing.set_expense(request.getParameter("expense" + selectedItem));
            selectedList.add(Listing);
        }
        }
        ArrayList<listing> selectedList_sightseeing = new ArrayList<>();
        String[] selectedItems_sightseeing = request.getParameterValues("selected_sightseeing");
        if (selectedItems_sightseeing!=null)
        {
        for (String selectedItem : selectedItems_sightseeing) {
            listing Listing = new listing();
            Listing.set_description(request.getParameter("sightseeing_description" + selectedItem));
            Listing.set_expense(request.getParameter("sightseeing_expense" + selectedItem));
            selectedList_sightseeing.add(Listing);
        }
        }
        
        ArrayList<listing> selectedList_food = new ArrayList<>();
        String[] selectedItems_food = request.getParameterValues("selected_food");
        if (selectedItems_food!=null)
        {
        for (String selectedItem : selectedItems_food) {
            listing Listing = new listing();
            Listing.set_description(request.getParameter("food_description" + selectedItem));
            selectedList_food.add(Listing);
        }
        }
        
        mainlist.add(selectedList);
        mainlist.add(selectedList_sightseeing);
        mainlist.add(selectedList_food);
        request.setAttribute("selected_listing", mainlist);
        
        String forward = DISPLAY;
        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
        
    }
}